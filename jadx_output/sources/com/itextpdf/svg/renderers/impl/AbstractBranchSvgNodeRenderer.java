package com.itextpdf.svg.renderers.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Matrix;
import com.itextpdf.kernel.geom.NoninvertibleTransformException;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import com.itextpdf.p017io.source.ByteUtils;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.logs.SvgLogMessageConstant;
import com.itextpdf.svg.renderers.IBranchSvgNodeRenderer;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.SvgCssUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractBranchSvgNodeRenderer extends AbstractSvgNodeRenderer implements IBranchSvgNodeRenderer {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) AbstractBranchSvgNodeRenderer.class);
    protected static final int VIEWBOX_VALUES_NUMBER = 4;
    private final List<ISvgNodeRenderer> children = new ArrayList();

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public abstract ISvgNodeRenderer createDeepCopy();

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    void postDraw(SvgDrawContext svgDrawContext) {
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        if (getChildren().size() > 0) {
            PdfStream pdfStream = new PdfStream();
            pdfStream.put(PdfName.Type, PdfName.XObject);
            pdfStream.put(PdfName.Subtype, PdfName.Form);
            PdfFormXObject pdfFormXObject = (PdfFormXObject) PdfXObject.makeXObject(pdfStream);
            PdfCanvas pdfCanvas = new PdfCanvas(pdfFormXObject, svgDrawContext.getCurrentCanvas().getDocument());
            applyViewBox(svgDrawContext);
            boolean zIsOverflowVisible = isOverflowVisible(this);
            boolean z = this instanceof MarkerSvgNodeRenderer;
            if (z && zIsOverflowVisible) {
                writeBBoxAccordingToVisibleOverflow(svgDrawContext, pdfStream);
            } else {
                pdfStream.put(PdfName.BBox, new PdfArray(svgDrawContext.getCurrentViewPort().mo3120clone()));
            }
            if (z) {
                ((MarkerSvgNodeRenderer) this).applyMarkerAttributes(svgDrawContext);
            }
            svgDrawContext.pushCanvas(pdfCanvas);
            if (!z || !zIsOverflowVisible) {
                applyViewportClip(svgDrawContext);
            }
            applyViewportTranslationCorrection(svgDrawContext);
            for (ISvgNodeRenderer iSvgNodeRenderer : getChildren()) {
                if (!(iSvgNodeRenderer instanceof MarkerSvgNodeRenderer)) {
                    pdfCanvas.saveState();
                    iSvgNodeRenderer.draw(svgDrawContext);
                    pdfCanvas.restoreState();
                }
            }
            cleanUp(svgDrawContext);
            addXObject(svgDrawContext.getCurrentCanvas(), pdfFormXObject, 0.0f, 0.0f);
        }
    }

    static void addXObject(PdfCanvas pdfCanvas, PdfXObject pdfXObject, float f, float f2) {
        if (pdfXObject instanceof PdfFormXObject) {
            pdfCanvas.saveState();
            pdfCanvas.concatMatrix(1.0d, 0.0d, 0.0d, 1.0d, f, f2);
            pdfCanvas.getContentStream().getOutputStream().write((PdfObject) pdfCanvas.getResources().addForm((PdfFormXObject) pdfXObject)).writeSpace().writeBytes(ByteUtils.getIsoBytes("Do\n"));
            pdfCanvas.restoreState();
            return;
        }
        pdfCanvas.addXObjectAt(pdfXObject, f, f2);
    }

    void applyViewBox(SvgDrawContext svgDrawContext) {
        float[] viewBoxValues = getViewBoxValues();
        if (viewBoxValues.length < 4) {
            calculateAndApplyViewBox(svgDrawContext, new float[]{0.0f, 0.0f, svgDrawContext.getCurrentViewPort().getWidth(), svgDrawContext.getCurrentViewPort().getHeight()}, svgDrawContext.getCurrentViewPort());
        } else {
            calculateAndApplyViewBox(svgDrawContext, viewBoxValues, svgDrawContext.getCurrentViewPort());
        }
    }

    String[] retrieveAlignAndMeet() {
        String str;
        String lowerCase;
        String str2 = this.attributesAndStyles.get(SvgConstants.Attributes.PRESERVE_ASPECT_RATIO);
        if (str2 == null) {
            str2 = this.attributesAndStyles.get(SvgConstants.Attributes.PRESERVE_ASPECT_RATIO.toLowerCase());
        }
        if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.PRESERVE_ASPECT_RATIO) || this.attributesAndStyles.containsKey(SvgConstants.Attributes.PRESERVE_ASPECT_RATIO.toLowerCase())) {
            List<String> listSplitValueList = SvgCssUtils.splitValueList(str2);
            String lowerCase2 = listSplitValueList.get(0).toLowerCase();
            if (listSplitValueList.size() > 1) {
                lowerCase = listSplitValueList.get(1).toLowerCase();
                str = lowerCase2;
                if ((this instanceof MarkerSvgNodeRenderer) && !"none".equals(str) && SvgConstants.Values.MEET.equals(lowerCase)) {
                    str = SvgConstants.Values.XMIN_YMIN;
                }
                return new String[]{str, lowerCase};
            }
            str = lowerCase2;
        } else {
            str = "xmidymid";
        }
        lowerCase = SvgConstants.Values.MEET;
        if (this instanceof MarkerSvgNodeRenderer) {
            str = SvgConstants.Values.XMIN_YMIN;
        }
        return new String[]{str, lowerCase};
    }

    private void applyViewportClip(SvgDrawContext svgDrawContext) {
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        currentCanvas.rectangle(svgDrawContext.getCurrentViewPort());
        currentCanvas.clip();
        currentCanvas.endPath();
    }

    private void applyViewportTranslationCorrection(SvgDrawContext svgDrawContext) {
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        AffineTransform affineTransformCalculateViewPortTranslation = calculateViewPortTranslation(svgDrawContext);
        boolean z = "none".equals(getAttribute(SvgConstants.Attributes.PRESERVE_ASPECT_RATIO)) || "none".equals(getAttribute(SvgConstants.Attributes.PRESERVE_ASPECT_RATIO.toLowerCase()));
        if (affineTransformCalculateViewPortTranslation.isIdentity() || !z) {
            return;
        }
        currentCanvas.concatMatrix(affineTransformCalculateViewPortTranslation);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:46:0x00e2. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    com.itextpdf.kernel.geom.AffineTransform processAspectRatioPosition(com.itextpdf.svg.renderers.SvgDrawContext r16, float[] r17, java.lang.String r18, float r19, float r20) {
        /*
            Method dump skipped, instruction units count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer.processAspectRatioPosition(com.itextpdf.svg.renderers.SvgDrawContext, float[], java.lang.String, float, float):com.itextpdf.kernel.geom.AffineTransform");
    }

    private void cleanUp(SvgDrawContext svgDrawContext) {
        if (getParent() != null) {
            svgDrawContext.removeCurrentViewPort();
        }
        svgDrawContext.popCanvas();
    }

    @Override // com.itextpdf.svg.renderers.IBranchSvgNodeRenderer
    public final void addChild(ISvgNodeRenderer iSvgNodeRenderer) {
        if (iSvgNodeRenderer != null) {
            this.children.add(iSvgNodeRenderer);
        }
    }

    @Override // com.itextpdf.svg.renderers.IBranchSvgNodeRenderer
    public final List<ISvgNodeRenderer> getChildren() {
        return Collections.unmodifiableList(this.children);
    }

    protected final void deepCopyChildren(AbstractBranchSvgNodeRenderer abstractBranchSvgNodeRenderer) {
        for (ISvgNodeRenderer iSvgNodeRenderer : this.children) {
            ISvgNodeRenderer iSvgNodeRendererCreateDeepCopy = iSvgNodeRenderer.createDeepCopy();
            iSvgNodeRenderer.setParent(abstractBranchSvgNodeRenderer);
            abstractBranchSvgNodeRenderer.addChild(iSvgNodeRendererCreateDeepCopy);
        }
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    void setPartOfClipPath(boolean z) {
        super.setPartOfClipPath(z);
        for (ISvgNodeRenderer iSvgNodeRenderer : this.children) {
            if (iSvgNodeRenderer instanceof AbstractSvgNodeRenderer) {
                ((AbstractSvgNodeRenderer) iSvgNodeRenderer).setPartOfClipPath(z);
            }
        }
    }

    void calculateAndApplyViewBox(SvgDrawContext svgDrawContext, float[] fArr, Rectangle rectangle) {
        float f;
        float fMax;
        String[] strArrRetrieveAlignAndMeet = retrieveAlignAndMeet();
        String str = strArrRetrieveAlignAndMeet[0];
        String str2 = strArrRetrieveAlignAndMeet[1];
        float width = rectangle.getWidth() / fArr[2];
        float height = rectangle.getHeight() / fArr[3];
        if ("none".equals(str)) {
            f = height;
        } else {
            if (SvgConstants.Values.MEET.equals(str2)) {
                fMax = Math.min(width, height);
            } else {
                fMax = Math.max(width, height);
            }
            width = fMax;
            f = width;
        }
        AffineTransform scaleInstance = AffineTransform.getScaleInstance(width, f);
        AffineTransform affineTransformProcessAspectRatioPosition = processAspectRatioPosition(svgDrawContext, scaleViewBoxValues(fArr, width, f), str, width, f);
        if (!scaleInstance.isIdentity()) {
            svgDrawContext.getCurrentCanvas().concatMatrix(scaleInstance);
            svgDrawContext.getCurrentViewPort().setWidth(rectangle.getWidth() / width).setX(rectangle.getX() / width).setHeight(rectangle.getHeight() / f).setY(rectangle.getY() / f);
        }
        if (affineTransformProcessAspectRatioPosition.isIdentity()) {
            return;
        }
        svgDrawContext.getCurrentCanvas().concatMatrix(affineTransformProcessAspectRatioPosition);
        svgDrawContext.getCurrentViewPort().setX(rectangle.getX() + (((float) affineTransformProcessAspectRatioPosition.getTranslateX()) * (-1.0f))).setY(rectangle.getY() + (((float) affineTransformProcessAspectRatioPosition.getTranslateY()) * (-1.0f)));
    }

    float[] getViewBoxValues() {
        if (this.attributesAndStyles == null) {
            return new float[0];
        }
        String str = this.attributesAndStyles.get(SvgConstants.Attributes.VIEWBOX);
        if (str == null) {
            str = this.attributesAndStyles.get(SvgConstants.Attributes.VIEWBOX.toLowerCase());
        }
        if (str == null) {
            return new float[0];
        }
        List<String> listSplitValueList = SvgCssUtils.splitValueList(str);
        int size = listSplitValueList.size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = CssDimensionParsingUtils.parseAbsoluteLength(listSplitValueList.get(i));
        }
        if (size != 4) {
            Logger logger = LOGGER;
            if (logger.isWarnEnabled()) {
                logger.warn(MessageFormatUtil.format(SvgLogMessageConstant.VIEWBOX_VALUE_MUST_BE_FOUR_NUMBERS, str));
            }
            return new float[0];
        }
        if (fArr[2] >= 0.0f && fArr[3] >= 0.0f) {
            return fArr;
        }
        Logger logger2 = LOGGER;
        if (logger2.isWarnEnabled()) {
            logger2.warn(MessageFormatUtil.format(SvgLogMessageConstant.VIEWBOX_WIDTH_AND_HEIGHT_CANNOT_BE_NEGATIVE, str));
        }
        return new float[0];
    }

    private static float[] scaleViewBoxValues(float[] fArr, float f, float f2) {
        float[] fArr2 = new float[fArr.length];
        fArr2[0] = fArr[0] * f;
        fArr2[1] = fArr[1] * f2;
        fArr2[2] = fArr[2] * f;
        fArr2[3] = fArr[3] * f2;
        return fArr2;
    }

    private static boolean isOverflowVisible(AbstractSvgNodeRenderer abstractSvgNodeRenderer) {
        return CommonCssConstants.VISIBLE.equals(abstractSvgNodeRenderer.attributesAndStyles.get(CommonCssConstants.OVERFLOW)) || "auto".equals(abstractSvgNodeRenderer.attributesAndStyles.get(CommonCssConstants.OVERFLOW));
    }

    private static void writeBBoxAccordingToVisibleOverflow(SvgDrawContext svgDrawContext, PdfStream pdfStream) {
        ArrayList arrayList = new ArrayList();
        int size = svgDrawContext.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(svgDrawContext.popCanvas());
        }
        AffineTransform affineTransform = new AffineTransform();
        int i3 = 1;
        int size2 = arrayList.size() - 1;
        while (size2 >= 0) {
            PdfCanvas pdfCanvas = (PdfCanvas) arrayList.get(size2);
            Matrix ctm = pdfCanvas.getGraphicsState().getCtm();
            affineTransform.concatenate(new AffineTransform(ctm.get(i), ctm.get(i3), ctm.get(3), ctm.get(4), ctm.get(6), ctm.get(7)));
            svgDrawContext.pushCanvas(pdfCanvas);
            size2--;
            i = 0;
            i3 = 1;
        }
        try {
            AffineTransform affineTransformCreateInverse = affineTransform.createInverse();
            Point[] pointsArray = svgDrawContext.getRootViewPort().toPointsArray();
            affineTransformCreateInverse.transform(pointsArray, 0, pointsArray, 0, pointsArray.length);
            pdfStream.put(PdfName.BBox, new PdfArray(Rectangle.calculateBBox(Arrays.asList(pointsArray))));
        } catch (NoninvertibleTransformException unused) {
            pdfStream.put(PdfName.BBox, new PdfArray(new Rectangle(0.0f, 0.0f, 0.0f, 0.0f)));
            LoggerFactory.getLogger((Class<?>) AbstractBranchSvgNodeRenderer.class).warn(SvgLogMessageConstant.UNABLE_TO_GET_INVERSE_MATRIX_DUE_TO_ZERO_DETERMINANT);
        }
    }
}

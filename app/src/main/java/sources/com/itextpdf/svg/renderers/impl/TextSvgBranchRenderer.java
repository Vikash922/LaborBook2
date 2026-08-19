package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.font.FontCharacteristics;
import com.itextpdf.layout.font.FontInfo;
import com.itextpdf.layout.font.FontProvider;
import com.itextpdf.layout.font.FontSet;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.SvgCssUtils;
import com.itextpdf.svg.utils.SvgTextUtil;
import com.itextpdf.svg.utils.TextRectangle;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class TextSvgBranchRenderer extends AbstractSvgNodeRenderer implements ISvgTextNodeRenderer {
    protected static final AffineTransform TEXTFLIP = new AffineTransform(1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d);
    private PdfFont font;
    private float xMove;
    private float[] xPos;
    private float yMove;
    private float[] yPos;
    private final List<ISvgTextNodeRenderer> children = new ArrayList();
    private boolean whiteSpaceProcessed = false;
    protected boolean performRootTransformations = true;
    private boolean moveResolved = false;
    private boolean posResolved = false;

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public float getTextContentLength(float f, PdfFont pdfFont) {
        return 0.0f;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        TextSvgBranchRenderer textSvgBranchRenderer = new TextSvgBranchRenderer();
        fillCopy(textSvgBranchRenderer);
        return textSvgBranchRenderer;
    }

    void fillCopy(TextSvgBranchRenderer textSvgBranchRenderer) {
        deepCopyAttributesAndStyles(textSvgBranchRenderer);
        deepCopyChildren(textSvgBranchRenderer);
    }

    public final void addChild(ISvgTextNodeRenderer iSvgTextNodeRenderer) {
        if (iSvgTextNodeRenderer != null) {
            this.children.add(iSvgTextNodeRenderer);
        }
    }

    public final List<ISvgTextNodeRenderer> getChildren() {
        return Collections.unmodifiableList(this.children);
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public float[] getRelativeTranslation() {
        if (!this.moveResolved) {
            resolveTextMove();
        }
        return new float[]{this.xMove, this.yMove};
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public boolean containsRelativeMove() {
        if (!this.moveResolved) {
            resolveTextMove();
        }
        return !(CssUtils.compareFloats(0.0f, this.xMove) && CssUtils.compareFloats(0.0f, this.yMove));
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public boolean containsAbsolutePositionChange() {
        float[] fArr;
        if (!this.posResolved) {
            resolveTextPosition();
        }
        float[] fArr2 = this.xPos;
        return (fArr2 != null && fArr2.length > 0) || ((fArr = this.yPos) != null && fArr.length > 0);
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public float[][] getAbsolutePositionChanges() {
        if (!this.posResolved) {
            resolveTextPosition();
        }
        return new float[][]{this.xPos, this.yPos};
    }

    public void markWhiteSpaceProcessed() {
        this.whiteSpaceProcessed = true;
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public TextRectangle getTextRectangle(SvgDrawContext svgDrawContext, Point point) {
        double x;
        if (this.attributesAndStyles == null) {
            return null;
        }
        resolveFont(svgDrawContext);
        double y = 0.0d;
        if (getAbsolutePositionChanges()[0] != null) {
            x = getAbsolutePositionChanges()[0][0];
        } else {
            x = point != null ? point.getX() : 0.0d;
        }
        if (getAbsolutePositionChanges()[1] != null) {
            y = getAbsolutePositionChanges()[1][0];
        } else if (point != null) {
            y = point.getY();
        }
        Point point2 = new Point(x, y);
        point2.translate(getRelativeTranslation()[0], getRelativeTranslation()[1]);
        Rectangle commonRectangle = null;
        for (ISvgTextNodeRenderer iSvgTextNodeRenderer : getChildren()) {
            if (iSvgTextNodeRenderer != null) {
                TextRectangle textRectangle = iSvgTextNodeRenderer.getTextRectangle(svgDrawContext, point2);
                Point textBaseLineRightPoint = textRectangle.getTextBaseLineRightPoint();
                commonRectangle = Rectangle.getCommonRectangle(commonRectangle, textRectangle);
                point2 = textBaseLineRightPoint;
            }
        }
        if (commonRectangle != null) {
            return new TextRectangle(commonRectangle.getX(), commonRectangle.getY(), commonRectangle.getWidth(), commonRectangle.getHeight(), (float) point2.getY());
        }
        return null;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return getTextRectangle(svgDrawContext, null);
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        if (getChildren().size() > 0) {
            PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
            svgDrawContext.resetTextMove();
            svgDrawContext.setLastTextTransform(null);
            if (this.attributesAndStyles != null) {
                for (ISvgTextNodeRenderer iSvgTextNodeRenderer : this.children) {
                    currentCanvas.saveState();
                    currentCanvas.beginText();
                    performRootTransformations(currentCanvas, svgDrawContext);
                    applyTextRenderingMode(currentCanvas);
                    resolveFont(svgDrawContext);
                    currentCanvas.setFontAndSize(this.font, getCurrentFontSize());
                    float textContentLength = iSvgTextNodeRenderer.getTextContentLength(getCurrentFontSize(), this.font);
                    if (iSvgTextNodeRenderer.containsAbsolutePositionChange()) {
                        AffineTransform textTransform = getTextTransform(iSvgTextNodeRenderer.getAbsolutePositionChanges(), svgDrawContext);
                        svgDrawContext.setLastTextTransform(textTransform);
                        currentCanvas.setTextMatrix(textTransform);
                        svgDrawContext.resetTextMove();
                    } else if ((iSvgTextNodeRenderer instanceof TextLeafSvgNodeRenderer) && !svgDrawContext.getLastTextTransform().isIdentity()) {
                        currentCanvas.setTextMatrix(svgDrawContext.getLastTextTransform());
                    }
                    float textAnchorAlignmentCorrection = getTextAnchorAlignmentCorrection(textContentLength);
                    if (!CssUtils.compareFloats(0.0f, textAnchorAlignmentCorrection)) {
                        svgDrawContext.addTextMove(textAnchorAlignmentCorrection, 0.0f);
                    }
                    if (iSvgTextNodeRenderer.containsRelativeMove()) {
                        float[] relativeTranslation = iSvgTextNodeRenderer.getRelativeTranslation();
                        svgDrawContext.addTextMove(relativeTranslation[0], -relativeTranslation[1]);
                    }
                    iSvgTextNodeRenderer.draw(svgDrawContext);
                    svgDrawContext.addTextMove(textContentLength, 0.0f);
                    svgDrawContext.setPreviousElementTextMove(null);
                    currentCanvas.endText();
                    currentCanvas.restoreState();
                }
            }
        }
    }

    void performRootTransformations(PdfCanvas pdfCanvas, SvgDrawContext svgDrawContext) {
        AffineTransform affineTransform;
        if (containsAbsolutePositionChange()) {
            affineTransform = getTextTransform(getAbsolutePositionChanges(), svgDrawContext);
        } else {
            affineTransform = new AffineTransform(TEXTFLIP);
        }
        pdfCanvas.setTextMatrix(affineTransform);
        if (containsRelativeMove()) {
            float[] relativeTranslation = getRelativeTranslation();
            svgDrawContext.addTextMove(relativeTranslation[0], -relativeTranslation[1]);
        }
        if (this.whiteSpaceProcessed) {
            return;
        }
        SvgTextUtil.processWhiteSpace(this, true);
    }

    private void resolveTextMove() {
        if (this.attributesAndStyles != null) {
            String str = this.attributesAndStyles.get(SvgConstants.Attributes.f3324DX);
            String str2 = this.attributesAndStyles.get(SvgConstants.Attributes.f3325DY);
            List<String> listSplitValueList = SvgCssUtils.splitValueList(str);
            List<String> listSplitValueList2 = SvgCssUtils.splitValueList(str2);
            this.xMove = 0.0f;
            this.yMove = 0.0f;
            if (!listSplitValueList.isEmpty()) {
                this.xMove = CssDimensionParsingUtils.parseAbsoluteLength(listSplitValueList.get(0));
            }
            if (!listSplitValueList2.isEmpty()) {
                this.yMove = CssDimensionParsingUtils.parseAbsoluteLength(listSplitValueList2.get(0));
            }
            this.moveResolved = true;
        }
    }

    private FontInfo resolveFontName(String str, String str2, String str3, FontProvider fontProvider, FontSet fontSet) {
        boolean zEqualsIgnoreCase = "bold".equalsIgnoreCase(str2);
        boolean zEqualsIgnoreCase2 = "italic".equalsIgnoreCase(str3);
        FontCharacteristics fontCharacteristics = new FontCharacteristics();
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        fontCharacteristics.setBoldFlag(zEqualsIgnoreCase);
        fontCharacteristics.setItalicFlag(zEqualsIgnoreCase2);
        return fontProvider.getFontSelector(arrayList, fontCharacteristics, fontSet).bestMatch();
    }

    void resolveFont(SvgDrawContext svgDrawContext) {
        FontProvider fontProvider = svgDrawContext.getFontProvider();
        FontSet tempFonts = svgDrawContext.getTempFonts();
        this.font = null;
        if (!fontProvider.getFontSet().isEmpty() || (tempFonts != null && !tempFonts.isEmpty())) {
            String str = this.attributesAndStyles.get("font-family");
            this.font = fontProvider.getPdfFont(resolveFontName(str != null ? str.trim() : "", this.attributesAndStyles.get("font-weight"), this.attributesAndStyles.get("font-style"), fontProvider, tempFonts), tempFonts);
        }
        if (this.font == null) {
            try {
                this.font = PdfFontFactory.createFont();
            } catch (IOException e) {
                throw new SvgProcessingException(SvgExceptionMessageConstant.FONT_NOT_FOUND, e);
            }
        }
    }

    PdfFont getFont() {
        return this.font;
    }

    private void resolveTextPosition() {
        if (this.attributesAndStyles != null) {
            String str = this.attributesAndStyles.get(SvgConstants.Attributes.f3330X);
            String str2 = this.attributesAndStyles.get(SvgConstants.Attributes.f3333Y);
            this.xPos = getPositionsFromString(str);
            this.yPos = getPositionsFromString(str2);
            this.posResolved = true;
        }
    }

    private static float[] getPositionsFromString(String str) {
        List<String> listSplitValueList = SvgCssUtils.splitValueList(str);
        if (listSplitValueList.isEmpty()) {
            return null;
        }
        float[] fArr = new float[listSplitValueList.size()];
        for (int i = 0; i < listSplitValueList.size(); i++) {
            fArr[i] = CssDimensionParsingUtils.parseAbsoluteLength(listSplitValueList.get(i));
        }
        return fArr;
    }

    static AffineTransform getTextTransform(float[][] fArr, SvgDrawContext svgDrawContext) {
        AffineTransform affineTransform = new AffineTransform();
        if (fArr[0] == null && fArr[1] != null) {
            fArr[0] = new float[]{svgDrawContext.getTextMove()[0]};
        }
        if (fArr[1] == null) {
            fArr[1] = new float[]{0.0f};
        }
        affineTransform.concatenate(TEXTFLIP);
        affineTransform.concatenate(AffineTransform.getTranslateInstance(fArr[0][0], -fArr[1][0]));
        return affineTransform;
    }

    void applyTextRenderingMode(PdfCanvas pdfCanvas) {
        if (this.doStroke && this.doFill) {
            pdfCanvas.setTextRenderingMode(2);
        } else if (this.doStroke) {
            pdfCanvas.setTextRenderingMode(1);
        } else {
            pdfCanvas.setTextRenderingMode(0);
        }
    }

    private void deepCopyChildren(TextSvgBranchRenderer textSvgBranchRenderer) {
        for (ISvgTextNodeRenderer iSvgTextNodeRenderer : this.children) {
            ISvgTextNodeRenderer iSvgTextNodeRenderer2 = (ISvgTextNodeRenderer) iSvgTextNodeRenderer.createDeepCopy();
            iSvgTextNodeRenderer.setParent(textSvgBranchRenderer);
            textSvgBranchRenderer.addChild(iSvgTextNodeRenderer2);
        }
    }

    float getTextAnchorAlignmentCorrection(float f) {
        float[] fArr;
        float[] fArr2;
        float f2 = 0.0f;
        if (this.attributesAndStyles == null || !this.attributesAndStyles.containsKey(SvgConstants.Attributes.TEXT_ANCHOR)) {
            return 0.0f;
        }
        String attribute = getAttribute(SvgConstants.Attributes.TEXT_ANCHOR);
        if (SvgConstants.Values.TEXT_ANCHOR_MIDDLE.equals(attribute) && (fArr2 = this.xPos) != null && fArr2.length > 0) {
            f2 = 0.0f - (f / 2.0f);
        }
        return (!"end".equals(attribute) || (fArr = this.xPos) == null || fArr.length <= 0) ? f2 : f2 - f;
    }
}

package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfRootSvgNodeRenderer implements ISvgNodeRenderer {
    ISvgNodeRenderer subTreeRoot;

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public String getAttribute(String str) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Map<String, String> getAttributeMapCopy() {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer getParent() {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public void setAttribute(String str, String str2) {
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public void setAttributesAndStyles(Map<String, String> map) {
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public void setParent(ISvgNodeRenderer iSvgNodeRenderer) {
    }

    public PdfRootSvgNodeRenderer(ISvgNodeRenderer iSvgNodeRenderer) {
        this.subTreeRoot = iSvgNodeRenderer;
        iSvgNodeRenderer.setParent(this);
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public void draw(SvgDrawContext svgDrawContext) {
        svgDrawContext.addViewPort(calculateViewPort(svgDrawContext));
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        currentCanvas.concatMatrix(calculateTransformation(svgDrawContext));
        currentCanvas.writeLiteral("% svg root\n");
        this.subTreeRoot.draw(svgDrawContext);
    }

    AffineTransform calculateTransformation(SvgDrawContext svgDrawContext) {
        Rectangle currentViewPort = svgDrawContext.getCurrentViewPort();
        float x = currentViewPort.getX();
        float y = currentViewPort.getY() + currentViewPort.getHeight();
        AffineTransform translateInstance = AffineTransform.getTranslateInstance(0.0d, 0.0d);
        translateInstance.concatenate(AffineTransform.getTranslateInstance(x, y));
        translateInstance.concatenate(new AffineTransform(1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d));
        return translateInstance;
    }

    Rectangle calculateViewPort(SvgDrawContext svgDrawContext) {
        PdfStream contentStream = svgDrawContext.getCurrentCanvas().getContentStream();
        if (!contentStream.containsKey(PdfName.BBox)) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.ROOT_SVG_NO_BBOX);
        }
        PdfArray asArray = contentStream.getAsArray(PdfName.BBox);
        float fFloatValue = asArray.getAsNumber(0).floatValue();
        float fFloatValue2 = asArray.getAsNumber(1).floatValue();
        return new Rectangle(fFloatValue, fFloatValue2, asArray.getAsNumber(2).floatValue() - fFloatValue, asArray.getAsNumber(3).floatValue() - fFloatValue2);
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        return new PdfRootSvgNodeRenderer(this.subTreeRoot.createDeepCopy());
    }
}

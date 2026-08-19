package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.extgstate.PdfExtGState;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;

/* JADX INFO: loaded from: classes6.dex */
public class TextSvgTSpanBranchRenderer extends TextSvgBranchRenderer {
    private static final float EPS = 1.0E-4f;

    public TextSvgTSpanBranchRenderer() {
        this.performRootTransformations = false;
    }

    @Override // com.itextpdf.svg.renderers.impl.TextSvgBranchRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return getParent().getObjectBoundingBox(svgDrawContext);
    }

    @Override // com.itextpdf.svg.renderers.impl.TextSvgBranchRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        TextSvgTSpanBranchRenderer textSvgTSpanBranchRenderer = new TextSvgTSpanBranchRenderer();
        fillCopy(textSvgTSpanBranchRenderer);
        return textSvgTSpanBranchRenderer;
    }

    @Override // com.itextpdf.svg.renderers.impl.TextSvgBranchRenderer, com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        if (getChildren().size() > 0) {
            PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
            if (this.attributesAndStyles != null) {
                for (ISvgTextNodeRenderer iSvgTextNodeRenderer : getChildren()) {
                    applyTextRenderingMode(currentCanvas);
                    resolveFont(svgDrawContext);
                    currentCanvas.setFontAndSize(getFont(), getCurrentFontSize());
                    float textContentLength = iSvgTextNodeRenderer.getTextContentLength(getCurrentFontSize(), getFont());
                    if (iSvgTextNodeRenderer.containsAbsolutePositionChange()) {
                        AffineTransform textTransform = getTextTransform(iSvgTextNodeRenderer.getAbsolutePositionChanges(), svgDrawContext);
                        svgDrawContext.setLastTextTransform(textTransform);
                        currentCanvas.setTextMatrix(textTransform);
                        svgDrawContext.resetTextMove();
                        svgDrawContext.setPreviousElementTextMove(null);
                    }
                    float textAnchorAlignmentCorrection = getTextAnchorAlignmentCorrection(textContentLength);
                    if (!CssUtils.compareFloats(0.0f, textAnchorAlignmentCorrection)) {
                        svgDrawContext.addTextMove(textAnchorAlignmentCorrection, 0.0f);
                    }
                    if (iSvgTextNodeRenderer.containsRelativeMove()) {
                        float[] relativeTranslation = iSvgTextNodeRenderer.getRelativeTranslation();
                        svgDrawContext.addTextMove(relativeTranslation[0], -relativeTranslation[1]);
                        svgDrawContext.setPreviousElementTextMove(new float[]{svgDrawContext.getPreviousElementTextMove()[0] + relativeTranslation[0], svgDrawContext.getPreviousElementTextMove()[1] - relativeTranslation[1]});
                    }
                    CanvasGraphicsState canvasGraphicsState = new CanvasGraphicsState(currentCanvas.getGraphicsState());
                    iSvgTextNodeRenderer.draw(svgDrawContext);
                    applyGSDifference(currentCanvas, canvasGraphicsState);
                    svgDrawContext.addTextMove(textContentLength, 0.0f);
                    if (!floatsAreEqual(textContentLength, 0.0f)) {
                        svgDrawContext.setPreviousElementTextMove(new float[]{textContentLength, 0.0f});
                    }
                }
            }
        }
    }

    void applyGSDifference(PdfCanvas pdfCanvas, CanvasGraphicsState canvasGraphicsState) {
        CanvasGraphicsState graphicsState = pdfCanvas.getGraphicsState();
        if (!floatsAreEqual(canvasGraphicsState.getCharSpacing(), graphicsState.getCharSpacing())) {
            pdfCanvas.setCharacterSpacing(canvasGraphicsState.getCharSpacing());
        }
        if (canvasGraphicsState.getFillColor() != graphicsState.getFillColor()) {
            pdfCanvas.setFillColor(canvasGraphicsState.getFillColor());
        }
        if (canvasGraphicsState.getFont() != graphicsState.getFont() || !floatsAreEqual(canvasGraphicsState.getFontSize(), graphicsState.getFontSize())) {
            pdfCanvas.setFontAndSize(canvasGraphicsState.getFont(), canvasGraphicsState.getFontSize());
        }
        if (!floatsAreEqual(canvasGraphicsState.getLineWidth(), graphicsState.getLineWidth())) {
            pdfCanvas.setLineWidth(canvasGraphicsState.getLineWidth());
        }
        if (canvasGraphicsState.getStrokeColor() != graphicsState.getStrokeColor()) {
            pdfCanvas.setStrokeColor(canvasGraphicsState.getStrokeColor());
        }
        if (canvasGraphicsState.getTextRenderingMode() != graphicsState.getTextRenderingMode()) {
            pdfCanvas.setTextRenderingMode(canvasGraphicsState.getTextRenderingMode());
        }
        if (floatsAreEqual(canvasGraphicsState.getFillOpacity(), graphicsState.getFillOpacity()) && floatsAreEqual(canvasGraphicsState.getStrokeOpacity(), graphicsState.getStrokeOpacity())) {
            return;
        }
        PdfExtGState pdfExtGState = new PdfExtGState();
        pdfExtGState.setFillOpacity(canvasGraphicsState.getFillOpacity());
        pdfExtGState.setStrokeOpacity(canvasGraphicsState.getStrokeOpacity());
        pdfCanvas.setExtGState(pdfExtGState);
    }

    private static boolean floatsAreEqual(float f, float f2) {
        return Math.abs(f - f2) < 1.0E-4f;
    }
}

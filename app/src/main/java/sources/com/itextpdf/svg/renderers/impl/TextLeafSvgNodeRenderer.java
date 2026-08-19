package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.properties.RenderingMode;
import com.itextpdf.layout.renderer.TextRenderer;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.SvgTextUtil;
import com.itextpdf.svg.utils.TextRectangle;

/* JADX INFO: loaded from: classes6.dex */
public class TextLeafSvgNodeRenderer extends AbstractSvgNodeRenderer implements ISvgTextNodeRenderer {
    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected boolean canElementFill() {
        return false;
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public boolean containsAbsolutePositionChange() {
        return false;
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public boolean containsRelativeMove() {
        return false;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        TextLeafSvgNodeRenderer textLeafSvgNodeRenderer = new TextLeafSvgNodeRenderer();
        deepCopyAttributesAndStyles(textLeafSvgNodeRenderer);
        return textLeafSvgNodeRenderer;
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public float getTextContentLength(float f, PdfFont pdfFont) {
        if (pdfFont == null || this.attributesAndStyles == null || !this.attributesAndStyles.containsKey(SvgConstants.Attributes.TEXT_CONTENT)) {
            return 0.0f;
        }
        return pdfFont.getWidth(this.attributesAndStyles.get(SvgConstants.Attributes.TEXT_CONTENT), SvgTextUtil.resolveFontSize(this, f));
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public float[] getRelativeTranslation() {
        return new float[]{0.0f, 0.0f};
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public float[][] getAbsolutePositionChanges() {
        float[] fArr = {0.0f};
        return new float[][]{fArr, fArr};
    }

    @Override // com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer
    public TextRectangle getTextRectangle(SvgDrawContext svgDrawContext, Point point) {
        if (!(getParent() instanceof TextSvgBranchRenderer) || point == null) {
            return null;
        }
        float currentFontSize = ((AbstractSvgNodeRenderer) getParent()).getCurrentFontSize();
        PdfFont font = ((TextSvgBranchRenderer) getParent()).getFont();
        float textContentLength = getTextContentLength(currentFontSize, font);
        float[] fArrCalculateAscenderDescender = TextRenderer.calculateAscenderDescender(font, RenderingMode.HTML_MODE);
        float f = (fArrCalculateAscenderDescender[0] / 1000.0f) * currentFontSize;
        return new TextRectangle((float) point.getX(), ((float) point.getY()) - f, textContentLength, f - ((fArrCalculateAscenderDescender[1] / 1000.0f) * currentFontSize), (float) point.getY());
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        if (this.attributesAndStyles == null || !this.attributesAndStyles.containsKey(SvgConstants.Attributes.TEXT_CONTENT)) {
            return;
        }
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        if (svgDrawContext.getPreviousElementTextMove() == null) {
            currentCanvas.moveText(svgDrawContext.getTextMove()[0], svgDrawContext.getTextMove()[1]);
        } else {
            currentCanvas.moveText(svgDrawContext.getPreviousElementTextMove()[0], svgDrawContext.getPreviousElementTextMove()[1]);
        }
        currentCanvas.showText(this.attributesAndStyles.get(SvgConstants.Attributes.TEXT_CONTENT));
    }
}

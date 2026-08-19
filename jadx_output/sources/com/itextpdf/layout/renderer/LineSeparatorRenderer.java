package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.CanvasArtifact;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.canvas.draw.ILineDrawer;
import com.itextpdf.layout.element.LineSeparator;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;

/* JADX INFO: loaded from: classes6.dex */
public class LineSeparatorRenderer extends BlockRenderer {
    public LineSeparatorRenderer(LineSeparator lineSeparator) {
        super(lineSeparator);
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.IRenderer
    public LayoutResult layout(LayoutContext layoutContext) {
        Rectangle rectangleMo3120clone = layoutContext.getArea().getBBox().mo3120clone();
        if (getProperty(55) != null) {
            rectangleMo3120clone.moveDown(1000000.0f - rectangleMo3120clone.getHeight()).setHeight(1000000.0f);
        }
        ILineDrawer iLineDrawer = (ILineDrawer) getProperty(35);
        float lineWidth = iLineDrawer != null ? iLineDrawer.getLineWidth() : 0.0f;
        this.occupiedArea = new LayoutArea(layoutContext.getArea().getPageNumber(), rectangleMo3120clone.mo3120clone());
        applyMargins(this.occupiedArea.getBBox(), false);
        Float fRetrieveWidth = retrieveWidth(layoutContext.getArea().getBBox().getWidth());
        if (fRetrieveWidth == null) {
            fRetrieveWidth = Float.valueOf(this.occupiedArea.getBBox().getWidth());
        }
        if ((this.occupiedArea.getBBox().getHeight() < lineWidth || this.occupiedArea.getBBox().getWidth() < fRetrieveWidth.floatValue()) && !hasOwnProperty(26)) {
            return new LayoutResult(3, null, null, this, this);
        }
        this.occupiedArea.getBBox().setWidth(fRetrieveWidth.floatValue()).moveUp(this.occupiedArea.getBBox().getHeight() - lineWidth).setHeight(lineWidth);
        applyMargins(this.occupiedArea.getBBox(), true);
        if (getProperty(55) != null) {
            applyRotationLayout(layoutContext.getArea().getBBox().mo3120clone());
            if (isNotFittingLayoutArea(layoutContext.getArea()) && !Boolean.TRUE.equals(getPropertyAsBoolean(26))) {
                return new LayoutResult(3, null, null, this, this);
            }
        }
        return new LayoutResult(1, this.occupiedArea, this, null);
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        return new LineSeparatorRenderer((LineSeparator) this.modelElement);
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public void drawChildren(DrawContext drawContext) {
        ILineDrawer iLineDrawer = (ILineDrawer) getProperty(35);
        if (iLineDrawer != null) {
            PdfCanvas canvas = drawContext.getCanvas();
            boolean zIsTaggingEnabled = drawContext.isTaggingEnabled();
            if (zIsTaggingEnabled) {
                canvas.openTag(new CanvasArtifact());
            }
            Rectangle occupiedAreaBBox = getOccupiedAreaBBox();
            applyMargins(occupiedAreaBBox, false);
            iLineDrawer.draw(canvas, occupiedAreaBBox);
            if (zIsTaggingEnabled) {
                canvas.closeTag();
            }
        }
    }
}

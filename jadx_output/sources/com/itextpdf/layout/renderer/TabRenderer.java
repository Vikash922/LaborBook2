package com.itextpdf.layout.renderer;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.CanvasArtifact;
import com.itextpdf.kernel.pdf.canvas.draw.ILineDrawer;
import com.itextpdf.layout.element.Tab;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class TabRenderer extends AbstractRenderer {
    public TabRenderer(Tab tab) {
        super(tab);
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public LayoutResult layout(LayoutContext layoutContext) {
        LayoutArea area = layoutContext.getArea();
        this.occupiedArea = new LayoutArea(area.getPageNumber(), new Rectangle(area.getBBox().getX(), area.getBBox().getY() + area.getBBox().getHeight(), retrieveWidth(area.getBBox().getWidth()).floatValue(), ((UnitValue) getProperty(85)).getValue()));
        TargetCounterHandler.addPageByID(this);
        return new LayoutResult(1, this.occupiedArea, null, null);
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void draw(DrawContext drawContext) {
        if (this.occupiedArea == null) {
            LoggerFactory.getLogger((Class<?>) TabRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.OCCUPIED_AREA_HAS_NOT_BEEN_INITIALIZED, "Drawing won't be performed."));
            return;
        }
        ILineDrawer iLineDrawer = (ILineDrawer) getProperty(68);
        if (iLineDrawer == null) {
            return;
        }
        boolean zIsTaggingEnabled = drawContext.isTaggingEnabled();
        if (zIsTaggingEnabled) {
            drawContext.getCanvas().openTag(new CanvasArtifact());
        }
        beginElementOpacityApplying(drawContext);
        iLineDrawer.draw(drawContext.getCanvas(), this.occupiedArea.getBBox());
        endElementOpacityApplying(drawContext);
        if (zIsTaggingEnabled) {
            drawContext.getCanvas().closeTag();
        }
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        logWarningIfGetNextRendererNotOverridden(TabRenderer.class, getClass());
        return new TabRenderer((Tab) this.modelElement);
    }
}

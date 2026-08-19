package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.pdf.tagutils.TagTreePointer;
import com.itextpdf.layout.Canvas;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.layout.RootLayoutArea;
import com.itextpdf.layout.properties.Transform;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CanvasRenderer extends RootRenderer {
    protected Canvas canvas;

    public CanvasRenderer(Canvas canvas) {
        this(canvas, true);
    }

    public CanvasRenderer(Canvas canvas, boolean z) {
        this.canvas = canvas;
        this.modelElement = canvas;
        this.immediateFlush = z;
    }

    @Override // com.itextpdf.layout.renderer.RootRenderer, com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void addChild(IRenderer iRenderer) {
        if (Boolean.TRUE.equals(getPropertyAsBoolean(25))) {
            LoggerFactory.getLogger((Class<?>) CanvasRenderer.class).warn(IoLogMessageConstant.CANVAS_ALREADY_FULL_ELEMENT_WILL_BE_SKIPPED);
        } else {
            super.addChild(iRenderer);
        }
    }

    @Override // com.itextpdf.layout.renderer.RootRenderer
    protected void flushSingleRenderer(IRenderer iRenderer) {
        TagTreePointer autoTaggingPointer;
        linkRenderToDocument(iRenderer, this.canvas.getPdfDocument());
        Transform transform = (Transform) iRenderer.getProperty(53);
        if (!this.waitingDrawingElements.contains(iRenderer)) {
            processWaitingDrawing(iRenderer, transform, this.waitingDrawingElements);
            if (FloatingHelper.isRendererFloating(iRenderer) || transform != null) {
                return;
            }
        }
        if (iRenderer.isFlushed()) {
            return;
        }
        boolean z = this.canvas.getPdfDocument().isTagged() && this.canvas.isAutoTaggingEnabled();
        if (z) {
            autoTaggingPointer = this.canvas.getPdfDocument().getTagStructureContext().getAutoTaggingPointer();
            autoTaggingPointer.setPageForTagging(this.canvas.getPage());
            int contentStreamCount = this.canvas.getPage().getContentStreamCount() - 1;
            while (true) {
                if (contentStreamCount >= 0) {
                    if (this.canvas.getPage().getContentStream(contentStreamCount).equals(this.canvas.getPdfCanvas().getContentStream())) {
                        break;
                    } else {
                        contentStreamCount--;
                    }
                } else {
                    autoTaggingPointer.setContentStreamForTagging(this.canvas.getPdfCanvas().getContentStream());
                    break;
                }
            }
        } else {
            autoTaggingPointer = null;
        }
        iRenderer.draw(new DrawContext(this.canvas.getPdfDocument(), this.canvas.getPdfCanvas(), z));
        if (z) {
            autoTaggingPointer.setContentStreamForTagging(null);
        }
    }

    @Override // com.itextpdf.layout.renderer.RootRenderer
    protected LayoutArea updateCurrentArea(LayoutResult layoutResult) {
        if (this.currentArea == null) {
            this.currentArea = new RootLayoutArea(this.canvas.isCanvasOfPage() ? this.canvas.getPdfDocument().getPageNumber(this.canvas.getPage()) : 0, this.canvas.getRootArea().mo3120clone());
        } else {
            setProperty(25, true);
            this.currentArea = null;
        }
        return this.currentArea;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        return new CanvasRenderer(this.canvas, this.immediateFlush);
    }
}

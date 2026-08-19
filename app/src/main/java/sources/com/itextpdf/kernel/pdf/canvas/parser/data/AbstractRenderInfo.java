package com.itextpdf.kernel.pdf.canvas.parser.data;

import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.p017io.logs.IoLogMessageConstant;

/* JADX INFO: loaded from: classes6.dex */
public class AbstractRenderInfo implements IEventData {
    private boolean graphicsStateIsPreserved;

    /* JADX INFO: renamed from: gs */
    protected CanvasGraphicsState f3175gs;

    public AbstractRenderInfo(CanvasGraphicsState canvasGraphicsState) {
        this.f3175gs = canvasGraphicsState;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.data.IEventData
    public CanvasGraphicsState getGraphicsState() {
        checkGraphicsState();
        return this.graphicsStateIsPreserved ? this.f3175gs : new CanvasGraphicsState(this.f3175gs);
    }

    public boolean isGraphicsStatePreserved() {
        return this.graphicsStateIsPreserved;
    }

    public void preserveGraphicsState() {
        checkGraphicsState();
        this.graphicsStateIsPreserved = true;
        this.f3175gs = new CanvasGraphicsState(this.f3175gs);
    }

    public void releaseGraphicsState() {
        if (this.graphicsStateIsPreserved) {
            return;
        }
        this.f3175gs = null;
    }

    protected void checkGraphicsState() {
        if (this.f3175gs == null) {
            throw new IllegalStateException(IoLogMessageConstant.GRAPHICS_STATE_WAS_DELETED);
        }
    }
}

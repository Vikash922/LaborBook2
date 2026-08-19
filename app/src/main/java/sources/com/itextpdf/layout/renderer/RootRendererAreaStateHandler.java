package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.layout.RootLayoutArea;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class RootRendererAreaStateHandler {
    private RootLayoutArea storedNextArea;
    private RootLayoutArea storedPreviousArea;
    private List<Rectangle> storedPreviousFloatRenderAreas = null;
    private List<Rectangle> storedNextFloatRenderAreas = null;

    RootRendererAreaStateHandler() {
    }

    public boolean attemptGoBackToStoredPreviousStateAndStoreNextState(RootRenderer rootRenderer) {
        if (this.storedPreviousArea == null) {
            return false;
        }
        this.storedNextArea = rootRenderer.currentArea;
        rootRenderer.currentArea = this.storedPreviousArea;
        this.storedNextFloatRenderAreas = new ArrayList(rootRenderer.floatRendererAreas);
        rootRenderer.floatRendererAreas = this.storedPreviousFloatRenderAreas;
        this.storedPreviousFloatRenderAreas = null;
        this.storedPreviousArea = null;
        return true;
    }

    public boolean attemptGoForwardToStoredNextState(RootRenderer rootRenderer) {
        RootLayoutArea rootLayoutArea = this.storedNextArea;
        if (rootLayoutArea == null) {
            return false;
        }
        rootRenderer.currentArea = rootLayoutArea;
        rootRenderer.floatRendererAreas = this.storedNextFloatRenderAreas;
        this.storedNextArea = null;
        this.storedNextFloatRenderAreas = null;
        return true;
    }

    public RootRendererAreaStateHandler storePreviousState(RootRenderer rootRenderer) {
        this.storedPreviousArea = rootRenderer.currentArea;
        this.storedPreviousFloatRenderAreas = new ArrayList(rootRenderer.floatRendererAreas);
        return this;
    }
}

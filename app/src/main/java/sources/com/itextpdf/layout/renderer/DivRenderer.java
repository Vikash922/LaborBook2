package com.itextpdf.layout.renderer;

import com.itextpdf.layout.element.Div;

/* JADX INFO: loaded from: classes6.dex */
public class DivRenderer extends BlockRenderer {
    public DivRenderer(Div div) {
        super(div);
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        logWarningIfGetNextRendererNotOverridden(DivRenderer.class, getClass());
        return new DivRenderer((Div) this.modelElement);
    }
}

package com.itextpdf.layout.element;

import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.TabRenderer;

/* JADX INFO: loaded from: classes6.dex */
public class Tab extends AbstractElement<Tab> implements ILeafElement {
    @Override // com.itextpdf.layout.element.AbstractElement
    protected IRenderer makeNewRenderer() {
        return new TabRenderer(this);
    }
}

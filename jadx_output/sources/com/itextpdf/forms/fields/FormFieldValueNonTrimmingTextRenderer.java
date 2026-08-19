package com.itextpdf.forms.fields;

import com.itextpdf.layout.element.Text;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.layout.TextLayoutResult;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.TextRenderer;

/* JADX INFO: loaded from: classes6.dex */
class FormFieldValueNonTrimmingTextRenderer extends TextRenderer {
    private boolean callTrimFirst;

    public FormFieldValueNonTrimmingTextRenderer(Text text) {
        super(text);
        this.callTrimFirst = false;
    }

    @Override // com.itextpdf.layout.renderer.TextRenderer, com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        return new FormFieldValueNonTrimmingTextRenderer((Text) getModelElement());
    }

    @Override // com.itextpdf.layout.renderer.TextRenderer, com.itextpdf.layout.renderer.IRenderer
    public LayoutResult layout(LayoutContext layoutContext) {
        LayoutResult layoutResultLayout = super.layout(layoutContext);
        if ((layoutResultLayout instanceof TextLayoutResult) && (layoutResultLayout.getOverflowRenderer() instanceof FormFieldValueNonTrimmingTextRenderer) && !((TextLayoutResult) layoutResultLayout).isSplitForcedByNewline()) {
            ((FormFieldValueNonTrimmingTextRenderer) layoutResultLayout.getOverflowRenderer()).setCallTrimFirst(true);
        }
        return layoutResultLayout;
    }

    @Override // com.itextpdf.layout.renderer.TextRenderer
    public void trimFirst() {
        if (this.callTrimFirst) {
            super.trimFirst();
        }
    }

    private void setCallTrimFirst(boolean z) {
        this.callTrimFirst = z;
    }
}

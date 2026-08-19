package com.itextpdf.kernel.pdf.canvas.parser.listener;

/* JADX INFO: loaded from: classes6.dex */
public class GlyphTextEventListener extends GlyphEventListener implements ITextExtractionStrategy {
    public GlyphTextEventListener(ITextExtractionStrategy iTextExtractionStrategy) {
        super(iTextExtractionStrategy);
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextExtractionStrategy
    public String getResultantText() {
        if (this.delegate instanceof ITextExtractionStrategy) {
            return ((ITextExtractionStrategy) this.delegate).getResultantText();
        }
        return null;
    }
}

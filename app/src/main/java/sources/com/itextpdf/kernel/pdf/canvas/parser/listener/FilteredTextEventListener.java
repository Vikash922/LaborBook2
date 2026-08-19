package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.pdf.canvas.parser.filter.IEventFilter;

/* JADX INFO: loaded from: classes6.dex */
public class FilteredTextEventListener extends FilteredEventListener implements ITextExtractionStrategy {
    public FilteredTextEventListener(ITextExtractionStrategy iTextExtractionStrategy, IEventFilter... iEventFilterArr) {
        super(iTextExtractionStrategy, iEventFilterArr);
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextExtractionStrategy
    public String getResultantText() {
        StringBuilder sb = new StringBuilder();
        for (IEventListener iEventListener : this.delegates) {
            if (iEventListener instanceof ITextExtractionStrategy) {
                sb.append(((ITextExtractionStrategy) iEventListener).getResultantText());
            }
        }
        return sb.toString();
    }
}

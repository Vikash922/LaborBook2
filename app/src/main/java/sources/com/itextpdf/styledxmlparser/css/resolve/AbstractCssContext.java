package com.itextpdf.styledxmlparser.css.resolve;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractCssContext {
    private int quotesDepth = 0;

    public int getQuotesDepth() {
        return this.quotesDepth;
    }

    public void setQuotesDepth(int i) {
        this.quotesDepth = i;
    }
}

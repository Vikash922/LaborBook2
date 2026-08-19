package com.itextpdf.kernel.pdf;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class PdfArrayDirectIterator implements Iterator<PdfObject> {
    Iterator<PdfObject> array;

    PdfArrayDirectIterator(List<PdfObject> list) {
        this.array = list.iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.array.hasNext();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public PdfObject next() {
        PdfObject next = this.array.next();
        return next.isIndirectReference() ? ((PdfIndirectReference) next).getRefersTo(true) : next;
    }

    @Override // java.util.Iterator
    public void remove() {
        this.array.remove();
    }
}

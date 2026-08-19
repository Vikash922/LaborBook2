package com.itextpdf.kernel.pdf;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
class PdfDictionaryValues extends AbstractCollection<PdfObject> {
    private final Collection<PdfObject> collection;

    PdfDictionaryValues(Collection<PdfObject> collection) {
        this.collection = collection;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(PdfObject pdfObject) {
        return this.collection.add(pdfObject);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (this.collection.contains(obj)) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        Iterator<PdfObject> it = iterator();
        while (it.hasNext()) {
            if (PdfObject.equalContent((PdfObject) obj, it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        if (this.collection.remove(obj)) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        Iterator<PdfObject> it = iterator();
        while (it.hasNext()) {
            if (PdfObject.equalContent((PdfObject) obj, it.next())) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.collection.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.collection.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<PdfObject> iterator() {
        return new DirectIterator(this.collection.iterator());
    }

    private static class DirectIterator implements Iterator<PdfObject> {
        Iterator<PdfObject> parentIterator;

        DirectIterator(Iterator<PdfObject> it) {
            this.parentIterator = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.parentIterator.hasNext();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public PdfObject next() {
            PdfObject next = this.parentIterator.next();
            return (next == null || !next.isIndirectReference()) ? next : ((PdfIndirectReference) next).getRefersTo(true);
        }

        @Override // java.util.Iterator
        public void remove() {
            this.parentIterator.remove();
        }
    }
}

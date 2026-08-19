package com.itextpdf.kernel.pdf;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
class PdfDictionaryEntrySet extends AbstractSet<Map.Entry<PdfName, PdfObject>> {
    private final Set<Map.Entry<PdfName, PdfObject>> set;

    PdfDictionaryEntrySet(Set<Map.Entry<PdfName, PdfObject>> set) {
        this.set = set;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.set.contains(obj) || super.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.set.remove(obj) || super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<PdfName, PdfObject>> iterator() {
        return new DirectIterator(this.set.iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.set.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.set.clear();
    }

    private static class DirectIterator implements Iterator<Map.Entry<PdfName, PdfObject>> {
        Iterator<Map.Entry<PdfName, PdfObject>> parentIterator;

        public DirectIterator(Iterator<Map.Entry<PdfName, PdfObject>> it) {
            this.parentIterator = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.parentIterator.hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<PdfName, PdfObject> next() {
            return new DirectEntry(this.parentIterator.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.parentIterator.remove();
        }
    }

    private static class DirectEntry implements Map.Entry<PdfName, PdfObject> {
        Map.Entry<PdfName, PdfObject> entry;

        DirectEntry(Map.Entry<PdfName, PdfObject> entry) {
            this.entry = entry;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Map.Entry
        public PdfName getKey() {
            return this.entry.getKey();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Map.Entry
        public PdfObject getValue() {
            PdfObject value = this.entry.getValue();
            return (value == null || !value.isIndirectReference()) ? value : ((PdfIndirectReference) value).getRefersTo(true);
        }

        @Override // java.util.Map.Entry
        public PdfObject setValue(PdfObject pdfObject) {
            return this.entry.setValue(pdfObject);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            PdfName key = getKey();
            Object key2 = entry.getKey();
            if (key != null && key.equals(key2)) {
                PdfObject value = getValue();
                Object value2 = entry.getValue();
                if (value != null && value.equals(value2)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return Objects.hashCode(getKey()) ^ Objects.hashCode(getValue());
        }
    }
}

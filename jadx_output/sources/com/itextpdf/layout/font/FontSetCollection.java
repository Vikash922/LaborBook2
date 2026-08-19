package com.itextpdf.layout.font;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
class FontSetCollection extends AbstractCollection<FontInfo> {
    private final Collection<FontInfo> additional;
    private final Collection<FontInfo> primary;

    FontSetCollection(Collection<FontInfo> collection, Collection<FontInfo> collection2) {
        this.primary = collection;
        this.additional = collection2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        int size = this.primary.size();
        Collection<FontInfo> collection = this.additional;
        return size + (collection != null ? collection.size() : 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<FontInfo> iterator() {
        return new Iterator<FontInfo>() { // from class: com.itextpdf.layout.font.FontSetCollection.1

            /* JADX INFO: renamed from: i */
            private Iterator<FontInfo> f3207i;
            boolean isPrimary = true;

            {
                this.f3207i = FontSetCollection.this.primary.iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                boolean zHasNext = this.f3207i.hasNext();
                if (zHasNext || !this.isPrimary || FontSetCollection.this.additional == null) {
                    return zHasNext;
                }
                Iterator<FontInfo> it = FontSetCollection.this.additional.iterator();
                this.f3207i = it;
                this.isPrimary = false;
                return it.hasNext();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public FontInfo next() {
                return this.f3207i.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }
}

package com.inmobi.media;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: loaded from: classes6.dex */
public final class G7 implements Iterator, KMutableIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f124a;
    public final /* synthetic */ H7 b;

    public G7(H7 h7) {
        this.b = h7;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f124a < this.b.B;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            ArrayList arrayList = this.b.A;
            int i = this.f124a;
            this.f124a = i + 1;
            D7 d7 = (D7) arrayList.get(i);
            Intrinsics.checkNotNull(d7);
            return d7;
        } catch (IndexOutOfBoundsException e) {
            this.f124a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

package com.inmobi.media;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: renamed from: com.inmobi.media.G7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2785G7 implements Iterator, KMutableIterator {

    /* JADX INFO: renamed from: a */
    public int f1054a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2800H7 f1055b;

    public C2785G7(C2800H7 c2800h7) {
        this.f1055b = c2800h7;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1054a < this.f1055b.f1075B;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            ArrayList arrayList = this.f1055b.f1074A;
            int i = this.f1054a;
            this.f1054a = i + 1;
            C2740D7 c2740d7 = (C2740D7) arrayList.get(i);
            Intrinsics.checkNotNull(c2740d7);
            return c2740d7;
        } catch (IndexOutOfBoundsException e) {
            this.f1054a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

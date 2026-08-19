package com.inmobi.media;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class D implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        C0437o4 c0437o4 = (C0437o4) obj2;
        C0437o4 c0437o42 = (C0437o4) obj;
        return ComparisonsKt.compareValues(Integer.valueOf(c0437o4.c * c0437o4.d), Integer.valueOf(c0437o42.c * c0437o42.d));
    }
}

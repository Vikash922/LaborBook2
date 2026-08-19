package com.inmobi.media;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: renamed from: com.inmobi.media.D */
/* JADX INFO: loaded from: classes6.dex */
public final class C2732D implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        C3281o4 c3281o4 = (C3281o4) obj2;
        C3281o4 c3281o42 = (C3281o4) obj;
        return ComparisonsKt.compareValues(Integer.valueOf(c3281o4.f2401c * c3281o4.f2402d), Integer.valueOf(c3281o42.f2401c * c3281o42.f2402d));
    }
}

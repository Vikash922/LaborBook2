package com.inmobi.media;

import java.util.LinkedList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.S0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2955S0 {

    /* JADX INFO: renamed from: a */
    public final AbstractC2928Q0 f1515a;

    /* JADX INFO: renamed from: b */
    public final C3349sc f1516b;

    /* JADX INFO: renamed from: c */
    public long f1517c;

    /* JADX INFO: renamed from: d */
    public long f1518d;

    /* JADX INFO: renamed from: e */
    public long f1519e;

    /* JADX INFO: renamed from: f */
    public long f1520f;

    /* JADX INFO: renamed from: g */
    public long f1521g;

    /* JADX INFO: renamed from: h */
    public long f1522h;

    /* JADX INFO: renamed from: i */
    public long f1523i;

    /* JADX INFO: renamed from: j */
    public final C2941R0 f1524j;

    public C2955S0(AbstractC2928Q0 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f1515a = adUnit;
        this.f1516b = new C3349sc();
        this.f1524j = new C2941R0(this);
    }

    /* JADX INFO: renamed from: a */
    public final String m1775a() {
        C3412x0 c3412x0M1709y;
        LinkedList<C3171h> linkedListM2576f;
        C3171h c3171h;
        String strM2205w;
        AbstractC2928Q0 abstractC2928Q0 = this.f1515a;
        return (abstractC2928Q0 == null || (c3412x0M1709y = abstractC2928Q0.m1709y()) == null || (linkedListM2576f = c3412x0M1709y.m2576f()) == null || (c3171h = (C3171h) CollectionsKt.firstOrNull((List) linkedListM2576f)) == null || (strM2205w = c3171h.m2205w()) == null) ? "" : strM2205w;
    }
}

package com.inmobi.media;

import java.util.BitSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r4 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3326r4 {

    /* JADX INFO: renamed from: a */
    public final C3040Y1 f2498a;

    public AbstractC3326r4(String b64feature) {
        Intrinsics.checkNotNullParameter(b64feature, "b64feature");
        C3040Y1 c3040y1 = new C3040Y1();
        this.f2498a = c3040y1;
        c3040y1.m1942a(b64feature);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2381a(boolean z) {
        BitSet bitSet = this.f2498a.f1667a;
        return bitSet != null ? bitSet.get(0) : z;
    }
}

package com.inmobi.media;

import java.util.BitSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0480r4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Y1 f470a;

    public AbstractC0480r4(String b64feature) {
        Intrinsics.checkNotNullParameter(b64feature, "b64feature");
        Y1 y1 = new Y1();
        this.f470a = y1;
        y1.a(b64feature);
    }

    public final boolean a(boolean z) {
        BitSet bitSet = this.f470a.f285a;
        return bitSet != null ? bitSet.get(0) : z;
    }
}

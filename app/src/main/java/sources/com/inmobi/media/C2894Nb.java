package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.Nb */
/* JADX INFO: loaded from: classes6.dex */
public final class C2894Nb extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C2894Nb f1318a = new C2894Nb();

    public C2894Nb() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C2924Pb.f1397a.getClass();
        C3133e6 c3133e6 = C2924Pb.f1406j;
        int i = 0;
        if (c3133e6 != null) {
            Intrinsics.checkNotNullParameter("cnt", "key");
            i = c3133e6.f2045a.getInt("cnt", 0);
        }
        return Integer.valueOf(i);
    }
}

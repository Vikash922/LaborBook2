package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class Nb extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Nb f194a = new Nb();

    public Nb() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Pb.f217a.getClass();
        C0284e6 c0284e6 = Pb.j;
        int i = 0;
        if (c0284e6 != null) {
            Intrinsics.checkNotNullParameter("cnt", "key");
            i = c0284e6.f340a.getInt("cnt", 0);
        }
        return Integer.valueOf(i);
    }
}

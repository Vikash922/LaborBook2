package com.inmobi.media;

import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.F6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2769F6 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2784G6 f1020a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Context f1021b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2769F6(C2784G6 c2784g6, Context context) {
        super(1);
        this.f1020a = c2784g6;
        this.f1021b = context;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3448z6 it = (C3448z6) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        C2784G6 c2784g6 = this.f1020a;
        c2784g6.m1143a(this.f1021b, c2784g6.f1047a, it);
        return Unit.INSTANCE;
    }
}

package com.inmobi.media;

import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class F6 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ G6 f115a;
    public final /* synthetic */ Context b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F6(G6 g6, Context context) {
        super(1);
        this.f115a = g6;
        this.b = context;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0596z6 it = (C0596z6) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        G6 g6 = this.f115a;
        g6.a(this.b, g6.f123a, it);
        return Unit.INSTANCE;
    }
}

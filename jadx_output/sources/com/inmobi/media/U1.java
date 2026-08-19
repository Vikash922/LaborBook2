package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class U1 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ V1 f252a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U1(V1 v1) {
        super(0);
        this.f252a = v1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return this.f252a.f();
    }
}

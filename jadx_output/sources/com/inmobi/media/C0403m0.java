package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0403m0 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0418n0 f417a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0403m0(C0418n0 c0418n0) {
        super(0);
        this.f417a = c0418n0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return Boolean.valueOf(this.f417a.h == qd.c);
    }
}

package com.inmobi.media;

import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.g7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0318g7 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int[] f359a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0318g7(int[] iArr) {
        super(1);
        this.f359a = iArr;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0233b2 event = (C0233b2) obj;
        Intrinsics.checkNotNullParameter(event, "event");
        return Boolean.valueOf(ArraysKt.contains(this.f359a, event.f310a));
    }
}

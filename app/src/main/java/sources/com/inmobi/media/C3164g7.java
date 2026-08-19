package com.inmobi.media;

import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.g7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3164g7 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int[] f2103a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3164g7(int[] iArr) {
        super(1);
        this.f2103a = iArr;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3084b2 event = (C3084b2) obj;
        Intrinsics.checkNotNullParameter(event, "event");
        return Boolean.valueOf(ArraysKt.contains(this.f2103a, event.f1872a));
    }
}

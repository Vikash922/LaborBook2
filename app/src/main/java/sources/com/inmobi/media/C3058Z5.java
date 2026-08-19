package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.Z5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3058Z5 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3082b0 f1805a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3058Z5(C3082b0 c3082b0) {
        super(1);
        this.f1805a = c3082b0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3256m9 it = (C3256m9) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f1805a.invoke(it.f2333c);
        return Unit.INSTANCE;
    }
}

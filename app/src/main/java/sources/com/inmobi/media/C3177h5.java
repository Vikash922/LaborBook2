package com.inmobi.media;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.h5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3177h5 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ArrayList f2134a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3177h5(ArrayList arrayList) {
        super(1);
        this.f2134a = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C2738D5 it = (C2738D5) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f2134a.add(new C2798H5(it));
        return Unit.INSTANCE;
    }
}

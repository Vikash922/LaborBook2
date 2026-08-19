package com.inmobi.media;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.h5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0331h5 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f370a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0331h5(ArrayList arrayList) {
        super(1);
        this.f370a = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        D5 it = (D5) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f370a.add(new H5(it));
        return Unit.INSTANCE;
    }
}

package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.s9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0499s9 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0513t9 f482a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0499s9(C0513t9 c0513t9) {
        super(1);
        this.f482a = c0513t9;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0412m9 it = (C0412m9) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        InterfaceC0298f5 interfaceC0298f5 = this.f482a.b;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("NovatiqDataHandler", "Novatiq hyper id synced");
        }
        return Unit.INSTANCE;
    }
}

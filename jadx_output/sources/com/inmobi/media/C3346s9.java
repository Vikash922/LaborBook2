package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.s9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3346s9 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3361t9 f2536a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3346s9(C3361t9 c3361t9) {
        super(1);
        this.f2536a = c3361t9;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3256m9 it = (C3256m9) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        InterfaceC3147f5 interfaceC3147f5 = this.f2536a.f2617b;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("NovatiqDataHandler", "Novatiq hyper id synced");
        }
        return Unit.INSTANCE;
    }
}

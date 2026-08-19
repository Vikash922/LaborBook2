package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.d */
/* JADX INFO: loaded from: classes6.dex */
public final class C3111d extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Lambda f1970a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InterfaceC3277o0 f1971b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC3034X9 f1972c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C3111d(Function0 function0, InterfaceC3277o0 interfaceC3277o0, InterfaceC3034X9 interfaceC3034X9) {
        super(0);
        this.f1970a = (Lambda) function0;
        this.f1971b = interfaceC3277o0;
        this.f1972c = interfaceC3034X9;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.jvm.functions.Function0, kotlin.jvm.internal.Lambda] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        try {
            if (((Boolean) this.f1970a.invoke()).booleanValue()) {
                this.f1972c.mo1913a(this.f1971b.mo1145a());
            } else {
                this.f1972c.onError(new Exception("Capture Aborted: Should Capture not satisfied"));
            }
        } catch (Exception e) {
            this.f1972c.onError(e);
        }
        return Unit.INSTANCE;
    }
}

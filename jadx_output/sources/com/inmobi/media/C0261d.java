package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0261d extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Lambda f326a;
    public final /* synthetic */ InterfaceC0433o0 b;
    public final /* synthetic */ X9 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C0261d(Function0 function0, InterfaceC0433o0 interfaceC0433o0, X9 x9) {
        super(0);
        this.f326a = (Lambda) function0;
        this.b = interfaceC0433o0;
        this.c = x9;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.jvm.functions.Function0, kotlin.jvm.internal.Lambda] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        try {
            if (((Boolean) this.f326a.invoke()).booleanValue()) {
                this.c.a(this.b.a());
            } else {
                this.c.onError(new Exception("Capture Aborted: Should Capture not satisfied"));
            }
        } catch (Exception e) {
            this.c.onError(e);
        }
        return Unit.INSTANCE;
    }
}

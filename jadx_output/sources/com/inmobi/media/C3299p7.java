package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.p7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3299p7 implements InterfaceC3396w {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3359t7 f2436a;

    public C3299p7(C3359t7 c3359t7) {
        this.f2436a = c3359t7;
    }

    @Override // com.inmobi.media.InterfaceC3396w
    /* JADX INFO: renamed from: a */
    public final void mo1802a() {
        Intrinsics.checkNotNullExpressionValue(this.f2436a.f2587m, "access$getTAG$p(...)");
        C2898O0 c2898o0 = this.f2436a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1413c();
        }
    }

    @Override // com.inmobi.media.InterfaceC3396w
    /* JADX INFO: renamed from: b */
    public final void mo1804b(Object obj) {
        C2898O0 c2898o0 = this.f2436a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1412b();
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f2436a.f2584j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2146a();
        }
    }

    @Override // com.inmobi.media.InterfaceC3396w
    /* JADX INFO: renamed from: a */
    public final void mo1803a(Object obj) {
        C2898O0 c2898o0;
        if (this.f2436a.m2445f() == null || (c2898o0 = this.f2436a.f2597w) == null) {
            return;
        }
        c2898o0.m1414d();
    }
}

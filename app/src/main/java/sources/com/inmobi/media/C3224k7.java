package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.k7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3224k7 implements InterfaceC3099c2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3359t7 f2255a;

    public C3224k7(C3359t7 c3359t7) {
        this.f2255a = c3359t7;
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: a */
    public final void mo1521a(int i, int i2, int i3, int i4, int i5) {
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: a */
    public final void mo1523a(String url, String api, C3358t6 c3358t6) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(api, "api");
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: b */
    public final void mo1524b() {
        C2898O0 c2898o0 = this.f2255a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1414d();
        }
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: c */
    public final void mo1525c() {
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: a */
    public final void mo1522a(EnumC3178h6 landingPageFunnelState, C3358t6 c3358t6, Integer num) {
        Intrinsics.checkNotNullParameter(landingPageFunnelState, "landingPageFunnelState");
        C3238l6.m2281a(landingPageFunnelState, c3358t6, num, 8);
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: a */
    public final void mo1520a() {
        C2898O0 c2898o0 = this.f2255a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1412b();
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f2255a.f2584j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2146a();
        }
    }
}

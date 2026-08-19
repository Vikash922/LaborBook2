package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.k7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0379k7 implements InterfaceC0248c2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0511t7 f402a;

    public C0379k7(C0511t7 c0511t7) {
        this.f402a = c0511t7;
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void a(int i, int i2, int i3, int i4, int i5) {
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void a(String url, String api, C0510t6 c0510t6) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(api, "api");
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void b() {
        O0 o0 = this.f402a.w;
        if (o0 != null) {
            o0.d();
        }
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void c() {
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void a(EnumC0332h6 landingPageFunnelState, C0510t6 c0510t6, Integer num) {
        Intrinsics.checkNotNullParameter(landingPageFunnelState, "landingPageFunnelState");
        C0393l6.a(landingPageFunnelState, c0510t6, num, 8);
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void a() {
        O0 o0 = this.f402a.w;
        if (o0 != null) {
            o0.b();
        }
        InterfaceC0298f5 interfaceC0298f5 = this.f402a.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a();
        }
    }
}

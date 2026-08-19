package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.h0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3172h0 implements InterfaceC3034X9 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3262n0 f2118a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ boolean f2119b;

    public C3172h0(C3262n0 c3262n0, boolean z) {
        this.f2118a = c3262n0;
        this.f2119b = z;
    }

    @Override // com.inmobi.media.InterfaceC3034X9
    /* JADX INFO: renamed from: a */
    public final void mo1913a(Object obj) {
        ((Boolean) obj).getClass();
        this.f2118a.m2305a("result pushed to queue");
        if (this.f2119b) {
            C3262n0 c3262n0 = this.f2118a;
            c3262n0.m2305a("session end - cleanup");
            c3262n0.f2362g = null;
            c3262n0.f2361f.clear();
            c3262n0.f2358c.set(false);
            c3262n0.f2359d.set(false);
        }
    }

    @Override // com.inmobi.media.InterfaceC3034X9
    public final void onError(Exception exc) {
        this.f2118a.m2304a(exc, "error in pushing to queue");
    }
}

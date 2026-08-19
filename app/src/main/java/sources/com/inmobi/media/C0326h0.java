package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0326h0 implements X9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0418n0 f366a;
    public final /* synthetic */ boolean b;

    public C0326h0(C0418n0 c0418n0, boolean z) {
        this.f366a = c0418n0;
        this.b = z;
    }

    @Override // com.inmobi.media.X9
    public final void a(Object obj) {
        ((Boolean) obj).getClass();
        this.f366a.a("result pushed to queue");
        if (this.b) {
            C0418n0 c0418n0 = this.f366a;
            c0418n0.a("session end - cleanup");
            c0418n0.g = null;
            c0418n0.f.clear();
            c0418n0.c.set(false);
            c0418n0.d.set(false);
        }
    }

    @Override // com.inmobi.media.X9
    public final void onError(Exception exc) {
        this.f366a.a(exc, "error in pushing to queue");
    }
}

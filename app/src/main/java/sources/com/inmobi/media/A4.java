package com.inmobi.media;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class A4 implements J4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C4 f73a;

    public A4(C4 c4) {
        this.f73a = c4;
    }

    @Override // com.inmobi.media.J4
    public final void a(View view, Object obj) {
        if (view instanceof Ya) {
            InterfaceC0298f5 interfaceC0298f5 = this.f73a.f;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).a("HtmlAdTracker", "fireImpression");
            }
            ((Ya) view).j();
        }
    }
}

package com.inmobi.media;

import android.view.View;

/* JADX INFO: renamed from: com.inmobi.media.A4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2692A4 implements InterfaceC2827J4 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2722C4 f821a;

    public C2692A4(C2722C4 c2722c4) {
        this.f821a = c2722c4;
    }

    @Override // com.inmobi.media.InterfaceC2827J4
    /* JADX INFO: renamed from: a */
    public final void mo834a(View view, Object obj) {
        if (view instanceof GestureDetectorOnGestureListenerC3049Ya) {
            InterfaceC3147f5 interfaceC3147f5 = this.f821a.f876f;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2147a("HtmlAdTracker", "fireImpression");
            }
            ((GestureDetectorOnGestureListenerC3049Ya) view).m1975j();
        }
    }
}

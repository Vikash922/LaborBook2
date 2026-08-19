package com.inmobi.media;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Ja */
/* JADX INFO: loaded from: classes6.dex */
public final class C2833Ja implements InterfaceC3335rd {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ GestureDetectorOnGestureListenerC3049Ya f1138a;

    public C2833Ja(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        this.f1138a = gestureDetectorOnGestureListenerC3049Ya;
    }

    @Override // com.inmobi.media.InterfaceC3335rd
    /* JADX INFO: renamed from: a */
    public final void mo1197a(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof GestureDetectorOnGestureListenerC3049Ya) {
            if (this.f1138a.hasWindowFocus()) {
                this.f1138a.m1965c(z);
            } else {
                this.f1138a.m1965c(false);
            }
        }
    }
}

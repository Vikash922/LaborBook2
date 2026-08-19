package com.inmobi.media;

import androidx.webkit.Profile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Sa */
/* JADX INFO: loaded from: classes6.dex */
public final class C2965Sa implements InterfaceC3396w {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ GestureDetectorOnGestureListenerC3049Ya f1541a;

    public C2965Sa(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        this.f1541a = gestureDetectorOnGestureListenerC3049Ya;
    }

    @Override // com.inmobi.media.InterfaceC3396w
    /* JADX INFO: renamed from: a */
    public final void mo1802a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1541a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "onAdScreenDisplayFailed");
        }
        this.f1541a.getListener().mo1647c();
    }

    @Override // com.inmobi.media.InterfaceC3396w
    /* JADX INFO: renamed from: b */
    public final void mo1804b(Object obj) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1541a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "onAdScreenDismissed");
        }
        if (Intrinsics.areEqual(Profile.DEFAULT_PROFILE_NAME, this.f1541a.getViewState())) {
            this.f1541a.setAndUpdateViewState("Hidden");
        }
        this.f1541a.m1988w();
    }

    @Override // com.inmobi.media.InterfaceC3396w
    /* JADX INFO: renamed from: a */
    public final void mo1803a(Object obj) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1541a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "onAdScreenDisplayed");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1541a;
        if (gestureDetectorOnGestureListenerC3049Ya.f1735b == 0) {
            gestureDetectorOnGestureListenerC3049Ya.f1710G = false;
        }
        gestureDetectorOnGestureListenerC3049Ya.getListener().mo1227e(this.f1541a);
    }
}

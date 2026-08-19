package com.inmobi.media;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.inmobi.ads.rendering.InMobiAdActivity;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.D4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2737D4 extends AbstractC2912P {

    /* JADX INFO: renamed from: e */
    public final WeakReference f911e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3411x f912f;

    /* JADX INFO: renamed from: g */
    public final RelativeLayout f913g;

    /* JADX INFO: renamed from: h */
    public boolean f914h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2737D4(WeakReference activityRef, InterfaceC3411x adContainer, RelativeLayout adBackgroundView) {
        super(adBackgroundView);
        Intrinsics.checkNotNullParameter(activityRef, "activityRef");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(adBackgroundView, "adBackgroundView");
        this.f911e = activityRef;
        this.f912f = adContainer;
        this.f913g = adBackgroundView;
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: a */
    public final void mo938a(EnumC2817I9 orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.f1347b = orientation;
        InterfaceC3411x interfaceC3411x = this.f912f;
        Intrinsics.checkNotNull(interfaceC3411x, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView");
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x;
        int iM1194a = AbstractC2832J9.m1194a(orientation);
        InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "fireOrientationChange " + gestureDetectorOnGestureListenerC3049Ya + ' ' + iM1194a);
        }
        gestureDetectorOnGestureListenerC3049Ya.m1960b("window.imraid.broadcastEvent('orientationChange','" + iM1194a + "');");
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: b */
    public final void mo939b() {
        Activity activity = (Activity) this.f911e.get();
        if (!(activity instanceof InMobiAdActivity) ? false : ((InMobiAdActivity) activity).f794e) {
            try {
                InterfaceC3396w fullScreenEventsListener = this.f912f.getFullScreenEventsListener();
                if (fullScreenEventsListener != null) {
                    fullScreenEventsListener.mo1804b(null);
                }
            } catch (Exception unused) {
                AbstractC2814I6.m1170a((byte) 2, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
            }
        } else {
            InterfaceC3411x interfaceC3411x = this.f912f;
            Intrinsics.checkNotNull(interfaceC3411x, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView");
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x;
            gestureDetectorOnGestureListenerC3049Ya.setFullScreenActivityContext(null);
            try {
                gestureDetectorOnGestureListenerC3049Ya.mo1950a();
            } catch (Exception unused2) {
                AbstractC2814I6.m1170a((byte) 2, "InMobi", "SDK encountered unexpected error in processing close request");
            }
            SparseArray sparseArray = InMobiAdActivity.f787k;
            InterfaceC3411x container = this.f912f;
            Intrinsics.checkNotNullParameter(container, "container");
            InMobiAdActivity.f787k.remove(container.hashCode());
        }
        this.f912f.mo845b();
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: c */
    public final void mo940c() {
        if (this.f914h) {
            return;
        }
        try {
            this.f914h = true;
            InterfaceC3396w fullScreenEventsListener = this.f912f.getFullScreenEventsListener();
            if (fullScreenEventsListener != null) {
                fullScreenEventsListener.mo1803a(null);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: d */
    public final void mo941d() {
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: f */
    public final void mo942f() {
        this.f913g.setBackgroundColor(0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(10);
        AbstractC3260md viewableAd = this.f912f.getViewableAd();
        View viewMo964d = viewableAd != null ? viewableAd.mo964d() : null;
        if (viewMo964d != null) {
            ViewParent parent = viewMo964d.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(viewMo964d);
            }
            this.f913g.addView(viewMo964d, layoutParams);
        }
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: g */
    public final void mo943g() {
        if (1 == this.f912f.getPlacementType()) {
            try {
                HashMap map = new HashMap();
                AbstractC3260md viewableAd = this.f912f.getViewableAd();
                if (viewableAd != null) {
                    viewableAd.mo962a(map);
                }
            } catch (Exception unused) {
                InterfaceC3396w fullScreenEventsListener = this.f912f.getFullScreenEventsListener();
                if (fullScreenEventsListener != null) {
                    fullScreenEventsListener.mo1802a();
                }
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: a */
    public final void mo937a() {
        InterfaceC3411x interfaceC3411x = this.f912f;
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = interfaceC3411x instanceof GestureDetectorOnGestureListenerC3049Ya ? (GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x : null;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str, "TAG", "fireBackButtonPressedEvent "));
        }
        String str2 = gestureDetectorOnGestureListenerC3049Ya.f1702C;
        if (str2 != null) {
            gestureDetectorOnGestureListenerC3049Ya.m1953a(str2, "broadcastEvent('backButtonPressed')");
        }
        if (gestureDetectorOnGestureListenerC3049Ya.f1700B) {
            return;
        }
        try {
            gestureDetectorOnGestureListenerC3049Ya.mo1950a();
        } catch (Exception unused) {
            AbstractC2814I6.m1170a((byte) 2, "InMobi", "SDK encountered unexpected error in processing close request");
        }
    }
}

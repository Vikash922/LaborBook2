package com.inmobi.media;

import android.app.Activity;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.b6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3088b6 extends AbstractC2912P {

    /* JADX INFO: renamed from: e */
    public final WeakReference f1877e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3411x f1878f;

    /* JADX INFO: renamed from: g */
    public final RelativeLayout f1879g;

    /* JADX INFO: renamed from: h */
    public boolean f1880h;

    /* JADX INFO: renamed from: i */
    public boolean f1881i;

    /* JADX INFO: renamed from: j */
    public C2861L8 f1882j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3088b6(WeakReference activityRef, InterfaceC3411x adContainer, RelativeLayout adBackgroundView) {
        super(adBackgroundView);
        Intrinsics.checkNotNullParameter(activityRef, "activityRef");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(adBackgroundView, "adBackgroundView");
        this.f1877e = activityRef;
        this.f1878f = adContainer;
        this.f1879g = adBackgroundView;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2035a(C3088b6 this$0, C2726C8 c2726c8) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f1878f.getPlacementType() == 1) {
            Object obj = c2726c8.f938t.get("didCompleteQ4");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) obj).booleanValue()) {
                return;
            }
        }
        C2861L8 c2861l8 = this$0.f1882j;
        if (c2861l8 != null) {
            c2861l8.start();
        }
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: b */
    public final void mo939b() {
        C2861L8 c2861l8;
        Activity activity = (Activity) this.f1877e.get();
        if (!(activity instanceof InMobiAdActivity) ? false : ((InMobiAdActivity) activity).f794e) {
            InterfaceC3411x interfaceC3411x = this.f1878f;
            if (interfaceC3411x instanceof C2696A8) {
                View videoContainerView = ((C2696A8) interfaceC3411x).getVideoContainerView();
                C2876M8 c2876m8 = videoContainerView instanceof C2876M8 ? (C2876M8) videoContainerView : null;
                if (c2876m8 != null) {
                    Object tag = c2876m8.getVideoView().getTag();
                    Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                    m2036a((C2726C8) tag);
                }
            } else if (interfaceC3411x instanceof C3359t7) {
                m2036a((C2726C8) null);
            }
        } else {
            InterfaceC3411x interfaceC3411x2 = this.f1878f;
            if (interfaceC3411x2 instanceof C2696A8) {
                C2861L8 c2861l82 = this.f1882j;
                Object tag2 = c2861l82 != null ? c2861l82.getTag() : null;
                C2726C8 c2726c8 = tag2 instanceof C2726C8 ? (C2726C8) tag2 : null;
                if (c2726c8 != null) {
                    if (1 == ((C3359t7) interfaceC3411x2).f2575a && (c2861l8 = this.f1882j) != null) {
                        c2861l8.m1306f();
                    }
                    m2036a(c2726c8);
                }
            } else if (interfaceC3411x2 instanceof C3359t7) {
                m2036a((C2726C8) null);
            }
            SparseArray sparseArray = InMobiAdActivity.f787k;
            InterfaceC3411x container = this.f1878f;
            Intrinsics.checkNotNullParameter(container, "container");
            InMobiAdActivity.f787k.remove(container.hashCode());
        }
        this.f1878f.mo845b();
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: c */
    public final void mo940c() {
        InterfaceC3411x interfaceC3411x = this.f1878f;
        if (interfaceC3411x instanceof C2696A8) {
            C2861L8 c2861l8 = this.f1882j;
            Object tag = c2861l8 != null ? c2861l8.getTag() : null;
            final C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
            if (c2726c8 != null && this.f1880h) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.inmobi.media.b6$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3088b6.m2035a(this.f$0, c2726c8);
                    }
                }, 50L);
            }
            try {
                if (!this.f1881i) {
                    this.f1881i = true;
                    InterfaceC3396w fullScreenEventsListener = this.f1878f.getFullScreenEventsListener();
                    if (fullScreenEventsListener != null) {
                        fullScreenEventsListener.mo1803a(c2726c8);
                    }
                }
            } catch (Exception e) {
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            }
        } else if (interfaceC3411x instanceof C3359t7) {
            try {
                if (!this.f1881i) {
                    this.f1881i = true;
                    InterfaceC3396w fullScreenEventsListener2 = interfaceC3411x.getFullScreenEventsListener();
                    if (fullScreenEventsListener2 != null) {
                        fullScreenEventsListener2.mo1803a(null);
                    }
                }
            } catch (Exception e2) {
                C3402w5 c3402w52 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e2, "event"));
            }
        }
        this.f1880h = false;
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: d */
    public final void mo941d() {
        this.f1880h = true;
        C2861L8 c2861l8 = this.f1882j;
        if (c2861l8 != null) {
            c2861l8.pause();
        }
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: f */
    public final void mo942f() {
        C2800H7 c2800h7;
        C2755E7 c2755e7;
        byte placementType = this.f1878f.getPlacementType();
        this.f1879g.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        Object dataModel = this.f1878f.getDataModel();
        C2945R4 c2945r4 = null;
        C2920P7 c2920p7 = dataModel instanceof C2920P7 ? (C2920P7) dataModel : null;
        Point point = (c2920p7 == null || (c2800h7 = c2920p7.f1380e) == null || (c2755e7 = c2800h7.f922d) == null) ? null : c2755e7.f974a;
        AbstractC3260md viewableAd = this.f1878f.getViewableAd();
        int requestedOrientation = 0;
        View viewMo956a = viewableAd != null ? viewableAd.mo956a(null, this.f1879g, false) : null;
        InterfaceC3411x interfaceC3411x = this.f1878f;
        if (interfaceC3411x instanceof C2696A8) {
            View videoContainerView = ((C2696A8) interfaceC3411x).getVideoContainerView();
            C2876M8 c2876m8 = videoContainerView instanceof C2876M8 ? (C2876M8) videoContainerView : null;
            if (c2876m8 != null) {
                C2861L8 videoView = c2876m8.getVideoView();
                this.f1882j = videoView;
                if (videoView != null) {
                    videoView.requestFocus();
                }
                C2861L8 c2861l8 = this.f1882j;
                Object tag = c2861l8 != null ? c2861l8.getTag() : null;
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                C2726C8 c2726c8 = (C2726C8) tag;
                C2740D7 c2740d7 = c2726c8.f941w;
                if (c2740d7 != null) {
                    Intrinsics.checkNotNull(c2740d7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                    c2726c8.m916a((C2726C8) c2740d7);
                }
                if (placementType == 0) {
                    c2726c8.f938t.put("placementType", (byte) 0);
                } else {
                    c2726c8.f938t.put("placementType", (byte) 1);
                }
            }
        }
        if (viewMo956a != null) {
            Intrinsics.checkNotNull(point);
            this.f1879g.addView(viewMo956a, new RelativeLayout.LayoutParams(point.x, point.y));
        }
        Activity activity = (Activity) this.f1877e.get();
        if (activity == null || c2920p7 == null) {
            return;
        }
        byte b = c2920p7.f1377b;
        if (b == 1) {
            requestedOrientation = 1;
        } else if (b != 2) {
            requestedOrientation = activity.getRequestedOrientation();
        }
        if (activity instanceof InMobiAdActivity) {
            C2945R4 c2945r42 = ((InMobiAdActivity) activity).f790a;
            if (c2945r42 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
            } else {
                c2945r4 = c2945r42;
            }
            c2945r4.f1493a.setRequestedOrientation(requestedOrientation);
        }
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: g */
    public final void mo943g() {
        try {
            AdConfig adConfig = this.f1878f.getAdConfig();
            AbstractC3260md viewableAd = this.f1878f.getViewableAd();
            if ((viewableAd != null ? viewableAd.mo963b() : null) != null) {
                InterfaceC3411x interfaceC3411x = this.f1878f;
                if (!(interfaceC3411x instanceof C2696A8)) {
                    if (interfaceC3411x instanceof C3359t7) {
                        try {
                            viewableAd.mo962a((HashMap) null);
                            return;
                        } catch (Exception unused) {
                            InterfaceC3396w fullScreenEventsListener = this.f1878f.getFullScreenEventsListener();
                            if (fullScreenEventsListener != null) {
                                fullScreenEventsListener.mo1802a();
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                C2861L8 c2861l8 = this.f1882j;
                Object tag = c2861l8 != null ? c2861l8.getTag() : null;
                C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
                if (c2726c8 != null) {
                    AdConfig.ViewabilityConfig viewability = adConfig.getViewability();
                    int videoImpressionMinTimeViewed = viewability.getVideoImpressionMinTimeViewed();
                    HashMap map = c2726c8.f890F;
                    Object obj = map != null ? map.get("time") : null;
                    if (obj instanceof Integer) {
                        videoImpressionMinTimeViewed = ((Number) obj).intValue();
                    }
                    viewability.setVideoImpressionMinTimeViewed(videoImpressionMinTimeViewed);
                    viewableAd.mo962a((HashMap) null);
                }
            }
        } catch (Exception e) {
            InterfaceC3396w fullScreenEventsListener2 = this.f1878f.getFullScreenEventsListener();
            if (fullScreenEventsListener2 != null) {
                fullScreenEventsListener2.mo1802a();
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    @Override // com.inmobi.media.AbstractC2912P
    /* JADX INFO: renamed from: a */
    public final void mo937a() {
        if (this.f1878f.mo1966c()) {
            return;
        }
        InterfaceC3411x interfaceC3411x = this.f1878f;
        if (interfaceC3411x instanceof C2696A8) {
            if (((C2696A8) interfaceC3411x).f2576b.f1378c) {
                return;
            }
            Activity activity = (Activity) this.f1877e.get();
            if (activity instanceof InMobiAdActivity) {
                ((InMobiAdActivity) activity).f794e = true;
            }
            C2861L8 c2861l8 = this.f1882j;
            if (c2861l8 == null) {
                Activity activity2 = (Activity) this.f1877e.get();
                if (activity2 == null) {
                    return;
                }
                activity2.finish();
                return;
            }
            Object tag = c2861l8.getTag();
            C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
            if (c2726c8 != null) {
                if (1 == ((C3359t7) interfaceC3411x).f2575a) {
                    c2861l8.m1306f();
                }
                try {
                    Object obj = c2726c8.f938t.get("isFullScreen");
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
                    if (((Boolean) obj).booleanValue()) {
                        c2726c8.f938t.put("seekPosition", Integer.valueOf(c2861l8.getCurrentPosition()));
                        ((C2696A8) interfaceC3411x).m847b(c2726c8);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    AbstractC2814I6.m1170a((byte) 2, "InMobi", "SDK encountered unexpected error in closing video");
                    C3402w5 c3402w5 = C3402w5.f2709a;
                    C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                    return;
                }
            }
            return;
        }
        if (interfaceC3411x instanceof C3359t7) {
            C3359t7 c3359t7 = (C3359t7) interfaceC3411x;
            if (c3359t7.f2576b.f1378c) {
                return;
            }
            c3359t7.mo1950a();
            return;
        }
        Activity activity3 = (Activity) this.f1877e.get();
        if (activity3 == null) {
            return;
        }
        activity3.finish();
    }

    /* JADX INFO: renamed from: a */
    public final void m2036a(C2726C8 c2726c8) {
        try {
            InterfaceC3396w fullScreenEventsListener = this.f1878f.getFullScreenEventsListener();
            if (fullScreenEventsListener != null) {
                fullScreenEventsListener.mo1804b(c2726c8);
            }
        } catch (Exception e) {
            AbstractC2814I6.m1170a((byte) 2, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }
}

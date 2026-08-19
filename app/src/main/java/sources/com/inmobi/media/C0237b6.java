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

/* JADX INFO: renamed from: com.inmobi.media.b6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0237b6 extends P {
    public final WeakReference e;
    public final InterfaceC0559x f;
    public final RelativeLayout g;
    public boolean h;
    public boolean i;
    public L8 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0237b6(WeakReference activityRef, InterfaceC0559x adContainer, RelativeLayout adBackgroundView) {
        super(adBackgroundView);
        Intrinsics.checkNotNullParameter(activityRef, "activityRef");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(adBackgroundView, "adBackgroundView");
        this.e = activityRef;
        this.f = adContainer;
        this.g = adBackgroundView;
    }

    public static final void a(C0237b6 this$0, C8 c8) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f.getPlacementType() == 1) {
            Object obj = c8.t.get("didCompleteQ4");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) obj).booleanValue()) {
                return;
            }
        }
        L8 l8 = this$0.j;
        if (l8 != null) {
            l8.start();
        }
    }

    @Override // com.inmobi.media.P
    public final void b() {
        L8 l8;
        Activity activity = (Activity) this.e.get();
        if (!(activity instanceof InMobiAdActivity) ? false : ((InMobiAdActivity) activity).e) {
            InterfaceC0559x interfaceC0559x = this.f;
            if (interfaceC0559x instanceof A8) {
                View videoContainerView = ((A8) interfaceC0559x).getVideoContainerView();
                M8 m8 = videoContainerView instanceof M8 ? (M8) videoContainerView : null;
                if (m8 != null) {
                    Object tag = m8.getVideoView().getTag();
                    Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                    a((C8) tag);
                }
            } else if (interfaceC0559x instanceof C0511t7) {
                a((C8) null);
            }
        } else {
            InterfaceC0559x interfaceC0559x2 = this.f;
            if (interfaceC0559x2 instanceof A8) {
                L8 l82 = this.j;
                Object tag2 = l82 != null ? l82.getTag() : null;
                C8 c8 = tag2 instanceof C8 ? (C8) tag2 : null;
                if (c8 != null) {
                    if (1 == ((C0511t7) interfaceC0559x2).f490a && (l8 = this.j) != null) {
                        l8.f();
                    }
                    a(c8);
                }
            } else if (interfaceC0559x2 instanceof C0511t7) {
                a((C8) null);
            }
            SparseArray sparseArray = InMobiAdActivity.k;
            InterfaceC0559x container = this.f;
            Intrinsics.checkNotNullParameter(container, "container");
            InMobiAdActivity.k.remove(container.hashCode());
        }
        this.f.b();
    }

    @Override // com.inmobi.media.P
    public final void c() {
        InterfaceC0559x interfaceC0559x = this.f;
        if (interfaceC0559x instanceof A8) {
            L8 l8 = this.j;
            Object tag = l8 != null ? l8.getTag() : null;
            final C8 c8 = tag instanceof C8 ? (C8) tag : null;
            if (c8 != null && this.h) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.inmobi.media.b6$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0237b6.a(this.f$0, c8);
                    }
                }, 50L);
            }
            try {
                if (!this.i) {
                    this.i = true;
                    InterfaceC0545w fullScreenEventsListener = this.f.getFullScreenEventsListener();
                    if (fullScreenEventsListener != null) {
                        fullScreenEventsListener.a(c8);
                    }
                }
            } catch (Exception e) {
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            }
        } else if (interfaceC0559x instanceof C0511t7) {
            try {
                if (!this.i) {
                    this.i = true;
                    InterfaceC0545w fullScreenEventsListener2 = interfaceC0559x.getFullScreenEventsListener();
                    if (fullScreenEventsListener2 != null) {
                        fullScreenEventsListener2.a(null);
                    }
                }
            } catch (Exception e2) {
                C0551w5 c0551w52 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
            }
        }
        this.h = false;
    }

    @Override // com.inmobi.media.P
    public final void d() {
        this.h = true;
        L8 l8 = this.j;
        if (l8 != null) {
            l8.pause();
        }
    }

    @Override // com.inmobi.media.P
    public final void f() {
        H7 h7;
        E7 e7;
        byte placementType = this.f.getPlacementType();
        this.g.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        Object dataModel = this.f.getDataModel();
        R4 r4 = null;
        P7 p7 = dataModel instanceof P7 ? (P7) dataModel : null;
        Point point = (p7 == null || (h7 = p7.e) == null || (e7 = h7.d) == null) ? null : e7.f107a;
        AbstractC0416md viewableAd = this.f.getViewableAd();
        int requestedOrientation = 0;
        View viewA = viewableAd != null ? viewableAd.a(null, this.g, false) : null;
        InterfaceC0559x interfaceC0559x = this.f;
        if (interfaceC0559x instanceof A8) {
            View videoContainerView = ((A8) interfaceC0559x).getVideoContainerView();
            M8 m8 = videoContainerView instanceof M8 ? (M8) videoContainerView : null;
            if (m8 != null) {
                L8 videoView = m8.getVideoView();
                this.j = videoView;
                if (videoView != null) {
                    videoView.requestFocus();
                }
                L8 l8 = this.j;
                Object tag = l8 != null ? l8.getTag() : null;
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                C8 c8 = (C8) tag;
                D7 d7 = c8.w;
                if (d7 != null) {
                    Intrinsics.checkNotNull(d7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                    c8.a((C8) d7);
                }
                if (placementType == 0) {
                    c8.t.put("placementType", (byte) 0);
                } else {
                    c8.t.put("placementType", (byte) 1);
                }
            }
        }
        if (viewA != null) {
            Intrinsics.checkNotNull(point);
            this.g.addView(viewA, new RelativeLayout.LayoutParams(point.x, point.y));
        }
        Activity activity = (Activity) this.e.get();
        if (activity == null || p7 == null) {
            return;
        }
        byte b = p7.b;
        if (b == 1) {
            requestedOrientation = 1;
        } else if (b != 2) {
            requestedOrientation = activity.getRequestedOrientation();
        }
        if (activity instanceof InMobiAdActivity) {
            R4 r42 = ((InMobiAdActivity) activity).f67a;
            if (r42 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
            } else {
                r4 = r42;
            }
            r4.f231a.setRequestedOrientation(requestedOrientation);
        }
    }

    @Override // com.inmobi.media.P
    public final void g() {
        try {
            AdConfig adConfig = this.f.getAdConfig();
            AbstractC0416md viewableAd = this.f.getViewableAd();
            if ((viewableAd != null ? viewableAd.b() : null) != null) {
                InterfaceC0559x interfaceC0559x = this.f;
                if (!(interfaceC0559x instanceof A8)) {
                    if (interfaceC0559x instanceof C0511t7) {
                        try {
                            viewableAd.a((HashMap) null);
                            return;
                        } catch (Exception unused) {
                            InterfaceC0545w fullScreenEventsListener = this.f.getFullScreenEventsListener();
                            if (fullScreenEventsListener != null) {
                                fullScreenEventsListener.a();
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                L8 l8 = this.j;
                Object tag = l8 != null ? l8.getTag() : null;
                C8 c8 = tag instanceof C8 ? (C8) tag : null;
                if (c8 != null) {
                    AdConfig.ViewabilityConfig viewability = adConfig.getViewability();
                    int videoImpressionMinTimeViewed = viewability.getVideoImpressionMinTimeViewed();
                    HashMap map = c8.F;
                    Object obj = map != null ? map.get("time") : null;
                    if (obj instanceof Integer) {
                        videoImpressionMinTimeViewed = ((Number) obj).intValue();
                    }
                    viewability.setVideoImpressionMinTimeViewed(videoImpressionMinTimeViewed);
                    viewableAd.a((HashMap) null);
                }
            }
        } catch (Exception e) {
            InterfaceC0545w fullScreenEventsListener2 = this.f.getFullScreenEventsListener();
            if (fullScreenEventsListener2 != null) {
                fullScreenEventsListener2.a();
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    @Override // com.inmobi.media.P
    public final void a() {
        if (this.f.c()) {
            return;
        }
        InterfaceC0559x interfaceC0559x = this.f;
        if (interfaceC0559x instanceof A8) {
            if (((A8) interfaceC0559x).b.c) {
                return;
            }
            Activity activity = (Activity) this.e.get();
            if (activity instanceof InMobiAdActivity) {
                ((InMobiAdActivity) activity).e = true;
            }
            L8 l8 = this.j;
            if (l8 == null) {
                Activity activity2 = (Activity) this.e.get();
                if (activity2 == null) {
                    return;
                }
                activity2.finish();
                return;
            }
            Object tag = l8.getTag();
            C8 c8 = tag instanceof C8 ? (C8) tag : null;
            if (c8 != null) {
                if (1 == ((C0511t7) interfaceC0559x).f490a) {
                    l8.f();
                }
                try {
                    Object obj = c8.t.get("isFullScreen");
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
                    if (((Boolean) obj).booleanValue()) {
                        c8.t.put("seekPosition", Integer.valueOf(l8.getCurrentPosition()));
                        ((A8) interfaceC0559x).b(c8);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    I6.a((byte) 2, "InMobi", "SDK encountered unexpected error in closing video");
                    C0551w5 c0551w5 = C0551w5.f513a;
                    C0551w5.d.a(AbstractC0251c5.a(e, "event"));
                    return;
                }
            }
            return;
        }
        if (interfaceC0559x instanceof C0511t7) {
            C0511t7 c0511t7 = (C0511t7) interfaceC0559x;
            if (c0511t7.b.c) {
                return;
            }
            c0511t7.a();
            return;
        }
        Activity activity3 = (Activity) this.e.get();
        if (activity3 == null) {
            return;
        }
        activity3.finish();
    }

    public final void a(C8 c8) {
        try {
            InterfaceC0545w fullScreenEventsListener = this.f.getFullScreenEventsListener();
            if (fullScreenEventsListener != null) {
                fullScreenEventsListener.b(c8);
            }
        } catch (Exception e) {
            I6.a((byte) 2, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }
}

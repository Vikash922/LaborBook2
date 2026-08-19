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

/* JADX INFO: loaded from: classes6.dex */
public final class D4 extends P {
    public final WeakReference e;
    public final InterfaceC0559x f;
    public final RelativeLayout g;
    public boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D4(WeakReference activityRef, InterfaceC0559x adContainer, RelativeLayout adBackgroundView) {
        super(adBackgroundView);
        Intrinsics.checkNotNullParameter(activityRef, "activityRef");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(adBackgroundView, "adBackgroundView");
        this.e = activityRef;
        this.f = adContainer;
        this.g = adBackgroundView;
    }

    @Override // com.inmobi.media.P
    public final void a(I9 orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.b = orientation;
        InterfaceC0559x interfaceC0559x = this.f;
        Intrinsics.checkNotNull(interfaceC0559x, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView");
        Ya ya = (Ya) interfaceC0559x;
        int iA = J9.a(orientation);
        InterfaceC0298f5 interfaceC0298f5 = ya.i;
        if (interfaceC0298f5 != null) {
            String TAG = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "fireOrientationChange " + ya + ' ' + iA);
        }
        ya.b("window.imraid.broadcastEvent('orientationChange','" + iA + "');");
    }

    @Override // com.inmobi.media.P
    public final void b() {
        Activity activity = (Activity) this.e.get();
        if (!(activity instanceof InMobiAdActivity) ? false : ((InMobiAdActivity) activity).e) {
            try {
                InterfaceC0545w fullScreenEventsListener = this.f.getFullScreenEventsListener();
                if (fullScreenEventsListener != null) {
                    fullScreenEventsListener.b(null);
                }
            } catch (Exception unused) {
                I6.a((byte) 2, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
            }
        } else {
            InterfaceC0559x interfaceC0559x = this.f;
            Intrinsics.checkNotNull(interfaceC0559x, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView");
            Ya ya = (Ya) interfaceC0559x;
            ya.setFullScreenActivityContext(null);
            try {
                ya.a();
            } catch (Exception unused2) {
                I6.a((byte) 2, "InMobi", "SDK encountered unexpected error in processing close request");
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
        if (this.h) {
            return;
        }
        try {
            this.h = true;
            InterfaceC0545w fullScreenEventsListener = this.f.getFullScreenEventsListener();
            if (fullScreenEventsListener != null) {
                fullScreenEventsListener.a(null);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.inmobi.media.P
    public final void d() {
    }

    @Override // com.inmobi.media.P
    public final void f() {
        this.g.setBackgroundColor(0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(10);
        AbstractC0416md viewableAd = this.f.getViewableAd();
        View viewD = viewableAd != null ? viewableAd.d() : null;
        if (viewD != null) {
            ViewParent parent = viewD.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(viewD);
            }
            this.g.addView(viewD, layoutParams);
        }
    }

    @Override // com.inmobi.media.P
    public final void g() {
        if (1 == this.f.getPlacementType()) {
            try {
                HashMap map = new HashMap();
                AbstractC0416md viewableAd = this.f.getViewableAd();
                if (viewableAd != null) {
                    viewableAd.a(map);
                }
            } catch (Exception unused) {
                InterfaceC0545w fullScreenEventsListener = this.f.getFullScreenEventsListener();
                if (fullScreenEventsListener != null) {
                    fullScreenEventsListener.a();
                }
            }
        }
    }

    @Override // com.inmobi.media.P
    public final void a() {
        InterfaceC0559x interfaceC0559x = this.f;
        Ya ya = interfaceC0559x instanceof Ya ? (Ya) interfaceC0559x : null;
        if (ya == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f5 = ya.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(ya, str, "TAG", "fireBackButtonPressedEvent "));
        }
        String str2 = ya.C;
        if (str2 != null) {
            ya.a(str2, "broadcastEvent('backButtonPressed')");
        }
        if (ya.B) {
            return;
        }
        try {
            ya.a();
        } catch (Exception unused) {
            I6.a((byte) 2, "InMobi", "SDK encountered unexpected error in processing close request");
        }
    }
}

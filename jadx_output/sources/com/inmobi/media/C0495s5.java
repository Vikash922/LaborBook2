package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.s5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0495s5 extends AbstractC0401ld {
    public final A8 e;
    public final C0461pd f;
    public final InterfaceC0298f5 g;
    public final String h;
    public final WeakReference i;
    public final C0597z7 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0495s5(A8 mAdContainer, C0461pd mViewableAd, InterfaceC0298f5 interfaceC0298f5) {
        super(mAdContainer);
        Intrinsics.checkNotNullParameter(mAdContainer, "mAdContainer");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        this.e = mAdContainer;
        this.f = mViewableAd;
        this.g = interfaceC0298f5;
        this.h = "s5";
        this.i = new WeakReference(mAdContainer.j());
        this.j = new C0597z7((byte) 0, interfaceC0298f5);
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View a(View view, ViewGroup parent, boolean z) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String TAG = this.h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "inflate view");
        }
        View viewB = this.f.b();
        Context context = (Context) this.i.get();
        if (viewB != null && context != null) {
            this.j.a(context, viewB, this.e);
        }
        return this.f.a(view, parent, z);
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View b() {
        return this.f.b();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final X7 c() {
        return this.f.b;
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void e() {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String TAG = this.h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "stop tracking for impression");
        }
        try {
            Context context = (Context) this.i.get();
            if (context != null) {
                InterfaceC0298f5 interfaceC0298f52 = this.g;
                if (interfaceC0298f52 != null) {
                    String TAG2 = this.h;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f52).a(TAG2, "stop tracking");
                }
                this.j.a(context, this.e);
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f53 = this.g;
            if (interfaceC0298f53 != null) {
                String TAG3 = this.h;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C0314g5) interfaceC0298f53).b(TAG3, "Exception in stopTrackingForImpression with message : " + e.getMessage());
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        } finally {
            this.f.getClass();
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        this.f.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        this.f.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(HashMap map) {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String str = this.h;
            ((C0314g5) interfaceC0298f5).a(str, AbstractC0363j6.a(str, "TAG", "start tracking impression with ").append(map != null ? Integer.valueOf(map.size()) : null).append(" friendlyViews").toString());
        }
        try {
            try {
                View videoContainerView = this.f427a.getVideoContainerView();
                M8 m8 = videoContainerView instanceof M8 ? (M8) videoContainerView : null;
                Context context = (Context) this.i.get();
                AdConfig.ViewabilityConfig viewability = this.d.getViewability();
                if (context != null && m8 != null && !this.e.t) {
                    L8 videoView = m8.getVideoView();
                    InterfaceC0298f5 interfaceC0298f52 = this.g;
                    if (interfaceC0298f52 != null) {
                        String TAG = this.h;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((C0314g5) interfaceC0298f52).a(TAG, "start tracking");
                    }
                    this.j.a(context, videoView, this.e, viewability);
                    View viewB = this.f.b();
                    Object tag = videoView.getTag();
                    C8 c8 = tag instanceof C8 ? (C8) tag : null;
                    if (c8 != null && viewB != null && a(c8)) {
                        InterfaceC0298f5 interfaceC0298f53 = this.g;
                        if (interfaceC0298f53 != null) {
                            String TAG2 = this.h;
                            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                            ((C0314g5) interfaceC0298f53).a(TAG2, "start tracking inline ad");
                        }
                        C0597z7 c0597z7 = this.j;
                        A8 a8 = this.e;
                        c0597z7.a(context, viewB, a8, a8.b0, viewability);
                    }
                }
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f54 = this.g;
                if (interfaceC0298f54 != null) {
                    String TAG3 = this.h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C0314g5) interfaceC0298f54).b(TAG3, "Exception in startTrackingForImpression with message : " + e.getMessage());
                }
                C0551w5 c0551w5 = C0551w5.f513a;
                C0264d2 event = new C0264d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C0551w5.d.a(event);
            }
        } finally {
            this.f.getClass();
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(byte b) {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String str = this.h;
            ((C0314g5) interfaceC0298f5).a(str, AbstractC0568x8.a(str, "TAG", "Received event : ", b));
        }
        this.f.getClass();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(Context context, byte b) {
        C0461pd c0461pd;
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String str = this.h;
            ((C0314g5) interfaceC0298f5).c(str, AbstractC0568x8.a(str, "TAG", "onActivityStateChanged state - ", b));
        }
        try {
            try {
                if (b == 0) {
                    C0597z7 c0597z7 = this.j;
                    c0597z7.getClass();
                    Intrinsics.checkNotNullParameter(context, "context");
                    M4 m4 = (M4) c0597z7.d.get(context);
                    if (m4 != null) {
                        Intrinsics.checkNotNullExpressionValue(m4.d, "TAG");
                        for (Map.Entry entry : m4.f177a.entrySet()) {
                            View view = (View) entry.getKey();
                            K4 k4 = (K4) entry.getValue();
                            m4.c.a(view, k4.f156a, k4.b);
                        }
                        if (!m4.e.hasMessages(0)) {
                            m4.e.postDelayed(m4.f, m4.g);
                        }
                        m4.c.f();
                    }
                } else if (b == 1) {
                    C0597z7 c0597z72 = this.j;
                    c0597z72.getClass();
                    Intrinsics.checkNotNullParameter(context, "context");
                    M4 m42 = (M4) c0597z72.d.get(context);
                    if (m42 != null) {
                        Intrinsics.checkNotNullExpressionValue(m42.d, "TAG");
                        m42.c.a();
                        m42.e.removeCallbacksAndMessages(null);
                        m42.b.clear();
                    }
                } else if (b == 2) {
                    C0597z7 c0597z73 = this.j;
                    c0597z73.getClass();
                    Intrinsics.checkNotNullParameter(context, "context");
                    InterfaceC0298f5 interfaceC0298f52 = c0597z73.b;
                    if (interfaceC0298f52 != null) {
                        String TAG = c0597z73.c;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((C0314g5) interfaceC0298f52).a(TAG, "Activity destroyed, removing impression tracker");
                    }
                    M4 m43 = (M4) c0597z73.d.remove(context);
                    if (m43 != null) {
                        m43.f177a.clear();
                        m43.b.clear();
                        m43.c.a();
                        m43.e.removeMessages(0);
                        m43.c.b();
                    }
                    if (context instanceof Activity) {
                        c0597z73.d.isEmpty();
                    }
                } else {
                    InterfaceC0298f5 interfaceC0298f53 = this.g;
                    if (interfaceC0298f53 != null) {
                        String TAG2 = this.h;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C0314g5) interfaceC0298f53).b(TAG2, "UnHandled sate ( " + ((int) b) + " ) received in onActivityStateChanged()");
                    }
                }
                c0461pd = this.f;
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f54 = this.g;
                if (interfaceC0298f54 != null) {
                    String TAG3 = this.h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C0314g5) interfaceC0298f54).b(TAG3, "Exception in onActivityStateChanged with message : " + e.getMessage());
                }
                C0551w5 c0551w5 = C0551w5.f513a;
                C0264d2 event = new C0264d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C0551w5.d.a(event);
                c0461pd = this.f;
            }
            c0461pd.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
        } catch (Throwable th) {
            this.f.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
            throw th;
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String TAG = this.h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "destroy");
        }
        Context context = (Context) this.i.get();
        View viewB = this.f.b();
        if (context != null && viewB != null) {
            this.j.a(context, viewB, this.e);
        }
        super.a();
        this.i.clear();
        this.f.a();
    }

    public final boolean a(C8 c8) {
        Object obj = c8.t.get("isFullScreen");
        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
        return this.e.f490a == 0 && !(bool != null ? bool.booleanValue() : false);
    }
}

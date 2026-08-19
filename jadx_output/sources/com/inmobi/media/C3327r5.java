package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3327r5 extends AbstractC3245ld {

    /* JADX INFO: renamed from: e */
    public final C3359t7 f2499e;

    /* JADX INFO: renamed from: f */
    public final C3290od f2500f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC3147f5 f2501g;

    /* JADX INFO: renamed from: h */
    public final String f2502h;

    /* JADX INFO: renamed from: i */
    public final WeakReference f2503i;

    /* JADX INFO: renamed from: j */
    public final C3449z7 f2504j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3327r5(Context context, C3359t7 mAdContainer, C3290od mViewableAd, InterfaceC3147f5 interfaceC3147f5) {
        super(mAdContainer);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mAdContainer, "mAdContainer");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        this.f2499e = mAdContainer;
        this.f2500f = mViewableAd;
        this.f2501g = interfaceC3147f5;
        this.f2502h = "r5";
        this.f2503i = new WeakReference(context);
        this.f2504j = new C3449z7((byte) 1, interfaceC3147f5);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final View mo956a(View view, ViewGroup parent, boolean z) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        InterfaceC3147f5 interfaceC3147f5 = this.f2501g;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2502h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "inflate view - deferred - " + z);
        }
        View viewMo963b = this.f2500f.mo963b();
        Context context = (Context) this.f2499e.f2598x.get();
        if (viewMo963b != null && context != null) {
            this.f2504j.m2634a(context, viewMo963b, this.f2499e);
        }
        return this.f2500f.mo956a(view, parent, z);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: b */
    public final View mo963b() {
        return this.f2500f.mo963b();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: c */
    public final C3032X7 mo1121c() {
        return this.f2500f.f2353b;
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: e */
    public final void mo965e() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2501g;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2502h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "stopTrackingForImpression");
        }
        try {
            Context context = (Context) this.f2503i.get();
            if (context != null) {
                InterfaceC3147f5 interfaceC3147f52 = this.f2501g;
                if (interfaceC3147f52 != null) {
                    String TAG2 = this.f2502h;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f52).m2147a(TAG2, "stop tracking");
                }
                this.f2504j.m2637a(context, this.f2499e);
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f53 = this.f2501g;
            if (interfaceC3147f53 != null) {
                String TAG3 = this.f2502h;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C3162g5) interfaceC3147f53).m2151b(TAG3, "Exception in stopTrackingForImpression with message : " + e.getMessage());
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        } finally {
            this.f2500f.getClass();
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo961a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        this.f2500f.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo960a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        this.f2500f.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo962a(HashMap map) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2501g;
        if (interfaceC3147f5 != null) {
            String str = this.f2502h;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3208j6.m2261a(str, "TAG", "start tracking impression with ").append(map != null ? Integer.valueOf(map.size()) : null).append(" friendlyViews").toString());
        }
        try {
            Context context = (Context) this.f2503i.get();
            View viewMo963b = this.f2500f.mo963b();
            if (context != null && viewMo963b != null && !this.f2499e.f2594t) {
                InterfaceC3147f5 interfaceC3147f52 = this.f2501g;
                if (interfaceC3147f52 != null) {
                    String TAG = this.f2502h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f52).m2147a(TAG, "start tracking");
                }
                this.f2504j.m2635a(context, viewMo963b, this.f2499e, this.f2355d.getViewability());
                C3449z7 c3449z7 = this.f2504j;
                C3359t7 c3359t7 = this.f2499e;
                c3449z7.m2636a(context, viewMo963b, c3359t7, c3359t7.mo856i(), this.f2355d.getViewability());
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f53 = this.f2501g;
            if (interfaceC3147f53 != null) {
                String TAG2 = this.f2502h;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f53).m2151b(TAG2, "Exception in startTrackingForImpression with message : " + e.getMessage());
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        } finally {
            this.f2500f.getClass();
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo958a(byte b) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2501g;
        if (interfaceC3147f5 != null) {
            String str = this.f2502h;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3420x8.m2595a(str, "TAG", "onAdEvent - ", b));
        }
        this.f2500f.getClass();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo959a(Context context, byte b) {
        C3290od c3290od;
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC3147f5 interfaceC3147f5 = this.f2501g;
        if (interfaceC3147f5 != null) {
            String str = this.f2502h;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3420x8.m2595a(str, "TAG", "onActivityStateChanged - ", b));
        }
        try {
            try {
                if (b == 0) {
                    C3449z7 c3449z7 = this.f2504j;
                    c3449z7.getClass();
                    Intrinsics.checkNotNullParameter(context, "context");
                    C2872M4 c2872m4 = (C2872M4) c3449z7.f2800d.get(context);
                    if (c2872m4 != null) {
                        Intrinsics.checkNotNullExpressionValue(c2872m4.f1251d, "TAG");
                        for (Map.Entry entry : c2872m4.f1248a.entrySet()) {
                            View view = (View) entry.getKey();
                            C2842K4 c2842k4 = (C2842K4) entry.getValue();
                            c2872m4.f1250c.m2627a(view, c2842k4.f1157a, c2842k4.f1158b);
                        }
                        if (!c2872m4.f1252e.hasMessages(0)) {
                            c2872m4.f1252e.postDelayed(c2872m4.f1253f, c2872m4.f1254g);
                        }
                        c2872m4.f1250c.mo2548f();
                    }
                } else if (b == 1) {
                    C3449z7 c3449z72 = this.f2504j;
                    c3449z72.getClass();
                    Intrinsics.checkNotNullParameter(context, "context");
                    C2872M4 c2872m42 = (C2872M4) c3449z72.f2800d.get(context);
                    if (c2872m42 != null) {
                        Intrinsics.checkNotNullExpressionValue(c2872m42.f1251d, "TAG");
                        c2872m42.f1250c.m2625a();
                        c2872m42.f1252e.removeCallbacksAndMessages(null);
                        c2872m42.f1249b.clear();
                    }
                } else if (b == 2) {
                    C3449z7 c3449z73 = this.f2504j;
                    c3449z73.getClass();
                    Intrinsics.checkNotNullParameter(context, "context");
                    InterfaceC3147f5 interfaceC3147f52 = c3449z73.f2798b;
                    if (interfaceC3147f52 != null) {
                        String TAG = c3449z73.f2799c;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((C3162g5) interfaceC3147f52).m2147a(TAG, "Activity destroyed, removing impression tracker");
                    }
                    C2872M4 c2872m43 = (C2872M4) c3449z73.f2800d.remove(context);
                    if (c2872m43 != null) {
                        c2872m43.f1248a.clear();
                        c2872m43.f1249b.clear();
                        c2872m43.f1250c.m2625a();
                        c2872m43.f1252e.removeMessages(0);
                        c2872m43.f1250c.mo2546b();
                    }
                    if (context instanceof Activity) {
                        c3449z73.f2800d.isEmpty();
                    }
                } else {
                    InterfaceC3147f5 interfaceC3147f53 = this.f2501g;
                    if (interfaceC3147f53 != null) {
                        String TAG2 = this.f2502h;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C3162g5) interfaceC3147f53).m2151b(TAG2, "UnHandled sate ( " + ((int) b) + " ) received in onActivityStateChanged()");
                    }
                }
                c3290od = this.f2500f;
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f54 = this.f2501g;
                if (interfaceC3147f54 != null) {
                    String TAG3 = this.f2502h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C3162g5) interfaceC3147f54).m2151b(TAG3, "Exception in onActivityStateChanged with message : " + e.getMessage());
                }
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3114d2 event = new C3114d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C3402w5.f2712d.m2158a(event);
                c3290od = this.f2500f;
            }
            c3290od.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
        } catch (Throwable th) {
            this.f2500f.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
            throw th;
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo957a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2501g;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2502h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "destroy");
        }
        Context context = (Context) this.f2499e.f2598x.get();
        View viewMo963b = this.f2500f.mo963b();
        if (context != null && viewMo963b != null) {
            this.f2504j.m2634a(context, viewMo963b, this.f2499e);
        }
        super.mo957a();
        this.f2503i.clear();
        this.f2500f.mo957a();
    }
}

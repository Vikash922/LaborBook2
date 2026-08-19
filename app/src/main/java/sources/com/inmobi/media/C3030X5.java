package com.inmobi.media;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import androidx.webkit.ProxyConfig;
import com.facebook.appevents.AppEventsConstants;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.X5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3030X5 {

    /* JADX INFO: renamed from: a */
    public final GestureDetectorOnGestureListenerC3049Ya f1641a;

    /* JADX INFO: renamed from: b */
    public final int f1642b;

    /* JADX INFO: renamed from: c */
    public C2847K9 f1643c;

    /* JADX INFO: renamed from: d */
    public InterfaceC3147f5 f1644d;

    public C3030X5(int i, GestureDetectorOnGestureListenerC3049Ya mRenderView) {
        Intrinsics.checkNotNullParameter(mRenderView, "mRenderView");
        this.f1641a = mRenderView;
        this.f1642b = i;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1901a(C3030X5 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C3283o6.m2324a(this$0.f1641a.getLandingPageHandler(), XfdfConstants.OPEN, str, str2, null, false, 24);
    }

    /* JADX INFO: renamed from: b */
    public static final void m1905b(C3030X5 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f1641a.getLandingPageHandler().m2334d("openEmbedded", str, str2, null);
        } catch (Exception e) {
            this$0.f1641a.m1954a(str, "Unexpected error", "openEmbedded");
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Failed to open URL; SDK encountered unexpected error");
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1644d;
            if (interfaceC3147f5 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f5).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling openEmbedded() request from creative; ")));
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static final void m1908c(C3030X5 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C3283o6.m2324a(this$0.f1641a.getLandingPageHandler(), "openWithoutTracker", str, str2, null, true, 8);
    }

    /* JADX INFO: renamed from: d */
    public static final void m1909d(C3030X5 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this$0.f1641a;
            int length = str2.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) str2.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            gestureDetectorOnGestureListenerC3049Ya.m1961b(str, str2.subSequence(i, length + 1).toString());
        } catch (Exception e) {
            this$0.f1641a.m1954a(str, "Unexpected error", "playVideo");
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Error playing video; SDK encountered an unexpected error");
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1644d;
            if (interfaceC3147f5 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f5).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling playVideo() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void asyncPing(String str, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$p(...)", "asyncPing called: ", url));
        }
        if (!URLUtil.isValidUrl(url)) {
            this.f1641a.m1954a(str, "Invalid url", "asyncPing");
            return;
        }
        try {
            C3241l9 c3241l9 = new C3241l9(url, this.f1644d);
            c3241l9.f2297x = false;
            c3241l9.f2293t = false;
            c3241l9.f2294u = false;
            c3241l9.m2286a(new C3353t1(new C3368u1(c3241l9, new C3016W5(this))));
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "asyncPing");
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f52).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered internal error in handling asyncPing() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void cancelSaveContent(String str, String mediaId) {
        Intrinsics.checkNotNullParameter(mediaId, "mediaId");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$p(...)", "cancelSaveContent called. mediaId:", mediaId));
        }
    }

    @JavascriptInterface
    public final void close(final String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "close called");
        }
        if (!this.f1641a.f1784z0) {
            new Handler(this.f1641a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3030X5.m1900a(this.f$0, str);
                }
            });
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2151b(str3, "close called on unloaded ad");
        }
    }

    @JavascriptInterface
    public final void closeAll(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "closeAll is called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f52 != null) {
            String str3 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str3, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str3, "TAG", "closeAll "));
        }
        InterfaceC3052Z interfaceC3052Z = gestureDetectorOnGestureListenerC3049Ya.f1732V;
        if (interfaceC3052Z != null) {
            interfaceC3052Z.mo909b();
        }
        Activity activity = (Activity) gestureDetectorOnGestureListenerC3049Ya.f1753k.get();
        if (activity != null) {
            activity.finish();
        }
    }

    @JavascriptInterface
    public final void closeCustomExpand(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "closeCustomExpand called.");
        }
        if (this.f1642b != 1) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f52).m2151b(str3, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "closeCustomExpand called in incorrect Ad type: ").append(this.f1642b).toString());
                return;
            }
            return;
        }
        if (this.f1641a != null) {
            new Handler(this.f1641a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    C3030X5.m1897a(this.f$0);
                }
            });
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
        if (interfaceC3147f53 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f53).m2151b(str4, "Found a null instance of render view!");
        }
    }

    @JavascriptInterface
    public final void customExpand(String str, String str2, int i, float f, boolean z, boolean z2) {
        C3358t6 c3358t6;
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "customExpand called");
        }
        if (this.f1641a.f1784z0) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str4, "customExpand called on unloaded ad");
                return;
            }
            return;
        }
        if (this.f1642b != 1) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
            if (interfaceC3147f53 != null) {
                String str5 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f53).m2151b(str5, AbstractC3208j6.m2261a(str5, "access$getTAG$p(...)", "customExpand called in incorrect Ad type: ").append(this.f1642b).toString());
                return;
            }
            return;
        }
        if (str2 != null) {
            int length = str2.length() - 1;
            int i2 = 0;
            boolean z3 = false;
            while (i2 <= length) {
                boolean z4 = Intrinsics.compare((int) str2.charAt(!z3 ? i2 : length), 32) <= 0;
                if (z3) {
                    if (!z4) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z4) {
                    i2++;
                } else {
                    z3 = true;
                }
            }
            if (str2.subSequence(i2, length + 1).toString().length() != 0) {
                if (i < 0 || i >= EnumC2944R3.values().length) {
                    this.f1641a.m1954a(str, "Invalid inputType", "customExpand");
                    return;
                }
                if (f < 0.0f || f > 1.0f) {
                    this.f1641a.m1954a(str, "Invalid screenPercentage", "customExpand");
                    return;
                }
                C3373u6 c3373u6 = this.f1641a.getLandingPageHandler().f2410f;
                if (c3373u6 != null) {
                    String strM2280a = C3238l6.m2280a(str2);
                    C3283o6 landingPageHandler = this.f1641a.getLandingPageHandler();
                    int i3 = landingPageHandler.f2412h + 1;
                    landingPageHandler.f2412h = i3;
                    c3358t6 = new C3358t6(c3373u6, strM2280a, i3, 8);
                } else {
                    c3358t6 = null;
                }
                C3358t6 c3358t62 = c3358t6;
                if (c3358t62 != null) {
                    c3358t62.f2554g = "IN_CUSTOM";
                }
                C3283o6 landingPageHandler2 = this.f1641a.getLandingPageHandler();
                EnumC3178h6 funnelState = EnumC3178h6.f2135d;
                landingPageHandler2.getClass();
                Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                C3238l6.m2282a(funnelState, c3358t62, (Integer) 8008, (Function2) new C3268n6(landingPageHandler2));
                m1910a(str, str2, i, f, z2, c3358t62);
                return;
            }
        }
        this.f1641a.m1954a(str, "Invalid " + i, "customExpand");
    }

    @JavascriptInterface
    public final void customExpandInNative(String str, String url, float f, boolean z) {
        C3358t6 c3358t6;
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "customExpandInNative called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya.f1784z0) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str3, "customExpandInNative called on unloaded ad");
                return;
            }
            return;
        }
        if (this.f1642b != 1) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
            if (interfaceC3147f53 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f53).m2151b(str4, AbstractC3208j6.m2261a(str4, "access$getTAG$p(...)", "customExpandInNative called in incorrect Ad type: ").append(this.f1642b).toString());
                return;
            }
            return;
        }
        if (f < 0.0f || f > 1.0f) {
            gestureDetectorOnGestureListenerC3049Ya.m1954a(str, "Invalid screenPercentage", "customExpandInNative");
            return;
        }
        C3373u6 c3373u6 = gestureDetectorOnGestureListenerC3049Ya.getLandingPageHandler().f2410f;
        if (c3373u6 != null) {
            String strM2280a = C3238l6.m2280a(url);
            C3283o6 landingPageHandler = this.f1641a.getLandingPageHandler();
            int i = landingPageHandler.f2412h + 1;
            landingPageHandler.f2412h = i;
            c3358t6 = new C3358t6(c3373u6, strM2280a, i, 8);
        } else {
            c3358t6 = null;
        }
        C3358t6 c3358t62 = c3358t6;
        if (c3358t62 != null) {
            c3358t62.f2554g = "IN_NATIVE";
        }
        C3283o6 landingPageHandler2 = this.f1641a.getLandingPageHandler();
        EnumC3178h6 funnelState = EnumC3178h6.f2135d;
        landingPageHandler2.getClass();
        Intrinsics.checkNotNullParameter(funnelState, "funnelState");
        C3238l6.m2282a(funnelState, c3358t62, (Integer) 8010, (Function2) new C3268n6(landingPageHandler2));
        int iM2328a = this.f1641a.getLandingPageHandler().m2328a("customExpandInNative", str, url, c3358t62, new C3159g2(f, z));
        InterfaceC3147f5 interfaceC3147f54 = this.f1644d;
        if (interfaceC3147f54 != null) {
            String str5 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f54).m2147a(str5, AbstractC3420x8.m2595a(str5, "access$getTAG$p(...)", "customExpandInNativeRequest: ", iM2328a));
        }
        if (iM2328a == 3) {
            EnumC2944R3 enumC2944R3 = EnumC2944R3.f1490a;
            m1910a(str, url, 0, f, !z, c3358t62);
        }
    }

    @JavascriptInterface
    public final void disableBackButton(String str, boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "disableBackButton called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya != null) {
            gestureDetectorOnGestureListenerC3049Ya.setDisableBackButton(z);
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
        }
    }

    @JavascriptInterface
    public final void disableCloseRegion(final String str, final boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "disableCloseRegion called");
        }
        if (this.f1641a != null) {
            new Handler(this.f1641a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    C3030X5.m1902a(this.f$0, z, str);
                }
            });
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
        }
    }

    @JavascriptInterface
    public final void fireAdFailed(String str) {
        try {
            InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
            if (interfaceC3147f5 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5).m2147a(str2, "fireAdFailed called.");
            }
            this.f1641a.m1972g();
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "fireAdFailed");
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f52).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling fireAdFailed() signal from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void fireAdReady(String str) {
        try {
            InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
            if (interfaceC3147f5 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5).m2147a(str2, "fireAdReady called.");
            }
            this.f1641a.m1973h();
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "fireAdReady");
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f52).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling fireAdReady() signal from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void fireComplete(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "fireComplete is called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f53 != null) {
            String str4 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f53).m2152c(str4, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str4, "TAG", "completeFromInterActive "));
        }
        C3055Z2 c3055z2 = gestureDetectorOnGestureListenerC3049Ya.f1715I0;
        if (c3055z2 != null && !c3055z2.f1799g.get()) {
            c3055z2.f1796d.f1984i = 1;
            Intrinsics.checkNotNull(c3055z2.f1795c);
        }
        InterfaceC3147f5 interfaceC3147f54 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f54 != null) {
            String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f54).m2147a(TAG, "completeFromInterActive");
        }
    }

    @JavascriptInterface
    public final void fireSkip(String str) {
        InterfaceC3147f5 interfaceC3147f5;
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2147a(str2, "fireSkip is called");
        }
        if (this.f1641a == null && (interfaceC3147f5 = this.f1644d) != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2151b(str3, "Found a null instance of render view!");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f53 != null) {
            String str4 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f53).m2152c(str4, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str4, "TAG", "skipFromInterActive "));
        }
        C3055Z2 c3055z2 = gestureDetectorOnGestureListenerC3049Ya.f1715I0;
        if (c3055z2 != null && !c3055z2.f1799g.get()) {
            c3055z2.f1796d.f1983h = 1;
            Intrinsics.checkNotNull(c3055z2.f1795c);
        }
        InterfaceC3147f5 interfaceC3147f54 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f54 != null) {
            String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f54).m2147a(TAG, "skipFromInterActive");
        }
    }

    @JavascriptInterface
    public final String getAdContext(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getAdContext is called");
        }
        InterfaceC3052Z adPodHandler = this.f1641a.getAdPodHandler();
        if (adPodHandler != null) {
            return ((AbstractC2928Q0) adPodHandler).m1571K();
        }
        return null;
    }

    @JavascriptInterface
    public final void getBlob(String str, String str2) {
        InterfaceC3054Z1 interfaceC3054Z1;
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "getBlob is called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f53 != null) {
            String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f53).m2147a(TAG, "getBlob");
        }
        if (str == null || str2 == null || (interfaceC3054Z1 = gestureDetectorOnGestureListenerC3049Ya.f1728R) == null) {
            return;
        }
        ((AbstractC2928Q0) interfaceC3054Z1).m1612a(str, str2, gestureDetectorOnGestureListenerC3049Ya, gestureDetectorOnGestureListenerC3049Ya.getImpressionId());
    }

    @JavascriptInterface
    public final String getCurrentPosition(String str) {
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya;
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getCurrentPosition called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya2 == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 == null) {
                return "";
            }
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
            return "";
        }
        synchronized (gestureDetectorOnGestureListenerC3049Ya2.getCurrentPositionMonitor()) {
            this.f1641a.f1777w = true;
            new Handler(this.f1641a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    C3030X5.m1903b(this.f$0);
                }
            });
            while (true) {
                gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
                if (gestureDetectorOnGestureListenerC3049Ya.f1777w) {
                    try {
                        gestureDetectorOnGestureListenerC3049Ya.getCurrentPositionMonitor().wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
        return gestureDetectorOnGestureListenerC3049Ya.getCurrentPosition();
    }

    @JavascriptInterface
    public final int getCurrentRenderingIndex(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getCurrentRenderingIndex is called");
        }
        return this.f1641a.getCurrentRenderingPodAdIndex();
    }

    @JavascriptInterface
    public final String getDefaultPosition(String str) {
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya;
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getDefaultPosition called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya2 == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
            }
            String string = new JSONObject().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
        synchronized (gestureDetectorOnGestureListenerC3049Ya2.getDefaultPositionMonitor()) {
            this.f1641a.f1775v = true;
            new Handler(this.f1641a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    C3030X5.m1907c(this.f$0);
                }
            });
            while (true) {
                gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
                if (gestureDetectorOnGestureListenerC3049Ya.f1775v) {
                    try {
                        gestureDetectorOnGestureListenerC3049Ya.getDefaultPositionMonitor().wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
        return gestureDetectorOnGestureListenerC3049Ya.getDefaultPosition();
    }

    @JavascriptInterface
    public final int getDeviceVolume(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getDeviceVolume called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
            }
            return -1;
        }
        try {
            C3149f7 mediaProcessor = gestureDetectorOnGestureListenerC3049Ya.getMediaProcessor();
            if (mediaProcessor != null) {
                return mediaProcessor.m2132a();
            }
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "getDeviceVolume");
            InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
            if (interfaceC3147f53 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f53).m2151b(str4, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getDeviceVolume() request from creative; ")));
            }
        }
        return -1;
    }

    @JavascriptInterface
    public final int getMaxDeviceVolume(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getMaxDeviceVolume called");
        }
        try {
            return C2751E3.f962a.m1030m();
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "getMaxDeviceVolume");
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 == null) {
                return 0;
            }
            String str3 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f52).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getMaxDeviceVolume() request from creative; ")));
            return 0;
        }
    }

    @JavascriptInterface
    public final String getMaxSize(String str) {
        int i;
        int i2;
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getMaxSize called");
        }
        JSONObject jSONObject = new JSONObject();
        try {
            Activity fullScreenActivity = this.f1641a.getFullScreenActivity();
            if (fullScreenActivity == null) {
                Context containerContext = this.f1641a.getContainerContext();
                if ((containerContext instanceof Activity ? (Activity) containerContext : null) == null) {
                    return getScreenSize(str);
                }
                Context containerContext2 = this.f1641a.getContainerContext();
                Intrinsics.checkNotNull(containerContext2, "null cannot be cast to non-null type android.app.Activity");
                fullScreenActivity = (Activity) containerContext2;
            }
            FrameLayout frameLayout = (FrameLayout) fullScreenActivity.findViewById(R.id.content);
            int iM2609b = AbstractC3429y2.m2609b(frameLayout.getWidth() / AbstractC2886N3.m1384b());
            int iM2609b2 = AbstractC3429y2.m2609b(frameLayout.getHeight() / AbstractC2886N3.m1384b());
            if (this.f1641a.getFullScreenActivity() != null && (iM2609b == 0 || iM2609b2 == 0)) {
                Intrinsics.checkNotNull(frameLayout);
                ViewTreeObserverOnGlobalLayoutListenerC3002V5 viewTreeObserverOnGlobalLayoutListenerC3002V5 = new ViewTreeObserverOnGlobalLayoutListenerC3002V5(frameLayout, this.f1644d);
                frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC3002V5);
                Boolean bool = Boolean.FALSE;
                synchronized (bool) {
                    try {
                        bool.wait();
                    } catch (InterruptedException unused) {
                    }
                    i = viewTreeObserverOnGlobalLayoutListenerC3002V5.f1581c;
                    i2 = viewTreeObserverOnGlobalLayoutListenerC3002V5.f1582d;
                    Unit unit = Unit.INSTANCE;
                }
                iM2609b2 = i2;
                iM2609b = i;
            }
            try {
                jSONObject.put("width", iM2609b);
                jSONObject.put("height", iM2609b2);
            } catch (JSONException e) {
                InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
                if (interfaceC3147f52 != null) {
                    String str3 = AbstractC3044Y5.f1678a;
                    Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                    ((C3162g5) interfaceC3147f52).m2148a(str3, "Error while creating max size Json.", e);
                }
            }
            InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
            if (interfaceC3147f53 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f53).m2147a(str4, "getMaxSize called:" + jSONObject);
            }
        } catch (Exception e2) {
            this.f1641a.m1954a(str, "Unexpected error", "getMaxSize");
            InterfaceC3147f5 interfaceC3147f54 = this.f1644d;
            if (interfaceC3147f54 != null) {
                String str5 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f54).m2151b(str5, AbstractC2761Ed.m1111a(e2, AbstractC3208j6.m2261a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getMaxSize() request from creative; ")));
            }
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @JavascriptInterface
    public final String getOrientation(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getOrientation called");
        }
        byte bM1391g = AbstractC2886N3.m1391g();
        return bM1391g == 1 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : bM1391g == 3 ? "90" : bM1391g == 2 ? "180" : bM1391g == 4 ? "270" : "-1";
    }

    @JavascriptInterface
    public final String getOrientationProperties(String str) {
        C2847K9 c2847k9 = this.f1643c;
        String str2 = c2847k9 != null ? c2847k9.f1169d : null;
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str3, AbstractC3223k6.m2276a(str3, "access$getTAG$p(...)", "getOrientationProperties called: ", str2));
        }
        Intrinsics.checkNotNull(str2);
        return str2;
    }

    @JavascriptInterface
    public final String getPlacementType(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getPlacementType called");
        }
        return 1 == this.f1642b ? "interstitial" : "inline";
    }

    @JavascriptInterface
    public final String getPlatform(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 == null) {
            return "android";
        }
        String str2 = AbstractC3044Y5.f1678a;
        Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
        ((C3162g5) interfaceC3147f5).m2147a(str2, "getPlatform. Platform:android");
        return "android";
    }

    @JavascriptInterface
    public final String getPlatformVersion(String str) {
        String strValueOf = String.valueOf(Build.VERSION.SDK_INT);
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$p(...)", "getPlatformVersion. Version:", strValueOf));
        }
        return strValueOf;
    }

    @JavascriptInterface
    public final String getRenderableAdIndexes(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getRenderableAdIndexes is called");
        }
        JSONArray renderableAdIndexes = this.f1641a.getRenderableAdIndexes();
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2147a(str3, "renderableAdIndexes called:" + renderableAdIndexes);
        }
        String string = renderableAdIndexes.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @JavascriptInterface
    public final String getSafeArea(String str) {
        JSONObject safeArea = this.f1641a.getSafeArea();
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getSafeArea called:" + safeArea);
        }
        if (safeArea != null) {
            return safeArea.toString();
        }
        return null;
    }

    @JavascriptInterface
    public final String getScreenSize(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", AbstractC2886N3.m1392h().f1330a);
            jSONObject.put("height", AbstractC2886N3.m1392h().f1331b);
            InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
            if (interfaceC3147f5 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5).m2152c(str2, "Message:Width x Height : " + AbstractC2886N3.m1392h().f1330a + 'x' + AbstractC2886N3.m1392h().f1331b);
            }
        } catch (JSONException unused) {
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "getScreenSize");
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f52).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error while getting screen dimensions; ")));
            }
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
        if (interfaceC3147f53 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f53).m2147a(str4, AbstractC3223k6.m2276a(str4, "access$getTAG$p(...)", "getScreenSize called:", string));
        }
        return string;
    }

    @JavascriptInterface
    public final String getSdkVersion(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 == null) {
            return "10.8.3";
        }
        String str2 = AbstractC3044Y5.f1678a;
        Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
        ((C3162g5) interfaceC3147f5).m2147a(str2, "getSdkVersion called. Version:10.8.3");
        return "10.8.3";
    }

    @JavascriptInterface
    public final long getShowTimeStamp(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "getShowTimeStamp is called");
        }
        long showTimeStamp = this.f1641a.getShowTimeStamp();
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2147a(str3, "getShowTimeStamp is " + showTimeStamp);
        }
        return showTimeStamp;
    }

    @JavascriptInterface
    public final String getState(String str) {
        String viewState = this.f1641a.getViewState();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = viewState.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2152c(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$p(...)", "getState called:", lowerCase));
        }
        return lowerCase;
    }

    @JavascriptInterface
    public final String getVersion(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 == null) {
            return "2.0";
        }
        String str2 = AbstractC3044Y5.f1678a;
        Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
        ((C3162g5) interfaceC3147f5).m2147a(str2, "getVersion called. Version:2.0");
        return "2.0";
    }

    @JavascriptInterface
    public final void impressionFired(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "impressionFired is called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f52 != null) {
            String str3 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str3, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str3, "TAG", "onImpressionFired "));
        }
        InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f53 != null) {
            String str4 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f53).m2147a(str4, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str4, "TAG", "recordContextualData "));
        }
        C3055Z2 c3055z2 = gestureDetectorOnGestureListenerC3049Ya.f1715I0;
        if (c3055z2 != null) {
            c3055z2.m2001a();
        }
        gestureDetectorOnGestureListenerC3049Ya.getListener().mo1144a(gestureDetectorOnGestureListenerC3049Ya.getTelemetryOnAdImpression());
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void incentCompleted(java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3030X5.incentCompleted(java.lang.String, java.lang.String):void");
    }

    @JavascriptInterface
    public final boolean isBackButtonDisabled(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "isBackButtonDisabled called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya != null) {
            return gestureDetectorOnGestureListenerC3049Ya.f1700B;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 == null) {
            return false;
        }
        String str3 = AbstractC3044Y5.f1678a;
        Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
        ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
        return false;
    }

    @JavascriptInterface
    public final String isDeviceMuted(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "isDeviceMuted called");
        }
        if (this.f1641a == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 == null) {
                return "false";
            }
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
            return "false";
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
        if (interfaceC3147f53 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f53).m2147a(str4, "JavaScript called: isDeviceMuted()");
        }
        boolean z = false;
        try {
            C3149f7 mediaProcessor = this.f1641a.getMediaProcessor();
            Intrinsics.checkNotNull(mediaProcessor);
            InterfaceC3147f5 interfaceC3147f54 = mediaProcessor.f2063b;
            if (interfaceC3147f54 != null) {
                ((C3162g5) interfaceC3147f54).m2152c("MraidMediaProcessor", "isVolumeMuted");
            }
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d != null) {
                Object systemService = contextM1254d.getSystemService("audio");
                AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
                if (audioManager != null) {
                    if (2 != audioManager.getRingerMode()) {
                        z = true;
                    }
                }
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f55 = this.f1644d;
            if (interfaceC3147f55 != null) {
                String str5 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f55).m2151b(str5, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in checking if device is muted; ")));
            }
        }
        return String.valueOf(z);
    }

    @JavascriptInterface
    public final String isHeadphonePlugged(String str) {
        boolean zM2131b;
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "isHeadphonePlugged called");
        }
        if (this.f1641a == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 == null) {
                return "false";
            }
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
            return "false";
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
        if (interfaceC3147f53 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f53).m2147a(str4, "JavaScript called: isHeadphonePlugged()");
        }
        try {
            C3149f7 mediaProcessor = this.f1641a.getMediaProcessor();
            Intrinsics.checkNotNull(mediaProcessor);
            mediaProcessor.getClass();
            zM2131b = C3149f7.m2131b();
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f54 = this.f1644d;
            if (interfaceC3147f54 != null) {
                String str5 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f54).m2151b(str5, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in checking if headphones are plugged-in; ")));
            }
            zM2131b = false;
        }
        return String.valueOf(zM2131b);
    }

    @JavascriptInterface
    public final boolean isViewable(String str) {
        String str2 = AbstractC3044Y5.f1678a;
        Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya != null) {
            return gestureDetectorOnGestureListenerC3049Ya.f1783z == EnumC3320qd.f2472c;
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2151b(str2, "Found a null instance of render view!");
        }
        return false;
    }

    @JavascriptInterface
    public final void loadAd(String str, int i) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3420x8.m2595a(str2, "access$getTAG$p(...)", "loadAd is called with index - ", i));
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f52 != null) {
            String str3 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str3, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str3, "TAG", "loadPodAd "));
        }
        if (gestureDetectorOnGestureListenerC3049Ya.f1783z == EnumC3320qd.f2472c && gestureDetectorOnGestureListenerC3049Ya.f1732V != null && !gestureDetectorOnGestureListenerC3049Ya.f1704D.get()) {
            InterfaceC3052Z interfaceC3052Z = gestureDetectorOnGestureListenerC3049Ya.f1732V;
            if (interfaceC3052Z != null) {
                interfaceC3052Z.mo902a(i, gestureDetectorOnGestureListenerC3049Ya);
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f53 != null) {
            String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f53).m2151b(TAG, "Cannot load index pod ad as the current ad is not viewable");
        }
        gestureDetectorOnGestureListenerC3049Ya.m1958a(false);
    }

    @JavascriptInterface
    public final void log(String str, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2152c(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$p(...)", "Log called. Message:", message));
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        gestureDetectorOnGestureListenerC3049Ya.getClass();
        C2818Ia c2818Ia = GestureDetectorOnGestureListenerC3049Ya.f1694N0;
        c2818Ia.getClass();
        if (!((Boolean) GestureDetectorOnGestureListenerC3049Ya.f1697Q0.getValue(c2818Ia, C2818Ia.f1119a[0])).booleanValue() || message == null) {
            return;
        }
        gestureDetectorOnGestureListenerC3049Ya.getListener().mo1610a(message);
    }

    @JavascriptInterface
    public final void logTelemetryEvent(String str, String eventType, String str2) {
        if (eventType == null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
            if (interfaceC3147f5 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5).m2151b(str3, "eventType is null");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2147a(str4, "logTelemetryEvent is called: ".concat(eventType));
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        gestureDetectorOnGestureListenerC3049Ya.getClass();
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        C3153fb c3153fb = gestureDetectorOnGestureListenerC3049Ya.f1725O;
        if (c3153fb != null) {
            Intrinsics.checkNotNullParameter(eventType, "eventType");
            if (c3153fb.f2081f.get()) {
                return;
            }
            if (c3153fb.f2080e.decrementAndGet() <= 0) {
                c3153fb.f2081f.set(true);
                Map mapM2138a = c3153fb.m2138a();
                long j = c3153fb.f2077b;
                ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
                mapM2138a.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
                C3199ic c3199ic = C3199ic.f2193a;
                C3199ic.m2248b("TemplateEventDropped", mapM2138a, EnumC3259mc.f2349a);
                return;
            }
            if (str2 != null) {
                try {
                } catch (JSONException e) {
                    Log.e(C3199ic.f2194b, "Error parsing JSON: " + e);
                }
                if (new JSONObject(str2).length() == 0) {
                    str2 = null;
                }
            }
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m2729to("plType", String.valueOf(c3153fb.f2076a.f1887a.m1939m())), TuplesKt.m2729to("markupType", c3153fb.f2076a.f1888b), TuplesKt.m2729to("networkType", C2751E3.m1005q()));
            if (str2 != null) {
                mapMutableMapOf.put("payload", str2);
            }
            if (c3153fb.f2076a.f1889c.length() > 0) {
                mapMutableMapOf.put("metadataBlob", c3153fb.f2076a.f1889c);
            }
            C3199ic.m2248b(eventType, mapMutableMapOf, EnumC3259mc.f2350b);
        }
    }

    @JavascriptInterface
    public final void onAudioStateChanged(String str, int i) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3420x8.m2595a(str2, "access$getTAG$p(...)", "onAudioStateChanged is called: ", i));
        }
        EnumC2704B1.f839b.getClass();
        EnumC2704B1 enumC2704B1 = (EnumC2704B1) EnumC2704B1.f840c.get(i);
        if (enumC2704B1 == null) {
            enumC2704B1 = EnumC2704B1.f841d;
        }
        if (enumC2704B1 != EnumC2704B1.f841d) {
            this.f1641a.getListener().mo1222a(enumC2704B1);
        }
    }

    @JavascriptInterface
    public final void onOrientationChange(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, ">>> onOrientationChange() >>> This API is deprecated!");
        }
    }

    @JavascriptInterface
    public final void onUserAudioMuteInteraction(String str, boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "onAudioMuteInteraction is called: " + z);
        }
        this.f1641a.getListener().mo1225a(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onUserInteraction(java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3030X5.onUserInteraction(java.lang.String, java.lang.String):void");
    }

    @JavascriptInterface
    public final void open(final String str, final String str2) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "open called");
        }
        if (!this.f1641a.m1976k()) {
            this.f1641a.mo863a(XfdfConstants.OPEN);
            return;
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (!gestureDetectorOnGestureListenerC3049Ya.f1784z0) {
            gestureDetectorOnGestureListenerC3049Ya.m1974i();
            AbstractC3154fc.m2140a(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    C3030X5.m1901a(this.f$0, str, str2);
                }
            });
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2151b(str4, "open called on unloaded ad");
        }
    }

    @JavascriptInterface
    public final void openEmbedded(final String str, final String str2) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "openEmbedded called");
        }
        if (!this.f1641a.m1976k()) {
            this.f1641a.mo863a("openEmbedded");
            return;
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (!gestureDetectorOnGestureListenerC3049Ya.f1784z0) {
            gestureDetectorOnGestureListenerC3049Ya.m1974i();
            AbstractC3154fc.m2140a(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3030X5.m1905b(this.f$0, str, str2);
                }
            });
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2151b(str4, "openEmbedded called on unloaded ad");
        }
    }

    @JavascriptInterface
    public final void openExternal(String str, String url, String str2) {
        C3358t6 c3358t6;
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "open External");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (!gestureDetectorOnGestureListenerC3049Ya.m1976k()) {
            this.f1641a.mo863a("openExternal");
            return;
        }
        this.f1641a.m1974i();
        InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
        if (interfaceC3147f53 != null) {
            String str5 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f53).m2147a(str5, AbstractC3223k6.m2276a(str5, "access$getTAG$p(...)", "openExternal called with url: ", url));
        }
        C3373u6 c3373u6 = this.f1641a.getLandingPageHandler().f2410f;
        if (c3373u6 != null) {
            String strM2280a = C3238l6.m2280a(url);
            C3283o6 landingPageHandler = this.f1641a.getLandingPageHandler();
            int i = landingPageHandler.f2412h + 1;
            landingPageHandler.f2412h = i;
            c3358t6 = new C3358t6(c3373u6, strM2280a, i, 8);
        } else {
            c3358t6 = null;
        }
        if (c3358t6 != null) {
            c3358t6.f2554g = "EX_NATIVE";
        }
        C3283o6 landingPageHandler2 = this.f1641a.getLandingPageHandler();
        EnumC3178h6 funnelState = EnumC3178h6.f2135d;
        landingPageHandler2.getClass();
        Intrinsics.checkNotNullParameter(funnelState, "funnelState");
        C3238l6.m2282a(funnelState, c3358t6, (Integer) null, new C3268n6(landingPageHandler2));
        C3283o6 landingPageHandler3 = this.f1641a.getLandingPageHandler();
        landingPageHandler3.getClass();
        Intrinsics.checkNotNullParameter("openExternal", "api");
        if (url != null) {
            landingPageHandler3.m2335e(str, url, str2, c3358t6);
            return;
        }
        if (str2 != null) {
            landingPageHandler3.m2335e(str, str2, null, c3358t6);
            return;
        }
        EnumC3178h6 funnelState2 = EnumC3178h6.f2136e;
        Intrinsics.checkNotNullParameter(funnelState2, "funnelState");
        C3238l6.m2282a(funnelState2, c3358t6, (Integer) 2, (Function2) new C3268n6(landingPageHandler3));
        C2951Ra c2951Ra = landingPageHandler3.f2408d;
        if (c2951Ra != null) {
            Intrinsics.checkNotNullParameter("Empty url and fallback url", "message");
            c2951Ra.f1508a.m1954a(str, "Empty url and fallback url", "openExternal");
        }
        InterfaceC3147f5 interfaceC3147f54 = landingPageHandler3.f2411g;
        if (interfaceC3147f54 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C3162g5) interfaceC3147f54).m2151b("o6", "Empty deeplink and fallback urls");
        }
    }

    @JavascriptInterface
    public final void openWithoutTracker(final String str, final String str2) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "openWithoutTracker called");
        }
        if (!this.f1641a.m1976k()) {
            this.f1641a.mo863a("openWithoutTracker");
            return;
        }
        if (!this.f1641a.f1784z0) {
            AbstractC3154fc.m2140a(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    C3030X5.m1908c(this.f$0, str, str2);
                }
            });
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2151b(str4, "openWithoutTracker called on unloaded ad");
        }
    }

    @JavascriptInterface
    public final void ping(String str, String str2, boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "ping called");
        }
        if (this.f1641a == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (str2 != null) {
            int length = str2.length() - 1;
            int i = 0;
            boolean z2 = false;
            while (i <= length) {
                boolean z3 = Intrinsics.compare((int) str2.charAt(!z2 ? i : length), 32) <= 0;
                if (z2) {
                    if (!z3) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z3) {
                    i++;
                } else {
                    z2 = true;
                }
            }
            if (str2.subSequence(i, length + 1).toString().length() != 0 && URLUtil.isValidUrl(str2)) {
                InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
                if (interfaceC3147f53 != null) {
                    String str5 = AbstractC3044Y5.f1678a;
                    Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
                    ((C3162g5) interfaceC3147f53).m2147a(str5, "JavaScript called ping() URL: >>> " + str2 + " <<<");
                }
                try {
                    C3369u2.f2627a.m2484a(str2, z, this.f1644d);
                    return;
                } catch (Exception e) {
                    this.f1641a.m1954a(str, "Unexpected error", "ping");
                    AbstractC2814I6.m1170a((byte) 1, "InMobi", "Failed to fire ping; SDK encountered unexpected error");
                    InterfaceC3147f5 interfaceC3147f54 = this.f1644d;
                    if (interfaceC3147f54 != null) {
                        String str6 = AbstractC3044Y5.f1678a;
                        ((C3162g5) interfaceC3147f54).m2151b(str6, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str6, "access$getTAG$p(...)", "SDK encountered unexpected error in handling ping() request from creative; ")));
                        return;
                    }
                    return;
                }
            }
        }
        this.f1641a.m1954a(str, "Invalid URL:" + str2, "ping");
    }

    @JavascriptInterface
    public final void pingInWebView(String str, String str2, boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "openInWebView called");
        }
        if (this.f1641a == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (str2 != null) {
            int length = str2.length() - 1;
            int i = 0;
            boolean z2 = false;
            while (i <= length) {
                boolean z3 = Intrinsics.compare((int) str2.charAt(!z2 ? i : length), 32) <= 0;
                if (z2) {
                    if (!z3) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z3) {
                    i++;
                } else {
                    z2 = true;
                }
            }
            if (str2.subSequence(i, length + 1).toString().length() != 0 && URLUtil.isValidUrl(str2)) {
                InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
                if (interfaceC3147f53 != null) {
                    String str5 = AbstractC3044Y5.f1678a;
                    Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
                    ((C3162g5) interfaceC3147f53).m2147a(str5, "JavaScript called pingInWebView() URL: >>> " + str2 + " <<<");
                }
                try {
                    C3369u2.f2627a.m2486b(str2, z, this.f1644d);
                    return;
                } catch (Exception e) {
                    this.f1641a.m1954a(str, "Unexpected error", "pingInWebView");
                    AbstractC2814I6.m1170a((byte) 1, "InMobi", "Failed to fire ping; SDK encountered unexpected error");
                    InterfaceC3147f5 interfaceC3147f54 = this.f1644d;
                    if (interfaceC3147f54 != null) {
                        String str6 = AbstractC3044Y5.f1678a;
                        ((C3162g5) interfaceC3147f54).m2151b(str6, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str6, "access$getTAG$p(...)", "SDK encountered unexpected error in handling pingInWebView() request from creative; ")));
                        return;
                    }
                    return;
                }
            }
        }
        this.f1641a.m1954a(str, "Invalid URL:" + str2, "pingInWebView");
    }

    @JavascriptInterface
    public final void playVideo(final String str, final String str2) {
        if (this.f1641a == null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
            if (interfaceC3147f5 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5).m2151b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (str2 != null) {
            int length = str2.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) str2.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            if (str2.subSequence(i, length + 1).toString().length() != 0 && StringsKt.startsWith$default(str2, ProxyConfig.MATCH_HTTP, false, 2, (Object) null) && (StringsKt.endsWith$default(str2, "mp4", false, 2, (Object) null) || StringsKt.endsWith$default(str2, "avi", false, 2, (Object) null) || StringsKt.endsWith$default(str2, "m4v", false, 2, (Object) null))) {
                InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
                if (interfaceC3147f52 != null) {
                    String str4 = AbstractC3044Y5.f1678a;
                    Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                    ((C3162g5) interfaceC3147f52).m2147a(str4, "JavaScript called: playVideo (" + str2 + ')');
                }
                new Handler(this.f1641a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3030X5.m1909d(this.f$0, str, str2);
                    }
                });
                return;
            }
        }
        this.f1641a.m1954a(str, "Null or empty or invalid media playback URL supplied", "playVideo");
    }

    @JavascriptInterface
    public final void registerBackButtonPressedEventListener(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "registerBackButtonPressedEventListener called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        try {
            InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
            if (interfaceC3147f53 != null) {
                String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f53).m2147a(TAG, "registerBackButtonPressedEventListener " + gestureDetectorOnGestureListenerC3049Ya);
            }
            gestureDetectorOnGestureListenerC3049Ya.f1702C = str;
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "registerBackButtonPressedEventListener");
            InterfaceC3147f5 interfaceC3147f54 = this.f1644d;
            if (interfaceC3147f54 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f54).m2151b(str4, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerBackButtonPressedEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void registerDeviceMuteEventListener(String jsCallbackNamespace) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "registerDeviceMuteEventListener called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str2, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (jsCallbackNamespace != null) {
            try {
                C3149f7 mediaProcessor = gestureDetectorOnGestureListenerC3049Ya.getMediaProcessor();
                if (mediaProcessor != null) {
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    if (mediaProcessor.f2065d == null) {
                        C2961S6 c2961s6 = new C2961S6(new C3104c7(mediaProcessor, jsCallbackNamespace));
                        mediaProcessor.f2065d = c2961s6;
                        c2961s6.mo1762b();
                    }
                }
            } catch (Exception e) {
                this.f1641a.m1954a(jsCallbackNamespace, "Unexpected error", "registerDeviceMuteEventListener");
                InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
                if (interfaceC3147f53 != null) {
                    String str3 = AbstractC3044Y5.f1678a;
                    ((C3162g5) interfaceC3147f53).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerDeviceMuteEventListener() request from creative; ")));
                }
            }
        }
    }

    @JavascriptInterface
    public final void registerDeviceVolumeChangeEventListener(String jsCallbackNamespace) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "registerDeviceVolumeChangeEventListener called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str2, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (jsCallbackNamespace != null) {
            try {
                C3149f7 mediaProcessor = gestureDetectorOnGestureListenerC3049Ya.getMediaProcessor();
                if (mediaProcessor != null) {
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    Context contextM1254d = C2849Kb.m1254d();
                    if (contextM1254d != null && mediaProcessor.f2066e == null) {
                        C2961S6 c2961s6 = new C2961S6(new C3119d7(mediaProcessor, jsCallbackNamespace, contextM1254d, new Handler(Looper.getMainLooper())));
                        mediaProcessor.f2066e = c2961s6;
                        c2961s6.mo1762b();
                    }
                }
            } catch (Exception e) {
                this.f1641a.m1954a(jsCallbackNamespace, "Unexpected error", "registerDeviceVolumeChangeEventListener");
                InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
                if (interfaceC3147f53 != null) {
                    String str3 = AbstractC3044Y5.f1678a;
                    ((C3162g5) interfaceC3147f53).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerDeviceVolumeChangeEventListener() request from creative; ")));
                }
            }
        }
    }

    @JavascriptInterface
    public final void registerHeadphonePluggedEventListener(String jsCallbackNamespace) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "registerHeadphonePluggedEventListener called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str2, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (jsCallbackNamespace != null) {
            try {
                C3149f7 mediaProcessor = gestureDetectorOnGestureListenerC3049Ya.getMediaProcessor();
                if (mediaProcessor != null) {
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    if (mediaProcessor.f2067f == null) {
                        C2961S6 c2961s6 = new C2961S6(new C3089b7(mediaProcessor, jsCallbackNamespace));
                        mediaProcessor.f2067f = c2961s6;
                        c2961s6.mo1762b();
                    }
                }
            } catch (Exception e) {
                this.f1641a.m1954a(jsCallbackNamespace, "Unexpected error", "registerHeadphonePluggedEventListener");
                InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
                if (interfaceC3147f53 != null) {
                    String str3 = AbstractC3044Y5.f1678a;
                    ((C3162g5) interfaceC3147f53).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerHeadphonePluggedEventListener() request from creative; ")));
                }
            }
        }
    }

    @JavascriptInterface
    public final void saveBlob(String str, String str2) {
        InterfaceC3054Z1 interfaceC3054Z1;
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "saveBlob is called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f53 != null) {
            String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f53).m2147a(TAG, "saveBlob");
        }
        if (str2 == null || (interfaceC3054Z1 = gestureDetectorOnGestureListenerC3049Ya.f1728R) == null) {
            return;
        }
        ((AbstractC2928Q0) interfaceC3054Z1).m1611a(str2, gestureDetectorOnGestureListenerC3049Ya.getImpressionId());
    }

    @JavascriptInterface
    public final void saveContent(String str, String str2, String str3) {
        if (str2 != null && str2.length() != 0 && str3 != null && str3.length() != 0) {
            try {
                this.f1641a.m1962b(str, str2, str3);
                return;
            } catch (Exception e) {
                this.f1641a.m1954a(str, "Unexpected error", "saveContent");
                InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
                if (interfaceC3147f5 != null) {
                    String str4 = AbstractC3044Y5.f1678a;
                    ((C3162g5) interfaceC3147f5).m2151b(str4, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling saveContent() request from creative; ")));
                    return;
                }
                return;
            }
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str5 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2147a(str5, "saveContent called with invalid parameters");
        }
        JSONObject jSONObject = new JSONObject();
        if (str3 == null) {
            str3 = "";
        }
        try {
            jSONObject.put("url", str3);
            jSONObject.put("reason", 8);
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String strReplace$default = StringsKt.replace$default(string, "\"", "\\\"", false, 4, (Object) null);
        StringBuilder sb = new StringBuilder("sendSaveContentResult(\"saveContent_");
        if (str2 == null) {
            str2 = "";
        }
        this.f1641a.m1953a(str, sb.append(str2).append("\", 'failed', \"").append(strReplace$default).append("\");").toString());
    }

    @JavascriptInterface
    public final void setAdContext(String str, String podAdContext) {
        Intrinsics.checkNotNullParameter(podAdContext, "podAdContext");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$p(...)", "setAdContext is called ", podAdContext));
        }
        InterfaceC3052Z adPodHandler = this.f1641a.getAdPodHandler();
        if (adPodHandler != null) {
            ((AbstractC2928Q0) adPodHandler).m1661d(podAdContext);
        }
    }

    @JavascriptInterface
    public final void setCloseEndCardTracker(String str, String str2) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "setCloseEndCardTracker is called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        try {
            gestureDetectorOnGestureListenerC3049Ya.setCloseEndCardTracker(str2);
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "getDownloadStatus");
            InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
            if (interfaceC3147f53 != null) {
                String str5 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f53).m2151b(str5, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getDownloadStatus() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void setOrientationProperties(String str, final String orientationPropertiesString) {
        Intrinsics.checkNotNullParameter(orientationPropertiesString, "orientationPropertiesString");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$p(...)", "setOrientationProperties called: ", orientationPropertiesString));
        }
        if (!this.f1641a.f1784z0) {
            new Handler(this.f1641a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    C3030X5.m1904b(this.f$0, orientationPropertiesString);
                }
            });
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2151b(str3, "setOrientationProperties called on unloaded ad");
        }
    }

    @JavascriptInterface
    public final void showAd(String str, int i) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3420x8.m2595a(str2, "access$getTAG$p(...)", "showAd is called with index ", i));
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f52 != null) {
            String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG, "showPodAdAtIndex " + gestureDetectorOnGestureListenerC3049Ya + ' ' + i);
        }
        if (gestureDetectorOnGestureListenerC3049Ya.f1783z == EnumC3320qd.f2472c && gestureDetectorOnGestureListenerC3049Ya.f1732V != null && !gestureDetectorOnGestureListenerC3049Ya.f1704D.get()) {
            InterfaceC3052Z interfaceC3052Z = gestureDetectorOnGestureListenerC3049Ya.f1732V;
            if (interfaceC3052Z != null) {
                interfaceC3052Z.mo1221a(i, gestureDetectorOnGestureListenerC3049Ya, gestureDetectorOnGestureListenerC3049Ya.getFullScreenActivity());
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f53 != null) {
            String TAG2 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f53).m2151b(TAG2, "Cannot show index pod ad as the current ad is not viewable");
        }
        gestureDetectorOnGestureListenerC3049Ya.m1963b(false);
    }

    @JavascriptInterface
    public final void showAlert(String str, String alert) {
        Intrinsics.checkNotNullParameter(alert, "alert");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$p(...)", "showAlert: ", alert));
        }
    }

    @JavascriptInterface
    public final void showEndCard(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "showEndCard is called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f53 != null) {
            String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f53).m2147a(TAG, "showEndCardFromInterActive");
        }
        InterfaceC3411x referenceContainer = gestureDetectorOnGestureListenerC3049Ya.getReferenceContainer();
        if (referenceContainer instanceof C3359t7) {
            ((C3359t7) referenceContainer).m2450o();
        }
    }

    @JavascriptInterface
    public final void storePicture(String str, String str2) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str3, "storePicture is deprecated and no-op. ");
        }
    }

    @JavascriptInterface
    public final void submitAdReport(String str, String adQualityUrl, String enableUserAdReportScreenshot, String templateInfo) {
        Intrinsics.checkNotNullParameter(adQualityUrl, "adQualityUrl");
        Intrinsics.checkNotNullParameter(enableUserAdReportScreenshot, "enableUserAdReportScreenshot");
        Intrinsics.checkNotNullParameter(templateInfo, "templateInfo");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "submitAdReport called");
        }
        this.f1641a.m1955a(adQualityUrl, templateInfo, Intrinsics.areEqual(enableUserAdReportScreenshot, AppEventsConstants.EVENT_PARAM_VALUE_YES));
    }

    @JavascriptInterface
    public final String supports(String str, String feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$p(...)", "Checking support for: ", feature));
        }
        String strValueOf = String.valueOf(this.f1641a.m1971e(feature));
        InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
        if (interfaceC3147f52 != null) {
            String str3 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f52).m2152c(str3, "Message:" + feature + " support: " + strValueOf);
        }
        return strValueOf;
    }

    @JavascriptInterface
    public final long timeSinceShow(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "timeSinceShow is called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f52 != null) {
            String str3 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f52).m2152c(str3, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str3, "TAG", "timeSincePodShow "));
        }
        InterfaceC3052Z interfaceC3052Z = gestureDetectorOnGestureListenerC3049Ya.f1732V;
        if (interfaceC3052Z != null) {
            return ((AbstractC2928Q0) interfaceC3052Z).m1560A0();
        }
        return 0L;
    }

    @JavascriptInterface
    public final void unload(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "unload called");
        }
        try {
            this.f1641a.m1979n();
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "unload");
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Failed to unload ad; SDK encountered an unexpected error");
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f52).m2151b(str3, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "SDK encountered an expected error in handling the unload() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterBackButtonPressedEventListener(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "unregisterBackButtonPressedEventListener called");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1641a;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        try {
            InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
            if (interfaceC3147f53 != null) {
                String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f53).m2147a(TAG, "unregisterBackButtonPressedEventListener " + gestureDetectorOnGestureListenerC3049Ya);
            }
            gestureDetectorOnGestureListenerC3049Ya.f1702C = null;
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "unregisterBackButtonPressedEventListener");
            InterfaceC3147f5 interfaceC3147f54 = this.f1644d;
            if (interfaceC3147f54 != null) {
                String str4 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f54).m2151b(str4, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterBackButtonPressedEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterDeviceMuteEventListener(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "unregisterDeviceMuteEventListener called");
        }
        if (this.f1641a == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
        if (interfaceC3147f53 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f53).m2147a(str4, "Unregister device mute event listener ...");
        }
        try {
            C3149f7 mediaProcessor = this.f1641a.getMediaProcessor();
            if (mediaProcessor != null) {
                C2961S6 c2961s6 = mediaProcessor.f2065d;
                if (c2961s6 != null) {
                    c2961s6.mo1761a();
                }
                mediaProcessor.f2065d = null;
            }
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "unRegisterDeviceMuteEventListener");
            InterfaceC3147f5 interfaceC3147f54 = this.f1644d;
            if (interfaceC3147f54 != null) {
                String str5 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f54).m2151b(str5, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterDeviceMuteEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterDeviceVolumeChangeEventListener(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "unregisterDeviceVolumeChangeEventListener called");
        }
        if (this.f1641a == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
        if (interfaceC3147f53 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f53).m2147a(str4, "Unregister device volume change listener ...");
        }
        try {
            C3149f7 mediaProcessor = this.f1641a.getMediaProcessor();
            if (mediaProcessor != null) {
                C2961S6 c2961s6 = mediaProcessor.f2066e;
                if (c2961s6 != null) {
                    c2961s6.mo1761a();
                }
                mediaProcessor.f2066e = null;
            }
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "unregisterDeviceVolumeChangeEventListener");
            InterfaceC3147f5 interfaceC3147f54 = this.f1644d;
            if (interfaceC3147f54 != null) {
                String str5 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f54).m2151b(str5, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterDeviceVolumeChangeEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterHeadphonePluggedEventListener(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "unregisterHeadphonePluggedEventListener called");
        }
        if (this.f1641a == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2151b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1644d;
        if (interfaceC3147f53 != null) {
            String str4 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f53).m2147a(str4, "Unregister headphone plugged event listener ...");
        }
        try {
            C3149f7 mediaProcessor = this.f1641a.getMediaProcessor();
            if (mediaProcessor != null) {
                C2961S6 c2961s6 = mediaProcessor.f2067f;
                if (c2961s6 != null) {
                    c2961s6.mo1761a();
                }
                mediaProcessor.f2067f = null;
            }
        } catch (Exception e) {
            this.f1641a.m1954a(str, "Unexpected error", "unregisterHeadphonePluggedEventListener");
            InterfaceC3147f5 interfaceC3147f54 = this.f1644d;
            if (interfaceC3147f54 != null) {
                String str5 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f54).m2151b(str5, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterHeadphonePluggedEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void useCustomClose(final String str, final boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str2 = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "useCustomClose called:" + z);
        }
        new Handler(this.f1641a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C3030X5.m1906b(this.f$0, z, str);
            }
        });
    }

    @JavascriptInterface
    public final void zoom(String jsCallbackNamespace, final int i) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        InterfaceC3147f5 interfaceC3147f5 = this.f1644d;
        if (interfaceC3147f5 != null) {
            String str = AbstractC3044Y5.f1678a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "zoom is called " + jsCallbackNamespace + ' ' + i);
        }
        AbstractC3154fc.m2140a(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                C3030X5.m1898a(this.f$0, i);
            }
        });
    }

    /* JADX INFO: renamed from: c */
    public static final void m1907c(C3030X5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f1641a.m1981p();
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1644d;
            if (interfaceC3147f5 != null) {
                String str = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f5).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in getting/setting default position; ")));
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1910a(final String str, final String str2, final int i, final float f, final boolean z, final C3358t6 c3358t6) {
        if (c3358t6 != null) {
            c3358t6.f2554g = "IN_CUSTOM";
        }
        new Handler(this.f1641a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3030X5.m1899a(this.f$0, c3358t6, str2, i, str, f, z);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1899a(C3030X5 this$0, C3358t6 c3358t6, String expandInput, int i, String str, float f, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(expandInput, "$expandInput");
        try {
            if (this$0.f1641a.getEmbeddedBrowserJSCallbacks() == null) {
                InterfaceC3147f5 interfaceC3147f5 = this$0.f1644d;
                if (interfaceC3147f5 != null) {
                    String str2 = AbstractC3044Y5.f1678a;
                    Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                    ((C3162g5) interfaceC3147f5).m2151b(str2, "Found a null instance of EmbeddedBrowserJSCallback instance to customExpand");
                }
                C3283o6 landingPageHandler = this$0.f1641a.getLandingPageHandler();
                EnumC3178h6 funnelState = EnumC3178h6.f2136e;
                landingPageHandler.getClass();
                Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                C3238l6.m2282a(funnelState, c3358t6, (Integer) 8002, (Function2) new C3268n6(landingPageHandler));
                return;
            }
            InterfaceC3147f5 interfaceC3147f52 = this$0.f1644d;
            if (interfaceC3147f52 != null) {
                String str3 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2147a(str3, "Custom expand called. Url: " + expandInput);
            }
            EnumC2944R3 enumC2944R3 = EnumC2944R3.values()[i];
            if (enumC2944R3 == EnumC2944R3.f1490a) {
                int iM2328a = this$0.f1641a.getLandingPageHandler().m2328a("customExpand", str, expandInput, c3358t6, null);
                InterfaceC3147f5 interfaceC3147f53 = this$0.f1644d;
                if (interfaceC3147f53 != null) {
                    String str4 = AbstractC3044Y5.f1678a;
                    Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                    ((C3162g5) interfaceC3147f53).m2147a(str4, "processCustomExpandRequest: " + iM2328a);
                }
                if (iM2328a == 3) {
                    InterfaceC2958S3 embeddedBrowserJSCallbacks = this$0.f1641a.getEmbeddedBrowserJSCallbacks();
                    if (embeddedBrowserJSCallbacks != null) {
                        ((C2887N4) embeddedBrowserJSCallbacks).m1393a(expandInput, enumC2944R3, f, z, this$0.f1641a.getViewTouchTimestamp(), c3358t6);
                    }
                    C3283o6 landingPageHandler2 = this$0.f1641a.getLandingPageHandler();
                    EnumC3178h6 funnelState2 = EnumC3178h6.f2137f;
                    landingPageHandler2.getClass();
                    Intrinsics.checkNotNullParameter(funnelState2, "funnelState");
                    C3238l6.m2282a(funnelState2, c3358t6, (Integer) null, new C3268n6(landingPageHandler2));
                    C2951Ra c2951Ra = this$0.f1641a.getLandingPageHandler().f2408d;
                    if (c2951Ra != null) {
                        GestureDetectorOnGestureListenerC3049Ya.m1945a(c2951Ra.f1508a, "customExpand", str, expandInput);
                        return;
                    }
                    return;
                }
                InterfaceC2958S3 embeddedBrowserJSCallbacks2 = this$0.f1641a.getEmbeddedBrowserJSCallbacks();
                if (embeddedBrowserJSCallbacks2 != null) {
                    C2917P4.m1455a(((C2887N4) embeddedBrowserJSCallbacks2).f1302a);
                    return;
                }
                return;
            }
            InterfaceC2958S3 embeddedBrowserJSCallbacks3 = this$0.f1641a.getEmbeddedBrowserJSCallbacks();
            if (embeddedBrowserJSCallbacks3 != null) {
                ((C2887N4) embeddedBrowserJSCallbacks3).m1393a(expandInput, enumC2944R3, f, z, this$0.f1641a.getViewTouchTimestamp(), c3358t6);
            }
            C3283o6 landingPageHandler3 = this$0.f1641a.getLandingPageHandler();
            EnumC3178h6 funnelState3 = EnumC3178h6.f2137f;
            landingPageHandler3.getClass();
            Intrinsics.checkNotNullParameter(funnelState3, "funnelState");
            C3238l6.m2282a(funnelState3, c3358t6, (Integer) null, new C3268n6(landingPageHandler3));
            C2951Ra c2951Ra2 = this$0.f1641a.getLandingPageHandler().f2408d;
            if (c2951Ra2 != null) {
                GestureDetectorOnGestureListenerC3049Ya.m1945a(c2951Ra2.f1508a, "customExpand", str, expandInput);
            }
        } catch (Exception e) {
            this$0.f1641a.m1954a(str, "Unexpected error", "customExpand");
            C3283o6 landingPageHandler4 = this$0.f1641a.getLandingPageHandler();
            EnumC3178h6 funnelState4 = EnumC3178h6.f2136e;
            landingPageHandler4.getClass();
            Intrinsics.checkNotNullParameter(funnelState4, "funnelState");
            C3238l6.m2282a(funnelState4, c3358t6, (Integer) 9, (Function2) new C3268n6(landingPageHandler4));
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Failed to custom expand ad; SDK encountered an unexpected error");
            InterfaceC3147f5 interfaceC3147f54 = this$0.f1644d;
            if (interfaceC3147f54 != null) {
                String str5 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f54).m2151b(str5, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling customExpand() request; ")));
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m1903b(C3030X5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f1641a.m1980o();
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1644d;
            if (interfaceC3147f5 != null) {
                String str = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f5).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in getting/setting current position; ")));
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m1904b(C3030X5 this$0, String json) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(json, "$orientationPropertiesString");
        C2847K9 op = this$0.f1641a.getOrientationProperties();
        if (op != null) {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(op, "op");
            C2847K9 c2847k9 = new C2847K9();
            c2847k9.f1169d = json;
            try {
                JSONObject jSONObject = new JSONObject(json);
                String strOptString = jSONObject.optString("forceOrientation", op.f1167b);
                Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
                Intrinsics.checkNotNullParameter(strOptString, "<set-?>");
                c2847k9.f1167b = strOptString;
                c2847k9.f1166a = jSONObject.optBoolean("allowOrientationChange", op.f1166a);
                String strOptString2 = jSONObject.optString(CommonCssConstants.DIRECTION, op.f1168c);
                Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
                Intrinsics.checkNotNullParameter(strOptString2, "<set-?>");
                c2847k9.f1168c = strOptString2;
                if (!Intrinsics.areEqual(c2847k9.f1167b, "portrait") && !Intrinsics.areEqual(c2847k9.f1167b, "landscape")) {
                    Intrinsics.checkNotNullParameter("none", "<set-?>");
                    c2847k9.f1167b = "none";
                }
                if (!Intrinsics.areEqual(c2847k9.f1168c, "left") && !Intrinsics.areEqual(c2847k9.f1168c, "right")) {
                    Intrinsics.checkNotNullParameter("right", "<set-?>");
                    c2847k9.f1168c = "right";
                }
            } catch (JSONException unused) {
                c2847k9 = null;
            }
            this$0.f1643c = c2847k9;
        }
        C2847K9 c2847k92 = this$0.f1643c;
        if (c2847k92 != null) {
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this$0.f1641a;
            Intrinsics.checkNotNull(c2847k92);
            gestureDetectorOnGestureListenerC3049Ya.setOrientationProperties(c2847k92);
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m1906b(C3030X5 this$0, boolean z, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f1641a.m1970e(z);
        } catch (Exception e) {
            this$0.f1641a.m1954a(str, "Unexpected error", "useCustomClose");
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1644d;
            if (interfaceC3147f5 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f5).m2151b(str2, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str2, "access$getTAG$p(...)", "SDK encountered internal error in handling useCustomClose() request from creative; ")));
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1897a(C3030X5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f1641a.getEmbeddedBrowserJSCallbacks() == null) {
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1644d;
            if (interfaceC3147f5 != null) {
                String str = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5).m2151b(str, "Found a null instance of EmbeddedBrowserJSCallback instance to closeCustomExpand");
                return;
            }
            return;
        }
        InterfaceC2958S3 embeddedBrowserJSCallbacks = this$0.f1641a.getEmbeddedBrowserJSCallbacks();
        if (embeddedBrowserJSCallbacks != null) {
            C2917P4.m1455a(((C2887N4) embeddedBrowserJSCallbacks).f1302a);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1900a(C3030X5 this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            InterfaceC3411x referenceContainer = this$0.f1641a.getReferenceContainer();
            if (referenceContainer != null) {
                referenceContainer.mo1950a();
            }
        } catch (Exception e) {
            this$0.f1641a.m1954a(str, "Unexpected error", "close");
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Failed to close ad; SDK encountered an unexpected error");
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1644d;
            if (interfaceC3147f5 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f5).m2151b(str2, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str2, "access$getTAG$p(...)", "SDK encountered an expected error in handling the close() request from creative; ")));
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1902a(C3030X5 this$0, boolean z, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f1641a.m1968d(z);
        } catch (Exception e) {
            this$0.f1641a.m1954a(str, "Unexpected error", "disableCloseRegion");
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1644d;
            if (interfaceC3147f5 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f5).m2151b(str2, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str2, "access$getTAG$p(...)", "SDK encountered unexpected error in handling disableCloseRegion() request from creative; ")));
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1898a(C3030X5 this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f1641a.setInitialScale(i);
    }
}

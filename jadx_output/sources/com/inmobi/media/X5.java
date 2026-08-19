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

/* JADX INFO: loaded from: classes6.dex */
public final class X5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Ya f278a;
    public final int b;
    public K9 c;
    public InterfaceC0298f5 d;

    public X5(int i, Ya mRenderView) {
        Intrinsics.checkNotNullParameter(mRenderView, "mRenderView");
        this.f278a = mRenderView;
        this.b = i;
    }

    public static final void a(X5 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C0439o6.a(this$0.f278a.getLandingPageHandler(), XfdfConstants.OPEN, str, str2, null, false, 24);
    }

    public static final void b(X5 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f278a.getLandingPageHandler().d("openEmbedded", str, str2, null);
        } catch (Exception e) {
            this$0.f278a.a(str, "Unexpected error", "openEmbedded");
            I6.a((byte) 1, "InMobi", "Failed to open URL; SDK encountered unexpected error");
            InterfaceC0298f5 interfaceC0298f5 = this$0.d;
            if (interfaceC0298f5 != null) {
                String str3 = Y5.f286a;
                ((C0314g5) interfaceC0298f5).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling openEmbedded() request from creative; ")));
            }
        }
    }

    public static final void c(X5 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C0439o6.a(this$0.f278a.getLandingPageHandler(), "openWithoutTracker", str, str2, null, true, 8);
    }

    public static final void d(X5 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            Ya ya = this$0.f278a;
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
            ya.b(str, str2.subSequence(i, length + 1).toString());
        } catch (Exception e) {
            this$0.f278a.a(str, "Unexpected error", "playVideo");
            I6.a((byte) 1, "InMobi", "Error playing video; SDK encountered an unexpected error");
            InterfaceC0298f5 interfaceC0298f5 = this$0.d;
            if (interfaceC0298f5 != null) {
                String str3 = Y5.f286a;
                ((C0314g5) interfaceC0298f5).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling playVideo() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void asyncPing(String str, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0378k6.a(str2, "access$getTAG$p(...)", "asyncPing called: ", url));
        }
        if (!URLUtil.isValidUrl(url)) {
            this.f278a.a(str, "Invalid url", "asyncPing");
            return;
        }
        try {
            C0397l9 c0397l9 = new C0397l9(url, this.d);
            c0397l9.x = false;
            c0397l9.t = false;
            c0397l9.u = false;
            c0397l9.a(new C0505t1(new C0519u1(c0397l9, new W5(this))));
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "asyncPing");
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                ((C0314g5) interfaceC0298f52).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered internal error in handling asyncPing() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void cancelSaveContent(String str, String mediaId) {
        Intrinsics.checkNotNullParameter(mediaId, "mediaId");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0378k6.a(str2, "access$getTAG$p(...)", "cancelSaveContent called. mediaId:", mediaId));
        }
    }

    @JavascriptInterface
    public final void close(final String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "close called");
        }
        if (!this.f278a.z0) {
            new Handler(this.f278a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    X5.a(this.f$0, str);
                }
            });
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).b(str3, "close called on unloaded ad");
        }
    }

    @JavascriptInterface
    public final void closeAll(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "closeAll is called");
        }
        Ya ya = this.f278a;
        InterfaceC0298f5 interfaceC0298f52 = ya.i;
        if (interfaceC0298f52 != null) {
            String str3 = Ya.P0;
            ((C0314g5) interfaceC0298f52).a(str3, Wa.a(ya, str3, "TAG", "closeAll "));
        }
        Z z = ya.V;
        if (z != null) {
            z.b();
        }
        Activity activity = (Activity) ya.k.get();
        if (activity != null) {
            activity.finish();
        }
    }

    @JavascriptInterface
    public final void closeCustomExpand(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "closeCustomExpand called.");
        }
        if (this.b != 1) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                ((C0314g5) interfaceC0298f52).b(str3, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "closeCustomExpand called in incorrect Ad type: ").append(this.b).toString());
                return;
            }
            return;
        }
        if (this.f278a != null) {
            new Handler(this.f278a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    X5.a(this.f$0);
                }
            });
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.d;
        if (interfaceC0298f53 != null) {
            String str4 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f53).b(str4, "Found a null instance of render view!");
        }
    }

    @JavascriptInterface
    public final void customExpand(String str, String str2, int i, float f, boolean z, boolean z2) {
        C0510t6 c0510t6;
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "customExpand called");
        }
        if (this.f278a.z0) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str4 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str4, "customExpand called on unloaded ad");
                return;
            }
            return;
        }
        if (this.b != 1) {
            InterfaceC0298f5 interfaceC0298f53 = this.d;
            if (interfaceC0298f53 != null) {
                String str5 = Y5.f286a;
                ((C0314g5) interfaceC0298f53).b(str5, AbstractC0363j6.a(str5, "access$getTAG$p(...)", "customExpand called in incorrect Ad type: ").append(this.b).toString());
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
                if (i < 0 || i >= R3.values().length) {
                    this.f278a.a(str, "Invalid inputType", "customExpand");
                    return;
                }
                if (f < 0.0f || f > 1.0f) {
                    this.f278a.a(str, "Invalid screenPercentage", "customExpand");
                    return;
                }
                C0524u6 c0524u6 = this.f278a.getLandingPageHandler().f;
                if (c0524u6 != null) {
                    String strA = C0393l6.a(str2);
                    C0439o6 landingPageHandler = this.f278a.getLandingPageHandler();
                    int i3 = landingPageHandler.h + 1;
                    landingPageHandler.h = i3;
                    c0510t6 = new C0510t6(c0524u6, strA, i3, 8);
                } else {
                    c0510t6 = null;
                }
                C0510t6 c0510t62 = c0510t6;
                if (c0510t62 != null) {
                    c0510t62.g = "IN_CUSTOM";
                }
                C0439o6 landingPageHandler2 = this.f278a.getLandingPageHandler();
                EnumC0332h6 funnelState = EnumC0332h6.d;
                landingPageHandler2.getClass();
                Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                C0393l6.a(funnelState, c0510t62, (Integer) 8008, (Function2) new C0424n6(landingPageHandler2));
                a(str, str2, i, f, z2, c0510t62);
                return;
            }
        }
        this.f278a.a(str, "Invalid " + i, "customExpand");
    }

    @JavascriptInterface
    public final void customExpandInNative(String str, String url, float f, boolean z) {
        C0510t6 c0510t6;
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "customExpandInNative called");
        }
        Ya ya = this.f278a;
        if (ya.z0) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str3, "customExpandInNative called on unloaded ad");
                return;
            }
            return;
        }
        if (this.b != 1) {
            InterfaceC0298f5 interfaceC0298f53 = this.d;
            if (interfaceC0298f53 != null) {
                String str4 = Y5.f286a;
                ((C0314g5) interfaceC0298f53).b(str4, AbstractC0363j6.a(str4, "access$getTAG$p(...)", "customExpandInNative called in incorrect Ad type: ").append(this.b).toString());
                return;
            }
            return;
        }
        if (f < 0.0f || f > 1.0f) {
            ya.a(str, "Invalid screenPercentage", "customExpandInNative");
            return;
        }
        C0524u6 c0524u6 = ya.getLandingPageHandler().f;
        if (c0524u6 != null) {
            String strA = C0393l6.a(url);
            C0439o6 landingPageHandler = this.f278a.getLandingPageHandler();
            int i = landingPageHandler.h + 1;
            landingPageHandler.h = i;
            c0510t6 = new C0510t6(c0524u6, strA, i, 8);
        } else {
            c0510t6 = null;
        }
        C0510t6 c0510t62 = c0510t6;
        if (c0510t62 != null) {
            c0510t62.g = "IN_NATIVE";
        }
        C0439o6 landingPageHandler2 = this.f278a.getLandingPageHandler();
        EnumC0332h6 funnelState = EnumC0332h6.d;
        landingPageHandler2.getClass();
        Intrinsics.checkNotNullParameter(funnelState, "funnelState");
        C0393l6.a(funnelState, c0510t62, (Integer) 8010, (Function2) new C0424n6(landingPageHandler2));
        int iA = this.f278a.getLandingPageHandler().a("customExpandInNative", str, url, c0510t62, new C0311g2(f, z));
        InterfaceC0298f5 interfaceC0298f54 = this.d;
        if (interfaceC0298f54 != null) {
            String str5 = Y5.f286a;
            ((C0314g5) interfaceC0298f54).a(str5, AbstractC0568x8.a(str5, "access$getTAG$p(...)", "customExpandInNativeRequest: ", iA));
        }
        if (iA == 3) {
            R3 r3 = R3.f230a;
            a(str, url, 0, f, !z, c0510t62);
        }
    }

    @JavascriptInterface
    public final void disableBackButton(String str, boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "disableBackButton called");
        }
        Ya ya = this.f278a;
        if (ya != null) {
            ya.setDisableBackButton(z);
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
        }
    }

    @JavascriptInterface
    public final void disableCloseRegion(final String str, final boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "disableCloseRegion called");
        }
        if (this.f278a != null) {
            new Handler(this.f278a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    X5.a(this.f$0, z, str);
                }
            });
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
        }
    }

    @JavascriptInterface
    public final void fireAdFailed(String str) {
        try {
            InterfaceC0298f5 interfaceC0298f5 = this.d;
            if (interfaceC0298f5 != null) {
                String str2 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5).a(str2, "fireAdFailed called.");
            }
            this.f278a.g();
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "fireAdFailed");
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                ((C0314g5) interfaceC0298f52).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling fireAdFailed() signal from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void fireAdReady(String str) {
        try {
            InterfaceC0298f5 interfaceC0298f5 = this.d;
            if (interfaceC0298f5 != null) {
                String str2 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5).a(str2, "fireAdReady called.");
            }
            this.f278a.h();
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "fireAdReady");
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                ((C0314g5) interfaceC0298f52).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling fireAdReady() signal from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void fireComplete(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "fireComplete is called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = ya.i;
        if (interfaceC0298f53 != null) {
            String str4 = Ya.P0;
            ((C0314g5) interfaceC0298f53).c(str4, Wa.a(ya, str4, "TAG", "completeFromInterActive "));
        }
        Z2 z2 = ya.I0;
        if (z2 != null && !z2.g.get()) {
            z2.d.i = 1;
            Intrinsics.checkNotNull(z2.c);
        }
        InterfaceC0298f5 interfaceC0298f54 = ya.i;
        if (interfaceC0298f54 != null) {
            String TAG = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f54).a(TAG, "completeFromInterActive");
        }
    }

    @JavascriptInterface
    public final void fireSkip(String str) {
        InterfaceC0298f5 interfaceC0298f5;
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).a(str2, "fireSkip is called");
        }
        if (this.f278a == null && (interfaceC0298f5 = this.d) != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).b(str3, "Found a null instance of render view!");
        }
        Ya ya = this.f278a;
        InterfaceC0298f5 interfaceC0298f53 = ya.i;
        if (interfaceC0298f53 != null) {
            String str4 = Ya.P0;
            ((C0314g5) interfaceC0298f53).c(str4, Wa.a(ya, str4, "TAG", "skipFromInterActive "));
        }
        Z2 z2 = ya.I0;
        if (z2 != null && !z2.g.get()) {
            z2.d.h = 1;
            Intrinsics.checkNotNull(z2.c);
        }
        InterfaceC0298f5 interfaceC0298f54 = ya.i;
        if (interfaceC0298f54 != null) {
            String TAG = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f54).a(TAG, "skipFromInterActive");
        }
    }

    @JavascriptInterface
    public final String getAdContext(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getAdContext is called");
        }
        Z adPodHandler = this.f278a.getAdPodHandler();
        if (adPodHandler != null) {
            return ((Q0) adPodHandler).K();
        }
        return null;
    }

    @JavascriptInterface
    public final void getBlob(String str, String str2) {
        Z1 z1;
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "getBlob is called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str4 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = ya.i;
        if (interfaceC0298f53 != null) {
            String TAG = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f53).a(TAG, "getBlob");
        }
        if (str == null || str2 == null || (z1 = ya.R) == null) {
            return;
        }
        ((Q0) z1).a(str, str2, ya, ya.getImpressionId());
    }

    @JavascriptInterface
    public final String getCurrentPosition(String str) {
        Ya ya;
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getCurrentPosition called");
        }
        Ya ya2 = this.f278a;
        if (ya2 == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 == null) {
                return "";
            }
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
            return "";
        }
        synchronized (ya2.getCurrentPositionMonitor()) {
            this.f278a.w = true;
            new Handler(this.f278a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    X5.b(this.f$0);
                }
            });
            while (true) {
                ya = this.f278a;
                if (ya.w) {
                    try {
                        ya.getCurrentPositionMonitor().wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
        return ya.getCurrentPosition();
    }

    @JavascriptInterface
    public final int getCurrentRenderingIndex(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getCurrentRenderingIndex is called");
        }
        return this.f278a.getCurrentRenderingPodAdIndex();
    }

    @JavascriptInterface
    public final String getDefaultPosition(String str) {
        Ya ya;
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getDefaultPosition called");
        }
        Ya ya2 = this.f278a;
        if (ya2 == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
            }
            String string = new JSONObject().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
        synchronized (ya2.getDefaultPositionMonitor()) {
            this.f278a.v = true;
            new Handler(this.f278a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    X5.c(this.f$0);
                }
            });
            while (true) {
                ya = this.f278a;
                if (ya.v) {
                    try {
                        ya.getDefaultPositionMonitor().wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
        return ya.getDefaultPosition();
    }

    @JavascriptInterface
    public final int getDeviceVolume(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getDeviceVolume called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
            }
            return -1;
        }
        try {
            C0300f7 mediaProcessor = ya.getMediaProcessor();
            if (mediaProcessor != null) {
                return mediaProcessor.a();
            }
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "getDeviceVolume");
            InterfaceC0298f5 interfaceC0298f53 = this.d;
            if (interfaceC0298f53 != null) {
                String str4 = Y5.f286a;
                ((C0314g5) interfaceC0298f53).b(str4, Ed.a(e, AbstractC0363j6.a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getDeviceVolume() request from creative; ")));
            }
        }
        return -1;
    }

    @JavascriptInterface
    public final int getMaxDeviceVolume(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getMaxDeviceVolume called");
        }
        try {
            return E3.f104a.m();
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "getMaxDeviceVolume");
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 == null) {
                return 0;
            }
            String str3 = Y5.f286a;
            ((C0314g5) interfaceC0298f52).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getMaxDeviceVolume() request from creative; ")));
            return 0;
        }
    }

    @JavascriptInterface
    public final String getMaxSize(String str) {
        int i;
        int i2;
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getMaxSize called");
        }
        JSONObject jSONObject = new JSONObject();
        try {
            Activity fullScreenActivity = this.f278a.getFullScreenActivity();
            if (fullScreenActivity == null) {
                Context containerContext = this.f278a.getContainerContext();
                if ((containerContext instanceof Activity ? (Activity) containerContext : null) == null) {
                    return getScreenSize(str);
                }
                Context containerContext2 = this.f278a.getContainerContext();
                Intrinsics.checkNotNull(containerContext2, "null cannot be cast to non-null type android.app.Activity");
                fullScreenActivity = (Activity) containerContext2;
            }
            FrameLayout frameLayout = (FrameLayout) fullScreenActivity.findViewById(R.id.content);
            int iB = AbstractC0576y2.b(frameLayout.getWidth() / N3.b());
            int iB2 = AbstractC0576y2.b(frameLayout.getHeight() / N3.b());
            if (this.f278a.getFullScreenActivity() != null && (iB == 0 || iB2 == 0)) {
                Intrinsics.checkNotNull(frameLayout);
                V5 v5 = new V5(frameLayout, this.d);
                frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(v5);
                Boolean bool = Boolean.FALSE;
                synchronized (bool) {
                    try {
                        bool.wait();
                    } catch (InterruptedException unused) {
                    }
                    i = v5.c;
                    i2 = v5.d;
                    Unit unit = Unit.INSTANCE;
                }
                iB2 = i2;
                iB = i;
            }
            try {
                jSONObject.put("width", iB);
                jSONObject.put("height", iB2);
            } catch (JSONException e) {
                InterfaceC0298f5 interfaceC0298f52 = this.d;
                if (interfaceC0298f52 != null) {
                    String str3 = Y5.f286a;
                    Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                    ((C0314g5) interfaceC0298f52).a(str3, "Error while creating max size Json.", e);
                }
            }
            InterfaceC0298f5 interfaceC0298f53 = this.d;
            if (interfaceC0298f53 != null) {
                String str4 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f53).a(str4, "getMaxSize called:" + jSONObject);
            }
        } catch (Exception e2) {
            this.f278a.a(str, "Unexpected error", "getMaxSize");
            InterfaceC0298f5 interfaceC0298f54 = this.d;
            if (interfaceC0298f54 != null) {
                String str5 = Y5.f286a;
                ((C0314g5) interfaceC0298f54).b(str5, Ed.a(e2, AbstractC0363j6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getMaxSize() request from creative; ")));
            }
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @JavascriptInterface
    public final String getOrientation(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getOrientation called");
        }
        byte bG = N3.g();
        return bG == 1 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : bG == 3 ? "90" : bG == 2 ? "180" : bG == 4 ? "270" : "-1";
    }

    @JavascriptInterface
    public final String getOrientationProperties(String str) {
        K9 k9 = this.c;
        String str2 = k9 != null ? k9.d : null;
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str3, AbstractC0378k6.a(str3, "access$getTAG$p(...)", "getOrientationProperties called: ", str2));
        }
        Intrinsics.checkNotNull(str2);
        return str2;
    }

    @JavascriptInterface
    public final String getPlacementType(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getPlacementType called");
        }
        return 1 == this.b ? "interstitial" : "inline";
    }

    @JavascriptInterface
    public final String getPlatform(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 == null) {
            return "android";
        }
        String str2 = Y5.f286a;
        Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
        ((C0314g5) interfaceC0298f5).a(str2, "getPlatform. Platform:android");
        return "android";
    }

    @JavascriptInterface
    public final String getPlatformVersion(String str) {
        String strValueOf = String.valueOf(Build.VERSION.SDK_INT);
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0378k6.a(str2, "access$getTAG$p(...)", "getPlatformVersion. Version:", strValueOf));
        }
        return strValueOf;
    }

    @JavascriptInterface
    public final String getRenderableAdIndexes(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getRenderableAdIndexes is called");
        }
        JSONArray renderableAdIndexes = this.f278a.getRenderableAdIndexes();
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).a(str3, "renderableAdIndexes called:" + renderableAdIndexes);
        }
        String string = renderableAdIndexes.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @JavascriptInterface
    public final String getSafeArea(String str) {
        JSONObject safeArea = this.f278a.getSafeArea();
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getSafeArea called:" + safeArea);
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
            jSONObject.put("width", N3.h().f199a);
            jSONObject.put("height", N3.h().b);
            InterfaceC0298f5 interfaceC0298f5 = this.d;
            if (interfaceC0298f5 != null) {
                String str2 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5).c(str2, "Message:Width x Height : " + N3.h().f199a + 'x' + N3.h().b);
            }
        } catch (JSONException unused) {
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "getScreenSize");
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                ((C0314g5) interfaceC0298f52).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error while getting screen dimensions; ")));
            }
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        InterfaceC0298f5 interfaceC0298f53 = this.d;
        if (interfaceC0298f53 != null) {
            String str4 = Y5.f286a;
            ((C0314g5) interfaceC0298f53).a(str4, AbstractC0378k6.a(str4, "access$getTAG$p(...)", "getScreenSize called:", string));
        }
        return string;
    }

    @JavascriptInterface
    public final String getSdkVersion(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 == null) {
            return "10.8.3";
        }
        String str2 = Y5.f286a;
        Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
        ((C0314g5) interfaceC0298f5).a(str2, "getSdkVersion called. Version:10.8.3");
        return "10.8.3";
    }

    @JavascriptInterface
    public final long getShowTimeStamp(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "getShowTimeStamp is called");
        }
        long showTimeStamp = this.f278a.getShowTimeStamp();
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).a(str3, "getShowTimeStamp is " + showTimeStamp);
        }
        return showTimeStamp;
    }

    @JavascriptInterface
    public final String getState(String str) {
        String viewState = this.f278a.getViewState();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = viewState.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).c(str2, AbstractC0378k6.a(str2, "access$getTAG$p(...)", "getState called:", lowerCase));
        }
        return lowerCase;
    }

    @JavascriptInterface
    public final String getVersion(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 == null) {
            return "2.0";
        }
        String str2 = Y5.f286a;
        Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
        ((C0314g5) interfaceC0298f5).a(str2, "getVersion called. Version:2.0");
        return "2.0";
    }

    @JavascriptInterface
    public final void impressionFired(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "impressionFired is called");
        }
        Ya ya = this.f278a;
        InterfaceC0298f5 interfaceC0298f52 = ya.i;
        if (interfaceC0298f52 != null) {
            String str3 = Ya.P0;
            ((C0314g5) interfaceC0298f52).a(str3, Wa.a(ya, str3, "TAG", "onImpressionFired "));
        }
        InterfaceC0298f5 interfaceC0298f53 = ya.i;
        if (interfaceC0298f53 != null) {
            String str4 = Ya.P0;
            ((C0314g5) interfaceC0298f53).a(str4, Wa.a(ya, str4, "TAG", "recordContextualData "));
        }
        Z2 z2 = ya.I0;
        if (z2 != null) {
            z2.a();
        }
        ya.getListener().a(ya.getTelemetryOnAdImpression());
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.X5.incentCompleted(java.lang.String, java.lang.String):void");
    }

    @JavascriptInterface
    public final boolean isBackButtonDisabled(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "isBackButtonDisabled called");
        }
        Ya ya = this.f278a;
        if (ya != null) {
            return ya.B;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 == null) {
            return false;
        }
        String str3 = Y5.f286a;
        Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
        ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
        return false;
    }

    @JavascriptInterface
    public final String isDeviceMuted(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "isDeviceMuted called");
        }
        if (this.f278a == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 == null) {
                return "false";
            }
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
            return "false";
        }
        InterfaceC0298f5 interfaceC0298f53 = this.d;
        if (interfaceC0298f53 != null) {
            String str4 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f53).a(str4, "JavaScript called: isDeviceMuted()");
        }
        boolean z = false;
        try {
            C0300f7 mediaProcessor = this.f278a.getMediaProcessor();
            Intrinsics.checkNotNull(mediaProcessor);
            InterfaceC0298f5 interfaceC0298f54 = mediaProcessor.b;
            if (interfaceC0298f54 != null) {
                ((C0314g5) interfaceC0298f54).c("MraidMediaProcessor", "isVolumeMuted");
            }
            Context contextD = Kb.d();
            if (contextD != null) {
                Object systemService = contextD.getSystemService("audio");
                AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
                if (audioManager != null) {
                    if (2 != audioManager.getRingerMode()) {
                        z = true;
                    }
                }
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f55 = this.d;
            if (interfaceC0298f55 != null) {
                String str5 = Y5.f286a;
                ((C0314g5) interfaceC0298f55).b(str5, Ed.a(e, AbstractC0363j6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in checking if device is muted; ")));
            }
        }
        return String.valueOf(z);
    }

    @JavascriptInterface
    public final String isHeadphonePlugged(String str) {
        boolean zB;
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "isHeadphonePlugged called");
        }
        if (this.f278a == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 == null) {
                return "false";
            }
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
            return "false";
        }
        InterfaceC0298f5 interfaceC0298f53 = this.d;
        if (interfaceC0298f53 != null) {
            String str4 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f53).a(str4, "JavaScript called: isHeadphonePlugged()");
        }
        try {
            C0300f7 mediaProcessor = this.f278a.getMediaProcessor();
            Intrinsics.checkNotNull(mediaProcessor);
            mediaProcessor.getClass();
            zB = C0300f7.b();
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f54 = this.d;
            if (interfaceC0298f54 != null) {
                String str5 = Y5.f286a;
                ((C0314g5) interfaceC0298f54).b(str5, Ed.a(e, AbstractC0363j6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in checking if headphones are plugged-in; ")));
            }
            zB = false;
        }
        return String.valueOf(zB);
    }

    @JavascriptInterface
    public final boolean isViewable(String str) {
        String str2 = Y5.f286a;
        Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
        Ya ya = this.f278a;
        if (ya != null) {
            return ya.z == qd.c;
        }
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).b(str2, "Found a null instance of render view!");
        }
        return false;
    }

    @JavascriptInterface
    public final void loadAd(String str, int i) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0568x8.a(str2, "access$getTAG$p(...)", "loadAd is called with index - ", i));
        }
        Ya ya = this.f278a;
        InterfaceC0298f5 interfaceC0298f52 = ya.i;
        if (interfaceC0298f52 != null) {
            String str3 = Ya.P0;
            ((C0314g5) interfaceC0298f52).a(str3, Wa.a(ya, str3, "TAG", "loadPodAd "));
        }
        if (ya.z == qd.c && ya.V != null && !ya.D.get()) {
            Z z = ya.V;
            if (z != null) {
                z.a(i, ya);
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = ya.i;
        if (interfaceC0298f53 != null) {
            String TAG = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f53).b(TAG, "Cannot load index pod ad as the current ad is not viewable");
        }
        ya.a(false);
    }

    @JavascriptInterface
    public final void log(String str, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).c(str2, AbstractC0378k6.a(str2, "access$getTAG$p(...)", "Log called. Message:", message));
        }
        Ya ya = this.f278a;
        ya.getClass();
        Ia ia = Ya.N0;
        ia.getClass();
        if (!((Boolean) Ya.Q0.getValue(ia, Ia.f143a[0])).booleanValue() || message == null) {
            return;
        }
        ya.getListener().a(message);
    }

    @JavascriptInterface
    public final void logTelemetryEvent(String str, String eventType, String str2) {
        if (eventType == null) {
            InterfaceC0298f5 interfaceC0298f5 = this.d;
            if (interfaceC0298f5 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5).b(str3, "eventType is null");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str4 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).a(str4, "logTelemetryEvent is called: ".concat(eventType));
        }
        Ya ya = this.f278a;
        ya.getClass();
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        C0305fb c0305fb = ya.O;
        if (c0305fb != null) {
            Intrinsics.checkNotNullParameter(eventType, "eventType");
            if (c0305fb.f.get()) {
                return;
            }
            if (c0305fb.e.decrementAndGet() <= 0) {
                c0305fb.f.set(true);
                Map mapA = c0305fb.a();
                long j = c0305fb.b;
                ScheduledExecutorService scheduledExecutorService = Xc.f282a;
                mapA.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
                C0353ic c0353ic = C0353ic.f388a;
                C0353ic.b("TemplateEventDropped", mapA, EnumC0415mc.f426a);
                return;
            }
            if (str2 != null) {
                try {
                } catch (JSONException e) {
                    Log.e(C0353ic.b, "Error parsing JSON: " + e);
                }
                if (new JSONObject(str2).length() == 0) {
                    str2 = null;
                }
            }
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("plType", String.valueOf(c0305fb.f351a.f313a.m())), TuplesKt.to("markupType", c0305fb.f351a.b), TuplesKt.to("networkType", E3.q()));
            if (str2 != null) {
                mapMutableMapOf.put("payload", str2);
            }
            if (c0305fb.f351a.c.length() > 0) {
                mapMutableMapOf.put("metadataBlob", c0305fb.f351a.c);
            }
            C0353ic.b(eventType, mapMutableMapOf, EnumC0415mc.b);
        }
    }

    @JavascriptInterface
    public final void onAudioStateChanged(String str, int i) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0568x8.a(str2, "access$getTAG$p(...)", "onAudioStateChanged is called: ", i));
        }
        B1.b.getClass();
        B1 b1 = (B1) B1.c.get(i);
        if (b1 == null) {
            b1 = B1.d;
        }
        if (b1 != B1.d) {
            this.f278a.getListener().a(b1);
        }
    }

    @JavascriptInterface
    public final void onOrientationChange(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, ">>> onOrientationChange() >>> This API is deprecated!");
        }
    }

    @JavascriptInterface
    public final void onUserAudioMuteInteraction(String str, boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "onAudioMuteInteraction is called: " + z);
        }
        this.f278a.getListener().a(z);
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.X5.onUserInteraction(java.lang.String, java.lang.String):void");
    }

    @JavascriptInterface
    public final void open(final String str, final String str2) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "open called");
        }
        if (!this.f278a.k()) {
            this.f278a.a(XfdfConstants.OPEN);
            return;
        }
        Ya ya = this.f278a;
        if (!ya.z0) {
            ya.i();
            AbstractC0306fc.a(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    X5.a(this.f$0, str, str2);
                }
            });
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str4 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).b(str4, "open called on unloaded ad");
        }
    }

    @JavascriptInterface
    public final void openEmbedded(final String str, final String str2) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "openEmbedded called");
        }
        if (!this.f278a.k()) {
            this.f278a.a("openEmbedded");
            return;
        }
        Ya ya = this.f278a;
        if (!ya.z0) {
            ya.i();
            AbstractC0306fc.a(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    X5.b(this.f$0, str, str2);
                }
            });
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str4 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).b(str4, "openEmbedded called on unloaded ad");
        }
    }

    @JavascriptInterface
    public final void openExternal(String str, String url, String str2) {
        C0510t6 c0510t6;
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "open External");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str4 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (!ya.k()) {
            this.f278a.a("openExternal");
            return;
        }
        this.f278a.i();
        InterfaceC0298f5 interfaceC0298f53 = this.d;
        if (interfaceC0298f53 != null) {
            String str5 = Y5.f286a;
            ((C0314g5) interfaceC0298f53).a(str5, AbstractC0378k6.a(str5, "access$getTAG$p(...)", "openExternal called with url: ", url));
        }
        C0524u6 c0524u6 = this.f278a.getLandingPageHandler().f;
        if (c0524u6 != null) {
            String strA = C0393l6.a(url);
            C0439o6 landingPageHandler = this.f278a.getLandingPageHandler();
            int i = landingPageHandler.h + 1;
            landingPageHandler.h = i;
            c0510t6 = new C0510t6(c0524u6, strA, i, 8);
        } else {
            c0510t6 = null;
        }
        if (c0510t6 != null) {
            c0510t6.g = "EX_NATIVE";
        }
        C0439o6 landingPageHandler2 = this.f278a.getLandingPageHandler();
        EnumC0332h6 funnelState = EnumC0332h6.d;
        landingPageHandler2.getClass();
        Intrinsics.checkNotNullParameter(funnelState, "funnelState");
        C0393l6.a(funnelState, c0510t6, (Integer) null, new C0424n6(landingPageHandler2));
        C0439o6 landingPageHandler3 = this.f278a.getLandingPageHandler();
        landingPageHandler3.getClass();
        Intrinsics.checkNotNullParameter("openExternal", "api");
        if (url != null) {
            landingPageHandler3.e(str, url, str2, c0510t6);
            return;
        }
        if (str2 != null) {
            landingPageHandler3.e(str, str2, null, c0510t6);
            return;
        }
        EnumC0332h6 funnelState2 = EnumC0332h6.e;
        Intrinsics.checkNotNullParameter(funnelState2, "funnelState");
        C0393l6.a(funnelState2, c0510t6, (Integer) 2, (Function2) new C0424n6(landingPageHandler3));
        Ra ra = landingPageHandler3.d;
        if (ra != null) {
            Intrinsics.checkNotNullParameter("Empty url and fallback url", "message");
            ra.f236a.a(str, "Empty url and fallback url", "openExternal");
        }
        InterfaceC0298f5 interfaceC0298f54 = landingPageHandler3.g;
        if (interfaceC0298f54 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C0314g5) interfaceC0298f54).b("o6", "Empty deeplink and fallback urls");
        }
    }

    @JavascriptInterface
    public final void openWithoutTracker(final String str, final String str2) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "openWithoutTracker called");
        }
        if (!this.f278a.k()) {
            this.f278a.a("openWithoutTracker");
            return;
        }
        if (!this.f278a.z0) {
            AbstractC0306fc.a(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    X5.c(this.f$0, str, str2);
                }
            });
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str4 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).b(str4, "openWithoutTracker called on unloaded ad");
        }
    }

    @JavascriptInterface
    public final void ping(String str, String str2, boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "ping called");
        }
        if (this.f278a == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str4 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str4, "Found a null instance of render view!");
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
                InterfaceC0298f5 interfaceC0298f53 = this.d;
                if (interfaceC0298f53 != null) {
                    String str5 = Y5.f286a;
                    Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
                    ((C0314g5) interfaceC0298f53).a(str5, "JavaScript called ping() URL: >>> " + str2 + " <<<");
                }
                try {
                    C0520u2.f496a.a(str2, z, this.d);
                    return;
                } catch (Exception e) {
                    this.f278a.a(str, "Unexpected error", "ping");
                    I6.a((byte) 1, "InMobi", "Failed to fire ping; SDK encountered unexpected error");
                    InterfaceC0298f5 interfaceC0298f54 = this.d;
                    if (interfaceC0298f54 != null) {
                        String str6 = Y5.f286a;
                        ((C0314g5) interfaceC0298f54).b(str6, Ed.a(e, AbstractC0363j6.a(str6, "access$getTAG$p(...)", "SDK encountered unexpected error in handling ping() request from creative; ")));
                        return;
                    }
                    return;
                }
            }
        }
        this.f278a.a(str, "Invalid URL:" + str2, "ping");
    }

    @JavascriptInterface
    public final void pingInWebView(String str, String str2, boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "openInWebView called");
        }
        if (this.f278a == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str4 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str4, "Found a null instance of render view!");
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
                InterfaceC0298f5 interfaceC0298f53 = this.d;
                if (interfaceC0298f53 != null) {
                    String str5 = Y5.f286a;
                    Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
                    ((C0314g5) interfaceC0298f53).a(str5, "JavaScript called pingInWebView() URL: >>> " + str2 + " <<<");
                }
                try {
                    C0520u2.f496a.b(str2, z, this.d);
                    return;
                } catch (Exception e) {
                    this.f278a.a(str, "Unexpected error", "pingInWebView");
                    I6.a((byte) 1, "InMobi", "Failed to fire ping; SDK encountered unexpected error");
                    InterfaceC0298f5 interfaceC0298f54 = this.d;
                    if (interfaceC0298f54 != null) {
                        String str6 = Y5.f286a;
                        ((C0314g5) interfaceC0298f54).b(str6, Ed.a(e, AbstractC0363j6.a(str6, "access$getTAG$p(...)", "SDK encountered unexpected error in handling pingInWebView() request from creative; ")));
                        return;
                    }
                    return;
                }
            }
        }
        this.f278a.a(str, "Invalid URL:" + str2, "pingInWebView");
    }

    @JavascriptInterface
    public final void playVideo(final String str, final String str2) {
        if (this.f278a == null) {
            InterfaceC0298f5 interfaceC0298f5 = this.d;
            if (interfaceC0298f5 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5).b(str3, "Found a null instance of render view!");
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
                InterfaceC0298f5 interfaceC0298f52 = this.d;
                if (interfaceC0298f52 != null) {
                    String str4 = Y5.f286a;
                    Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                    ((C0314g5) interfaceC0298f52).a(str4, "JavaScript called: playVideo (" + str2 + ')');
                }
                new Handler(this.f278a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        X5.d(this.f$0, str, str2);
                    }
                });
                return;
            }
        }
        this.f278a.a(str, "Null or empty or invalid media playback URL supplied", "playVideo");
    }

    @JavascriptInterface
    public final void registerBackButtonPressedEventListener(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "registerBackButtonPressedEventListener called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        try {
            InterfaceC0298f5 interfaceC0298f53 = ya.i;
            if (interfaceC0298f53 != null) {
                String TAG = Ya.P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f53).a(TAG, "registerBackButtonPressedEventListener " + ya);
            }
            ya.C = str;
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "registerBackButtonPressedEventListener");
            InterfaceC0298f5 interfaceC0298f54 = this.d;
            if (interfaceC0298f54 != null) {
                String str4 = Y5.f286a;
                ((C0314g5) interfaceC0298f54).b(str4, Ed.a(e, AbstractC0363j6.a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerBackButtonPressedEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void registerDeviceMuteEventListener(String jsCallbackNamespace) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str, "registerDeviceMuteEventListener called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str2 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str2, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (jsCallbackNamespace != null) {
            try {
                C0300f7 mediaProcessor = ya.getMediaProcessor();
                if (mediaProcessor != null) {
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    if (mediaProcessor.d == null) {
                        S6 s6 = new S6(new C0253c7(mediaProcessor, jsCallbackNamespace));
                        mediaProcessor.d = s6;
                        s6.b();
                    }
                }
            } catch (Exception e) {
                this.f278a.a(jsCallbackNamespace, "Unexpected error", "registerDeviceMuteEventListener");
                InterfaceC0298f5 interfaceC0298f53 = this.d;
                if (interfaceC0298f53 != null) {
                    String str3 = Y5.f286a;
                    ((C0314g5) interfaceC0298f53).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerDeviceMuteEventListener() request from creative; ")));
                }
            }
        }
    }

    @JavascriptInterface
    public final void registerDeviceVolumeChangeEventListener(String jsCallbackNamespace) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str, "registerDeviceVolumeChangeEventListener called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str2 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str2, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (jsCallbackNamespace != null) {
            try {
                C0300f7 mediaProcessor = ya.getMediaProcessor();
                if (mediaProcessor != null) {
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    Context contextD = Kb.d();
                    if (contextD != null && mediaProcessor.e == null) {
                        S6 s6 = new S6(new C0269d7(mediaProcessor, jsCallbackNamespace, contextD, new Handler(Looper.getMainLooper())));
                        mediaProcessor.e = s6;
                        s6.b();
                    }
                }
            } catch (Exception e) {
                this.f278a.a(jsCallbackNamespace, "Unexpected error", "registerDeviceVolumeChangeEventListener");
                InterfaceC0298f5 interfaceC0298f53 = this.d;
                if (interfaceC0298f53 != null) {
                    String str3 = Y5.f286a;
                    ((C0314g5) interfaceC0298f53).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerDeviceVolumeChangeEventListener() request from creative; ")));
                }
            }
        }
    }

    @JavascriptInterface
    public final void registerHeadphonePluggedEventListener(String jsCallbackNamespace) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str, "registerHeadphonePluggedEventListener called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str2 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str2, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (jsCallbackNamespace != null) {
            try {
                C0300f7 mediaProcessor = ya.getMediaProcessor();
                if (mediaProcessor != null) {
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    if (mediaProcessor.f == null) {
                        S6 s6 = new S6(new C0238b7(mediaProcessor, jsCallbackNamespace));
                        mediaProcessor.f = s6;
                        s6.b();
                    }
                }
            } catch (Exception e) {
                this.f278a.a(jsCallbackNamespace, "Unexpected error", "registerHeadphonePluggedEventListener");
                InterfaceC0298f5 interfaceC0298f53 = this.d;
                if (interfaceC0298f53 != null) {
                    String str3 = Y5.f286a;
                    ((C0314g5) interfaceC0298f53).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerHeadphonePluggedEventListener() request from creative; ")));
                }
            }
        }
    }

    @JavascriptInterface
    public final void saveBlob(String str, String str2) {
        Z1 z1;
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "saveBlob is called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str4 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = ya.i;
        if (interfaceC0298f53 != null) {
            String TAG = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f53).a(TAG, "saveBlob");
        }
        if (str2 == null || (z1 = ya.R) == null) {
            return;
        }
        ((Q0) z1).a(str2, ya.getImpressionId());
    }

    @JavascriptInterface
    public final void saveContent(String str, String str2, String str3) {
        if (str2 != null && str2.length() != 0 && str3 != null && str3.length() != 0) {
            try {
                this.f278a.b(str, str2, str3);
                return;
            } catch (Exception e) {
                this.f278a.a(str, "Unexpected error", "saveContent");
                InterfaceC0298f5 interfaceC0298f5 = this.d;
                if (interfaceC0298f5 != null) {
                    String str4 = Y5.f286a;
                    ((C0314g5) interfaceC0298f5).b(str4, Ed.a(e, AbstractC0363j6.a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling saveContent() request from creative; ")));
                    return;
                }
                return;
            }
        }
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str5 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).a(str5, "saveContent called with invalid parameters");
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
        this.f278a.a(str, sb.append(str2).append("\", 'failed', \"").append(strReplace$default).append("\");").toString());
    }

    @JavascriptInterface
    public final void setAdContext(String str, String podAdContext) {
        Intrinsics.checkNotNullParameter(podAdContext, "podAdContext");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0378k6.a(str2, "access$getTAG$p(...)", "setAdContext is called ", podAdContext));
        }
        Z adPodHandler = this.f278a.getAdPodHandler();
        if (adPodHandler != null) {
            ((Q0) adPodHandler).d(podAdContext);
        }
    }

    @JavascriptInterface
    public final void setCloseEndCardTracker(String str, String str2) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "setCloseEndCardTracker is called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str4 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        try {
            ya.setCloseEndCardTracker(str2);
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "getDownloadStatus");
            InterfaceC0298f5 interfaceC0298f53 = this.d;
            if (interfaceC0298f53 != null) {
                String str5 = Y5.f286a;
                ((C0314g5) interfaceC0298f53).b(str5, Ed.a(e, AbstractC0363j6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getDownloadStatus() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void setOrientationProperties(String str, final String orientationPropertiesString) {
        Intrinsics.checkNotNullParameter(orientationPropertiesString, "orientationPropertiesString");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0378k6.a(str2, "access$getTAG$p(...)", "setOrientationProperties called: ", orientationPropertiesString));
        }
        if (!this.f278a.z0) {
            new Handler(this.f278a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    X5.b(this.f$0, orientationPropertiesString);
                }
            });
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).b(str3, "setOrientationProperties called on unloaded ad");
        }
    }

    @JavascriptInterface
    public final void showAd(String str, int i) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0568x8.a(str2, "access$getTAG$p(...)", "showAd is called with index ", i));
        }
        Ya ya = this.f278a;
        InterfaceC0298f5 interfaceC0298f52 = ya.i;
        if (interfaceC0298f52 != null) {
            String TAG = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG, "showPodAdAtIndex " + ya + ' ' + i);
        }
        if (ya.z == qd.c && ya.V != null && !ya.D.get()) {
            Z z = ya.V;
            if (z != null) {
                z.a(i, ya, ya.getFullScreenActivity());
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = ya.i;
        if (interfaceC0298f53 != null) {
            String TAG2 = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f53).b(TAG2, "Cannot show index pod ad as the current ad is not viewable");
        }
        ya.b(false);
    }

    @JavascriptInterface
    public final void showAlert(String str, String alert) {
        Intrinsics.checkNotNullParameter(alert, "alert");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0378k6.a(str2, "access$getTAG$p(...)", "showAlert: ", alert));
        }
    }

    @JavascriptInterface
    public final void showEndCard(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "showEndCard is called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = ya.i;
        if (interfaceC0298f53 != null) {
            String TAG = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f53).a(TAG, "showEndCardFromInterActive");
        }
        InterfaceC0559x referenceContainer = ya.getReferenceContainer();
        if (referenceContainer instanceof C0511t7) {
            ((C0511t7) referenceContainer).o();
        }
    }

    @JavascriptInterface
    public final void storePicture(String str, String str2) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str3, "storePicture is deprecated and no-op. ");
        }
    }

    @JavascriptInterface
    public final void submitAdReport(String str, String adQualityUrl, String enableUserAdReportScreenshot, String templateInfo) {
        Intrinsics.checkNotNullParameter(adQualityUrl, "adQualityUrl");
        Intrinsics.checkNotNullParameter(enableUserAdReportScreenshot, "enableUserAdReportScreenshot");
        Intrinsics.checkNotNullParameter(templateInfo, "templateInfo");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "submitAdReport called");
        }
        this.f278a.a(adQualityUrl, templateInfo, Intrinsics.areEqual(enableUserAdReportScreenshot, AppEventsConstants.EVENT_PARAM_VALUE_YES));
    }

    @JavascriptInterface
    public final String supports(String str, String feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0378k6.a(str2, "access$getTAG$p(...)", "Checking support for: ", feature));
        }
        String strValueOf = String.valueOf(this.f278a.e(feature));
        InterfaceC0298f5 interfaceC0298f52 = this.d;
        if (interfaceC0298f52 != null) {
            String str3 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f52).c(str3, "Message:" + feature + " support: " + strValueOf);
        }
        return strValueOf;
    }

    @JavascriptInterface
    public final long timeSinceShow(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "timeSinceShow is called");
        }
        Ya ya = this.f278a;
        InterfaceC0298f5 interfaceC0298f52 = ya.i;
        if (interfaceC0298f52 != null) {
            String str3 = Ya.P0;
            ((C0314g5) interfaceC0298f52).c(str3, Wa.a(ya, str3, "TAG", "timeSincePodShow "));
        }
        Z z = ya.V;
        if (z != null) {
            return ((Q0) z).A0();
        }
        return 0L;
    }

    @JavascriptInterface
    public final void unload(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "unload called");
        }
        try {
            this.f278a.n();
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "unload");
            I6.a((byte) 1, "InMobi", "Failed to unload ad; SDK encountered an unexpected error");
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                ((C0314g5) interfaceC0298f52).b(str3, Ed.a(e, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "SDK encountered an expected error in handling the unload() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterBackButtonPressedEventListener(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "unregisterBackButtonPressedEventListener called");
        }
        Ya ya = this.f278a;
        if (ya == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        try {
            InterfaceC0298f5 interfaceC0298f53 = ya.i;
            if (interfaceC0298f53 != null) {
                String TAG = Ya.P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f53).a(TAG, "unregisterBackButtonPressedEventListener " + ya);
            }
            ya.C = null;
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "unregisterBackButtonPressedEventListener");
            InterfaceC0298f5 interfaceC0298f54 = this.d;
            if (interfaceC0298f54 != null) {
                String str4 = Y5.f286a;
                ((C0314g5) interfaceC0298f54).b(str4, Ed.a(e, AbstractC0363j6.a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterBackButtonPressedEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterDeviceMuteEventListener(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "unregisterDeviceMuteEventListener called");
        }
        if (this.f278a == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.d;
        if (interfaceC0298f53 != null) {
            String str4 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f53).a(str4, "Unregister device mute event listener ...");
        }
        try {
            C0300f7 mediaProcessor = this.f278a.getMediaProcessor();
            if (mediaProcessor != null) {
                S6 s6 = mediaProcessor.d;
                if (s6 != null) {
                    s6.a();
                }
                mediaProcessor.d = null;
            }
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "unRegisterDeviceMuteEventListener");
            InterfaceC0298f5 interfaceC0298f54 = this.d;
            if (interfaceC0298f54 != null) {
                String str5 = Y5.f286a;
                ((C0314g5) interfaceC0298f54).b(str5, Ed.a(e, AbstractC0363j6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterDeviceMuteEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterDeviceVolumeChangeEventListener(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "unregisterDeviceVolumeChangeEventListener called");
        }
        if (this.f278a == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.d;
        if (interfaceC0298f53 != null) {
            String str4 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f53).a(str4, "Unregister device volume change listener ...");
        }
        try {
            C0300f7 mediaProcessor = this.f278a.getMediaProcessor();
            if (mediaProcessor != null) {
                S6 s6 = mediaProcessor.e;
                if (s6 != null) {
                    s6.a();
                }
                mediaProcessor.e = null;
            }
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "unregisterDeviceVolumeChangeEventListener");
            InterfaceC0298f5 interfaceC0298f54 = this.d;
            if (interfaceC0298f54 != null) {
                String str5 = Y5.f286a;
                ((C0314g5) interfaceC0298f54).b(str5, Ed.a(e, AbstractC0363j6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterDeviceVolumeChangeEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterHeadphonePluggedEventListener(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "unregisterHeadphonePluggedEventListener called");
        }
        if (this.f278a == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.d;
        if (interfaceC0298f53 != null) {
            String str4 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f53).a(str4, "Unregister headphone plugged event listener ...");
        }
        try {
            C0300f7 mediaProcessor = this.f278a.getMediaProcessor();
            if (mediaProcessor != null) {
                S6 s6 = mediaProcessor.f;
                if (s6 != null) {
                    s6.a();
                }
                mediaProcessor.f = null;
            }
        } catch (Exception e) {
            this.f278a.a(str, "Unexpected error", "unregisterHeadphonePluggedEventListener");
            InterfaceC0298f5 interfaceC0298f54 = this.d;
            if (interfaceC0298f54 != null) {
                String str5 = Y5.f286a;
                ((C0314g5) interfaceC0298f54).b(str5, Ed.a(e, AbstractC0363j6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterHeadphonePluggedEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void useCustomClose(final String str, final boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str2 = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "useCustomClose called:" + z);
        }
        new Handler(this.f278a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                X5.b(this.f$0, z, str);
            }
        });
    }

    @JavascriptInterface
    public final void zoom(String jsCallbackNamespace, final int i) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            String str = Y5.f286a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str, "zoom is called " + jsCallbackNamespace + ' ' + i);
        }
        AbstractC0306fc.a(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                X5.a(this.f$0, i);
            }
        });
    }

    public static final void c(X5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f278a.p();
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f5 = this$0.d;
            if (interfaceC0298f5 != null) {
                String str = Y5.f286a;
                ((C0314g5) interfaceC0298f5).b(str, Ed.a(e, AbstractC0363j6.a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in getting/setting default position; ")));
            }
        }
    }

    public final void a(final String str, final String str2, final int i, final float f, final boolean z, final C0510t6 c0510t6) {
        if (c0510t6 != null) {
            c0510t6.g = "IN_CUSTOM";
        }
        new Handler(this.f278a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.X5$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                X5.a(this.f$0, c0510t6, str2, i, str, f, z);
            }
        });
    }

    public static final void a(X5 this$0, C0510t6 c0510t6, String expandInput, int i, String str, float f, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(expandInput, "$expandInput");
        try {
            if (this$0.f278a.getEmbeddedBrowserJSCallbacks() == null) {
                InterfaceC0298f5 interfaceC0298f5 = this$0.d;
                if (interfaceC0298f5 != null) {
                    String str2 = Y5.f286a;
                    Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                    ((C0314g5) interfaceC0298f5).b(str2, "Found a null instance of EmbeddedBrowserJSCallback instance to customExpand");
                }
                C0439o6 landingPageHandler = this$0.f278a.getLandingPageHandler();
                EnumC0332h6 funnelState = EnumC0332h6.e;
                landingPageHandler.getClass();
                Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                C0393l6.a(funnelState, c0510t6, (Integer) 8002, (Function2) new C0424n6(landingPageHandler));
                return;
            }
            InterfaceC0298f5 interfaceC0298f52 = this$0.d;
            if (interfaceC0298f52 != null) {
                String str3 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).a(str3, "Custom expand called. Url: " + expandInput);
            }
            R3 r3 = R3.values()[i];
            if (r3 == R3.f230a) {
                int iA = this$0.f278a.getLandingPageHandler().a("customExpand", str, expandInput, c0510t6, null);
                InterfaceC0298f5 interfaceC0298f53 = this$0.d;
                if (interfaceC0298f53 != null) {
                    String str4 = Y5.f286a;
                    Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                    ((C0314g5) interfaceC0298f53).a(str4, "processCustomExpandRequest: " + iA);
                }
                if (iA == 3) {
                    S3 embeddedBrowserJSCallbacks = this$0.f278a.getEmbeddedBrowserJSCallbacks();
                    if (embeddedBrowserJSCallbacks != null) {
                        ((N4) embeddedBrowserJSCallbacks).a(expandInput, r3, f, z, this$0.f278a.getViewTouchTimestamp(), c0510t6);
                    }
                    C0439o6 landingPageHandler2 = this$0.f278a.getLandingPageHandler();
                    EnumC0332h6 funnelState2 = EnumC0332h6.f;
                    landingPageHandler2.getClass();
                    Intrinsics.checkNotNullParameter(funnelState2, "funnelState");
                    C0393l6.a(funnelState2, c0510t6, (Integer) null, new C0424n6(landingPageHandler2));
                    Ra ra = this$0.f278a.getLandingPageHandler().d;
                    if (ra != null) {
                        Ya.a(ra.f236a, "customExpand", str, expandInput);
                        return;
                    }
                    return;
                }
                S3 embeddedBrowserJSCallbacks2 = this$0.f278a.getEmbeddedBrowserJSCallbacks();
                if (embeddedBrowserJSCallbacks2 != null) {
                    P4.a(((N4) embeddedBrowserJSCallbacks2).f190a);
                    return;
                }
                return;
            }
            S3 embeddedBrowserJSCallbacks3 = this$0.f278a.getEmbeddedBrowserJSCallbacks();
            if (embeddedBrowserJSCallbacks3 != null) {
                ((N4) embeddedBrowserJSCallbacks3).a(expandInput, r3, f, z, this$0.f278a.getViewTouchTimestamp(), c0510t6);
            }
            C0439o6 landingPageHandler3 = this$0.f278a.getLandingPageHandler();
            EnumC0332h6 funnelState3 = EnumC0332h6.f;
            landingPageHandler3.getClass();
            Intrinsics.checkNotNullParameter(funnelState3, "funnelState");
            C0393l6.a(funnelState3, c0510t6, (Integer) null, new C0424n6(landingPageHandler3));
            Ra ra2 = this$0.f278a.getLandingPageHandler().d;
            if (ra2 != null) {
                Ya.a(ra2.f236a, "customExpand", str, expandInput);
            }
        } catch (Exception e) {
            this$0.f278a.a(str, "Unexpected error", "customExpand");
            C0439o6 landingPageHandler4 = this$0.f278a.getLandingPageHandler();
            EnumC0332h6 funnelState4 = EnumC0332h6.e;
            landingPageHandler4.getClass();
            Intrinsics.checkNotNullParameter(funnelState4, "funnelState");
            C0393l6.a(funnelState4, c0510t6, (Integer) 9, (Function2) new C0424n6(landingPageHandler4));
            I6.a((byte) 1, "InMobi", "Failed to custom expand ad; SDK encountered an unexpected error");
            InterfaceC0298f5 interfaceC0298f54 = this$0.d;
            if (interfaceC0298f54 != null) {
                String str5 = Y5.f286a;
                ((C0314g5) interfaceC0298f54).b(str5, Ed.a(e, AbstractC0363j6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling customExpand() request; ")));
            }
        }
    }

    public static final void b(X5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f278a.o();
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f5 = this$0.d;
            if (interfaceC0298f5 != null) {
                String str = Y5.f286a;
                ((C0314g5) interfaceC0298f5).b(str, Ed.a(e, AbstractC0363j6.a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in getting/setting current position; ")));
            }
        }
    }

    public static final void b(X5 this$0, String json) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(json, "$orientationPropertiesString");
        K9 op = this$0.f278a.getOrientationProperties();
        if (op != null) {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(op, "op");
            K9 k9 = new K9();
            k9.d = json;
            try {
                JSONObject jSONObject = new JSONObject(json);
                String strOptString = jSONObject.optString("forceOrientation", op.b);
                Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
                Intrinsics.checkNotNullParameter(strOptString, "<set-?>");
                k9.b = strOptString;
                k9.f160a = jSONObject.optBoolean("allowOrientationChange", op.f160a);
                String strOptString2 = jSONObject.optString(CommonCssConstants.DIRECTION, op.c);
                Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
                Intrinsics.checkNotNullParameter(strOptString2, "<set-?>");
                k9.c = strOptString2;
                if (!Intrinsics.areEqual(k9.b, "portrait") && !Intrinsics.areEqual(k9.b, "landscape")) {
                    Intrinsics.checkNotNullParameter("none", "<set-?>");
                    k9.b = "none";
                }
                if (!Intrinsics.areEqual(k9.c, "left") && !Intrinsics.areEqual(k9.c, "right")) {
                    Intrinsics.checkNotNullParameter("right", "<set-?>");
                    k9.c = "right";
                }
            } catch (JSONException unused) {
                k9 = null;
            }
            this$0.c = k9;
        }
        K9 k92 = this$0.c;
        if (k92 != null) {
            Ya ya = this$0.f278a;
            Intrinsics.checkNotNull(k92);
            ya.setOrientationProperties(k92);
        }
    }

    public static final void b(X5 this$0, boolean z, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f278a.e(z);
        } catch (Exception e) {
            this$0.f278a.a(str, "Unexpected error", "useCustomClose");
            InterfaceC0298f5 interfaceC0298f5 = this$0.d;
            if (interfaceC0298f5 != null) {
                String str2 = Y5.f286a;
                ((C0314g5) interfaceC0298f5).b(str2, Ed.a(e, AbstractC0363j6.a(str2, "access$getTAG$p(...)", "SDK encountered internal error in handling useCustomClose() request from creative; ")));
            }
        }
    }

    public static final void a(X5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f278a.getEmbeddedBrowserJSCallbacks() == null) {
            InterfaceC0298f5 interfaceC0298f5 = this$0.d;
            if (interfaceC0298f5 != null) {
                String str = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5).b(str, "Found a null instance of EmbeddedBrowserJSCallback instance to closeCustomExpand");
                return;
            }
            return;
        }
        S3 embeddedBrowserJSCallbacks = this$0.f278a.getEmbeddedBrowserJSCallbacks();
        if (embeddedBrowserJSCallbacks != null) {
            P4.a(((N4) embeddedBrowserJSCallbacks).f190a);
        }
    }

    public static final void a(X5 this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            InterfaceC0559x referenceContainer = this$0.f278a.getReferenceContainer();
            if (referenceContainer != null) {
                referenceContainer.a();
            }
        } catch (Exception e) {
            this$0.f278a.a(str, "Unexpected error", "close");
            I6.a((byte) 1, "InMobi", "Failed to close ad; SDK encountered an unexpected error");
            InterfaceC0298f5 interfaceC0298f5 = this$0.d;
            if (interfaceC0298f5 != null) {
                String str2 = Y5.f286a;
                ((C0314g5) interfaceC0298f5).b(str2, Ed.a(e, AbstractC0363j6.a(str2, "access$getTAG$p(...)", "SDK encountered an expected error in handling the close() request from creative; ")));
            }
        }
    }

    public static final void a(X5 this$0, boolean z, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f278a.d(z);
        } catch (Exception e) {
            this$0.f278a.a(str, "Unexpected error", "disableCloseRegion");
            InterfaceC0298f5 interfaceC0298f5 = this$0.d;
            if (interfaceC0298f5 != null) {
                String str2 = Y5.f286a;
                ((C0314g5) interfaceC0298f5).b(str2, Ed.a(e, AbstractC0363j6.a(str2, "access$getTAG$p(...)", "SDK encountered unexpected error in handling disableCloseRegion() request from creative; ")));
            }
        }
    }

    public static final void a(X5 this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f278a.setInitialScale(i);
    }
}

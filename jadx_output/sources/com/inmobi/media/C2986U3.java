package com.inmobi.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.view.ViewParent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.U3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2986U3 extends AbstractC3012W1 {

    /* JADX INFO: renamed from: f */
    public final String f1561f;

    /* JADX INFO: renamed from: g */
    public final Lambda f1562g;

    /* JADX INFO: renamed from: h */
    public final Lambda f1563h;

    /* JADX INFO: renamed from: i */
    public C3358t6 f1564i;

    /* JADX INFO: renamed from: j */
    public C3313q6 f1565j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C2986U3(String api, Function0 onUserLandingCompleted, Function2 fireLandingPageTracker, InterfaceC3147f5 interfaceC3147f5) {
        super(interfaceC3147f5);
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(onUserLandingCompleted, "onUserLandingCompleted");
        Intrinsics.checkNotNullParameter(fireLandingPageTracker, "fireLandingPageTracker");
        this.f1561f = api;
        this.f1562g = (Lambda) onUserLandingCompleted;
        this.f1563h = (Lambda) fireLandingPageTracker;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1835a(WebView webView, String str) {
        Integer num;
        int i;
        InterfaceC2972T3 interfaceC2972T3;
        InterfaceC3009Vc userLeftApplicationListener;
        if (this.f1619e.get()) {
            return true;
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("EmbeddedBrowserViewClient", AbstractC3157g0.m2142a("onShouldOverrideUrlLoading: ", str));
        }
        if (webView instanceof AbstractC2998V1) {
            C3253m6 c3253m6M2324a = C3283o6.m2324a(((AbstractC2998V1) webView).getLandingPageHandler(), this.f1561f, null, str, this.f1564i, false, 16);
            num = c3253m6M2324a.f2324b;
            i = c3253m6M2324a.f2323a;
        } else {
            num = null;
            i = 0;
        }
        if (i != 1) {
            if (i != 2 && i != 3) {
                return false;
            }
            m1834a(3, false, str, Integer.valueOf(num != null ? num.intValue() : 10));
            return true;
        }
        boolean z = webView instanceof C3042Y3;
        if (z) {
            ViewParent parent = ((C3042Y3) webView).getParent();
            if ((parent instanceof C2931Q3) && (userLeftApplicationListener = ((C2931Q3) parent).getUserLeftApplicationListener()) != null) {
                userLeftApplicationListener.mo1590a();
            }
        }
        m1890a(webView);
        if (!AbstractC3399w2.m2542a(str)) {
            if (webView.canGoBack()) {
                webView.goBack();
            } else if (z) {
                ViewParent parent2 = ((C3042Y3) webView).getParent();
                if ((parent2 instanceof C2931Q3) && (interfaceC2972T3 = ((C2931Q3) parent2).f1464d) != null) {
                    C2917P4.m1455a(((C2902O4) interfaceC2972T3).f1333a);
                }
            }
        }
        m1833a(this, 2, false, str, 8);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageCommitVisible(WebView webView, String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("EmbeddedBrowserViewClient", AbstractC3157g0.m2142a("onPageCommitVisible: ", str));
        }
        m1833a(this, 4, true, str, 8);
    }

    @Override // com.inmobi.media.AbstractC3012W1, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("EmbeddedBrowserViewClient", AbstractC3157g0.m2142a("onPageFinished: ", str));
        }
        m1833a(this, 2, true, str, 8);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("EmbeddedBrowserViewClient", AbstractC3157g0.m2142a("onPageStarted: ", str));
        }
        m1833a(this, 1, true, str, 8);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int i, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        m1834a(3, false, failingUrl, Integer.valueOf(i));
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("EmbeddedBrowserViewClient", AbstractC3157g0.m2142a("onReceivedError: ", failingUrl));
        }
    }

    @Override // com.inmobi.media.AbstractC3012W1, android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        boolean zOnRenderProcessGone = super.onRenderProcessGone(view, detail);
        if (Build.VERSION.SDK_INT >= 26) {
            m1834a(3, true, null, 8007);
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m2729to("source", "embedded_browser"), TuplesKt.m2729to("isCrashed", Boolean.valueOf(detail.didCrash())));
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("WebViewRenderProcessGoneEvent", mapMutableMapOf, EnumC3259mc.f2349a);
        }
        return zOnRenderProcessGone;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        String string;
        Uri url;
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("EmbeddedBrowserViewClient", "shouldOverrideUrlLoading Called");
        }
        if (!C2751E3.m994G()) {
            return false;
        }
        if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null) {
            string = "";
        }
        if (webView == null || string.length() <= 0) {
            return false;
        }
        return m1835a(webView, string);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("EmbeddedBrowserViewClient", "shouldOverrideUrlLoading Called");
        }
        if (webView == null || str == null) {
            return false;
        }
        return m1835a(webView, str);
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m1833a(C2986U3 c2986u3, int i, boolean z, String str, int i2) {
        if ((i2 & 4) != 0) {
            str = null;
        }
        c2986u3.m1834a(i, z, str, null);
    }

    /* JADX WARN: Type inference failed for: r9v11, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v15, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v17, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v23, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v7, types: [kotlin.jvm.functions.Function0, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v9, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX INFO: renamed from: a */
    public final void m1834a(int i, boolean z, String str, Integer num) {
        C3313q6 c3313q6 = this.f1565j;
        if (c3313q6 != null) {
            try {
                if (c3313q6.f2459e) {
                    return;
                }
                C3358t6 c3358t6 = c3313q6.f2455a;
                if (c3358t6 != null) {
                    c3358t6.f2554g = "IN_CUSTOM";
                }
                switch (i) {
                    case 1:
                        if (z) {
                            c3313q6.f2458d = str;
                            C2986U3 c2986u3 = c3313q6.f2456b;
                            EnumC3178h6 funnelState = EnumC3178h6.f2139h;
                            c2986u3.getClass();
                            Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                            C3238l6.m2282a(funnelState, c3358t6, (Integer) null, (Function2) c2986u3.f1563h);
                        }
                        break;
                    case 2:
                        if (z) {
                            c3313q6.f2458d = str;
                            c3313q6.f2459e = true;
                            if (!c3313q6.f2457c.contains(1)) {
                                C2986U3 c2986u32 = c3313q6.f2456b;
                                EnumC3178h6 funnelState2 = EnumC3178h6.f2139h;
                                C3358t6 c3358t62 = c3313q6.f2455a;
                                c2986u32.getClass();
                                Intrinsics.checkNotNullParameter(funnelState2, "funnelState");
                                C3238l6.m2282a(funnelState2, c3358t62, (Integer) 8006, (Function2) c2986u32.f1563h);
                            }
                            c3313q6.f2456b.f1562g.invoke();
                            C2986U3 c2986u33 = c3313q6.f2456b;
                            EnumC3178h6 funnelState3 = EnumC3178h6.f2140i;
                            C3358t6 c3358t63 = c3313q6.f2455a;
                            c2986u33.getClass();
                            Intrinsics.checkNotNullParameter(funnelState3, "funnelState");
                            C3238l6.m2282a(funnelState3, c3358t63, (Integer) null, (Function2) c2986u33.f1563h);
                        }
                        break;
                    case 3:
                        if (z || (str != null && Intrinsics.areEqual(str, c3313q6.f2458d))) {
                            c3313q6.f2459e = true;
                            if (!c3313q6.f2457c.contains(1)) {
                                C2986U3 c2986u34 = c3313q6.f2456b;
                                EnumC3178h6 funnelState4 = EnumC3178h6.f2139h;
                                C3358t6 c3358t64 = c3313q6.f2455a;
                                c2986u34.getClass();
                                Intrinsics.checkNotNullParameter(funnelState4, "funnelState");
                                C3238l6.m2282a(funnelState4, c3358t64, (Integer) 8006, (Function2) c2986u34.f1563h);
                            }
                            C2986U3 c2986u35 = c3313q6.f2456b;
                            EnumC3178h6 funnelState5 = EnumC3178h6.f2141j;
                            C3358t6 c3358t65 = c3313q6.f2455a;
                            Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : 8100);
                            c2986u35.getClass();
                            Intrinsics.checkNotNullParameter(funnelState5, "funnelState");
                            C3238l6.m2282a(funnelState5, c3358t65, numValueOf, (Function2) c2986u35.f1563h);
                        }
                        break;
                    case 4:
                        if (z) {
                            c3313q6.f2458d = str;
                        }
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                        c3313q6.f2459e = true;
                        switch (i) {
                            case 5:
                                i = 8200;
                                break;
                            case 6:
                                i = 8300;
                                break;
                            case 7:
                                i = 8400;
                                break;
                            case 8:
                                i = 8600;
                                break;
                            case 9:
                                i = 8500;
                                break;
                        }
                        int i2 = 4;
                        if (!c3313q6.f2457c.contains(4)) {
                            i2 = 0;
                        }
                        int i3 = i + i2;
                        C2986U3 c2986u36 = c3313q6.f2456b;
                        EnumC3178h6 funnelState6 = EnumC3178h6.f2141j;
                        C3358t6 c3358t66 = c3313q6.f2455a;
                        Integer numValueOf2 = Integer.valueOf(i3);
                        c2986u36.getClass();
                        Intrinsics.checkNotNullParameter(funnelState6, "funnelState");
                        C3238l6.m2282a(funnelState6, c3358t66, numValueOf2, (Function2) c2986u36.f1563h);
                        break;
                }
                c3313q6.f2457c.add(Integer.valueOf(i));
            } catch (Exception e) {
                e.toString();
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("EmbeddedBrowserViewClient", "onReceivedError: " + request.getUrl());
        }
        if (request.isForMainFrame()) {
            m1834a(3, true, request.getUrl().toString(), Integer.valueOf(error.getErrorCode()));
        }
    }
}

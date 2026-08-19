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

/* JADX INFO: loaded from: classes6.dex */
public final class U3 extends W1 {
    public final String f;
    public final Lambda g;
    public final Lambda h;
    public C0510t6 i;
    public C0469q6 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public U3(String api, Function0 onUserLandingCompleted, Function2 fireLandingPageTracker, InterfaceC0298f5 interfaceC0298f5) {
        super(interfaceC0298f5);
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(onUserLandingCompleted, "onUserLandingCompleted");
        Intrinsics.checkNotNullParameter(fireLandingPageTracker, "fireLandingPageTracker");
        this.f = api;
        this.g = (Lambda) onUserLandingCompleted;
        this.h = (Lambda) fireLandingPageTracker;
    }

    public final boolean a(WebView webView, String str) {
        Integer num;
        int i;
        T3 t3;
        Vc userLeftApplicationListener;
        if (this.e.get()) {
            return true;
        }
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("EmbeddedBrowserViewClient", AbstractC0309g0.a("onShouldOverrideUrlLoading: ", str));
        }
        if (webView instanceof V1) {
            C0409m6 c0409m6A = C0439o6.a(((V1) webView).getLandingPageHandler(), this.f, null, str, this.i, false, 16);
            num = c0409m6A.b;
            i = c0409m6A.f423a;
        } else {
            num = null;
            i = 0;
        }
        if (i != 1) {
            if (i != 2 && i != 3) {
                return false;
            }
            a(3, false, str, Integer.valueOf(num != null ? num.intValue() : 10));
            return true;
        }
        boolean z = webView instanceof Y3;
        if (z) {
            ViewParent parent = ((Y3) webView).getParent();
            if ((parent instanceof Q3) && (userLeftApplicationListener = ((Q3) parent).getUserLeftApplicationListener()) != null) {
                userLeftApplicationListener.a();
            }
        }
        a(webView);
        if (!AbstractC0548w2.a(str)) {
            if (webView.canGoBack()) {
                webView.goBack();
            } else if (z) {
                ViewParent parent2 = ((Y3) webView).getParent();
                if ((parent2 instanceof Q3) && (t3 = ((Q3) parent2).d) != null) {
                    P4.a(((O4) t3).f200a);
                }
            }
        }
        a(this, 2, false, str, 8);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageCommitVisible(WebView webView, String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("EmbeddedBrowserViewClient", AbstractC0309g0.a("onPageCommitVisible: ", str));
        }
        a(this, 4, true, str, 8);
    }

    @Override // com.inmobi.media.W1, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("EmbeddedBrowserViewClient", AbstractC0309g0.a("onPageFinished: ", str));
        }
        a(this, 2, true, str, 8);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("EmbeddedBrowserViewClient", AbstractC0309g0.a("onPageStarted: ", str));
        }
        a(this, 1, true, str, 8);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int i, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        a(3, false, failingUrl, Integer.valueOf(i));
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("EmbeddedBrowserViewClient", AbstractC0309g0.a("onReceivedError: ", failingUrl));
        }
    }

    @Override // com.inmobi.media.W1, android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        boolean zOnRenderProcessGone = super.onRenderProcessGone(view, detail);
        if (Build.VERSION.SDK_INT >= 26) {
            a(3, true, null, 8007);
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("source", "embedded_browser"), TuplesKt.to("isCrashed", Boolean.valueOf(detail.didCrash())));
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("WebViewRenderProcessGoneEvent", mapMutableMapOf, EnumC0415mc.f426a);
        }
        return zOnRenderProcessGone;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        String string;
        Uri url;
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("EmbeddedBrowserViewClient", "shouldOverrideUrlLoading Called");
        }
        if (!E3.G()) {
            return false;
        }
        if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null) {
            string = "";
        }
        if (webView == null || string.length() <= 0) {
            return false;
        }
        return a(webView, string);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("EmbeddedBrowserViewClient", "shouldOverrideUrlLoading Called");
        }
        if (webView == null || str == null) {
            return false;
        }
        return a(webView, str);
    }

    public static /* synthetic */ void a(U3 u3, int i, boolean z, String str, int i2) {
        if ((i2 & 4) != 0) {
            str = null;
        }
        u3.a(i, z, str, null);
    }

    /* JADX WARN: Type inference failed for: r9v11, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v15, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v17, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v23, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v7, types: [kotlin.jvm.functions.Function0, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v9, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    public final void a(int i, boolean z, String str, Integer num) {
        C0469q6 c0469q6 = this.j;
        if (c0469q6 != null) {
            try {
                if (c0469q6.e) {
                    return;
                }
                C0510t6 c0510t6 = c0469q6.f461a;
                if (c0510t6 != null) {
                    c0510t6.g = "IN_CUSTOM";
                }
                switch (i) {
                    case 1:
                        if (z) {
                            c0469q6.d = str;
                            U3 u3 = c0469q6.b;
                            EnumC0332h6 funnelState = EnumC0332h6.h;
                            u3.getClass();
                            Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                            C0393l6.a(funnelState, c0510t6, (Integer) null, (Function2) u3.h);
                        }
                        break;
                    case 2:
                        if (z) {
                            c0469q6.d = str;
                            c0469q6.e = true;
                            if (!c0469q6.c.contains(1)) {
                                U3 u32 = c0469q6.b;
                                EnumC0332h6 funnelState2 = EnumC0332h6.h;
                                C0510t6 c0510t62 = c0469q6.f461a;
                                u32.getClass();
                                Intrinsics.checkNotNullParameter(funnelState2, "funnelState");
                                C0393l6.a(funnelState2, c0510t62, (Integer) 8006, (Function2) u32.h);
                            }
                            c0469q6.b.g.invoke();
                            U3 u33 = c0469q6.b;
                            EnumC0332h6 funnelState3 = EnumC0332h6.i;
                            C0510t6 c0510t63 = c0469q6.f461a;
                            u33.getClass();
                            Intrinsics.checkNotNullParameter(funnelState3, "funnelState");
                            C0393l6.a(funnelState3, c0510t63, (Integer) null, (Function2) u33.h);
                        }
                        break;
                    case 3:
                        if (z || (str != null && Intrinsics.areEqual(str, c0469q6.d))) {
                            c0469q6.e = true;
                            if (!c0469q6.c.contains(1)) {
                                U3 u34 = c0469q6.b;
                                EnumC0332h6 funnelState4 = EnumC0332h6.h;
                                C0510t6 c0510t64 = c0469q6.f461a;
                                u34.getClass();
                                Intrinsics.checkNotNullParameter(funnelState4, "funnelState");
                                C0393l6.a(funnelState4, c0510t64, (Integer) 8006, (Function2) u34.h);
                            }
                            U3 u35 = c0469q6.b;
                            EnumC0332h6 funnelState5 = EnumC0332h6.j;
                            C0510t6 c0510t65 = c0469q6.f461a;
                            Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : 8100);
                            u35.getClass();
                            Intrinsics.checkNotNullParameter(funnelState5, "funnelState");
                            C0393l6.a(funnelState5, c0510t65, numValueOf, (Function2) u35.h);
                        }
                        break;
                    case 4:
                        if (z) {
                            c0469q6.d = str;
                        }
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                        c0469q6.e = true;
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
                        if (!c0469q6.c.contains(4)) {
                            i2 = 0;
                        }
                        int i3 = i + i2;
                        U3 u36 = c0469q6.b;
                        EnumC0332h6 funnelState6 = EnumC0332h6.j;
                        C0510t6 c0510t66 = c0469q6.f461a;
                        Integer numValueOf2 = Integer.valueOf(i3);
                        u36.getClass();
                        Intrinsics.checkNotNullParameter(funnelState6, "funnelState");
                        C0393l6.a(funnelState6, c0510t66, numValueOf2, (Function2) u36.h);
                        break;
                }
                c0469q6.c.add(Integer.valueOf(i));
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
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("EmbeddedBrowserViewClient", "onReceivedError: " + request.getUrl());
        }
        if (request.isForMainFrame()) {
            a(3, true, request.getUrl().toString(), Integer.valueOf(error.getErrorCode()));
        }
    }
}

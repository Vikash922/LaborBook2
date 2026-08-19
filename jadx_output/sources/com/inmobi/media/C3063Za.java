package com.inmobi.media;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.os.SystemClock;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.Za */
/* JADX INFO: loaded from: classes6.dex */
public final class C3063Za extends AbstractC3012W1 {

    /* JADX INFO: renamed from: f */
    public final C3153fb f1822f;

    /* JADX INFO: renamed from: g */
    public final C2908Oa f1823g;

    /* JADX INFO: renamed from: h */
    public boolean f1824h;

    /* JADX INFO: renamed from: i */
    public final String f1825i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3063Za(C3153fb c3153fb, InterfaceC3147f5 interfaceC3147f5, C2908Oa onRenderViewProcessGone) {
        super(interfaceC3147f5);
        Intrinsics.checkNotNullParameter(onRenderViewProcessGone, "onRenderViewProcessGone");
        this.f1822f = c3153fb;
        this.f1823g = onRenderViewProcessGone;
        this.f1825i = "redirect";
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2006a(WebView webView, String str) {
        boolean z;
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("RenderViewClient", AbstractC3157g0.m2142a("onShouldOverrideUrlLoading  - url - ", str));
        }
        if (webView instanceof GestureDetectorOnGestureListenerC3049Ya) {
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) webView;
            z = true;
            if (gestureDetectorOnGestureListenerC3049Ya.f1769s) {
                webView.loadUrl(str);
                return true;
            }
            if (!gestureDetectorOnGestureListenerC3049Ya.m1976k()) {
                gestureDetectorOnGestureListenerC3049Ya.mo863a(this.f1825i);
                return true;
            }
            InterfaceC3147f5 interfaceC3147f52 = this.f1615a;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2147a("RenderViewClient", "Placement type:  " + ((int) gestureDetectorOnGestureListenerC3049Ya.getPlacementType()) + "  url:" + str);
            }
            InterfaceC3147f5 interfaceC3147f53 = this.f1615a;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2147a("RenderViewClient", AbstractC3157g0.m2142a("Override URL loading :", str));
            }
            gestureDetectorOnGestureListenerC3049Ya.m1974i();
            C3253m6 c3253m6M2324a = C3283o6.m2324a(gestureDetectorOnGestureListenerC3049Ya.getLandingPageHandler(), this.f1825i, null, str, null, false, 24);
            InterfaceC3147f5 interfaceC3147f54 = this.f1615a;
            if (interfaceC3147f54 != null) {
                ((C3162g5) interfaceC3147f54).m2147a("RenderViewClient", "Current Index :" + gestureDetectorOnGestureListenerC3049Ya.copyBackForwardList().getCurrentIndex() + " Original Url :" + gestureDetectorOnGestureListenerC3049Ya.getOriginalUrl() + " URL: " + str);
            }
            InterfaceC3147f5 interfaceC3147f55 = this.f1615a;
            if (interfaceC3147f55 != null) {
                ((C3162g5) interfaceC3147f55).m2152c("RenderViewClient", "landingPage process result - " + c3253m6M2324a.f2323a);
            }
        } else {
            z = false;
        }
        InterfaceC3147f5 interfaceC3147f56 = this.f1615a;
        if (interfaceC3147f56 != null) {
            ((C3162g5) interfaceC3147f56).m2147a("RenderViewClient", "Override URL loading :" + str + " returned " + z);
        }
        return z;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("RenderViewClient", AbstractC3157g0.m2142a("Resource loading:", str));
        }
        if (webView instanceof GestureDetectorOnGestureListenerC3049Ya) {
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) webView;
            String url = gestureDetectorOnGestureListenerC3049Ya.getUrl();
            if (str == null || url == null || StringsKt.startsWith$default(url, "file:", false, 2, (Object) null)) {
                return;
            }
            m2005a(gestureDetectorOnGestureListenerC3049Ya);
        }
    }

    @Override // com.inmobi.media.AbstractC3012W1, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        C3153fb c3153fb = this.f1822f;
        if (c3153fb != null) {
            Map mapM2138a = c3153fb.m2138a();
            long j = c3153fb.f2077b;
            ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
            mapM2138a.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("WebViewLoadFinished", mapM2138a, EnumC3259mc.f2349a);
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("RenderViewClient", AbstractC3157g0.m2142a("Page load finished:", str));
        }
        if (webView instanceof GestureDetectorOnGestureListenerC3049Ya) {
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) webView;
            m2005a(gestureDetectorOnGestureListenerC3049Ya);
            if (Intrinsics.areEqual("Loading", gestureDetectorOnGestureListenerC3049Ya.f1761o)) {
                gestureDetectorOnGestureListenerC3049Ya.m1960b("window.imaiview.broadcastEvent('ready');");
                gestureDetectorOnGestureListenerC3049Ya.m1960b("window.mraidview.broadcastEvent('ready');");
                gestureDetectorOnGestureListenerC3049Ya.m1990y();
            }
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1615a;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2147a("RenderViewClient", "==== CHECKPOINT REACHED - PAGE FINISHED ====");
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1615a;
        if (interfaceC3147f53 != null) {
            ((C3162g5) interfaceC3147f53).m2150b();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        C3153fb c3153fb = this.f1822f;
        if (c3153fb != null) {
            Map mapM2138a = c3153fb.m2138a();
            long j = c3153fb.f2077b;
            ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
            mapM2138a.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("PageStarted", mapM2138a, EnumC3259mc.f2349a);
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("RenderViewClient", AbstractC3157g0.m2142a("Page load started:", str));
        }
        if (webView instanceof GestureDetectorOnGestureListenerC3049Ya) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1615a;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2147a("RenderViewClient", "Page load started renderview: " + ((GestureDetectorOnGestureListenerC3049Ya) webView).getMarkupType());
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) webView;
            m2005a(gestureDetectorOnGestureListenerC3049Ya);
            gestureDetectorOnGestureListenerC3049Ya.setAndUpdateViewState("Loading");
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1615a;
        if (interfaceC3147f53 != null) {
            ((C3162g5) interfaceC3147f53).m2147a("RenderViewClient", "==== CHECKPOINT REACHED - PAGE STARTED ====");
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1615a;
        if (interfaceC3147f54 != null) {
            ((C3162g5) interfaceC3147f54).m2150b();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int i, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2151b("RenderViewClient", "OnReceivedError - errorCode - " + i + ", description - " + description + ", url - " + failingUrl);
        }
        super.onReceivedError(view, i, description, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2151b("RenderViewClient", "ReceivedHttpError - error - " + (webResourceResponse != null ? webResourceResponse.getReasonPhrase() : null) + ", statusCode - " + (webResourceResponse != null ? Integer.valueOf(webResourceResponse.getStatusCode()) : null) + " url - " + (webResourceRequest != null ? webResourceRequest.getUrl() : null) + " isMainFrame - " + (webResourceRequest != null ? Boolean.valueOf(webResourceRequest.isForMainFrame()) : null));
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2151b("RenderViewClient", "onReceivedSSLError - error - " + (sslError != null ? Integer.valueOf(sslError.getPrimaryError()) : null) + " - url - " + (sslError != null ? sslError.getUrl() : null));
        }
    }

    @Override // com.inmobi.media.AbstractC3012W1, android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        if (Build.VERSION.SDK_INT >= 26) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2152c("RenderViewClient", "onRenderProcessGone detail did crash- " + detail.didCrash() + " priority - " + detail.rendererPriorityAtExit());
            }
            this.f1823g.invoke(Boolean.valueOf(detail.didCrash()));
        } else {
            InterfaceC3147f5 interfaceC3147f52 = this.f1615a;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2152c("RenderViewClient", "onRenderProcessGone");
            }
        }
        return super.onRenderProcessGone(view, detail);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("RenderViewClient", "shouldOverrideUrlLoading Called");
        }
        if (!C2751E3.m994G()) {
            return false;
        }
        String string = request.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return m2006a(view, string);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        super.onReceivedError(view, request, error);
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2151b("RenderViewClient", "OnReceivedError - errorCode - " + error.getErrorCode() + ", description - " + ((Object) error.getDescription()) + ", url - " + request.getUrl() + ", method - " + request.getMethod() + ", isMainFrame - " + request.isForMainFrame());
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("RenderViewClient", AbstractC3157g0.m2142a("shouldOverrideUrlLoading Called ", url));
        }
        return m2006a(view, url);
    }

    /* JADX INFO: renamed from: a */
    public final void m2005a(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        if (this.f1824h || gestureDetectorOnGestureListenerC3049Ya.f1741e) {
            return;
        }
        this.f1824h = true;
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("RenderViewClient", "Injecting MRAID javascript for two piece creatives.");
        }
        gestureDetectorOnGestureListenerC3049Ya.m1960b(gestureDetectorOnGestureListenerC3049Ya.getMraidJsString());
    }
}

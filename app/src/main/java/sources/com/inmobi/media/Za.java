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

/* JADX INFO: loaded from: classes6.dex */
public final class Za extends W1 {
    public final C0305fb f;
    public final Oa g;
    public boolean h;
    public final String i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Za(C0305fb c0305fb, InterfaceC0298f5 interfaceC0298f5, Oa onRenderViewProcessGone) {
        super(interfaceC0298f5);
        Intrinsics.checkNotNullParameter(onRenderViewProcessGone, "onRenderViewProcessGone");
        this.f = c0305fb;
        this.g = onRenderViewProcessGone;
        this.i = "redirect";
    }

    public final boolean a(WebView webView, String str) {
        boolean z;
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("RenderViewClient", AbstractC0309g0.a("onShouldOverrideUrlLoading  - url - ", str));
        }
        if (webView instanceof Ya) {
            Ya ya = (Ya) webView;
            z = true;
            if (ya.s) {
                webView.loadUrl(str);
                return true;
            }
            if (!ya.k()) {
                ya.a(this.i);
                return true;
            }
            InterfaceC0298f5 interfaceC0298f52 = this.f267a;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).a("RenderViewClient", "Placement type:  " + ((int) ya.getPlacementType()) + "  url:" + str);
            }
            InterfaceC0298f5 interfaceC0298f53 = this.f267a;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).a("RenderViewClient", AbstractC0309g0.a("Override URL loading :", str));
            }
            ya.i();
            C0409m6 c0409m6A = C0439o6.a(ya.getLandingPageHandler(), this.i, null, str, null, false, 24);
            InterfaceC0298f5 interfaceC0298f54 = this.f267a;
            if (interfaceC0298f54 != null) {
                ((C0314g5) interfaceC0298f54).a("RenderViewClient", "Current Index :" + ya.copyBackForwardList().getCurrentIndex() + " Original Url :" + ya.getOriginalUrl() + " URL: " + str);
            }
            InterfaceC0298f5 interfaceC0298f55 = this.f267a;
            if (interfaceC0298f55 != null) {
                ((C0314g5) interfaceC0298f55).c("RenderViewClient", "landingPage process result - " + c0409m6A.f423a);
            }
        } else {
            z = false;
        }
        InterfaceC0298f5 interfaceC0298f56 = this.f267a;
        if (interfaceC0298f56 != null) {
            ((C0314g5) interfaceC0298f56).a("RenderViewClient", "Override URL loading :" + str + " returned " + z);
        }
        return z;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("RenderViewClient", AbstractC0309g0.a("Resource loading:", str));
        }
        if (webView instanceof Ya) {
            Ya ya = (Ya) webView;
            String url = ya.getUrl();
            if (str == null || url == null || StringsKt.startsWith$default(url, "file:", false, 2, (Object) null)) {
                return;
            }
            a(ya);
        }
    }

    @Override // com.inmobi.media.W1, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        C0305fb c0305fb = this.f;
        if (c0305fb != null) {
            Map mapA = c0305fb.a();
            long j = c0305fb.b;
            ScheduledExecutorService scheduledExecutorService = Xc.f282a;
            mapA.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("WebViewLoadFinished", mapA, EnumC0415mc.f426a);
        }
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("RenderViewClient", AbstractC0309g0.a("Page load finished:", str));
        }
        if (webView instanceof Ya) {
            Ya ya = (Ya) webView;
            a(ya);
            if (Intrinsics.areEqual("Loading", ya.o)) {
                ya.b("window.imaiview.broadcastEvent('ready');");
                ya.b("window.mraidview.broadcastEvent('ready');");
                ya.y();
            }
        }
        InterfaceC0298f5 interfaceC0298f52 = this.f267a;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a("RenderViewClient", "==== CHECKPOINT REACHED - PAGE FINISHED ====");
        }
        InterfaceC0298f5 interfaceC0298f53 = this.f267a;
        if (interfaceC0298f53 != null) {
            ((C0314g5) interfaceC0298f53).b();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        C0305fb c0305fb = this.f;
        if (c0305fb != null) {
            Map mapA = c0305fb.a();
            long j = c0305fb.b;
            ScheduledExecutorService scheduledExecutorService = Xc.f282a;
            mapA.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("PageStarted", mapA, EnumC0415mc.f426a);
        }
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("RenderViewClient", AbstractC0309g0.a("Page load started:", str));
        }
        if (webView instanceof Ya) {
            InterfaceC0298f5 interfaceC0298f52 = this.f267a;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).a("RenderViewClient", "Page load started renderview: " + ((Ya) webView).getMarkupType());
            }
            Ya ya = (Ya) webView;
            a(ya);
            ya.setAndUpdateViewState("Loading");
        }
        InterfaceC0298f5 interfaceC0298f53 = this.f267a;
        if (interfaceC0298f53 != null) {
            ((C0314g5) interfaceC0298f53).a("RenderViewClient", "==== CHECKPOINT REACHED - PAGE STARTED ====");
        }
        InterfaceC0298f5 interfaceC0298f54 = this.f267a;
        if (interfaceC0298f54 != null) {
            ((C0314g5) interfaceC0298f54).b();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int i, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).b("RenderViewClient", "OnReceivedError - errorCode - " + i + ", description - " + description + ", url - " + failingUrl);
        }
        super.onReceivedError(view, i, description, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).b("RenderViewClient", "ReceivedHttpError - error - " + (webResourceResponse != null ? webResourceResponse.getReasonPhrase() : null) + ", statusCode - " + (webResourceResponse != null ? Integer.valueOf(webResourceResponse.getStatusCode()) : null) + " url - " + (webResourceRequest != null ? webResourceRequest.getUrl() : null) + " isMainFrame - " + (webResourceRequest != null ? Boolean.valueOf(webResourceRequest.isForMainFrame()) : null));
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).b("RenderViewClient", "onReceivedSSLError - error - " + (sslError != null ? Integer.valueOf(sslError.getPrimaryError()) : null) + " - url - " + (sslError != null ? sslError.getUrl() : null));
        }
    }

    @Override // com.inmobi.media.W1, android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        if (Build.VERSION.SDK_INT >= 26) {
            InterfaceC0298f5 interfaceC0298f5 = this.f267a;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).c("RenderViewClient", "onRenderProcessGone detail did crash- " + detail.didCrash() + " priority - " + detail.rendererPriorityAtExit());
            }
            this.g.invoke(Boolean.valueOf(detail.didCrash()));
        } else {
            InterfaceC0298f5 interfaceC0298f52 = this.f267a;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).c("RenderViewClient", "onRenderProcessGone");
            }
        }
        return super.onRenderProcessGone(view, detail);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("RenderViewClient", "shouldOverrideUrlLoading Called");
        }
        if (!E3.G()) {
            return false;
        }
        String string = request.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return a(view, string);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        super.onReceivedError(view, request, error);
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).b("RenderViewClient", "OnReceivedError - errorCode - " + error.getErrorCode() + ", description - " + ((Object) error.getDescription()) + ", url - " + request.getUrl() + ", method - " + request.getMethod() + ", isMainFrame - " + request.isForMainFrame());
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("RenderViewClient", AbstractC0309g0.a("shouldOverrideUrlLoading Called ", url));
        }
        return a(view, url);
    }

    public final void a(Ya ya) {
        if (this.h || ya.e) {
            return;
        }
        this.h = true;
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("RenderViewClient", "Injecting MRAID javascript for two piece creatives.");
        }
        ya.b(ya.getMraidJsString());
    }
}

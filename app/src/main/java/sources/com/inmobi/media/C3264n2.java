package com.inmobi.media;

import android.graphics.Bitmap;
import android.os.Handler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.n2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3264n2 extends WebViewClient {

    /* JADX INFO: renamed from: a */
    public final AtomicBoolean f2370a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b */
    public boolean f2371b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3189i2 f2372c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Handler f2373d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C3279o2 f2374e;

    public C3264n2(C3189i2 c3189i2, C3279o2 c3279o2, Handler handler) {
        this.f2372c = c3189i2;
        this.f2373d = handler;
        this.f2374e = c3279o2;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2311a(C3264n2 this$0, C3189i2 click, Handler handler, C3279o2 this$1, final WebView webView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(click, "$click");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        try {
            Thread.sleep((C3369u2.f2633g != null ? r0.getPingInterval() : 0) * 1000);
        } catch (InterruptedException unused) {
        }
        if (this$0.f2370a.get()) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(C3369u2.m2479f(), "access$getTAG$p(...)");
        String str = click.f2169b;
        click.f2176i.set(true);
        handler.post(new Runnable() { // from class: com.inmobi.media.n2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3264n2.m2310a(webView);
            }
        });
        this$1.f2396a.mo2275a(click, EnumC3101c4.f1922e);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.f2370a.set(true);
        if (this.f2371b || this.f2372c.f2176i.get()) {
            return;
        }
        this.f2374e.f2396a.mo2274a(this.f2372c);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(final WebView webView, String str, Bitmap bitmap) {
        this.f2371b = false;
        int i = AbstractC3251m4.f2318a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue();
        final C3189i2 c3189i2 = this.f2372c;
        final Handler handler = this.f2373d;
        final C3279o2 c3279o2 = this.f2374e;
        scheduledThreadPoolExecutor.submit(new Runnable() { // from class: com.inmobi.media.n2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3264n2.m2311a(this.f$0, c3189i2, handler, c3279o2, webView);
            }
        });
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int i, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        this.f2371b = true;
        this.f2374e.f2396a.mo2275a(this.f2372c, EnumC3101c4.f1922e);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(errorResponse, "errorResponse");
        this.f2371b = true;
        this.f2374e.f2396a.mo2275a(this.f2372c, EnumC3101c4.f1922e);
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        return AbstractC2836Jd.m1205a(view, detail, "click_mgr");
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        return (this.f2372c.f2171d || Intrinsics.areEqual(request.getUrl().toString(), this.f2372c.f2169b)) ? false : true;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        this.f2371b = true;
        this.f2374e.f2396a.mo2275a(this.f2372c, EnumC3101c4.f1922e);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        C3189i2 c3189i2 = this.f2372c;
        return (c3189i2.f2171d || Intrinsics.areEqual(url, c3189i2.f2169b)) ? false : true;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2310a(WebView webView) {
        try {
            C2791Gd c2791Gd = webView instanceof C2791Gd ? (C2791Gd) webView : null;
            if (c2791Gd == null || c2791Gd.f1063a) {
                return;
            }
            ((C2791Gd) webView).stopLoading();
        } catch (Throwable th) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(th);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
    }
}

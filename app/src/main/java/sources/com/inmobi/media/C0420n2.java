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

/* JADX INFO: renamed from: com.inmobi.media.n2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0420n2 extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f430a = new AtomicBoolean(false);
    public boolean b;
    public final /* synthetic */ C0343i2 c;
    public final /* synthetic */ Handler d;
    public final /* synthetic */ C0435o2 e;

    public C0420n2(C0343i2 c0343i2, C0435o2 c0435o2, Handler handler) {
        this.c = c0343i2;
        this.d = handler;
        this.e = c0435o2;
    }

    public static final void a(C0420n2 this$0, C0343i2 click, Handler handler, C0435o2 this$1, final WebView webView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(click, "$click");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        try {
            Thread.sleep((C0520u2.g != null ? r0.getPingInterval() : 0) * 1000);
        } catch (InterruptedException unused) {
        }
        if (this$0.f430a.get()) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(C0520u2.f(), "access$getTAG$p(...)");
        String str = click.b;
        click.i.set(true);
        handler.post(new Runnable() { // from class: com.inmobi.media.n2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0420n2.a(webView);
            }
        });
        this$1.f440a.a(click, EnumC0250c4.e);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.f430a.set(true);
        if (this.b || this.c.i.get()) {
            return;
        }
        this.e.f440a.a(this.c);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(final WebView webView, String str, Bitmap bitmap) {
        this.b = false;
        int i = AbstractC0407m4.f421a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC0407m4.b.getValue();
        final C0343i2 c0343i2 = this.c;
        final Handler handler = this.d;
        final C0435o2 c0435o2 = this.e;
        scheduledThreadPoolExecutor.submit(new Runnable() { // from class: com.inmobi.media.n2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0420n2.a(this.f$0, c0343i2, handler, c0435o2, webView);
            }
        });
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int i, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        this.b = true;
        this.e.f440a.a(this.c, EnumC0250c4.e);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(errorResponse, "errorResponse");
        this.b = true;
        this.e.f440a.a(this.c, EnumC0250c4.e);
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        return Jd.a(view, detail, "click_mgr");
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        return (this.c.d || Intrinsics.areEqual(request.getUrl().toString(), this.c.b)) ? false : true;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        this.b = true;
        this.e.f440a.a(this.c, EnumC0250c4.e);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        C0343i2 c0343i2 = this.c;
        return (c0343i2.d || Intrinsics.areEqual(url, c0343i2.b)) ? false : true;
    }

    public static final void a(WebView webView) {
        try {
            Gd gd = webView instanceof Gd ? (Gd) webView : null;
            if (gd == null || gd.f126a) {
                return;
            }
            ((Gd) webView).stopLoading();
        } catch (Throwable th) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(th);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        }
    }
}

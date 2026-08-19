package com.inmobi.media;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class W1 extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0298f5 f267a;
    public boolean c;
    public boolean d;
    public int b = -1;
    public final AtomicBoolean e = new AtomicBoolean(false);

    public W1(InterfaceC0298f5 interfaceC0298f5) {
        this.f267a = interfaceC0298f5;
    }

    public final void a(WebView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.e.set(true);
        view.postDelayed(new Runnable() { // from class: com.inmobi.media.W1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                W1.a(this.f$0);
            }
        }, 1000L);
    }

    public final void b(WebView webView) {
        Y y;
        String strB;
        String str;
        Y y2;
        String strM;
        R0 r0;
        int i = this.b;
        if (-1 != i) {
            if (i > 0) {
                this.b = i - 1;
                return;
            }
            if (this.c) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new RunnableC0320g9(webView));
            this.c = true;
            if (webView instanceof Ya) {
                Ya ya = (Ya) webView;
                InterfaceC0298f5 interfaceC0298f5 = ya.i;
                if (interfaceC0298f5 != null) {
                    String str2 = Ya.P0;
                    ((C0314g5) interfaceC0298f5).a(str2, Wa.a(ya, str2, "TAG", "sendTelemetryEventForNetworkLoad "));
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                String creativeId = ya.getCreativeId();
                if (creativeId != null) {
                    linkedHashMap.put("creativeId", creativeId);
                }
                String impressionId = ya.getImpressionId();
                if (impressionId != null) {
                    linkedHashMap.put("impressionId", impressionId);
                }
                linkedHashMap.put("errorCode", Short.valueOf(ya.m0 ? (short) 2212 : (short) 2211));
                C0242bb c0242bb = ya.h;
                if (c0242bb != null && (r0 = c0242bb.i) != null) {
                    linkedHashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - r0.f228a.c));
                }
                C0242bb c0242bb2 = ya.h;
                if (c0242bb2 != null && (y2 = c0242bb2.f313a) != null && (strM = y2.m()) != null) {
                    linkedHashMap.put("plType", strM);
                }
                C0242bb c0242bb3 = ya.h;
                if (c0242bb3 != null) {
                    linkedHashMap.put("creativeType", c0242bb3.e);
                }
                C0242bb c0242bb4 = ya.h;
                if (c0242bb4 != null && (str = c0242bb4.b) != null) {
                    linkedHashMap.put("markupType", str);
                }
                C0242bb c0242bb5 = ya.h;
                if (c0242bb5 != null && (y = c0242bb5.f313a) != null && (strB = y.b()) != null) {
                    linkedHashMap.put("adType", strB);
                }
                C0242bb c0242bb6 = ya.h;
                if (c0242bb6 != null) {
                    linkedHashMap.put("metadataBlob", c0242bb6.c);
                }
                C0242bb c0242bb7 = ya.h;
                if (c0242bb7 != null) {
                    linkedHashMap.put("isRewarded", Boolean.valueOf(c0242bb7.g));
                }
                InterfaceC0298f5 interfaceC0298f52 = ya.i;
                if (interfaceC0298f52 != null) {
                    String str3 = Ya.P0;
                    ((C0314g5) interfaceC0298f52).a(str3, Wa.a(ya, str3, "TAG", "processTelemetryEvent "));
                }
                ya.getListener().a("NetworkLoadLimitExceeded", linkedHashMap);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (this.d) {
            this.d = false;
            if (webView != null) {
                webView.clearHistory();
            }
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        I6.a((byte) 1, "BaseWebViewClient", "WebView crash detected, destroying ad");
        view.destroy();
        return true;
    }

    public static final void a(W1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.e.set(false);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        WebResourceResponse webResourceResponseA = Dd.a(url, this.f267a);
        return webResourceResponseA == null ? super.shouldInterceptRequest(view, url) : webResourceResponseA;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
        WebResourceResponse webResourceResponseA;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        b(view);
        InterfaceC0298f5 interfaceC0298f5 = this.f267a;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(request, "<this>");
        if (StringsKt.equals("GET", request.getMethod(), true)) {
            String string = request.getUrl().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            webResourceResponseA = Dd.a(string, interfaceC0298f5);
        } else {
            webResourceResponseA = null;
        }
        return webResourceResponseA == null ? super.shouldInterceptRequest(view, request) : webResourceResponseA;
    }
}

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

/* JADX INFO: renamed from: com.inmobi.media.W1 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3012W1 extends WebViewClient {

    /* JADX INFO: renamed from: a */
    public final InterfaceC3147f5 f1615a;

    /* JADX INFO: renamed from: c */
    public boolean f1617c;

    /* JADX INFO: renamed from: d */
    public boolean f1618d;

    /* JADX INFO: renamed from: b */
    public int f1616b = -1;

    /* JADX INFO: renamed from: e */
    public final AtomicBoolean f1619e = new AtomicBoolean(false);

    public AbstractC3012W1(InterfaceC3147f5 interfaceC3147f5) {
        this.f1615a = interfaceC3147f5;
    }

    /* JADX INFO: renamed from: a */
    public final void m1890a(WebView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f1619e.set(true);
        view.postDelayed(new Runnable() { // from class: com.inmobi.media.W1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3012W1.m1889a(this.f$0);
            }
        }, 1000L);
    }

    /* JADX INFO: renamed from: b */
    public final void m1891b(WebView webView) {
        C3038Y c3038y;
        String strM1929b;
        String str;
        C3038Y c3038y2;
        String strM1939m;
        C2941R0 c2941r0;
        int i = this.f1616b;
        if (-1 != i) {
            if (i > 0) {
                this.f1616b = i - 1;
                return;
            }
            if (this.f1617c) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new RunnableC3166g9(webView));
            this.f1617c = true;
            if (webView instanceof GestureDetectorOnGestureListenerC3049Ya) {
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) webView;
                InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
                if (interfaceC3147f5 != null) {
                    String str2 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str2, "TAG", "sendTelemetryEventForNetworkLoad "));
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                String creativeId = gestureDetectorOnGestureListenerC3049Ya.getCreativeId();
                if (creativeId != null) {
                    linkedHashMap.put("creativeId", creativeId);
                }
                String impressionId = gestureDetectorOnGestureListenerC3049Ya.getImpressionId();
                if (impressionId != null) {
                    linkedHashMap.put("impressionId", impressionId);
                }
                linkedHashMap.put("errorCode", Short.valueOf(gestureDetectorOnGestureListenerC3049Ya.f1758m0 ? (short) 2212 : (short) 2211));
                C3093bb c3093bb = gestureDetectorOnGestureListenerC3049Ya.f1747h;
                if (c3093bb != null && (c2941r0 = c3093bb.f1895i) != null) {
                    linkedHashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - c2941r0.f1488a.f1517c));
                }
                C3093bb c3093bb2 = gestureDetectorOnGestureListenerC3049Ya.f1747h;
                if (c3093bb2 != null && (c3038y2 = c3093bb2.f1887a) != null && (strM1939m = c3038y2.m1939m()) != null) {
                    linkedHashMap.put("plType", strM1939m);
                }
                C3093bb c3093bb3 = gestureDetectorOnGestureListenerC3049Ya.f1747h;
                if (c3093bb3 != null) {
                    linkedHashMap.put("creativeType", c3093bb3.f1891e);
                }
                C3093bb c3093bb4 = gestureDetectorOnGestureListenerC3049Ya.f1747h;
                if (c3093bb4 != null && (str = c3093bb4.f1888b) != null) {
                    linkedHashMap.put("markupType", str);
                }
                C3093bb c3093bb5 = gestureDetectorOnGestureListenerC3049Ya.f1747h;
                if (c3093bb5 != null && (c3038y = c3093bb5.f1887a) != null && (strM1929b = c3038y.m1929b()) != null) {
                    linkedHashMap.put("adType", strM1929b);
                }
                C3093bb c3093bb6 = gestureDetectorOnGestureListenerC3049Ya.f1747h;
                if (c3093bb6 != null) {
                    linkedHashMap.put("metadataBlob", c3093bb6.f1889c);
                }
                C3093bb c3093bb7 = gestureDetectorOnGestureListenerC3049Ya.f1747h;
                if (c3093bb7 != null) {
                    linkedHashMap.put("isRewarded", Boolean.valueOf(c3093bb7.f1893g));
                }
                InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
                if (interfaceC3147f52 != null) {
                    String str3 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    ((C3162g5) interfaceC3147f52).m2147a(str3, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str3, "TAG", "processTelemetryEvent "));
                }
                gestureDetectorOnGestureListenerC3049Ya.getListener().mo1613a("NetworkLoadLimitExceeded", linkedHashMap);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (this.f1618d) {
            this.f1618d = false;
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
        AbstractC2814I6.m1170a((byte) 1, "BaseWebViewClient", "WebView crash detected, destroying ad");
        view.destroy();
        return true;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1889a(AbstractC3012W1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f1619e.set(false);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        WebResourceResponse webResourceResponseM971a = AbstractC2746Dd.m971a(url, this.f1615a);
        return webResourceResponseM971a == null ? super.shouldInterceptRequest(view, url) : webResourceResponseM971a;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
        WebResourceResponse webResourceResponseM971a;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        m1891b(view);
        InterfaceC3147f5 interfaceC3147f5 = this.f1615a;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(request, "<this>");
        if (StringsKt.equals("GET", request.getMethod(), true)) {
            String string = request.getUrl().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            webResourceResponseM971a = AbstractC2746Dd.m971a(string, interfaceC3147f5);
        } else {
            webResourceResponseM971a = null;
        }
        return webResourceResponseM971a == null ? super.shouldInterceptRequest(view, request) : webResourceResponseM971a;
    }
}

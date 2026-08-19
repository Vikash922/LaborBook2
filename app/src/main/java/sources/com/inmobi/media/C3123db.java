package com.inmobi.media;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.db */
/* JADX INFO: loaded from: classes6.dex */
public final class C3123db extends WebViewRenderProcessClient {

    /* JADX INFO: renamed from: a */
    public final InterfaceC3147f5 f2023a;

    /* JADX INFO: renamed from: b */
    public final C3153fb f2024b;

    public C3123db(InterfaceC3147f5 interfaceC3147f5, C3153fb c3153fb) {
        this.f2023a = interfaceC3147f5;
        this.f2024b = c3153fb;
    }

    @Override // android.webkit.WebViewRenderProcessClient
    public final void onRenderProcessResponsive(WebView view, WebViewRenderProcess webViewRenderProcess) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3147f5 interfaceC3147f5 = this.f2023a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("RenderViewRenderProcessClient", "onRenderProcessResponsive " + view + ' ' + webViewRenderProcess);
        }
        C3153fb c3153fb = this.f2024b;
        if (c3153fb != null) {
            Map mapM2138a = c3153fb.m2138a();
            mapM2138a.put("creativeId", c3153fb.f2076a.f1892f);
            int i = c3153fb.f2079d + 1;
            c3153fb.f2079d = i;
            mapM2138a.put("count", Integer.valueOf(i));
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("RenderProcessResponsive", mapM2138a, EnumC3259mc.f2349a);
        }
    }

    @Override // android.webkit.WebViewRenderProcessClient
    public final void onRenderProcessUnresponsive(WebView view, WebViewRenderProcess webViewRenderProcess) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3147f5 interfaceC3147f5 = this.f2023a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("RenderViewRenderProcessClient", "onRenderProcessUnresponsive " + view + ' ' + webViewRenderProcess);
        }
        C3153fb c3153fb = this.f2024b;
        if (c3153fb != null) {
            Map mapM2138a = c3153fb.m2138a();
            mapM2138a.put("creativeId", c3153fb.f2076a.f1892f);
            int i = c3153fb.f2078c + 1;
            c3153fb.f2078c = i;
            mapM2138a.put("count", Integer.valueOf(i));
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("RenderProcessUnResponsive", mapM2138a, EnumC3259mc.f2349a);
        }
    }
}

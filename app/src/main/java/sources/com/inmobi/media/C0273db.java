package com.inmobi.media;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.db, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0273db extends WebViewRenderProcessClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0298f5 f334a;
    public final C0305fb b;

    public C0273db(InterfaceC0298f5 interfaceC0298f5, C0305fb c0305fb) {
        this.f334a = interfaceC0298f5;
        this.b = c0305fb;
    }

    @Override // android.webkit.WebViewRenderProcessClient
    public final void onRenderProcessResponsive(WebView view, WebViewRenderProcess webViewRenderProcess) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC0298f5 interfaceC0298f5 = this.f334a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("RenderViewRenderProcessClient", "onRenderProcessResponsive " + view + ' ' + webViewRenderProcess);
        }
        C0305fb c0305fb = this.b;
        if (c0305fb != null) {
            Map mapA = c0305fb.a();
            mapA.put("creativeId", c0305fb.f351a.f);
            int i = c0305fb.d + 1;
            c0305fb.d = i;
            mapA.put("count", Integer.valueOf(i));
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("RenderProcessResponsive", mapA, EnumC0415mc.f426a);
        }
    }

    @Override // android.webkit.WebViewRenderProcessClient
    public final void onRenderProcessUnresponsive(WebView view, WebViewRenderProcess webViewRenderProcess) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC0298f5 interfaceC0298f5 = this.f334a;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("RenderViewRenderProcessClient", "onRenderProcessUnresponsive " + view + ' ' + webViewRenderProcess);
        }
        C0305fb c0305fb = this.b;
        if (c0305fb != null) {
            Map mapA = c0305fb.a();
            mapA.put("creativeId", c0305fb.f351a.f);
            int i = c0305fb.c + 1;
            c0305fb.c = i;
            mapA.put("count", Integer.valueOf(i));
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("RenderProcessUnResponsive", mapA, EnumC0415mc.f426a);
        }
    }
}

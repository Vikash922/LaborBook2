package com.inmobi.media;

import android.webkit.WebSettings;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.g9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC0320g9 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f361a;

    public RunnableC0320g9(WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.f361a = new WeakReference(webView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebView webView = (WebView) this.f361a.get();
        WebSettings settings = webView != null ? webView.getSettings() : null;
        if (settings == null) {
            return;
        }
        settings.setBlockNetworkLoads(true);
    }
}

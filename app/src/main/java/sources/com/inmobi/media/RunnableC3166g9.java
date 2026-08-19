package com.inmobi.media;

import android.webkit.WebSettings;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.g9 */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC3166g9 implements Runnable {

    /* JADX INFO: renamed from: a */
    public final WeakReference f2110a;

    public RunnableC3166g9(WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.f2110a = new WeakReference(webView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebView webView = (WebView) this.f2110a.get();
        WebSettings settings = webView != null ? webView.getSettings() : null;
        if (settings == null) {
            return;
        }
        settings.setBlockNetworkLoads(true);
    }
}

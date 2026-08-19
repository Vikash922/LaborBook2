package com.iab.omid.library.inmobi.publisher;

import android.webkit.WebView;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.publisher.a */
/* JADX INFO: loaded from: classes6.dex */
public class C2646a extends AdSessionStatePublisher {
    public C2646a(String str, WebView webView) {
        super(str);
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        m659a(webView);
    }
}

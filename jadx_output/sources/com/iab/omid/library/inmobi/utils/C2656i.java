package com.iab.omid.library.inmobi.utils;

import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import java.util.Set;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.utils.i */
/* JADX INFO: loaded from: classes6.dex */
public class C2656i {
    /* JADX INFO: renamed from: a */
    public void m740a(WebView webView, String str) {
        WebViewCompat.removeWebMessageListener(webView, str);
    }

    /* JADX INFO: renamed from: a */
    public void m741a(WebView webView, String str, Set<String> set, WebViewCompat.WebMessageListener webMessageListener) {
        WebViewCompat.addWebMessageListener(webView, str, set, webMessageListener);
    }
}

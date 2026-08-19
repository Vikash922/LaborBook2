package com.razorpay;

import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes5.dex */
public class RazorpayWebChromeClient extends WebChromeClient {
    private BaseRazorpay razorpay;

    public RazorpayWebChromeClient(BaseRazorpay baseRazorpay) {
        this.razorpay = baseRazorpay;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        this.razorpay.onProgressChanged(webView, i);
    }
}

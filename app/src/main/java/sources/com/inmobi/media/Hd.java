package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Hd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0397l9 f133a;
    public final C0420n2 b;
    public Gd c;

    public Hd(C0397l9 mNetworkRequest, C0420n2 mWebViewClient) {
        Intrinsics.checkNotNullParameter(mNetworkRequest, "mNetworkRequest");
        Intrinsics.checkNotNullParameter(mWebViewClient, "mWebViewClient");
        this.f133a = mNetworkRequest;
        this.b = mWebViewClient;
    }

    public final void a() {
        try {
            Context contextD = Kb.d();
            if (contextD != null) {
                Gd gd = new Gd(contextD);
                gd.setWebViewClient(this.b);
                gd.getSettings().setJavaScriptEnabled(true);
                gd.getSettings().setCacheMode(2);
                this.c = gd;
            }
            Gd gd2 = this.c;
            if (gd2 != null) {
                String strD = this.f133a.d();
                C0397l9 c0397l9 = this.f133a;
                boolean z = C0457p9.f457a;
                C0457p9.a(c0397l9.i);
                gd2.loadUrl(strD, c0397l9.i);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Hd", "TAG");
        }
    }
}

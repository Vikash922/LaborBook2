package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Hd */
/* JADX INFO: loaded from: classes6.dex */
public final class C2806Hd {

    /* JADX INFO: renamed from: a */
    public final C3241l9 f1086a;

    /* JADX INFO: renamed from: b */
    public final C3264n2 f1087b;

    /* JADX INFO: renamed from: c */
    public C2791Gd f1088c;

    public C2806Hd(C3241l9 mNetworkRequest, C3264n2 mWebViewClient) {
        Intrinsics.checkNotNullParameter(mNetworkRequest, "mNetworkRequest");
        Intrinsics.checkNotNullParameter(mWebViewClient, "mWebViewClient");
        this.f1086a = mNetworkRequest;
        this.f1087b = mWebViewClient;
    }

    /* JADX INFO: renamed from: a */
    public final void m1154a() {
        try {
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d != null) {
                C2791Gd c2791Gd = new C2791Gd(contextM1254d);
                c2791Gd.setWebViewClient(this.f1087b);
                c2791Gd.getSettings().setJavaScriptEnabled(true);
                c2791Gd.getSettings().setCacheMode(2);
                this.f1088c = c2791Gd;
            }
            C2791Gd c2791Gd2 = this.f1088c;
            if (c2791Gd2 != null) {
                String strM2289d = this.f1086a.m2289d();
                C3241l9 c3241l9 = this.f1086a;
                boolean z = C3301p9.f2439a;
                C3301p9.m2348a(c3241l9.f2282i);
                c2791Gd2.loadUrl(strM2289d, c3241l9.f2282i);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Hd", "TAG");
        }
    }
}

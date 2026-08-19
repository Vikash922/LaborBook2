package com.inmobi.media;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0358j1 {
    public static boolean a(Context context, String url, Aa redirectionValidator, String api, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("AppstoreLinkHandler", "In appStoreLinkHandled");
        }
        Intrinsics.checkNotNullParameter(url, "url");
        if (url.length() != 0) {
            Uri uri = Uri.parse(url);
            if (Intrinsics.areEqual("market", uri.getScheme()) || Intrinsics.areEqual("play.google.com", uri.getHost()) || Intrinsics.areEqual("market.android.com", uri.getHost())) {
                Uri uri2 = Uri.parse(url);
                if (context != null) {
                    try {
                        context.getPackageManager().getPackageInfo("com.android.vending", 0);
                        if (!redirectionValidator.d()) {
                            redirectionValidator.a("EX_" + api);
                            return false;
                        }
                        try {
                            Intent intent = new Intent("android.intent.action.VIEW", uri2);
                            intent.setPackage("com.android.vending");
                            intent.addFlags(268435456);
                            context.startActivity(intent);
                            if (interfaceC0298f5 != null) {
                                ((C0314g5) interfaceC0298f5).c("AppstoreLinkHandler", "Playstore link handled successfully");
                            }
                            return true;
                        } catch (Exception e) {
                            if (interfaceC0298f5 == null) {
                                return false;
                            }
                            ((C0314g5) interfaceC0298f5).c("AppstoreLinkHandler", Ed.a(e, new StringBuilder("Error message in processing appStoreLinkHandling: ")));
                            return false;
                        }
                    } catch (PackageManager.NameNotFoundException e2) {
                        e2.printStackTrace();
                    }
                }
                int iA = AbstractC0563x3.a(context, url, redirectionValidator, api, interfaceC0298f5);
                if (iA != 0 && iA != 1) {
                    return false;
                }
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).c("AppstoreLinkHandler", "Playstore link handled successfully");
                }
                return true;
            }
        }
        return false;
    }
}

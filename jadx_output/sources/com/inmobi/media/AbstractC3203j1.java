package com.inmobi.media;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.j1 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3203j1 {
    /* JADX INFO: renamed from: a */
    public static boolean m2254a(Context context, String url, InterfaceC2698Aa redirectionValidator, String api, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("AppstoreLinkHandler", "In appStoreLinkHandled");
        }
        Intrinsics.checkNotNullParameter(url, "url");
        if (url.length() != 0) {
            Uri uri = Uri.parse(url);
            if (Intrinsics.areEqual("market", uri.getScheme()) || Intrinsics.areEqual("play.google.com", uri.getHost()) || Intrinsics.areEqual("market.android.com", uri.getHost())) {
                Uri uri2 = Uri.parse(url);
                if (context != null) {
                    try {
                        context.getPackageManager().getPackageInfo("com.android.vending", 0);
                        if (!redirectionValidator.mo864d()) {
                            redirectionValidator.mo863a("EX_" + api);
                            return false;
                        }
                        try {
                            Intent intent = new Intent("android.intent.action.VIEW", uri2);
                            intent.setPackage("com.android.vending");
                            intent.addFlags(268435456);
                            context.startActivity(intent);
                            if (interfaceC3147f5 != null) {
                                ((C3162g5) interfaceC3147f5).m2152c("AppstoreLinkHandler", "Playstore link handled successfully");
                            }
                            return true;
                        } catch (Exception e) {
                            if (interfaceC3147f5 == null) {
                                return false;
                            }
                            ((C3162g5) interfaceC3147f5).m2152c("AppstoreLinkHandler", AbstractC2761Ed.m1111a(e, new StringBuilder("Error message in processing appStoreLinkHandling: ")));
                            return false;
                        }
                    } catch (PackageManager.NameNotFoundException e2) {
                        e2.printStackTrace();
                    }
                }
                int iM2593a = AbstractC3415x3.m2593a(context, url, redirectionValidator, api, interfaceC3147f5);
                if (iM2593a != 0 && iM2593a != 1) {
                    return false;
                }
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2152c("AppstoreLinkHandler", "Playstore link handled successfully");
                }
                return true;
            }
        }
        return false;
    }
}

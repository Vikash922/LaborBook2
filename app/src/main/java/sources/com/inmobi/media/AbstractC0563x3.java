package com.inmobi.media;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.pm.ResolveInfo;
import java.net.URISyntaxException;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0563x3 {
    public static int a(Context context, String url, Aa redirectionValidator, String api, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("DeeplinkHandler", "In appLinkOrDeepLinkHandled");
        }
        if (url.length() == 0) {
            if (interfaceC0298f5 == null) {
                return 2;
            }
            ((C0314g5) interfaceC0298f5).c("DeeplinkHandler", "AppLink url is Empty or null");
            return 2;
        }
        try {
            ArrayList arrayListB = AbstractC0548w2.b(context, url);
            if (!arrayListB.isEmpty()) {
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).c("DeeplinkHandler", "Resolve Info " + ((ResolveInfo) arrayListB.get(0)).activityInfo.name);
                }
                return a(context, url, (ResolveInfo) arrayListB.get(0), redirectionValidator, api, interfaceC0298f5);
            }
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).c("DeeplinkHandler", " Resolve Info Empty");
            }
            try {
                return AbstractC0548w2.a(context, url, redirectionValidator, api);
            } catch (ActivityNotFoundException unused) {
                return a(context, url, null, redirectionValidator, api, interfaceC0298f5);
            } catch (NullPointerException unused2) {
                return a(context, url, null, redirectionValidator, api, interfaceC0298f5);
            } catch (SecurityException unused3) {
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).b("DeeplinkHandler", "SecurityException");
                }
                return 12;
            } catch (URISyntaxException unused4) {
                if (interfaceC0298f5 == null) {
                    return 5;
                }
                ((C0314g5) interfaceC0298f5).b("DeeplinkHandler", "uriSyntaxException");
                return 5;
            } catch (Exception e) {
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).b("DeeplinkHandler", "Exception: " + e);
                }
                return 9;
            }
        } catch (URISyntaxException unused5) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("DeeplinkHandler", "URISyntaxException for url: ".concat(url));
            }
            return 5;
        }
    }

    public static int a(Context context, String str, ResolveInfo resolveInfo, Aa aa, String str2, InterfaceC0298f5 interfaceC0298f5) {
        try {
            return AbstractC0548w2.a(context, str, resolveInfo, aa, str2);
        } catch (ActivityNotFoundException unused) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("DeeplinkHandler", AbstractC0309g0.a("ActivityNotFoundException for url: ", str));
            }
            return 6;
        } catch (NullPointerException unused2) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("DeeplinkHandler", AbstractC0309g0.a("NullPointerException for url: ", str));
            }
            return 13;
        } catch (SecurityException unused3) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("DeeplinkHandler", AbstractC0309g0.a("SecurityException for url: ", str));
            }
            return 12;
        } catch (URISyntaxException unused4) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("DeeplinkHandler", AbstractC0309g0.a("URISyntaxException for url: ", str));
            }
            return 5;
        } catch (Exception e) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("DeeplinkHandler", "Exception: " + e);
            }
            return 9;
        }
    }
}

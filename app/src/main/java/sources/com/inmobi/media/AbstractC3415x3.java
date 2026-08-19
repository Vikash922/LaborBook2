package com.inmobi.media;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.pm.ResolveInfo;
import java.net.URISyntaxException;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x3 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3415x3 {
    /* JADX INFO: renamed from: a */
    public static int m2593a(Context context, String url, InterfaceC2698Aa redirectionValidator, String api, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("DeeplinkHandler", "In appLinkOrDeepLinkHandled");
        }
        if (url.length() == 0) {
            if (interfaceC3147f5 == null) {
                return 2;
            }
            ((C3162g5) interfaceC3147f5).m2152c("DeeplinkHandler", "AppLink url is Empty or null");
            return 2;
        }
        try {
            ArrayList arrayListM2544b = AbstractC3399w2.m2544b(context, url);
            if (!arrayListM2544b.isEmpty()) {
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2152c("DeeplinkHandler", "Resolve Info " + ((ResolveInfo) arrayListM2544b.get(0)).activityInfo.name);
                }
                return m2592a(context, url, (ResolveInfo) arrayListM2544b.get(0), redirectionValidator, api, interfaceC3147f5);
            }
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2152c("DeeplinkHandler", " Resolve Info Empty");
            }
            try {
                return AbstractC3399w2.m2538a(context, url, redirectionValidator, api);
            } catch (ActivityNotFoundException unused) {
                return m2592a(context, url, null, redirectionValidator, api, interfaceC3147f5);
            } catch (NullPointerException unused2) {
                return m2592a(context, url, null, redirectionValidator, api, interfaceC3147f5);
            } catch (SecurityException unused3) {
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2151b("DeeplinkHandler", "SecurityException");
                }
                return 12;
            } catch (URISyntaxException unused4) {
                if (interfaceC3147f5 == null) {
                    return 5;
                }
                ((C3162g5) interfaceC3147f5).m2151b("DeeplinkHandler", "uriSyntaxException");
                return 5;
            } catch (Exception e) {
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2151b("DeeplinkHandler", "Exception: " + e);
                }
                return 9;
            }
        } catch (URISyntaxException unused5) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("DeeplinkHandler", "URISyntaxException for url: ".concat(url));
            }
            return 5;
        }
    }

    /* JADX INFO: renamed from: a */
    public static int m2592a(Context context, String str, ResolveInfo resolveInfo, InterfaceC2698Aa interfaceC2698Aa, String str2, InterfaceC3147f5 interfaceC3147f5) {
        try {
            return AbstractC3399w2.m2537a(context, str, resolveInfo, interfaceC2698Aa, str2);
        } catch (ActivityNotFoundException unused) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("DeeplinkHandler", AbstractC3157g0.m2142a("ActivityNotFoundException for url: ", str));
            }
            return 6;
        } catch (NullPointerException unused2) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("DeeplinkHandler", AbstractC3157g0.m2142a("NullPointerException for url: ", str));
            }
            return 13;
        } catch (SecurityException unused3) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("DeeplinkHandler", AbstractC3157g0.m2142a("SecurityException for url: ", str));
            }
            return 12;
        } catch (URISyntaxException unused4) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("DeeplinkHandler", AbstractC3157g0.m2142a("URISyntaxException for url: ", str));
            }
            return 5;
        } catch (Exception e) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("DeeplinkHandler", "Exception: " + e);
            }
            return 9;
        }
    }
}

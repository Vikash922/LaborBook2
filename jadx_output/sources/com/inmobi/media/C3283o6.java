package com.inmobi.media;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.SparseArray;
import android.webkit.URLUtil;
import androidx.webkit.ProxyConfig;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.itextpdf.forms.xfdf.XfdfConstants;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.o6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3283o6 {

    /* JADX INFO: renamed from: i */
    public static final /* synthetic */ int f2404i = 0;

    /* JADX INFO: renamed from: a */
    public final Context f2405a;

    /* JADX INFO: renamed from: b */
    public final C3298p6 f2406b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC3099c2 f2407c;

    /* JADX INFO: renamed from: d */
    public final C2951Ra f2408d;

    /* JADX INFO: renamed from: e */
    public final AbstractC2998V1 f2409e;

    /* JADX INFO: renamed from: f */
    public final C3373u6 f2410f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC3147f5 f2411g;

    /* JADX INFO: renamed from: h */
    public int f2412h;

    /* JADX WARN: Multi-variable type inference failed */
    public C3283o6(Context context, C3298p6 landingPageState, InterfaceC3099c2 interfaceC3099c2, C2951Ra c2951Ra, InterfaceC2698Aa redirectionValidator, C3373u6 c3373u6, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(landingPageState, "landingPageState");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        this.f2405a = context;
        this.f2406b = landingPageState;
        this.f2407c = interfaceC3099c2;
        this.f2408d = c2951Ra;
        this.f2409e = (AbstractC2998V1) redirectionValidator;
        this.f2410f = c3373u6;
        this.f2411g = interfaceC3147f5;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01e0  */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r6v5, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r7v4, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.media.C3253m6 m2324a(com.inmobi.media.C3283o6 r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, com.inmobi.media.C3358t6 r13, boolean r14, int r15) {
        /*
            Method dump skipped, instruction units count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3283o6.m2324a(com.inmobi.media.o6, java.lang.String, java.lang.String, java.lang.String, com.inmobi.media.t6, boolean, int):com.inmobi.media.m6");
    }

    /* JADX WARN: Type inference failed for: r7v0, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX INFO: renamed from: b */
    public final C3253m6 m2330b(String str, String str2, String str3, C3358t6 c3358t6) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2411g;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("o6", "In processInMobiNativeBrowserScheme");
        }
        String queryParameter = Uri.parse(str3).getQueryParameter("url");
        if (queryParameter == null || queryParameter.length() == 0) {
            C2951Ra c2951Ra = this.f2408d;
            if (c2951Ra != null) {
                Intrinsics.checkNotNullParameter("Invalid URL", "message");
                c2951Ra.f1508a.m1954a(str2, "Invalid URL", str);
            }
            InterfaceC3147f5 interfaceC3147f52 = this.f2411g;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C3162g5) interfaceC3147f52).m2152c("o6", "InMobiNativeBrowserScheme url is Empty or null");
            }
            EnumC3178h6 enumC3178h6 = EnumC3178h6.f2136e;
            C3238l6.m2282a(enumC3178h6, c3358t6, (Integer) 8001, (Function2) AbstractC3193i6.m2245a(enumC3178h6, "funnelState", this));
            return new C3253m6(3, 8001);
        }
        int iM2593a = AbstractC3415x3.m2593a(this.f2405a, queryParameter, this.f2409e, str, this.f2411g);
        if (c3358t6 != null) {
            c3358t6.f2554g = "EX_NATIVE";
        }
        if (iM2593a == 0 || iM2593a == 1) {
            EnumC3178h6 enumC3178h62 = EnumC3178h6.f2137f;
            C3238l6.m2282a(enumC3178h62, c3358t6, (Integer) null, AbstractC3193i6.m2245a(enumC3178h62, "funnelState", this));
            m2333c(str, str2, str3);
            InterfaceC3147f5 interfaceC3147f53 = this.f2411g;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C3162g5) interfaceC3147f53).m2152c("o6", "InmobiNativeBrowser scheme url handled successfully");
            }
            return new C3253m6(1);
        }
        C2951Ra c2951Ra2 = this.f2408d;
        if (c2951Ra2 != null) {
            Intrinsics.checkNotNullParameter("Invalid URL", "message");
            c2951Ra2.f1508a.m1954a(str2, "Invalid URL", str);
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f2411g;
        if (interfaceC3147f54 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C3162g5) interfaceC3147f54).m2152c("o6", "InmobiNativeBrowser scheme url handling failed");
        }
        EnumC3178h6 enumC3178h63 = EnumC3178h6.f2138g;
        C3238l6.m2282a(enumC3178h63, c3358t6, Integer.valueOf(iM2593a), AbstractC3193i6.m2245a(enumC3178h63, "funnelState", this));
        return new C3253m6(2, Integer.valueOf(iM2593a));
    }

    /* JADX INFO: renamed from: c */
    public final int m2332c(String str, String str2, String str3, C3358t6 c3358t6) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2411g;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C3162g5) interfaceC3147f5).m2147a("o6", "In processInternalNativeRequest");
        }
        try {
            return m2334d(str, str2, str3, c3358t6);
        } catch (Exception e) {
            C2951Ra c2951Ra = this.f2408d;
            if (c2951Ra != null) {
                Intrinsics.checkNotNullParameter("Unexpected error", "message");
                c2951Ra.f1508a.m1954a(str2, "Unexpected error", XfdfConstants.OPEN);
            }
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Failed to open URL SDK encountered unexpected error");
            InterfaceC3147f5 interfaceC3147f52 = this.f2411g;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("o6", AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a("o6", "TAG", "SDK encountered unexpected error in handling open() request from creative ")));
            }
            return 9;
        }
    }

    /* JADX WARN: Type inference failed for: r3v10, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX INFO: renamed from: d */
    public final int m2334d(String api, String str, String str2, C3358t6 c3358t6) {
        Intrinsics.checkNotNullParameter(api, "api");
        InterfaceC3147f5 interfaceC3147f5 = this.f2411g;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("o6", AbstractC3223k6.m2276a("o6", "TAG", "processOpenCCTRequest - url - ", str2));
        }
        if (c3358t6 != null) {
            c3358t6.f2554g = "IN_NATIVE";
        }
        if (str2 == null || (StringsKt.startsWith$default(str2, ProxyConfig.MATCH_HTTP, false, 2, (Object) null) && !URLUtil.isValidUrl(str2))) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2411g;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C3162g5) interfaceC3147f52).m2152c("o6", api + " called with invalid url (" + str2 + ')');
            }
            C2951Ra c2951Ra = this.f2408d;
            if (c2951Ra != null) {
                Intrinsics.checkNotNullParameter("Invalid URL", "message");
                c2951Ra.f1508a.m1954a(str, "Invalid URL", api);
            }
            EnumC3178h6 enumC3178h6 = EnumC3178h6.f2136e;
            C3238l6.m2282a(enumC3178h6, c3358t6, (Integer) 3, (Function2) AbstractC3193i6.m2245a(enumC3178h6, "funnelState", this));
            return 3;
        }
        String strM2397a = AbstractC3340s3.m2397a(this.f2405a);
        try {
            try {
                boolean z = this.f2406b.f2434c;
                if (strM2397a != null && z) {
                    new C3174h2(str2, null, this.f2405a, this.f2407c, this.f2409e, c3358t6, api).m2211a();
                    InterfaceC3147f5 interfaceC3147f53 = this.f2411g;
                    if (interfaceC3147f53 != null) {
                        Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                        ((C3162g5) interfaceC3147f53).m2152c("o6", "Default and Internal Native handled successfully");
                    }
                    return 0;
                }
                InterfaceC3147f5 interfaceC3147f54 = this.f2411g;
                if (interfaceC3147f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                    ((C3162g5) interfaceC3147f54).m2147a("o6", "ChromeCustomTab fallback to Embedded");
                }
                return m2326a(str2, api, c3358t6);
            } catch (Exception unused) {
                int iM2538a = AbstractC3399w2.m2538a(this.f2405a, str2, (InterfaceC2698Aa) this.f2409e, api);
                if (iM2538a != 0 && iM2538a != 1) {
                    return iM2538a;
                }
                C2951Ra c2951Ra2 = this.f2408d;
                if (c2951Ra2 != null) {
                    GestureDetectorOnGestureListenerC3049Ya.m1945a(c2951Ra2.f1508a, api, str, str2);
                }
                C2951Ra c2951Ra3 = this.f2408d;
                if (c2951Ra3 != null) {
                    c2951Ra3.f1508a.getListener().mo1590a();
                }
                if (c3358t6 != null) {
                    c3358t6.f2554g = "EX_NATIVE";
                }
                EnumC3178h6 funnelState = EnumC3178h6.f2137f;
                Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                C3238l6.m2282a(funnelState, c3358t6, (Integer) null, new C3268n6(this));
                return iM2538a;
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f55 = this.f2411g;
            if (interfaceC3147f55 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C3162g5) interfaceC3147f55).m2148a("o6", "Exception occurred while opening External ", e);
            }
            return 9;
        }
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX INFO: renamed from: e */
    public final void m2335e(String str, String str2, String str3, C3358t6 c3358t6) {
        try {
            AbstractC3399w2.m2538a(this.f2405a, str2, (InterfaceC2698Aa) this.f2409e, "openExternal");
            EnumC3178h6 enumC3178h6 = EnumC3178h6.f2137f;
            C3238l6.m2282a(enumC3178h6, c3358t6, (Integer) null, AbstractC3193i6.m2245a(enumC3178h6, "funnelState", this));
            m2333c("openExternal", str, str2);
        } catch (ActivityNotFoundException e) {
            m2325a(this, str, str2, str3, c3358t6, e);
        } catch (NullPointerException e2) {
            m2325a(this, str, str2, str3, c3358t6, e2);
        } catch (URISyntaxException e3) {
            m2325a(this, str, str2, str3, c3358t6, e3);
        } catch (Exception e4) {
            EnumC3178h6 enumC3178h62 = EnumC3178h6.f2138g;
            C3238l6.m2282a(enumC3178h62, c3358t6, (Integer) 9, (Function2) AbstractC3193i6.m2245a(enumC3178h62, "funnelState", this));
            C2951Ra c2951Ra = this.f2408d;
            if (c2951Ra != null) {
                Intrinsics.checkNotNullParameter("Unexpected error", "message");
                c2951Ra.f1508a.m1954a(str, "Unexpected error", "openExternal");
            }
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            AbstractC2814I6.m1170a((byte) 1, "o6", "Could not open URL SDK encountered an unexpected error");
            InterfaceC3147f5 interfaceC3147f5 = this.f2411g;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("o6", AbstractC2761Ed.m1111a(e4, AbstractC3208j6.m2261a("o6", "TAG", "SDK encountered unexpected error in handling openExternal() request from creative ")));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
    
        if (m2329a(r21, r22, r23, r24).f2323a == 1) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012a A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012c  */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m2328a(java.lang.String r21, java.lang.String r22, java.lang.String r23, com.inmobi.media.C3358t6 r24, com.inmobi.media.C3159g2 r25) {
        /*
            Method dump skipped, instruction units count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3283o6.m2328a(java.lang.String, java.lang.String, java.lang.String, com.inmobi.media.t6, com.inmobi.media.g2):int");
    }

    /* JADX INFO: renamed from: c */
    public final void m2333c(String str, String str2, String str3) {
        C2951Ra c2951Ra = this.f2408d;
        if (c2951Ra != null) {
            c2951Ra.f1508a.getListener().mo1590a();
        }
        C2951Ra c2951Ra2 = this.f2408d;
        if (c2951Ra2 != null) {
            GestureDetectorOnGestureListenerC3049Ya.m1945a(c2951Ra2.f1508a, str, str2, str3);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m2331b(String str, String str2, String str3) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2411g;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("o6", str + " called with invalid url (" + str3 + ')');
        }
        C2951Ra c2951Ra = this.f2408d;
        if (c2951Ra != null) {
            Intrinsics.checkNotNullParameter("Invalid URL", "message");
            c2951Ra.f1508a.m1954a(str2, "Invalid URL", str);
        }
    }

    /* JADX INFO: renamed from: a */
    public final C3253m6 m2329a(String str, String str2, String str3, C3358t6 c3358t6) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2411g;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C3162g5) interfaceC3147f5).m2147a("o6", "In processInMobiDeepLinkScheme");
        }
        Uri uri = Uri.parse(str3);
        int iM2327a = m2327a(str, uri.getQueryParameter("primaryUrl"), uri.getQueryParameter("primaryTrackingUrl"));
        if (iM2327a != 0 && iM2327a != 1) {
            int iM2327a2 = m2327a(str, uri.getQueryParameter("fallbackUrl"), uri.getQueryParameter("fallbackTrackingUrl"));
            if (c3358t6 != null) {
                c3358t6.f2554g = "EX_NATIVE";
            }
            if (iM2327a2 != 0 && iM2327a2 != 1) {
                C2951Ra c2951Ra = this.f2408d;
                if (c2951Ra != null) {
                    Intrinsics.checkNotNullParameter("Invalid URL", "message");
                    c2951Ra.f1508a.m1954a(str2, "Invalid URL", str);
                }
                InterfaceC3147f5 interfaceC3147f52 = this.f2411g;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                    ((C3162g5) interfaceC3147f52).m2152c("o6", "InMobiDeepLinkScheme Fallback Url handling failed");
                }
                EnumC3178h6 enumC3178h6 = EnumC3178h6.f2138g;
                C3238l6.m2282a(enumC3178h6, c3358t6, Integer.valueOf(iM2327a2), AbstractC3193i6.m2245a(enumC3178h6, "funnelState", this));
                return new C3253m6(2, Integer.valueOf(iM2327a2));
            }
            InterfaceC3147f5 interfaceC3147f53 = this.f2411g;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C3162g5) interfaceC3147f53).m2152c("o6", "InMobiDeepLinkScheme Fallback Url handled successfully");
            }
            EnumC3178h6 enumC3178h62 = EnumC3178h6.f2137f;
            C3238l6.m2282a(enumC3178h62, c3358t6, (Integer) null, AbstractC3193i6.m2245a(enumC3178h62, "funnelState", this));
            m2333c(str, str2, str3);
            return new C3253m6(1);
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f2411g;
        if (interfaceC3147f54 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C3162g5) interfaceC3147f54).m2152c("o6", "InMobiDeepLinkScheme Primary Url handled successfully");
        }
        if (c3358t6 != null) {
            c3358t6.f2554g = "EX_NATIVE";
        }
        EnumC3178h6 enumC3178h63 = EnumC3178h6.f2137f;
        C3238l6.m2282a(enumC3178h63, c3358t6, (Integer) null, AbstractC3193i6.m2245a(enumC3178h63, "funnelState", this));
        m2333c(str, str2, str3);
        return new C3253m6(1);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX INFO: renamed from: a */
    public final int m2327a(String str, String str2, String str3) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2411g;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("o6", "inMobiDeepLinkSchemeUrlHandled - url - " + str2 + " trackingUrl " + str3);
        }
        if (str2 != null && str2.length() != 0) {
            int iM2593a = AbstractC3415x3.m2593a(this.f2405a, str2, this.f2409e, str, this.f2411g);
            if (iM2593a != 0 && iM2593a != 1) {
                InterfaceC3147f5 interfaceC3147f52 = this.f2411g;
                if (interfaceC3147f52 == null) {
                    return iM2593a;
                }
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C3162g5) interfaceC3147f52).m2152c("o6", "InMobiDeepLinkScheme scheme applink/http url handling failed");
                return iM2593a;
            }
            if (AbstractC3429y2.m2607a(str3)) {
                C3369u2 c3369u2 = C3369u2.f2627a;
                Intrinsics.checkNotNull(str3);
                c3369u2.m2484a(str3, true, this.f2411g);
            } else {
                InterfaceC3147f5 interfaceC3147f53 = this.f2411g;
                if (interfaceC3147f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                    ((C3162g5) interfaceC3147f53).m2151b("o6", "InMobiDeepLinkScheme scheme tracking url handling is invalid ");
                }
            }
            InterfaceC3147f5 interfaceC3147f54 = this.f2411g;
            if (interfaceC3147f54 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C3162g5) interfaceC3147f54).m2152c("o6", "InMobiDeepLinkScheme scheme applink/http url handled successfully");
            }
            return 0;
        }
        InterfaceC3147f5 interfaceC3147f55 = this.f2411g;
        if (interfaceC3147f55 == null) {
            return 2;
        }
        Intrinsics.checkNotNullExpressionValue("o6", "TAG");
        ((C3162g5) interfaceC3147f55).m2151b("o6", "InMobiDeepLinkScheme url is Empty or null");
        return 2;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX INFO: renamed from: a */
    public final int m2326a(String url, String api, C3358t6 c3358t6) {
        C3358t6 c3358t62;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(api, "api");
        if (c3358t6 != null) {
            c3358t6.f2554g = "IN_CUSTOM";
        }
        if (url.length() == 0) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2411g;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C3162g5) interfaceC3147f5).m2151b("o6", "processOpenEmbeddedRequest failed due to empty URL");
            }
            EnumC3178h6 enumC3178h6 = EnumC3178h6.f2136e;
            C3238l6.m2282a(enumC3178h6, c3358t6, (Integer) null, AbstractC3193i6.m2245a(enumC3178h6, "funnelState", this));
            return 2;
        }
        if (AbstractC3203j1.m2254a(this.f2405a, url, this.f2409e, api, this.f2411g)) {
            return 0;
        }
        Uri uri = Uri.parse(url);
        Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
        if (AbstractC3399w2.m2541a(uri)) {
            Intent intent = new Intent(this.f2405a, (Class<?>) InMobiAdActivity.class);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 100);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL", url);
            intent.putExtra("viewTouchTimestamp", this.f2409e.getViewTouchTimestamp());
            if (c3358t6 != null) {
                C3373u6 landingPageTelemetryMetaData = c3358t6.f2548a;
                String urlType = c3358t6.f2549b;
                int i = c3358t6.f2550c;
                long j = c3358t6.f2551d;
                Intrinsics.checkNotNullParameter(landingPageTelemetryMetaData, "landingPageTelemetryMetaData");
                Intrinsics.checkNotNullParameter(urlType, "urlType");
                c3358t62 = new C3358t6(landingPageTelemetryMetaData, urlType, i, j);
                EnumC3178h6 enumC3178h62 = EnumC3178h6.f2135d;
                c3358t62.f2553f = 2;
                Unit unit = Unit.INSTANCE;
            } else {
                c3358t62 = null;
            }
            intent.putExtra("lpTelemetryControlInfo", c3358t62);
            InterfaceC3147f5 obj = this.f2411g;
            if (obj != null) {
                String string = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                HashMap map = AbstractC2959S4.f1532a;
                String key = string.toString();
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(obj, "obj");
                AbstractC2959S4.f1532a.put(key, new WeakReference(obj));
                intent.putExtra("loggerCacheKey", string.toString());
            }
            C2951Ra c2951Ra = this.f2408d;
            if (c2951Ra != null) {
                Intrinsics.checkNotNullParameter(intent, "intent");
                intent.putExtra("creativeId", c2951Ra.f1508a.getCreativeId());
                intent.putExtra("impressionId", c2951Ra.f1508a.getImpressionId());
                intent.putExtra("placementId", c2951Ra.f1508a.getPlacementId());
                SparseArray sparseArray = InMobiAdActivity.f787k;
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = c2951Ra.f1508a;
                InMobiAdActivity.f788l = gestureDetectorOnGestureListenerC3049Ya;
                C2849Kb.f1171a.m1272a(gestureDetectorOnGestureListenerC3049Ya.getContainerContext(), intent);
            }
            EnumC3178h6 enumC3178h63 = EnumC3178h6.f2137f;
            C3238l6.m2282a(enumC3178h63, c3358t6, (Integer) null, AbstractC3193i6.m2245a(enumC3178h63, "funnelState", this));
            C2951Ra c2951Ra2 = this.f2408d;
            if (c2951Ra2 != null) {
                GestureDetectorOnGestureListenerC3049Ya.m1945a(c2951Ra2.f1508a, null, null, url);
            }
            return 1;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f2411g;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C3162g5) interfaceC3147f52).m2151b("o6", "Embedded request unable to handle ".concat(url));
        }
        return 10;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2325a(C3283o6 c3283o6, String str, String str2, String str3, C3358t6 c3358t6, Exception exc) {
        InterfaceC3147f5 interfaceC3147f5 = c3283o6.f2411g;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2151b("o6", AbstractC2761Ed.m1111a(exc, AbstractC3208j6.m2261a("o6", "TAG", "Error message in processing openExternal: ")));
        }
        C2951Ra c2951Ra = c3283o6.f2408d;
        if (c2951Ra != null) {
            StringBuilder sb = new StringBuilder("Cannot resolve URI (");
            try {
                String strEncode = URLEncoder.encode(str2, "UTF-8");
                Intrinsics.checkNotNull(strEncode);
                str2 = strEncode;
            } catch (UnsupportedEncodingException unused) {
            }
            String message = sb.append(str2).append(')').toString();
            Intrinsics.checkNotNullParameter(message, "message");
            c2951Ra.f1508a.m1954a(str, message, "openExternal");
        }
        if (str3 != null) {
            c3283o6.m2335e(str, str3, null, c3358t6);
        }
    }
}

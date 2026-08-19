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

/* JADX INFO: renamed from: com.inmobi.media.o6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0439o6 {
    public static final /* synthetic */ int i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f444a;
    public final C0454p6 b;
    public final InterfaceC0248c2 c;
    public final Ra d;
    public final V1 e;
    public final C0524u6 f;
    public final InterfaceC0298f5 g;
    public int h;

    /* JADX WARN: Multi-variable type inference failed */
    public C0439o6(Context context, C0454p6 landingPageState, InterfaceC0248c2 interfaceC0248c2, Ra ra, Aa redirectionValidator, C0524u6 c0524u6, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(landingPageState, "landingPageState");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        this.f444a = context;
        this.b = landingPageState;
        this.c = interfaceC0248c2;
        this.d = ra;
        this.e = (V1) redirectionValidator;
        this.f = c0524u6;
        this.g = interfaceC0298f5;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01e0  */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r6v5, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r7v4, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.media.C0409m6 a(com.inmobi.media.C0439o6 r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, com.inmobi.media.C0510t6 r13, boolean r14, int r15) {
        /*
            Method dump skipped, instruction units count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0439o6.a(com.inmobi.media.o6, java.lang.String, java.lang.String, java.lang.String, com.inmobi.media.t6, boolean, int):com.inmobi.media.m6");
    }

    /* JADX WARN: Type inference failed for: r7v0, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    public final C0409m6 b(String str, String str2, String str3, C0510t6 c0510t6) {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C0314g5) interfaceC0298f5).c("o6", "In processInMobiNativeBrowserScheme");
        }
        String queryParameter = Uri.parse(str3).getQueryParameter("url");
        if (queryParameter == null || queryParameter.length() == 0) {
            Ra ra = this.d;
            if (ra != null) {
                Intrinsics.checkNotNullParameter("Invalid URL", "message");
                ra.f236a.a(str2, "Invalid URL", str);
            }
            InterfaceC0298f5 interfaceC0298f52 = this.g;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C0314g5) interfaceC0298f52).c("o6", "InMobiNativeBrowserScheme url is Empty or null");
            }
            EnumC0332h6 enumC0332h6 = EnumC0332h6.e;
            C0393l6.a(enumC0332h6, c0510t6, (Integer) 8001, (Function2) AbstractC0347i6.a(enumC0332h6, "funnelState", this));
            return new C0409m6(3, 8001);
        }
        int iA = AbstractC0563x3.a(this.f444a, queryParameter, this.e, str, this.g);
        if (c0510t6 != null) {
            c0510t6.g = "EX_NATIVE";
        }
        if (iA == 0 || iA == 1) {
            EnumC0332h6 enumC0332h62 = EnumC0332h6.f;
            C0393l6.a(enumC0332h62, c0510t6, (Integer) null, AbstractC0347i6.a(enumC0332h62, "funnelState", this));
            c(str, str2, str3);
            InterfaceC0298f5 interfaceC0298f53 = this.g;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C0314g5) interfaceC0298f53).c("o6", "InmobiNativeBrowser scheme url handled successfully");
            }
            return new C0409m6(1);
        }
        Ra ra2 = this.d;
        if (ra2 != null) {
            Intrinsics.checkNotNullParameter("Invalid URL", "message");
            ra2.f236a.a(str2, "Invalid URL", str);
        }
        InterfaceC0298f5 interfaceC0298f54 = this.g;
        if (interfaceC0298f54 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C0314g5) interfaceC0298f54).c("o6", "InmobiNativeBrowser scheme url handling failed");
        }
        EnumC0332h6 enumC0332h63 = EnumC0332h6.g;
        C0393l6.a(enumC0332h63, c0510t6, Integer.valueOf(iA), AbstractC0347i6.a(enumC0332h63, "funnelState", this));
        return new C0409m6(2, Integer.valueOf(iA));
    }

    public final int c(String str, String str2, String str3, C0510t6 c0510t6) {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C0314g5) interfaceC0298f5).a("o6", "In processInternalNativeRequest");
        }
        try {
            return d(str, str2, str3, c0510t6);
        } catch (Exception e) {
            Ra ra = this.d;
            if (ra != null) {
                Intrinsics.checkNotNullParameter("Unexpected error", "message");
                ra.f236a.a(str2, "Unexpected error", XfdfConstants.OPEN);
            }
            I6.a((byte) 1, "InMobi", "Failed to open URL SDK encountered unexpected error");
            InterfaceC0298f5 interfaceC0298f52 = this.g;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("o6", Ed.a(e, AbstractC0363j6.a("o6", "TAG", "SDK encountered unexpected error in handling open() request from creative ")));
            }
            return 9;
        }
    }

    /* JADX WARN: Type inference failed for: r3v10, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    public final int d(String api, String str, String str2, C0510t6 c0510t6) {
        Intrinsics.checkNotNullParameter(api, "api");
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("o6", AbstractC0378k6.a("o6", "TAG", "processOpenCCTRequest - url - ", str2));
        }
        if (c0510t6 != null) {
            c0510t6.g = "IN_NATIVE";
        }
        if (str2 == null || (StringsKt.startsWith$default(str2, ProxyConfig.MATCH_HTTP, false, 2, (Object) null) && !URLUtil.isValidUrl(str2))) {
            InterfaceC0298f5 interfaceC0298f52 = this.g;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C0314g5) interfaceC0298f52).c("o6", api + " called with invalid url (" + str2 + ')');
            }
            Ra ra = this.d;
            if (ra != null) {
                Intrinsics.checkNotNullParameter("Invalid URL", "message");
                ra.f236a.a(str, "Invalid URL", api);
            }
            EnumC0332h6 enumC0332h6 = EnumC0332h6.e;
            C0393l6.a(enumC0332h6, c0510t6, (Integer) 3, (Function2) AbstractC0347i6.a(enumC0332h6, "funnelState", this));
            return 3;
        }
        String strA = AbstractC0493s3.a(this.f444a);
        try {
            try {
                boolean z = this.b.c;
                if (strA != null && z) {
                    new C0328h2(str2, null, this.f444a, this.c, this.e, c0510t6, api).a();
                    InterfaceC0298f5 interfaceC0298f53 = this.g;
                    if (interfaceC0298f53 != null) {
                        Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                        ((C0314g5) interfaceC0298f53).c("o6", "Default and Internal Native handled successfully");
                    }
                    return 0;
                }
                InterfaceC0298f5 interfaceC0298f54 = this.g;
                if (interfaceC0298f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                    ((C0314g5) interfaceC0298f54).a("o6", "ChromeCustomTab fallback to Embedded");
                }
                return a(str2, api, c0510t6);
            } catch (Exception unused) {
                int iA = AbstractC0548w2.a(this.f444a, str2, (Aa) this.e, api);
                if (iA != 0 && iA != 1) {
                    return iA;
                }
                Ra ra2 = this.d;
                if (ra2 != null) {
                    Ya.a(ra2.f236a, api, str, str2);
                }
                Ra ra3 = this.d;
                if (ra3 != null) {
                    ra3.f236a.getListener().a();
                }
                if (c0510t6 != null) {
                    c0510t6.g = "EX_NATIVE";
                }
                EnumC0332h6 funnelState = EnumC0332h6.f;
                Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                C0393l6.a(funnelState, c0510t6, (Integer) null, new C0424n6(this));
                return iA;
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f55 = this.g;
            if (interfaceC0298f55 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C0314g5) interfaceC0298f55).a("o6", "Exception occurred while opening External ", e);
            }
            return 9;
        }
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    public final void e(String str, String str2, String str3, C0510t6 c0510t6) {
        try {
            AbstractC0548w2.a(this.f444a, str2, (Aa) this.e, "openExternal");
            EnumC0332h6 enumC0332h6 = EnumC0332h6.f;
            C0393l6.a(enumC0332h6, c0510t6, (Integer) null, AbstractC0347i6.a(enumC0332h6, "funnelState", this));
            c("openExternal", str, str2);
        } catch (ActivityNotFoundException e) {
            a(this, str, str2, str3, c0510t6, e);
        } catch (NullPointerException e2) {
            a(this, str, str2, str3, c0510t6, e2);
        } catch (URISyntaxException e3) {
            a(this, str, str2, str3, c0510t6, e3);
        } catch (Exception e4) {
            EnumC0332h6 enumC0332h62 = EnumC0332h6.g;
            C0393l6.a(enumC0332h62, c0510t6, (Integer) 9, (Function2) AbstractC0347i6.a(enumC0332h62, "funnelState", this));
            Ra ra = this.d;
            if (ra != null) {
                Intrinsics.checkNotNullParameter("Unexpected error", "message");
                ra.f236a.a(str, "Unexpected error", "openExternal");
            }
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            I6.a((byte) 1, "o6", "Could not open URL SDK encountered an unexpected error");
            InterfaceC0298f5 interfaceC0298f5 = this.g;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("o6", Ed.a(e4, AbstractC0363j6.a("o6", "TAG", "SDK encountered unexpected error in handling openExternal() request from creative ")));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
    
        if (a(r21, r22, r23, r24).f423a == 1) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012a A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012c  */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(java.lang.String r21, java.lang.String r22, java.lang.String r23, com.inmobi.media.C0510t6 r24, com.inmobi.media.C0311g2 r25) {
        /*
            Method dump skipped, instruction units count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0439o6.a(java.lang.String, java.lang.String, java.lang.String, com.inmobi.media.t6, com.inmobi.media.g2):int");
    }

    public final void c(String str, String str2, String str3) {
        Ra ra = this.d;
        if (ra != null) {
            ra.f236a.getListener().a();
        }
        Ra ra2 = this.d;
        if (ra2 != null) {
            Ya.a(ra2.f236a, str, str2, str3);
        }
    }

    public final void b(String str, String str2, String str3) {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C0314g5) interfaceC0298f5).c("o6", str + " called with invalid url (" + str3 + ')');
        }
        Ra ra = this.d;
        if (ra != null) {
            Intrinsics.checkNotNullParameter("Invalid URL", "message");
            ra.f236a.a(str2, "Invalid URL", str);
        }
    }

    public final C0409m6 a(String str, String str2, String str3, C0510t6 c0510t6) {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C0314g5) interfaceC0298f5).a("o6", "In processInMobiDeepLinkScheme");
        }
        Uri uri = Uri.parse(str3);
        int iA = a(str, uri.getQueryParameter("primaryUrl"), uri.getQueryParameter("primaryTrackingUrl"));
        if (iA != 0 && iA != 1) {
            int iA2 = a(str, uri.getQueryParameter("fallbackUrl"), uri.getQueryParameter("fallbackTrackingUrl"));
            if (c0510t6 != null) {
                c0510t6.g = "EX_NATIVE";
            }
            if (iA2 != 0 && iA2 != 1) {
                Ra ra = this.d;
                if (ra != null) {
                    Intrinsics.checkNotNullParameter("Invalid URL", "message");
                    ra.f236a.a(str2, "Invalid URL", str);
                }
                InterfaceC0298f5 interfaceC0298f52 = this.g;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                    ((C0314g5) interfaceC0298f52).c("o6", "InMobiDeepLinkScheme Fallback Url handling failed");
                }
                EnumC0332h6 enumC0332h6 = EnumC0332h6.g;
                C0393l6.a(enumC0332h6, c0510t6, Integer.valueOf(iA2), AbstractC0347i6.a(enumC0332h6, "funnelState", this));
                return new C0409m6(2, Integer.valueOf(iA2));
            }
            InterfaceC0298f5 interfaceC0298f53 = this.g;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C0314g5) interfaceC0298f53).c("o6", "InMobiDeepLinkScheme Fallback Url handled successfully");
            }
            EnumC0332h6 enumC0332h62 = EnumC0332h6.f;
            C0393l6.a(enumC0332h62, c0510t6, (Integer) null, AbstractC0347i6.a(enumC0332h62, "funnelState", this));
            c(str, str2, str3);
            return new C0409m6(1);
        }
        InterfaceC0298f5 interfaceC0298f54 = this.g;
        if (interfaceC0298f54 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C0314g5) interfaceC0298f54).c("o6", "InMobiDeepLinkScheme Primary Url handled successfully");
        }
        if (c0510t6 != null) {
            c0510t6.g = "EX_NATIVE";
        }
        EnumC0332h6 enumC0332h63 = EnumC0332h6.f;
        C0393l6.a(enumC0332h63, c0510t6, (Integer) null, AbstractC0347i6.a(enumC0332h63, "funnelState", this));
        c(str, str2, str3);
        return new C0409m6(1);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    public final int a(String str, String str2, String str3) {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C0314g5) interfaceC0298f5).c("o6", "inMobiDeepLinkSchemeUrlHandled - url - " + str2 + " trackingUrl " + str3);
        }
        if (str2 != null && str2.length() != 0) {
            int iA = AbstractC0563x3.a(this.f444a, str2, this.e, str, this.g);
            if (iA != 0 && iA != 1) {
                InterfaceC0298f5 interfaceC0298f52 = this.g;
                if (interfaceC0298f52 == null) {
                    return iA;
                }
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C0314g5) interfaceC0298f52).c("o6", "InMobiDeepLinkScheme scheme applink/http url handling failed");
                return iA;
            }
            if (AbstractC0576y2.a(str3)) {
                C0520u2 c0520u2 = C0520u2.f496a;
                Intrinsics.checkNotNull(str3);
                c0520u2.a(str3, true, this.g);
            } else {
                InterfaceC0298f5 interfaceC0298f53 = this.g;
                if (interfaceC0298f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                    ((C0314g5) interfaceC0298f53).b("o6", "InMobiDeepLinkScheme scheme tracking url handling is invalid ");
                }
            }
            InterfaceC0298f5 interfaceC0298f54 = this.g;
            if (interfaceC0298f54 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C0314g5) interfaceC0298f54).c("o6", "InMobiDeepLinkScheme scheme applink/http url handled successfully");
            }
            return 0;
        }
        InterfaceC0298f5 interfaceC0298f55 = this.g;
        if (interfaceC0298f55 == null) {
            return 2;
        }
        Intrinsics.checkNotNullExpressionValue("o6", "TAG");
        ((C0314g5) interfaceC0298f55).b("o6", "InMobiDeepLinkScheme url is Empty or null");
        return 2;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.inmobi.media.Aa, com.inmobi.media.V1] */
    public final int a(String url, String api, C0510t6 c0510t6) {
        C0510t6 c0510t62;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(api, "api");
        if (c0510t6 != null) {
            c0510t6.g = "IN_CUSTOM";
        }
        if (url.length() == 0) {
            InterfaceC0298f5 interfaceC0298f5 = this.g;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("o6", "TAG");
                ((C0314g5) interfaceC0298f5).b("o6", "processOpenEmbeddedRequest failed due to empty URL");
            }
            EnumC0332h6 enumC0332h6 = EnumC0332h6.e;
            C0393l6.a(enumC0332h6, c0510t6, (Integer) null, AbstractC0347i6.a(enumC0332h6, "funnelState", this));
            return 2;
        }
        if (AbstractC0358j1.a(this.f444a, url, this.e, api, this.g)) {
            return 0;
        }
        Uri uri = Uri.parse(url);
        Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
        if (AbstractC0548w2.a(uri)) {
            Intent intent = new Intent(this.f444a, (Class<?>) InMobiAdActivity.class);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 100);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL", url);
            intent.putExtra("viewTouchTimestamp", this.e.getViewTouchTimestamp());
            if (c0510t6 != null) {
                C0524u6 landingPageTelemetryMetaData = c0510t6.f489a;
                String urlType = c0510t6.b;
                int i2 = c0510t6.c;
                long j = c0510t6.d;
                Intrinsics.checkNotNullParameter(landingPageTelemetryMetaData, "landingPageTelemetryMetaData");
                Intrinsics.checkNotNullParameter(urlType, "urlType");
                c0510t62 = new C0510t6(landingPageTelemetryMetaData, urlType, i2, j);
                EnumC0332h6 enumC0332h62 = EnumC0332h6.d;
                c0510t62.f = 2;
                Unit unit = Unit.INSTANCE;
            } else {
                c0510t62 = null;
            }
            intent.putExtra("lpTelemetryControlInfo", c0510t62);
            InterfaceC0298f5 obj = this.g;
            if (obj != null) {
                String string = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                HashMap map = S4.f240a;
                String key = string.toString();
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(obj, "obj");
                S4.f240a.put(key, new WeakReference(obj));
                intent.putExtra("loggerCacheKey", string.toString());
            }
            Ra ra = this.d;
            if (ra != null) {
                Intrinsics.checkNotNullParameter(intent, "intent");
                intent.putExtra("creativeId", ra.f236a.getCreativeId());
                intent.putExtra("impressionId", ra.f236a.getImpressionId());
                intent.putExtra("placementId", ra.f236a.getPlacementId());
                SparseArray sparseArray = InMobiAdActivity.k;
                Ya ya = ra.f236a;
                InMobiAdActivity.l = ya;
                Kb.f162a.a(ya.getContainerContext(), intent);
            }
            EnumC0332h6 enumC0332h63 = EnumC0332h6.f;
            C0393l6.a(enumC0332h63, c0510t6, (Integer) null, AbstractC0347i6.a(enumC0332h63, "funnelState", this));
            Ra ra2 = this.d;
            if (ra2 != null) {
                Ya.a(ra2.f236a, null, null, url);
            }
            return 1;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.g;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("o6", "TAG");
            ((C0314g5) interfaceC0298f52).b("o6", "Embedded request unable to handle ".concat(url));
        }
        return 10;
    }

    public static final void a(C0439o6 c0439o6, String str, String str2, String str3, C0510t6 c0510t6, Exception exc) {
        InterfaceC0298f5 interfaceC0298f5 = c0439o6.g;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).b("o6", Ed.a(exc, AbstractC0363j6.a("o6", "TAG", "Error message in processing openExternal: ")));
        }
        Ra ra = c0439o6.d;
        if (ra != null) {
            StringBuilder sb = new StringBuilder("Cannot resolve URI (");
            try {
                String strEncode = URLEncoder.encode(str2, "UTF-8");
                Intrinsics.checkNotNull(strEncode);
                str2 = strEncode;
            } catch (UnsupportedEncodingException unused) {
            }
            String message = sb.append(str2).append(')').toString();
            Intrinsics.checkNotNullParameter(message, "message");
            ra.f236a.a(str, message, "openExternal");
        }
        if (str3 != null) {
            c0439o6.e(str, str3, null, c0510t6);
        }
    }
}

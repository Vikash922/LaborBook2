package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Fd */
/* JADX INFO: loaded from: classes6.dex */
public final class C2776Fd {

    /* JADX INFO: renamed from: a */
    public static final C2776Fd f1039a = new C2776Fd();

    /* JADX INFO: renamed from: b */
    public static final ConcurrentHashMap f1040b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c */
    public static final AdConfig.WebAssetCacheConfig f1041c;

    /* JADX INFO: renamed from: d */
    public static final C2731Cd f1042d;

    static {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        AdConfig.WebAssetCacheConfig webAssetCache = ((AdConfig) AbstractC3001V4.m1873a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getWebAssetCache();
        f1041c = webAssetCache;
        Context contextM1254d = C2849Kb.m1254d();
        f1042d = contextM1254d != null ? new C2731Cd(contextM1254d, webAssetCache) : null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:28|(4:30|128|31|(1:33)(8:34|42|(1:(1:45))(2:46|(3:(1:49)|50|51)(2:(1:53)|54))|55|132|(6:126|62|(7:64|57|87|(1:89)(1:90)|91|130|92)(9:65|66|136|67|(2:133|69)(1:74)|75|76|77|78)|86|112|(1:114))(6:57|87|(0)(0)|91|130|92)|115|116))(1:35)|36|37|135|38|(1:40)(1:41)|42|(0)(0)|55|132|(0)(8:58|59|126|62|(0)(0)|86|112|(0))|115|116) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x0205, code lost:
    
        r4 = r17;
        r7 = r18;
        r6 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01fb, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01fd, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01fe, code lost:
    
        r4 = r17;
        r7 = r18;
        r6 = r19;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0103 A[Catch: Exception -> 0x01fd, TimeoutException -> 0x0205, TryCatch #12 {TimeoutException -> 0x0205, Exception -> 0x01fd, blocks: (B:38:0x00c9, B:40:0x00d7, B:42:0x00e4, B:45:0x00f8, B:55:0x0147, B:58:0x0175, B:46:0x0103, B:49:0x010b, B:50:0x0115, B:53:0x012e, B:54:0x0138, B:41:0x00de), top: B:135:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0183 A[Catch: Exception -> 0x01cf, TimeoutException -> 0x01d7, TRY_LEAVE, TryCatch #17 {TimeoutException -> 0x01d7, Exception -> 0x01cf, blocks: (B:62:0x017f, B:65:0x0183), top: B:126:0x017f }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01e3 A[Catch: TimeoutException -> 0x01db, Exception -> 0x01fb, TryCatch #14 {TimeoutException -> 0x01db, Exception -> 0x01fb, blocks: (B:87:0x01df, B:89:0x01e3, B:90:0x01ec, B:77:0x01b9), top: B:132:0x016d }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01ec A[Catch: TimeoutException -> 0x01db, Exception -> 0x01fb, TRY_LEAVE, TryCatch #14 {TimeoutException -> 0x01db, Exception -> 0x01fb, blocks: (B:87:0x01df, B:89:0x01e3, B:90:0x01ec, B:77:0x01b9), top: B:132:0x016d }] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v17, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse m1131a(final java.lang.String r21, final com.inmobi.media.InterfaceC3147f5 r22) {
        /*
            Method dump skipped, instruction units count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2776Fd.m1131a(java.lang.String, com.inmobi.media.f5):android.webkit.WebResourceResponse");
    }

    /* JADX INFO: renamed from: a */
    public static final C3318qb m1130a(C2776Fd this_run, String url, InterfaceC3147f5 interfaceC3147f5) throws Throwable {
        C2856L3 c2856l3;
        C3318qb response;
        C3196i9 c3196i9;
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        Intrinsics.checkNotNullParameter(url, "$url");
        this_run.getClass();
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("WebResourceHandler", AbstractC3157g0.m2142a("downloadResourceFile(): ", url));
        }
        EnumC3213jb method = EnumC3213jb.f2228a;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        C3198ib c3198ib = new C3198ib(url, method);
        AdConfig.WebAssetCacheConfig webAssetCacheConfig = f1041c;
        c3198ib.f2190h = Integer.valueOf(webAssetCacheConfig.getTimeout());
        c3198ib.f2191i = Integer.valueOf(webAssetCacheConfig.getTimeout());
        C3243lb retryPolicy = new C3243lb(webAssetCacheConfig.getMaxRetries(), 500);
        Intrinsics.checkNotNullParameter(retryPolicy, "retryPolicy");
        c3198ib.f2189g = retryPolicy;
        C3258mb request = new C3258mb(c3198ib);
        Intrinsics.checkNotNullParameter(request, "request");
        do {
            c2856l3 = null;
            response = AbstractC3181h9.m2218a(request, (Function2) null);
            c3196i9 = response.f2464a;
        } while ((c3196i9 != null ? c3196i9.f2180a : null) == EnumC3101c4.f1930m);
        Intrinsics.checkNotNullParameter(response, "response");
        byte[] bArr = response.f2466c;
        Integer num = response.f2467d;
        if (num != null && num.intValue() == 200 && bArr != null && bArr.length != 0) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2152c("WebResourceHandler", "onSuccessfulResponse: ".concat(url));
            }
            C2731Cd c2731Cd = f1042d;
            if (c2731Cd != null) {
                String data = AbstractC3211j9.m2263a(response.f2466c);
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(data, "data");
                if (c2731Cd.f906a != null) {
                    try {
                        String strValueOf = String.valueOf(url.hashCode());
                        C2856L3 c2856l32 = c2731Cd.f906a;
                        if (c2856l32 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("diskLruCache");
                        } else {
                            c2856l3 = c2856l32;
                        }
                        C2811I3 c2811i3M1281a = c2856l3.m1281a(strValueOf);
                        if (c2811i3M1281a != null) {
                            c2811i3M1281a.m1168a(url, 0);
                            c2811i3M1281a.m1168a(data, 1);
                            if (c2811i3M1281a.f1105c) {
                                C2856L3.m1280a(c2811i3M1281a.f1106d, c2811i3M1281a, false);
                                c2811i3M1281a.f1106d.m1288d(c2811i3M1281a.f1103a.f1129a);
                            } else {
                                C2856L3.m1280a(c2811i3M1281a.f1106d, c2811i3M1281a, true);
                            }
                        } else if (interfaceC3147f5 != null) {
                            ((C3162g5) interfaceC3147f5).m2147a("WebAssetLRUCacheHelper", "Failed to write to cache diskLruCache with: diskLruCache.editor is null for ".concat(url));
                        }
                    } catch (Exception e) {
                        if (interfaceC3147f5 != null) {
                            ((C3162g5) interfaceC3147f5).m2147a("WebAssetLRUCacheHelper", "Failed to write to cache diskLruCache with: " + e.getMessage() + " for " + url);
                        }
                    }
                } else if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2147a("WebAssetLRUCacheHelper", "Disk Cache Failed to Initialize. Failed writeToCache: ".concat(url));
                }
            }
        }
        return response;
    }
}

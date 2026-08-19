package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Fd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Fd f118a = new Fd();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();
    public static final AdConfig.WebAssetCacheConfig c;
    public static final Cd d;

    static {
        LinkedHashMap linkedHashMap = K2.f154a;
        AdConfig.WebAssetCacheConfig webAssetCache = ((AdConfig) V4.a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getWebAssetCache();
        c = webAssetCache;
        Context contextD = Kb.d();
        d = contextD != null ? new Cd(contextD, webAssetCache) : null;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse a(final java.lang.String r21, final com.inmobi.media.InterfaceC0298f5 r22) {
        /*
            Method dump skipped, instruction units count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Fd.a(java.lang.String, com.inmobi.media.f5):android.webkit.WebResourceResponse");
    }

    public static final C0474qb a(Fd this_run, String url, InterfaceC0298f5 interfaceC0298f5) throws Throwable {
        L3 l3;
        C0474qb response;
        C0350i9 c0350i9;
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        Intrinsics.checkNotNullParameter(url, "$url");
        this_run.getClass();
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("WebResourceHandler", AbstractC0309g0.a("downloadResourceFile(): ", url));
        }
        EnumC0368jb method = EnumC0368jb.f396a;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        C0352ib c0352ib = new C0352ib(url, method);
        AdConfig.WebAssetCacheConfig webAssetCacheConfig = c;
        c0352ib.h = Integer.valueOf(webAssetCacheConfig.getTimeout());
        c0352ib.i = Integer.valueOf(webAssetCacheConfig.getTimeout());
        C0399lb retryPolicy = new C0399lb(webAssetCacheConfig.getMaxRetries(), 500);
        Intrinsics.checkNotNullParameter(retryPolicy, "retryPolicy");
        c0352ib.g = retryPolicy;
        C0414mb request = new C0414mb(c0352ib);
        Intrinsics.checkNotNullParameter(request, "request");
        do {
            l3 = null;
            response = AbstractC0335h9.a(request, (Function2) null);
            c0350i9 = response.f463a;
        } while ((c0350i9 != null ? c0350i9.f385a : null) == EnumC0250c4.m);
        Intrinsics.checkNotNullParameter(response, "response");
        byte[] bArr = response.c;
        Integer num = response.d;
        if (num != null && num.intValue() == 200 && bArr != null && bArr.length != 0) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).c("WebResourceHandler", "onSuccessfulResponse: ".concat(url));
            }
            Cd cd = d;
            if (cd != null) {
                String data = AbstractC0366j9.a(response.c);
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(data, "data");
                if (cd.f92a != null) {
                    try {
                        String strValueOf = String.valueOf(url.hashCode());
                        L3 l32 = cd.f92a;
                        if (l32 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("diskLruCache");
                        } else {
                            l3 = l32;
                        }
                        I3 i3A = l3.a(strValueOf);
                        if (i3A != null) {
                            i3A.a(url, 0);
                            i3A.a(data, 1);
                            if (i3A.c) {
                                L3.a(i3A.d, i3A, false);
                                i3A.d.d(i3A.f136a.f147a);
                            } else {
                                L3.a(i3A.d, i3A, true);
                            }
                        } else if (interfaceC0298f5 != null) {
                            ((C0314g5) interfaceC0298f5).a("WebAssetLRUCacheHelper", "Failed to write to cache diskLruCache with: diskLruCache.editor is null for ".concat(url));
                        }
                    } catch (Exception e) {
                        if (interfaceC0298f5 != null) {
                            ((C0314g5) interfaceC0298f5).a("WebAssetLRUCacheHelper", "Failed to write to cache diskLruCache with: " + e.getMessage() + " for " + url);
                        }
                    }
                } else if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).a("WebAssetLRUCacheHelper", "Disk Cache Failed to Initialize. Failed writeToCache: ".concat(url));
                }
            }
        }
        return response;
    }
}

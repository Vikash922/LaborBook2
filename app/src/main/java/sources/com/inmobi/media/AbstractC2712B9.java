package com.inmobi.media;

import android.content.Context;
import com.google.common.net.HttpHeaders;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: com.inmobi.media.B9 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2712B9 {
    /* JADX INFO: renamed from: a */
    public static final void m869a(AdConfig.OmidConfig omidConfig, int i, C3241l9 mRequest, int i2) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(omidConfig, "$omidConfig");
        Intrinsics.checkNotNullParameter(mRequest, "$mNetworkRequest");
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        if ((System.currentTimeMillis() / ((long) 1000)) - new C2992U9(contextM1254d, "omid_js_store").m1852b() > omidConfig.getExpiry()) {
            int i3 = 0;
            while (i3 <= i) {
                Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                Intrinsics.checkNotNullParameter(mRequest, "mRequest");
                C3256m9 c3256m9M2287b = mRequest.m2287b();
                Context contextM1254d2 = C2849Kb.m1254d();
                if (c3256m9M2287b.m2297b()) {
                    Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                    i3++;
                    if (i3 > i) {
                        return;
                    } else {
                        try {
                            Thread.sleep(((long) i2) * 1000);
                        } catch (InterruptedException unused) {
                        }
                    }
                } else if (contextM1254d2 != null) {
                    C2992U9 c2992u9 = new C2992U9(contextM1254d2, "omid_js_store");
                    Map map = c3256m9M2287b.f2335e;
                    String strM2296a = null;
                    List list = map != null ? (List) map.get(HttpHeaders.CONTENT_ENCODING) : null;
                    if (Intrinsics.areEqual(list != null ? (String) list.get(0) : null, "gzip")) {
                        Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                        boolean z = C3301p9.f2439a;
                        byte[] bArr2 = c3256m9M2287b.f2332b;
                        if (bArr2 == null || bArr2.length == 0) {
                            bArr = new byte[0];
                        } else {
                            Intrinsics.checkNotNull(bArr2);
                            bArr = new byte[bArr2.length];
                            byte[] bArr3 = c3256m9M2287b.f2332b;
                            Intrinsics.checkNotNull(bArr3);
                            System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                        }
                        byte[] bArrM2350a = C3301p9.m2350a(bArr);
                        if (bArrM2350a != null) {
                            try {
                                String str = new String(bArrM2350a, Charsets.UTF_8);
                                Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                                strM2296a = str;
                            } catch (UnsupportedEncodingException unused2) {
                                Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                            }
                        }
                    } else {
                        Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                        strM2296a = c3256m9M2287b.m2296a();
                    }
                    if (strM2296a != null) {
                        c2992u9.m1853b("omid_js_string", strM2296a);
                        return;
                    }
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m868a(final AdConfig.OmidConfig omidConfig) {
        Intrinsics.checkNotNullParameter(omidConfig, "omidConfig");
        String url = omidConfig.getUrl();
        final int maxRetries = omidConfig.getMaxRetries();
        final int retryInterval = omidConfig.getRetryInterval();
        if (url == null) {
            Intrinsics.checkNotNullExpressionValue("B9", "TAG");
            return;
        }
        final C3241l9 c3241l9 = new C3241l9(url, null);
        c3241l9.f2297x = false;
        c3241l9.f2293t = false;
        c3241l9.f2294u = false;
        ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue()).submit(new Runnable() { // from class: com.inmobi.media.B9$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2712B9.m869a(omidConfig, maxRetries, c3241l9, retryInterval);
            }
        });
    }
}

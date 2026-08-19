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

/* JADX INFO: loaded from: classes6.dex */
public abstract class B9 {
    public static final void a(AdConfig.OmidConfig omidConfig, int i, C0397l9 mRequest, int i2) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(omidConfig, "$omidConfig");
        Intrinsics.checkNotNullParameter(mRequest, "$mNetworkRequest");
        Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        if ((System.currentTimeMillis() / ((long) 1000)) - new U9(contextD, "omid_js_store").b() > omidConfig.getExpiry()) {
            int i3 = 0;
            while (i3 <= i) {
                Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                Intrinsics.checkNotNullParameter(mRequest, "mRequest");
                C0412m9 c0412m9B = mRequest.b();
                Context contextD2 = Kb.d();
                if (c0412m9B.b()) {
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
                } else if (contextD2 != null) {
                    U9 u9 = new U9(contextD2, "omid_js_store");
                    Map map = c0412m9B.e;
                    String strA = null;
                    List list = map != null ? (List) map.get(HttpHeaders.CONTENT_ENCODING) : null;
                    if (Intrinsics.areEqual(list != null ? (String) list.get(0) : null, "gzip")) {
                        Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                        boolean z = C0457p9.f457a;
                        byte[] bArr2 = c0412m9B.b;
                        if (bArr2 == null || bArr2.length == 0) {
                            bArr = new byte[0];
                        } else {
                            Intrinsics.checkNotNull(bArr2);
                            bArr = new byte[bArr2.length];
                            byte[] bArr3 = c0412m9B.b;
                            Intrinsics.checkNotNull(bArr3);
                            System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                        }
                        byte[] bArrA = C0457p9.a(bArr);
                        if (bArrA != null) {
                            try {
                                String str = new String(bArrA, Charsets.UTF_8);
                                Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                                strA = str;
                            } catch (UnsupportedEncodingException unused2) {
                                Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                            }
                        }
                    } else {
                        Intrinsics.checkNotNullExpressionValue("B9", "TAG");
                        strA = c0412m9B.a();
                    }
                    if (strA != null) {
                        u9.b("omid_js_string", strA);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public static void a(final AdConfig.OmidConfig omidConfig) {
        Intrinsics.checkNotNullParameter(omidConfig, "omidConfig");
        String url = omidConfig.getUrl();
        final int maxRetries = omidConfig.getMaxRetries();
        final int retryInterval = omidConfig.getRetryInterval();
        if (url == null) {
            Intrinsics.checkNotNullExpressionValue("B9", "TAG");
            return;
        }
        final C0397l9 c0397l9 = new C0397l9(url, null);
        c0397l9.x = false;
        c0397l9.t = false;
        c0397l9.u = false;
        ((ScheduledThreadPoolExecutor) AbstractC0407m4.b.getValue()).submit(new Runnable() { // from class: com.inmobi.media.B9$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                B9.a(omidConfig, maxRetries, c0397l9, retryInterval);
            }
        });
    }
}

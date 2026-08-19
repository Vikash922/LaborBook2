package com.inmobi.media;

import android.content.Context;
import com.google.common.net.HttpHeaders;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: com.inmobi.media.a7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3074a7 {

    /* JADX INFO: renamed from: a */
    public final String f1840a;

    /* JADX INFO: renamed from: b */
    public final int f1841b;

    /* JADX INFO: renamed from: c */
    public final int f1842c;

    /* JADX INFO: renamed from: d */
    public final long f1843d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC3147f5 f1844e;

    /* JADX INFO: renamed from: f */
    public final String f1845f = "a7";

    /* JADX INFO: renamed from: g */
    public C3241l9 f1846g;

    public C3074a7(String str, int i, int i2, long j, InterfaceC3147f5 interfaceC3147f5) {
        this.f1840a = str;
        this.f1841b = i;
        this.f1842c = i2;
        this.f1843d = j;
        this.f1844e = interfaceC3147f5;
    }

    /* JADX INFO: renamed from: a */
    public final void m2016a() {
        String str = this.f1840a;
        if (str == null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1844e;
            if (interfaceC3147f5 != null) {
                String TAG = this.f1845f;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2151b(TAG, "MRAID Js Url provided is invalid.");
                return;
            }
            return;
        }
        C3241l9 c3241l9 = new C3241l9(str, this.f1844e);
        c3241l9.f2293t = false;
        c3241l9.f2294u = false;
        c3241l9.f2297x = false;
        this.f1846g = c3241l9;
        ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue()).submit(new Runnable() { // from class: com.inmobi.media.a7$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3074a7.m2015a(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m2015a(C3074a7 this$0) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C3241l9 mRequest = this$0.f1846g;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            if ((System.currentTimeMillis() / ((long) 1000)) - new C2992U9(contextM1254d, "mraid_js_store").m1852b() <= this$0.f1843d || mRequest == null) {
                return;
            }
            int i = 0;
            while (i <= this$0.f1841b) {
                InterfaceC3147f5 interfaceC3147f5 = this$0.f1844e;
                if (interfaceC3147f5 != null) {
                    String TAG = this$0.f1845f;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a(TAG, "Attempting to get MRAID Js.");
                }
                Intrinsics.checkNotNullParameter(mRequest, "mRequest");
                C3256m9 c3256m9M2287b = mRequest.m2287b();
                Context contextM1254d2 = C2849Kb.m1254d();
                if (c3256m9M2287b.m2297b()) {
                    InterfaceC3147f5 interfaceC3147f52 = this$0.f1844e;
                    if (interfaceC3147f52 != null) {
                        String TAG2 = this$0.f1845f;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Getting MRAID Js from server failed.");
                    }
                    i++;
                    if (i > this$0.f1841b) {
                        return;
                    }
                    try {
                        Thread.sleep(this$0.f1842c * 1000);
                    } catch (InterruptedException e) {
                        InterfaceC3147f5 interfaceC3147f53 = this$0.f1844e;
                        if (interfaceC3147f53 != null) {
                            String TAG3 = this$0.f1845f;
                            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                            ((C3162g5) interfaceC3147f53).m2148a(TAG3, "MRAID Js client interrupted while sleeping.", e);
                        }
                    }
                } else if (contextM1254d2 != null) {
                    C2992U9 c2992u9 = new C2992U9(contextM1254d2, "mraid_js_store");
                    Map map = c3256m9M2287b.f2335e;
                    String strM2296a = null;
                    List list = map != null ? (List) map.get(HttpHeaders.CONTENT_ENCODING) : null;
                    if (Intrinsics.areEqual(list != null ? (String) list.get(0) : null, "gzip")) {
                        InterfaceC3147f5 interfaceC3147f54 = this$0.f1844e;
                        if (interfaceC3147f54 != null) {
                            String TAG4 = this$0.f1845f;
                            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                            ((C3162g5) interfaceC3147f54).m2147a(TAG4, "Response is GZIP-compressed, uncompressing it");
                        }
                        boolean z = C3301p9.f2439a;
                        byte[] bArr2 = c3256m9M2287b.f2332b;
                        if (bArr2 != null && bArr2.length != 0) {
                            Intrinsics.checkNotNull(bArr2);
                            bArr = new byte[bArr2.length];
                            byte[] bArr3 = c3256m9M2287b.f2332b;
                            Intrinsics.checkNotNull(bArr3);
                            System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                        } else {
                            bArr = new byte[0];
                        }
                        byte[] bArrM2350a = C3301p9.m2350a(bArr);
                        if (bArrM2350a != null) {
                            try {
                                String str = new String(bArrM2350a, Charsets.UTF_8);
                                InterfaceC3147f5 interfaceC3147f55 = this$0.f1844e;
                                if (interfaceC3147f55 != null) {
                                    String TAG5 = this$0.f1845f;
                                    Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                                    ((C3162g5) interfaceC3147f55).m2147a(TAG5, "Getting MRAID Js from server succeeded.");
                                }
                                strM2296a = str;
                            } catch (UnsupportedEncodingException e2) {
                                InterfaceC3147f5 interfaceC3147f56 = this$0.f1844e;
                                if (interfaceC3147f56 != null) {
                                    String str2 = this$0.f1845f;
                                    ((C3162g5) interfaceC3147f56).m2151b(str2, AbstractC3208j6.m2261a(str2, "TAG", "Failed to get MRAID JS \n").append(e2.getMessage()).toString());
                                }
                            }
                        }
                    } else {
                        InterfaceC3147f5 interfaceC3147f57 = this$0.f1844e;
                        if (interfaceC3147f57 != null) {
                            String TAG6 = this$0.f1845f;
                            Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                            ((C3162g5) interfaceC3147f57).m2147a(TAG6, "Getting MRAID Js from server succeeded.");
                        }
                        strM2296a = c3256m9M2287b.m2296a();
                    }
                    if (strM2296a != null) {
                        c2992u9.m1853b("mraid_js_string", strM2296a);
                        return;
                    }
                    return;
                }
            }
        }
    }
}

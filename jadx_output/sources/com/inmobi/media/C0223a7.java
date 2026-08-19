package com.inmobi.media;

import android.content.Context;
import com.google.common.net.HttpHeaders;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: com.inmobi.media.a7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0223a7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f305a;
    public final int b;
    public final int c;
    public final long d;
    public final InterfaceC0298f5 e;
    public final String f = "a7";
    public C0397l9 g;

    public C0223a7(String str, int i, int i2, long j, InterfaceC0298f5 interfaceC0298f5) {
        this.f305a = str;
        this.b = i;
        this.c = i2;
        this.d = j;
        this.e = interfaceC0298f5;
    }

    public final void a() {
        String str = this.f305a;
        if (str == null) {
            InterfaceC0298f5 interfaceC0298f5 = this.e;
            if (interfaceC0298f5 != null) {
                String TAG = this.f;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).b(TAG, "MRAID Js Url provided is invalid.");
                return;
            }
            return;
        }
        C0397l9 c0397l9 = new C0397l9(str, this.e);
        c0397l9.t = false;
        c0397l9.u = false;
        c0397l9.x = false;
        this.g = c0397l9;
        ((ScheduledThreadPoolExecutor) AbstractC0407m4.b.getValue()).submit(new Runnable() { // from class: com.inmobi.media.a7$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0223a7.a(this.f$0);
            }
        });
    }

    public static final void a(C0223a7 this$0) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C0397l9 mRequest = this$0.g;
        Context contextD = Kb.d();
        if (contextD != null) {
            if ((System.currentTimeMillis() / ((long) 1000)) - new U9(contextD, "mraid_js_store").b() <= this$0.d || mRequest == null) {
                return;
            }
            int i = 0;
            while (i <= this$0.b) {
                InterfaceC0298f5 interfaceC0298f5 = this$0.e;
                if (interfaceC0298f5 != null) {
                    String TAG = this$0.f;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).a(TAG, "Attempting to get MRAID Js.");
                }
                Intrinsics.checkNotNullParameter(mRequest, "mRequest");
                C0412m9 c0412m9B = mRequest.b();
                Context contextD2 = Kb.d();
                if (c0412m9B.b()) {
                    InterfaceC0298f5 interfaceC0298f52 = this$0.e;
                    if (interfaceC0298f52 != null) {
                        String TAG2 = this$0.f;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C0314g5) interfaceC0298f52).b(TAG2, "Getting MRAID Js from server failed.");
                    }
                    i++;
                    if (i > this$0.b) {
                        return;
                    }
                    try {
                        Thread.sleep(this$0.c * 1000);
                    } catch (InterruptedException e) {
                        InterfaceC0298f5 interfaceC0298f53 = this$0.e;
                        if (interfaceC0298f53 != null) {
                            String TAG3 = this$0.f;
                            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                            ((C0314g5) interfaceC0298f53).a(TAG3, "MRAID Js client interrupted while sleeping.", e);
                        }
                    }
                } else if (contextD2 != null) {
                    U9 u9 = new U9(contextD2, "mraid_js_store");
                    Map map = c0412m9B.e;
                    String strA = null;
                    List list = map != null ? (List) map.get(HttpHeaders.CONTENT_ENCODING) : null;
                    if (Intrinsics.areEqual(list != null ? (String) list.get(0) : null, "gzip")) {
                        InterfaceC0298f5 interfaceC0298f54 = this$0.e;
                        if (interfaceC0298f54 != null) {
                            String TAG4 = this$0.f;
                            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                            ((C0314g5) interfaceC0298f54).a(TAG4, "Response is GZIP-compressed, uncompressing it");
                        }
                        boolean z = C0457p9.f457a;
                        byte[] bArr2 = c0412m9B.b;
                        if (bArr2 != null && bArr2.length != 0) {
                            Intrinsics.checkNotNull(bArr2);
                            bArr = new byte[bArr2.length];
                            byte[] bArr3 = c0412m9B.b;
                            Intrinsics.checkNotNull(bArr3);
                            System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                        } else {
                            bArr = new byte[0];
                        }
                        byte[] bArrA = C0457p9.a(bArr);
                        if (bArrA != null) {
                            try {
                                String str = new String(bArrA, Charsets.UTF_8);
                                InterfaceC0298f5 interfaceC0298f55 = this$0.e;
                                if (interfaceC0298f55 != null) {
                                    String TAG5 = this$0.f;
                                    Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                                    ((C0314g5) interfaceC0298f55).a(TAG5, "Getting MRAID Js from server succeeded.");
                                }
                                strA = str;
                            } catch (UnsupportedEncodingException e2) {
                                InterfaceC0298f5 interfaceC0298f56 = this$0.e;
                                if (interfaceC0298f56 != null) {
                                    String str2 = this$0.f;
                                    ((C0314g5) interfaceC0298f56).b(str2, AbstractC0363j6.a(str2, "TAG", "Failed to get MRAID JS \n").append(e2.getMessage()).toString());
                                }
                            }
                        }
                    } else {
                        InterfaceC0298f5 interfaceC0298f57 = this$0.e;
                        if (interfaceC0298f57 != null) {
                            String TAG6 = this$0.f;
                            Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                            ((C0314g5) interfaceC0298f57).a(TAG6, "Getting MRAID Js from server succeeded.");
                        }
                        strA = c0412m9B.a();
                    }
                    if (strA != null) {
                        u9.b("mraid_js_string", strA);
                        return;
                    }
                    return;
                }
            }
        }
    }
}

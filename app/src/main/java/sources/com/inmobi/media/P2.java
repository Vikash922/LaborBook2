package com.inmobi.media;

import android.os.Message;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class P2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E2 f210a;
    public final Q2 b;
    public final Q2 c;

    public P2(E2 callback, Q2 request, Q2 q2) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(request, "request");
        this.f210a = callback;
        this.b = request;
        this.c = q2;
    }

    public final boolean a(Q2 q2, int i, LinkedHashMap linkedHashMap) throws InterruptedException {
        if (i <= q2.z) {
            Thread.sleep(q2.A * 1000);
            return false;
        }
        Iterator it = q2.y.entrySet().iterator();
        while (it.hasNext()) {
            S2 response = (S2) linkedHashMap.get((String) ((Map.Entry) it.next()).getKey());
            if (response != null) {
                E2 e2 = this.f210a;
                Intrinsics.checkNotNullParameter(response, "response");
                Message messageObtain = Message.obtain();
                messageObtain.what = 6;
                messageObtain.obj = response;
                e2.sendMessage(messageObtain);
            }
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (InterruptedException unused) {
            Intrinsics.checkNotNullExpressionValue("P2", "TAG");
        }
    }

    public final void a() {
        LinkedHashMap linkedHashMap;
        List list;
        String str;
        Q2 mRequest;
        int i = 0;
        int i2 = 0;
        do {
            Q2 mRequest2 = this.b;
            if (i2 > mRequest2.z) {
                break;
            }
            Intrinsics.checkNotNullParameter(mRequest2, "mRequest");
            W2 w2 = new W2(mRequest2, mRequest2.b());
            linkedHashMap = w2.c;
            if (w2.a() && (mRequest = this.c) != null) {
                while (i <= mRequest.z) {
                    Intrinsics.checkNotNullParameter(mRequest, "mRequest");
                    W2 w22 = new W2(mRequest, mRequest.b());
                    LinkedHashMap linkedHashMap2 = w22.c;
                    if (!w22.a()) {
                        a(mRequest, linkedHashMap2);
                        if (mRequest.y.isEmpty()) {
                            break;
                        }
                        i++;
                        if (a(mRequest, i, linkedHashMap2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                E2 e2 = this.f210a;
                String accountId = mRequest.B;
                Intrinsics.checkNotNullParameter(accountId, "accountId");
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                messageObtain.obj = accountId;
                e2.sendMessage(messageObtain);
                return;
            }
            if (this.b.C) {
                E2 e22 = this.f210a;
                Map map = w2.f268a.e;
                Object ipAddress = (map == null || (list = (List) map.get("cip")) == null || (str = (String) CollectionsKt.firstOrNull(list)) == null) ? T2.f246a : new U2(str);
                Intrinsics.checkNotNullParameter(ipAddress, "ipAddress");
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 7;
                messageObtain2.obj = ipAddress;
                e22.sendMessage(messageObtain2);
            }
            a(this.b, linkedHashMap);
            if (this.b.y.isEmpty()) {
                break;
            } else {
                i2++;
            }
        } while (!a(this.b, i2, linkedHashMap));
        E2 e23 = this.f210a;
        String accountId2 = this.b.B;
        Intrinsics.checkNotNullParameter(accountId2, "accountId");
        Message messageObtain3 = Message.obtain();
        messageObtain3.what = 4;
        messageObtain3.obj = accountId2;
        e23.sendMessage(messageObtain3);
    }

    public final void a(Q2 q2, LinkedHashMap linkedHashMap) {
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            S2 response = (S2) entry.getValue();
            String configType = (String) entry.getKey();
            if (response.c == null) {
                E2 e2 = this.f210a;
                Intrinsics.checkNotNullParameter(response, "response");
                Message messageObtain = Message.obtain();
                messageObtain.what = 6;
                messageObtain.obj = response;
                e2.sendMessage(messageObtain);
                q2.getClass();
                Intrinsics.checkNotNullParameter(configType, "configType");
                q2.y.remove(configType);
            }
        }
    }
}

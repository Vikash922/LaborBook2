package com.inmobi.media;

import android.os.Message;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.P2 */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC2915P2 implements Runnable {

    /* JADX INFO: renamed from: a */
    public final HandlerC2750E2 f1359a;

    /* JADX INFO: renamed from: b */
    public final C2930Q2 f1360b;

    /* JADX INFO: renamed from: c */
    public final C2930Q2 f1361c;

    public RunnableC2915P2(HandlerC2750E2 callback, C2930Q2 request, C2930Q2 c2930q2) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(request, "request");
        this.f1359a = callback;
        this.f1360b = request;
        this.f1361c = c2930q2;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1454a(C2930Q2 c2930q2, int i, LinkedHashMap linkedHashMap) throws InterruptedException {
        if (i <= c2930q2.f1460z) {
            Thread.sleep(c2930q2.f1456A * 1000);
            return false;
        }
        Iterator it = c2930q2.f1459y.entrySet().iterator();
        while (it.hasNext()) {
            C2957S2 response = (C2957S2) linkedHashMap.get((String) ((Map.Entry) it.next()).getKey());
            if (response != null) {
                HandlerC2750E2 handlerC2750E2 = this.f1359a;
                Intrinsics.checkNotNullParameter(response, "response");
                Message messageObtain = Message.obtain();
                messageObtain.what = 6;
                messageObtain.obj = response;
                handlerC2750E2.sendMessage(messageObtain);
            }
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            m1452a();
        } catch (InterruptedException unused) {
            Intrinsics.checkNotNullExpressionValue("P2", "TAG");
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1452a() {
        LinkedHashMap linkedHashMap;
        List list;
        String str;
        C2930Q2 mRequest;
        int i = 0;
        int i2 = 0;
        do {
            C2930Q2 mRequest2 = this.f1360b;
            if (i2 > mRequest2.f1460z) {
                break;
            }
            Intrinsics.checkNotNullParameter(mRequest2, "mRequest");
            C3013W2 c3013w2 = new C3013W2(mRequest2, mRequest2.m2287b());
            linkedHashMap = c3013w2.f1623c;
            if (c3013w2.m1892a() && (mRequest = this.f1361c) != null) {
                while (i <= mRequest.f1460z) {
                    Intrinsics.checkNotNullParameter(mRequest, "mRequest");
                    C3013W2 c3013w22 = new C3013W2(mRequest, mRequest.m2287b());
                    LinkedHashMap linkedHashMap2 = c3013w22.f1623c;
                    if (!c3013w22.m1892a()) {
                        m1453a(mRequest, linkedHashMap2);
                        if (mRequest.f1459y.isEmpty()) {
                            break;
                        }
                        i++;
                        if (m1454a(mRequest, i, linkedHashMap2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                HandlerC2750E2 handlerC2750E2 = this.f1359a;
                String accountId = mRequest.f1457B;
                Intrinsics.checkNotNullParameter(accountId, "accountId");
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                messageObtain.obj = accountId;
                handlerC2750E2.sendMessage(messageObtain);
                return;
            }
            if (this.f1360b.f1458C) {
                HandlerC2750E2 handlerC2750E22 = this.f1359a;
                Map map = c3013w2.f1621a.f2335e;
                Object ipAddress = (map == null || (list = (List) map.get("cip")) == null || (str = (String) CollectionsKt.firstOrNull(list)) == null) ? C2971T2.f1547a : new C2985U2(str);
                Intrinsics.checkNotNullParameter(ipAddress, "ipAddress");
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 7;
                messageObtain2.obj = ipAddress;
                handlerC2750E22.sendMessage(messageObtain2);
            }
            m1453a(this.f1360b, linkedHashMap);
            if (this.f1360b.f1459y.isEmpty()) {
                break;
            } else {
                i2++;
            }
        } while (!m1454a(this.f1360b, i2, linkedHashMap));
        HandlerC2750E2 handlerC2750E23 = this.f1359a;
        String accountId2 = this.f1360b.f1457B;
        Intrinsics.checkNotNullParameter(accountId2, "accountId");
        Message messageObtain3 = Message.obtain();
        messageObtain3.what = 4;
        messageObtain3.obj = accountId2;
        handlerC2750E23.sendMessage(messageObtain3);
    }

    /* JADX INFO: renamed from: a */
    public final void m1453a(C2930Q2 c2930q2, LinkedHashMap linkedHashMap) {
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            C2957S2 response = (C2957S2) entry.getValue();
            String configType = (String) entry.getKey();
            if (response.f1531c == null) {
                HandlerC2750E2 handlerC2750E2 = this.f1359a;
                Intrinsics.checkNotNullParameter(response, "response");
                Message messageObtain = Message.obtain();
                messageObtain.what = 6;
                messageObtain.obj = response;
                handlerC2750E2.sendMessage(messageObtain);
                c2930q2.getClass();
                Intrinsics.checkNotNullParameter(configType, "configType");
                c2930q2.f1459y.remove(configType);
            }
        }
    }
}

package com.inmobi.media;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.pb */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC3303pb implements Runnable {

    /* JADX INFO: renamed from: a */
    public final C3258mb f2440a;

    /* JADX INFO: renamed from: b */
    public final C3273nb f2441b;

    public RunnableC3303pb(C3258mb request, C3273nb c3273nb) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f2440a = request;
        this.f2441b = c3273nb;
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
    /* JADX INFO: renamed from: a */
    public static final void m2351a(RunnableC3303pb this$0, C3318qb response) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(response, "$response");
        C3258mb request = this$0.f2440a;
        request.getClass();
        Intrinsics.checkNotNullParameter(response, "response");
        C3226k9 c3226k9 = request.f2347l;
        if (c3226k9 != null) {
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(response, "<this>");
            C3256m9 response2 = new C3256m9();
            byte[] value = response.f2466c;
            if (value != null) {
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.length == 0) {
                    response2.f2332b = new byte[0];
                } else {
                    byte[] bArr = new byte[value.length];
                    response2.f2332b = bArr;
                    System.arraycopy(value, 0, bArr, 0, value.length);
                }
            }
            response2.f2335e = response.f2465b;
            response2.f2334d = response.f2468e;
            response2.f2333c = response.f2464a;
            C3241l9 request2 = c3226k9.f2257a;
            Intrinsics.checkNotNullParameter(response2, "response");
            Intrinsics.checkNotNullParameter(request2, "request");
            c3226k9.f2258b.invoke(response2);
        }
        request.f2347l = null;
        Set set = AbstractC3288ob.f2419a;
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            AbstractC3288ob.f2419a.remove(request);
        } catch (Exception unused) {
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2440a.getClass();
        int i = AbstractC3181h9.f2149a;
        final C3318qb c3318qbM2218a = AbstractC3181h9.m2218a(this.f2440a, this.f2441b);
        C3196i9 c3196i9 = c3318qbM2218a.f2464a;
        if ((c3196i9 != null ? c3196i9.f2180a : null) != EnumC3101c4.f1930m) {
            ExecutorC2919P6 executorC2919P6 = (ExecutorC2919P6) AbstractC3251m4.f2321d.getValue();
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.pb$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RunnableC3303pb.m2351a(this.f$0, c3318qbM2218a);
                }
            };
            executorC2919P6.getClass();
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            executorC2919P6.f1374a.post(runnable);
            this.f2440a.getClass();
        }
    }
}

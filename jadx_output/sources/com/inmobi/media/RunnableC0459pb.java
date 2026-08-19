package com.inmobi.media;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.pb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC0459pb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0414mb f458a;
    public final C0429nb b;

    public RunnableC0459pb(C0414mb request, C0429nb c0429nb) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f458a = request;
        this.b = c0429nb;
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
    public static final void a(RunnableC0459pb this$0, C0474qb response) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(response, "$response");
        C0414mb request = this$0.f458a;
        request.getClass();
        Intrinsics.checkNotNullParameter(response, "response");
        C0381k9 c0381k9 = request.l;
        if (c0381k9 != null) {
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(response, "<this>");
            C0412m9 response2 = new C0412m9();
            byte[] value = response.c;
            if (value != null) {
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.length == 0) {
                    response2.b = new byte[0];
                } else {
                    byte[] bArr = new byte[value.length];
                    response2.b = bArr;
                    System.arraycopy(value, 0, bArr, 0, value.length);
                }
            }
            response2.e = response.b;
            response2.d = response.e;
            response2.c = response.f463a;
            C0397l9 request2 = c0381k9.f404a;
            Intrinsics.checkNotNullParameter(response2, "response");
            Intrinsics.checkNotNullParameter(request2, "request");
            c0381k9.b.invoke(response2);
        }
        request.l = null;
        Set set = AbstractC0444ob.f448a;
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            AbstractC0444ob.f448a.remove(request);
        } catch (Exception unused) {
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f458a.getClass();
        int i = AbstractC0335h9.f374a;
        final C0474qb c0474qbA = AbstractC0335h9.a(this.f458a, this.b);
        C0350i9 c0350i9 = c0474qbA.f463a;
        if ((c0350i9 != null ? c0350i9.f385a : null) != EnumC0250c4.m) {
            P6 p6 = (P6) AbstractC0407m4.d.getValue();
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.pb$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RunnableC0459pb.a(this.f$0, c0474qbA);
                }
            };
            p6.getClass();
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            p6.f214a.post(runnable);
            this.f458a.getClass();
        }
    }
}

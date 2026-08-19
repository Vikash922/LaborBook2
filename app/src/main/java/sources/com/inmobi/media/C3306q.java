package com.inmobi.media;

import java.util.concurrent.ScheduledFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.q */
/* JADX INFO: loaded from: classes6.dex */
public final class C3306q extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ long f2446a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3306q(long j) {
        super(1);
        this.f2446a = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3084b2 it = (C3084b2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i = it.f1872a;
        if (i != 101) {
            if (i == 102) {
                ScheduledFuture scheduledFuture = C3336s.f2522f;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                C3336s.f2522f = null;
            }
        } else if (C3336s.f2522f == null && C3336s.f2520d.get()) {
            C3336s c3336s = C3336s.f2517a;
            C3336s.m2386a(this.f2446a);
        }
        return Unit.INSTANCE;
    }
}

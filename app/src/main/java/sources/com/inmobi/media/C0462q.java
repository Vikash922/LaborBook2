package com.inmobi.media;

import java.util.concurrent.ScheduledFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0462q extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f459a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0462q(long j) {
        super(1);
        this.f459a = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0233b2 it = (C0233b2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i = it.f310a;
        if (i != 101) {
            if (i == 102) {
                ScheduledFuture scheduledFuture = C0489s.f;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                C0489s.f = null;
            }
        } else if (C0489s.f == null && C0489s.d.get()) {
            C0489s c0489s = C0489s.f476a;
            C0489s.a(this.f459a);
        }
        return Unit.INSTANCE;
    }
}

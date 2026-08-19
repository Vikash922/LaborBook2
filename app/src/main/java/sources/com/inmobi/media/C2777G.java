package com.inmobi.media;

import java.util.concurrent.ScheduledFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.G */
/* JADX INFO: loaded from: classes6.dex */
public final class C2777G extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2807I f1043a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2777G(C2807I c2807i) {
        super(0);
        this.f1043a = c2807i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ScheduledFuture scheduledFuture = this.f1043a.f1098j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        C2926Pd c2926Pd = this.f1043a.f1099k;
        if (c2926Pd != null) {
            c2926Pd.m1535a();
        }
        C2807I c2807i = this.f1043a;
        c2807i.f1099k = null;
        c2807i.f1098j = null;
        c2807i.m1157a(new C3266n4(0.0f, null, null));
        return Unit.INSTANCE;
    }
}

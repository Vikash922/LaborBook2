package com.inmobi.media;

import java.util.concurrent.ScheduledFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class G extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ I f119a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public G(I i) {
        super(0);
        this.f119a = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ScheduledFuture scheduledFuture = this.f119a.j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        Pd pd = this.f119a.k;
        if (pd != null) {
            pd.a();
        }
        I i = this.f119a;
        i.k = null;
        i.j = null;
        i.a(new C0422n4(0.0f, null, null));
        return Unit.INSTANCE;
    }
}

package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ScheduledFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.p */
/* JADX INFO: loaded from: classes6.dex */
public final class C3291p extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Context f2425a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3291p(Context context) {
        super(0);
        this.f2425a = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C3261n c3261n = C3336s.f2519c;
        if (c3261n != null) {
            AbstractC3444z2.m2631a(new C3276o(this.f2425a, c3261n));
            C3336s.f2519c = null;
        }
        ScheduledFuture scheduledFuture = C3336s.f2522f;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        C3306q c3306q = C3336s.f2524h;
        if (c3306q != null) {
            C2849Kb.m1256f().m2214a(c3306q);
        }
        C3336s.f2524h = null;
        C3336s.f2522f = null;
        return Unit.INSTANCE;
    }
}

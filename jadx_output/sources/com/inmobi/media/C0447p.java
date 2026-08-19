package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ScheduledFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0447p extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f449a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0447p(Context context) {
        super(0);
        this.f449a = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C0417n c0417n = C0489s.c;
        if (c0417n != null) {
            AbstractC0592z2.a(new C0432o(this.f449a, c0417n));
            C0489s.c = null;
        }
        ScheduledFuture scheduledFuture = C0489s.f;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        C0462q c0462q = C0489s.h;
        if (c0462q != null) {
            Kb.f().a(c0462q);
        }
        C0489s.h = null;
        C0489s.f = null;
        return Unit.INSTANCE;
    }
}

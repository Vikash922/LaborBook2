package com.inmobi.media;

import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.o */
/* JADX INFO: loaded from: classes6.dex */
public final class C3276o extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Context f2390a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C3261n f2391b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3276o(Context context, C3261n c3261n) {
        super(0);
        this.f2390a = context;
        this.f2391b = c3261n;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.f2390a.unregisterReceiver(this.f2391b);
        return Unit.INSTANCE;
    }
}

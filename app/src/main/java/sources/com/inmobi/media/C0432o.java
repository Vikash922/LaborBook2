package com.inmobi.media;

import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0432o extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f438a;
    public final /* synthetic */ C0417n b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0432o(Context context, C0417n c0417n) {
        super(0);
        this.f438a = context;
        this.b = c0417n;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.f438a.unregisterReceiver(this.b);
        return Unit.INSTANCE;
    }
}

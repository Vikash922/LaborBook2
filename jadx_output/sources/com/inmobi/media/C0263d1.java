package com.inmobi.media;

import com.google.android.gms.appset.AppSetIdInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.d1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0263d1 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0263d1 f328a = new C0263d1();

    public C0263d1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AbstractC0278e1.f337a = (AppSetIdInfo) obj;
        return Unit.INSTANCE;
    }
}

package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.m5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0408m5 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0408m5 f422a = new C0408m5();

    public C0408m5() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        return AbstractC0268d6.a(contextD, "inmobi_store");
    }
}

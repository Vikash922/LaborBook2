package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.m5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3252m5 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C3252m5 f2322a = new C3252m5();

    public C3252m5() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        return AbstractC3118d6.m2058a(contextM1254d, "inmobi_store");
    }
}

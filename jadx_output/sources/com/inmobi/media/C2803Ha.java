package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.Ha */
/* JADX INFO: loaded from: classes6.dex */
public final class C2803Ha extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C2803Ha f1082a = new C2803Ha();

    public C2803Ha() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        Context contextM1254d = C2849Kb.m1254d();
        Intrinsics.checkNotNull(contextM1254d);
        C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "default");
        Intrinsics.checkNotNullParameter("enableImraidLogs", "key");
        return Boolean.valueOf(c3133e6M2058a.f2045a.getBoolean("enableImraidLogs", false));
    }
}

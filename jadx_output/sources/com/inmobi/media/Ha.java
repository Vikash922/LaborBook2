package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class Ha extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Ha f131a = new Ha();

    public Ha() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        Context contextD = Kb.d();
        Intrinsics.checkNotNull(contextD);
        C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "default");
        Intrinsics.checkNotNullParameter("enableImraidLogs", "key");
        return Boolean.valueOf(c0284e6A.f340a.getBoolean("enableImraidLogs", false));
    }
}

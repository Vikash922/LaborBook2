package com.inmobi.media;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.ob */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3288ob {

    /* JADX INFO: renamed from: a */
    public static final Set f2419a;

    static {
        Intrinsics.checkNotNullExpressionValue("ob", "getSimpleName(...)");
        Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.checkNotNullExpressionValue(setNewSetFromMap, "newSetFromMap(...)");
        f2419a = setNewSetFromMap;
    }

    /* JADX INFO: renamed from: a */
    public static void m2337a(C3258mb c3258mb, long j) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        int iOrdinal = c3258mb.f2341f.ordinal();
        if (iOrdinal == 0) {
            scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC3251m4.f2320c.getValue();
        } else {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue();
        }
        scheduledThreadPoolExecutor.schedule(new RunnableC3303pb(c3258mb, C3273nb.f2385a), j, TimeUnit.MILLISECONDS);
    }
}

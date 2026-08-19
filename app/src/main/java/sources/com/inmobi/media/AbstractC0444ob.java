package com.inmobi.media;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.ob, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0444ob {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f448a;

    static {
        Intrinsics.checkNotNullExpressionValue("ob", "getSimpleName(...)");
        Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.checkNotNullExpressionValue(setNewSetFromMap, "newSetFromMap(...)");
        f448a = setNewSetFromMap;
    }

    public static void a(C0414mb c0414mb, long j) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        int iOrdinal = c0414mb.f.ordinal();
        if (iOrdinal == 0) {
            scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC0407m4.c.getValue();
        } else {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC0407m4.b.getValue();
        }
        scheduledThreadPoolExecutor.schedule(new RunnableC0459pb(c0414mb, C0429nb.f436a), j, TimeUnit.MILLISECONDS);
    }
}

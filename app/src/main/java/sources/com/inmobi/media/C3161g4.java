package com.inmobi.media;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.g4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3161g4 {

    /* JADX INFO: renamed from: a */
    public final AbstractC3131e4 f2088a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2907O9 f2089b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC2773Fa f2090c;

    /* JADX INFO: renamed from: d */
    public final String f2091d;

    /* JADX INFO: renamed from: e */
    public final AtomicBoolean f2092e;

    /* JADX INFO: renamed from: f */
    public final AtomicBoolean f2093f;

    /* JADX INFO: renamed from: g */
    public final LinkedList f2094g;

    /* JADX INFO: renamed from: h */
    public ScheduledExecutorService f2095h;

    /* JADX INFO: renamed from: i */
    public C3116d4 f2096i;

    public C3161g4(AbstractC3131e4 mEventDao, InterfaceC2907O9 mPayloadProvider, C3116d4 eventConfig, InterfaceC2773Fa interfaceC2773Fa) {
        Intrinsics.checkNotNullParameter(mEventDao, "mEventDao");
        Intrinsics.checkNotNullParameter(mPayloadProvider, "mPayloadProvider");
        Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
        this.f2088a = mEventDao;
        this.f2089b = mPayloadProvider;
        this.f2090c = interfaceC2773Fa;
        this.f2091d = "g4";
        this.f2092e = new AtomicBoolean(false);
        this.f2093f = new AtomicBoolean(false);
        this.f2094g = new LinkedList();
        this.f2096i = eventConfig;
    }

    /* JADX INFO: renamed from: a */
    public final void m2144a(long j, final boolean z) {
        if (this.f2094g.contains("default")) {
            return;
        }
        this.f2094g.add("default");
        if (this.f2095h == null) {
            String TAG = this.f2091d;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            this.f2095h = Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC3297p5(TAG));
        }
        Intrinsics.checkNotNullExpressionValue(this.f2091d, "TAG");
        ScheduledExecutorService scheduledExecutorService = this.f2095h;
        if (scheduledExecutorService != null) {
            final C2850Kc c2850Kc = null;
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.g4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3161g4.m2143a(this.f$0, c2850Kc, z);
                }
            };
            C3116d4 c3116d4 = this.f2096i;
            AbstractC3131e4 abstractC3131e4 = this.f2088a;
            abstractC3131e4.getClass();
            Context contextM1254d = C2849Kb.m1254d();
            long j2 = -1;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "batch_processing_info");
                String key = abstractC3131e4.f1489a.concat("_last_batch_process");
                Intrinsics.checkNotNullParameter(key, "key");
                j2 = c3133e6M2058a.f2045a.getLong(key, -1L);
            }
            if (((int) j2) == -1) {
                this.f2088a.m2094a(System.currentTimeMillis());
            }
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            scheduledExecutorService.scheduleAtFixedRate(runnable, Math.max(0L, (timeUnit.toSeconds(j2) + (c3116d4 != null ? c3116d4.f1987c : 0L)) - timeUnit.toSeconds(System.currentTimeMillis())), j, TimeUnit.SECONDS);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00de  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m2143a(com.inmobi.media.C3161g4 r16, com.inmobi.media.C2850Kc r17, boolean r18) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3161g4.m2143a(com.inmobi.media.g4, com.inmobi.media.Kc, boolean):void");
    }

    /* JADX INFO: renamed from: a */
    public final void m2145a(C3146f4 eventPayload, boolean z) {
        Intrinsics.checkNotNullParameter(eventPayload, "eventPayload");
        String TAG = this.f2091d;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        eventPayload.getClass();
        this.f2088a.m2094a(System.currentTimeMillis());
        if (this.f2090c != null) {
            ArrayList eventIds = eventPayload.f2059a;
            Intrinsics.checkNotNullParameter(eventIds, "eventIds");
            Integer num = AbstractC3274nc.f2388c;
            if (num != null && eventIds.contains(Integer.valueOf(num.intValue()))) {
                AbstractC3274nc.f2388c = null;
            }
        }
        this.f2092e.set(false);
    }
}

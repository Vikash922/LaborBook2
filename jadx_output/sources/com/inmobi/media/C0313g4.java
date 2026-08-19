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

/* JADX INFO: renamed from: com.inmobi.media.g4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0313g4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC0282e4 f356a;
    public final O9 b;
    public final Fa c;
    public final String d;
    public final AtomicBoolean e;
    public final AtomicBoolean f;
    public final LinkedList g;
    public ScheduledExecutorService h;
    public C0266d4 i;

    public C0313g4(AbstractC0282e4 mEventDao, O9 mPayloadProvider, C0266d4 eventConfig, Fa fa) {
        Intrinsics.checkNotNullParameter(mEventDao, "mEventDao");
        Intrinsics.checkNotNullParameter(mPayloadProvider, "mPayloadProvider");
        Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
        this.f356a = mEventDao;
        this.b = mPayloadProvider;
        this.c = fa;
        this.d = "g4";
        this.e = new AtomicBoolean(false);
        this.f = new AtomicBoolean(false);
        this.g = new LinkedList();
        this.i = eventConfig;
    }

    public final void a(long j, final boolean z) {
        if (this.g.contains("default")) {
            return;
        }
        this.g.add("default");
        if (this.h == null) {
            String TAG = this.d;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            this.h = Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC0453p5(TAG));
        }
        Intrinsics.checkNotNullExpressionValue(this.d, "TAG");
        ScheduledExecutorService scheduledExecutorService = this.h;
        if (scheduledExecutorService != null) {
            final Kc kc = null;
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.g4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0313g4.a(this.f$0, kc, z);
                }
            };
            C0266d4 c0266d4 = this.i;
            AbstractC0282e4 abstractC0282e4 = this.f356a;
            abstractC0282e4.getClass();
            Context contextD = Kb.d();
            long j2 = -1;
            if (contextD != null) {
                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "batch_processing_info");
                String key = abstractC0282e4.f229a.concat("_last_batch_process");
                Intrinsics.checkNotNullParameter(key, "key");
                j2 = c0284e6A.f340a.getLong(key, -1L);
            }
            if (((int) j2) == -1) {
                this.f356a.a(System.currentTimeMillis());
            }
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            scheduledExecutorService.scheduleAtFixedRate(runnable, Math.max(0L, (timeUnit.toSeconds(j2) + (c0266d4 != null ? c0266d4.c : 0L)) - timeUnit.toSeconds(System.currentTimeMillis())), j, TimeUnit.SECONDS);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(com.inmobi.media.C0313g4 r16, com.inmobi.media.Kc r17, boolean r18) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0313g4.a(com.inmobi.media.g4, com.inmobi.media.Kc, boolean):void");
    }

    public final void a(C0297f4 eventPayload, boolean z) {
        Intrinsics.checkNotNullParameter(eventPayload, "eventPayload");
        String TAG = this.d;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        eventPayload.getClass();
        this.f356a.a(System.currentTimeMillis());
        if (this.c != null) {
            ArrayList eventIds = eventPayload.f347a;
            Intrinsics.checkNotNullParameter(eventIds, "eventIds");
            Integer num = AbstractC0430nc.c;
            if (num != null && eventIds.contains(Integer.valueOf(num.intValue()))) {
                AbstractC0430nc.c = null;
            }
        }
        this.e.set(false);
    }
}

package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Nc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JSONObject f195a = new JSONObject();
    public static final LinkedHashSet b = new LinkedHashSet();
    public static Rc c;

    public static void a() {
        synchronized (f195a) {
            c = null;
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b() {
        /*
            org.json.JSONObject r0 = com.inmobi.media.Nc.f195a
            monitor-enter(r0)
            com.inmobi.media.Rc r1 = com.inmobi.media.Nc.c     // Catch: java.lang.Throwable -> L14
            if (r1 == 0) goto L11
            java.util.concurrent.atomic.AtomicBoolean r1 = r1.A     // Catch: java.lang.Throwable -> L14
            boolean r1 = r1.get()     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L11
            r1 = 1
            goto L12
        L11:
            r1 = 0
        L12:
            monitor-exit(r0)
            return r1
        L14:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Nc.b():boolean");
    }

    public static void c() {
        Rc rc;
        synchronized (f195a) {
            if (b() && (rc = c) != null) {
                rc.A.compareAndSet(false, true);
            }
            Unit unit = Unit.INSTANCE;
        }
        d();
    }

    public static void d() {
        LinkedHashMap linkedHashMap = K2.f154a;
        SignalsConfig.UnifiedIdServiceConfig unifiedIdServiceConfig = ((SignalsConfig) V4.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getUnifiedIdServiceConfig();
        synchronized (f195a) {
            String url = unifiedIdServiceConfig.getUrl();
            LinkedHashMap linkedHashMap2 = K2.f154a;
            Config configA = I2.a("signals", Kb.b(), null);
            Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
            Rc rc = new Rc(url, new Kc(((SignalsConfig) configA).getIncludeIds()), Kb.b(), unifiedIdServiceConfig.getMaxRetries(), unifiedIdServiceConfig.getRetryInterval(), unifiedIdServiceConfig.getTimeout());
            c = rc;
            RunnableC0392l5 runnableC0392l5 = new RunnableC0392l5(new Oc(rc, b), rc);
            HashMap map = new HashMap();
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("UnifiedIdNetworkCallRequested", map, EnumC0415mc.f426a);
            ((ScheduledThreadPoolExecutor) AbstractC0407m4.b.getValue()).submit(runnableC0392l5);
            Unit unit = Unit.INSTANCE;
        }
    }

    public static void e() {
        synchronized (f195a) {
            Rc rc = c;
            if (rc != null) {
                rc.A.compareAndSet(false, true);
            }
            c = null;
            b.clear();
            Unit unit = Unit.INSTANCE;
        }
    }
}

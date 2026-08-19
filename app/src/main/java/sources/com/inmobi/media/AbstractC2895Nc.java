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

/* JADX INFO: renamed from: com.inmobi.media.Nc */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2895Nc {

    /* JADX INFO: renamed from: a */
    public static final JSONObject f1319a = new JSONObject();

    /* JADX INFO: renamed from: b */
    public static final LinkedHashSet f1320b = new LinkedHashSet();

    /* JADX INFO: renamed from: c */
    public static C2953Rc f1321c;

    /* JADX INFO: renamed from: a */
    public static void m1403a() {
        synchronized (f1319a) {
            f1321c = null;
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0011  */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1404b() {
        /*
            org.json.JSONObject r0 = com.inmobi.media.AbstractC2895Nc.f1319a
            monitor-enter(r0)
            com.inmobi.media.Rc r1 = com.inmobi.media.AbstractC2895Nc.f1321c     // Catch: java.lang.Throwable -> L14
            if (r1 == 0) goto L11
            java.util.concurrent.atomic.AtomicBoolean r1 = r1.f2509A     // Catch: java.lang.Throwable -> L14
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2895Nc.m1404b():boolean");
    }

    /* JADX INFO: renamed from: c */
    public static void m1405c() {
        C2953Rc c2953Rc;
        synchronized (f1319a) {
            if (m1404b() && (c2953Rc = f1321c) != null) {
                c2953Rc.f2509A.compareAndSet(false, true);
            }
            Unit unit = Unit.INSTANCE;
        }
        m1406d();
    }

    /* JADX INFO: renamed from: d */
    public static void m1406d() {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        SignalsConfig.UnifiedIdServiceConfig unifiedIdServiceConfig = ((SignalsConfig) AbstractC3001V4.m1873a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getUnifiedIdServiceConfig();
        synchronized (f1319a) {
            String url = unifiedIdServiceConfig.getUrl();
            LinkedHashMap linkedHashMap2 = C2840K2.f1150a;
            Config configM1161a = C2810I2.m1161a("signals", C2849Kb.m1248b(), null);
            Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
            C2953Rc c2953Rc = new C2953Rc(url, new C2850Kc(((SignalsConfig) configM1161a).getIncludeIds()), C2849Kb.m1248b(), unifiedIdServiceConfig.getMaxRetries(), unifiedIdServiceConfig.getRetryInterval(), unifiedIdServiceConfig.getTimeout());
            f1321c = c2953Rc;
            RunnableC3237l5 runnableC3237l5 = new RunnableC3237l5(new C2910Oc(c2953Rc, f1320b), c2953Rc);
            HashMap map = new HashMap();
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("UnifiedIdNetworkCallRequested", map, EnumC3259mc.f2349a);
            ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue()).submit(runnableC3237l5);
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m1407e() {
        synchronized (f1319a) {
            C2953Rc c2953Rc = f1321c;
            if (c2953Rc != null) {
                c2953Rc.f2509A.compareAndSet(false, true);
            }
            f1321c = null;
            f1320b.clear();
            Unit unit = Unit.INSTANCE;
        }
    }
}

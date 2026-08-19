package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.CrashConfig;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.w5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0551w5 implements J2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0551w5 f513a;
    public static final CrashConfig b;
    public static final A3 c;
    public static final C0315g6 d;

    static {
        C0551w5 c0551w5 = new C0551w5();
        f513a = c0551w5;
        LinkedHashMap linkedHashMap = K2.f154a;
        Config configA = I2.a("crashReporting", Kb.b(), c0551w5);
        Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig");
        CrashConfig crashConfig = (CrashConfig) configA;
        b = crashConfig;
        long jCurrentTimeMillis = System.currentTimeMillis();
        d = new C0315g6(crashConfig);
        Context contextD = Kb.d();
        if (contextD != null) {
            c = new A3(contextD, crashConfig, Kb.f());
        }
        if (crashConfig.getCrashConfig().getReportSessionInfo()) {
            C0360j3 type = C0360j3.d;
            Intrinsics.checkNotNullParameter(type, "type");
            C0284e6 c0284e6A = AbstractC0595z5.a();
            if (c0284e6A != null) {
                c0284e6A.a(type.f409a, jCurrentTimeMillis, true);
            }
            C0284e6 c0284e6A2 = AbstractC0595z5.a();
            if (c0284e6A2 != null) {
                C0284e6.a(c0284e6A2, "s-cnt", 0, false, 4, (Object) null);
            }
        }
        if (AbstractC0583y9.f536a.getCrashConfig().getReportOOMInfo()) {
            for (AbstractC0390l3 type2 : CollectionsKt.listOf((Object[]) new AbstractC0390l3[]{C0375k3.d, C0344i3.d})) {
                Intrinsics.checkNotNullParameter(type2, "type");
                C0284e6 c0284e6A3 = AbstractC0595z5.a();
                if (c0284e6A3 != null) {
                    c0284e6A3.a(type2.f409a, jCurrentTimeMillis, true);
                }
            }
        }
    }

    public static void a(JSONObject payload, boolean z, long j) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (b.getCrashConfig().getReportSessionInfo() && z) {
            C0360j3 crashType = C0360j3.d;
            Intrinsics.checkNotNullParameter(crashType, "crashType");
            C0284e6 c0284e6A = AbstractC0595z5.a();
            if (c0284e6A != null) {
                String key = crashType.f409a;
                Intrinsics.checkNotNullParameter(key, "key");
                long j2 = c0284e6A.f340a.getLong(key, 0L);
                String str = crashType.b;
                if (j2 == 0) {
                    c0284e6A.a(str, j, true);
                } else {
                    c0284e6A.a(str, j - j2, true);
                }
            }
            payload.put("crashFreeSessionLength", AbstractC0595z5.a(crashType));
            C0284e6 c0284e6A2 = AbstractC0595z5.a();
            int i = 0;
            if (c0284e6A2 != null) {
                Intrinsics.checkNotNullParameter("s-cnt", "key");
                i = c0284e6A2.f340a.getInt("s-cnt", 0);
            }
            payload.put("crashFreeSessionCount", i);
        }
    }

    public final void a() {
        C0284e6 c0284e6A;
        if (b.getCrashConfig().getReportSessionInfo() && (c0284e6A = AbstractC0595z5.a()) != null) {
            Intrinsics.checkNotNullParameter("s-cnt", "key");
            C0284e6.a(c0284e6A, "s-cnt", c0284e6A.f340a.getInt("s-cnt", 0) + 1, false, 4, (Object) null);
        }
        A3 a3 = c;
        if (a3 != null) {
            Iterator it = a3.c.iterator();
            while (it.hasNext()) {
                ((AbstractC0593z3) it.next()).a();
            }
        }
        d.c();
    }

    @Override // com.inmobi.media.J2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof CrashConfig) {
            C0315g6 c0315g6 = d;
            CrashConfig crashConfig = (CrashConfig) config;
            c0315g6.getClass();
            Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
            c0315g6.f358a = crashConfig;
            C0579y5 c0579y5 = c0315g6.c;
            c0579y5.getClass();
            Intrinsics.checkNotNullParameter(crashConfig, "config");
            c0579y5.f532a.f117a = crashConfig.getCrashConfig().getSamplingPercent();
            c0579y5.b.f117a = crashConfig.getCatchConfig().getSamplingPercent();
            c0579y5.c.f117a = crashConfig.getAnr().getWatchdog().getSamplingPercent();
            c0579y5.d.f117a = crashConfig.getAnr().getAppExitReason().getSamplingPercent();
            C0313g4 c0313g4 = c0315g6.b;
            if (c0313g4 != null) {
                C0266d4 eventConfig = crashConfig.getEventConfig();
                Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
                c0313g4.i = eventConfig;
            }
            A3 a3 = c;
            if (a3 != null) {
                Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
                a3.f72a = crashConfig;
            }
        }
    }
}

package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.CrashConfig;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.w5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3402w5 implements InterfaceC2825J2 {

    /* JADX INFO: renamed from: a */
    public static final C3402w5 f2709a;

    /* JADX INFO: renamed from: b */
    public static final CrashConfig f2710b;

    /* JADX INFO: renamed from: c */
    public static final C2691A3 f2711c;

    /* JADX INFO: renamed from: d */
    public static final C3163g6 f2712d;

    static {
        C3402w5 c3402w5 = new C3402w5();
        f2709a = c3402w5;
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Config configM1161a = C2810I2.m1161a("crashReporting", C2849Kb.m1248b(), c3402w5);
        Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig");
        CrashConfig crashConfig = (CrashConfig) configM1161a;
        f2710b = crashConfig;
        long jCurrentTimeMillis = System.currentTimeMillis();
        f2712d = new C3163g6(crashConfig);
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            f2711c = new C2691A3(contextM1254d, crashConfig, C2849Kb.m1256f());
        }
        if (crashConfig.getCrashConfig().getReportSessionInfo()) {
            C3205j3 type = C3205j3.f2219d;
            Intrinsics.checkNotNullParameter(type, "type");
            C3133e6 c3133e6M2633a = AbstractC3447z5.m2633a();
            if (c3133e6M2633a != null) {
                c3133e6M2633a.m2104a(type.f2267a, jCurrentTimeMillis, true);
            }
            C3133e6 c3133e6M2633a2 = AbstractC3447z5.m2633a();
            if (c3133e6M2633a2 != null) {
                C3133e6.m2099a(c3133e6M2633a2, "s-cnt", 0, false, 4, (Object) null);
            }
        }
        if (AbstractC3436y9.f2768a.getCrashConfig().getReportOOMInfo()) {
            for (AbstractC3235l3 type2 : CollectionsKt.listOf((Object[]) new AbstractC3235l3[]{C3220k3.f2253d, C3190i3.f2177d})) {
                Intrinsics.checkNotNullParameter(type2, "type");
                C3133e6 c3133e6M2633a3 = AbstractC3447z5.m2633a();
                if (c3133e6M2633a3 != null) {
                    c3133e6M2633a3.m2104a(type2.f2267a, jCurrentTimeMillis, true);
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2551a(JSONObject payload, boolean z, long j) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (f2710b.getCrashConfig().getReportSessionInfo() && z) {
            C3205j3 crashType = C3205j3.f2219d;
            Intrinsics.checkNotNullParameter(crashType, "crashType");
            C3133e6 c3133e6M2633a = AbstractC3447z5.m2633a();
            if (c3133e6M2633a != null) {
                String key = crashType.f2267a;
                Intrinsics.checkNotNullParameter(key, "key");
                long j2 = c3133e6M2633a.f2045a.getLong(key, 0L);
                String str = crashType.f2268b;
                if (j2 == 0) {
                    c3133e6M2633a.m2104a(str, j, true);
                } else {
                    c3133e6M2633a.m2104a(str, j - j2, true);
                }
            }
            payload.put("crashFreeSessionLength", AbstractC3447z5.m2632a(crashType));
            C3133e6 c3133e6M2633a2 = AbstractC3447z5.m2633a();
            int i = 0;
            if (c3133e6M2633a2 != null) {
                Intrinsics.checkNotNullParameter("s-cnt", "key");
                i = c3133e6M2633a2.f2045a.getInt("s-cnt", 0);
            }
            payload.put("crashFreeSessionCount", i);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2552a() {
        C3133e6 c3133e6M2633a;
        if (f2710b.getCrashConfig().getReportSessionInfo() && (c3133e6M2633a = AbstractC3447z5.m2633a()) != null) {
            Intrinsics.checkNotNullParameter("s-cnt", "key");
            C3133e6.m2099a(c3133e6M2633a, "s-cnt", c3133e6M2633a.f2045a.getInt("s-cnt", 0) + 1, false, 4, (Object) null);
        }
        C2691A3 c2691a3 = f2711c;
        if (c2691a3 != null) {
            Iterator it = c2691a3.f820c.iterator();
            while (it.hasNext()) {
                ((AbstractC3445z3) it.next()).mo2011a();
            }
        }
        f2712d.m2162c();
    }

    @Override // com.inmobi.media.InterfaceC2825J2
    /* JADX INFO: renamed from: a */
    public final void mo1057a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof CrashConfig) {
            C3163g6 c3163g6 = f2712d;
            CrashConfig crashConfig = (CrashConfig) config;
            c3163g6.getClass();
            Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
            c3163g6.f2099a = crashConfig;
            C3432y5 c3432y5 = c3163g6.f2101c;
            c3432y5.getClass();
            Intrinsics.checkNotNullParameter(crashConfig, "config");
            c3432y5.f2756a.f1037a = crashConfig.getCrashConfig().getSamplingPercent();
            c3432y5.f2757b.f1037a = crashConfig.getCatchConfig().getSamplingPercent();
            c3432y5.f2758c.f1037a = crashConfig.getAnr().getWatchdog().getSamplingPercent();
            c3432y5.f2759d.f1037a = crashConfig.getAnr().getAppExitReason().getSamplingPercent();
            C3161g4 c3161g4 = c3163g6.f2100b;
            if (c3161g4 != null) {
                C3116d4 eventConfig = crashConfig.getEventConfig();
                Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
                c3161g4.f2096i = eventConfig;
            }
            C2691A3 c2691a3 = f2711c;
            if (c2691a3 != null) {
                Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
                c2691a3.f818a = crashConfig;
            }
        }
    }
}

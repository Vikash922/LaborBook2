package com.inmobi.media;

import android.os.Debug;
import com.inmobi.commons.core.configs.CrashConfig;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.y9 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3436y9 {

    /* JADX INFO: renamed from: a */
    public static final CrashConfig f2768a;

    static {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        f2768a = (CrashConfig) AbstractC3001V4.m1873a("crashReporting", "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig", null);
        System.currentTimeMillis();
    }

    /* JADX INFO: renamed from: a */
    public static void m2622a(JSONObject payload, boolean z, boolean z2, long j) {
        int i;
        int i2;
        long[] jArr;
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (f2768a.getCrashConfig().getReportOOMInfo() && z) {
            AbstractC3235l3 crashType = z2 ? C3220k3.f2253d : C3190i3.f2177d;
            Intrinsics.checkNotNullParameter(crashType, "type");
            C3133e6 c3133e6M2633a = AbstractC3447z5.m2633a();
            if (c3133e6M2633a != null) {
                String key = crashType.f2269c;
                Intrinsics.checkNotNullParameter(key, "key");
                c3133e6M2633a.m2103a(crashType.f2269c, c3133e6M2633a.f2045a.getInt(key, 0) + 1, true);
            }
            Intrinsics.checkNotNullParameter(crashType, "crashType");
            C3133e6 c3133e6M2633a2 = AbstractC3447z5.m2633a();
            if (c3133e6M2633a2 != null) {
                String key2 = crashType.f2267a;
                Intrinsics.checkNotNullParameter(key2, "key");
                long j2 = c3133e6M2633a2.f2045a.getLong(key2, 0L);
                String str = crashType.f2268b;
                if (j2 == 0) {
                    c3133e6M2633a2.m2104a(str, j, true);
                } else {
                    c3133e6M2633a2.m2104a(str, j - j2, true);
                }
            }
            if (z2) {
                C3220k3 type = C3220k3.f2253d;
                Intrinsics.checkNotNullParameter(type, "type");
                C3133e6 c3133e6M2633a3 = AbstractC3447z5.m2633a();
                if (c3133e6M2633a3 != null) {
                    String key3 = type.f2269c;
                    Intrinsics.checkNotNullParameter(key3, "key");
                    i = c3133e6M2633a3.f2045a.getInt(key3, 0);
                } else {
                    i = 0;
                }
                C3190i3 type2 = C3190i3.f2177d;
                Intrinsics.checkNotNullParameter(type2, "type");
                C3133e6 c3133e6M2633a4 = AbstractC3447z5.m2633a();
                if (c3133e6M2633a4 != null) {
                    String key4 = type2.f2269c;
                    Intrinsics.checkNotNullParameter(key4, "key");
                    i2 = c3133e6M2633a4.f2045a.getInt(key4, 0);
                } else {
                    i2 = 0;
                }
                int i3 = i + i2;
                float f = i3 > 0 ? (i * 100.0f) / i3 : 0.0f;
                payload.put("inmobiOOMCount", i);
                payload.put("appOOMCount", i2);
                payload.put("appOomCrashInterval", AbstractC3447z5.m2632a(type2));
                payload.put("inmOOMCrashInterval", AbstractC3447z5.m2632a(type));
                payload.put("oomRatioInMobiToApp", Float.valueOf(f));
                if (C2751E3.f962a.m1013H()) {
                    long jLongValue = 0;
                    long jLongValue2 = 0;
                    for (Map.Entry<String, String> entry : Debug.getRuntimeStats().entrySet()) {
                        String key5 = entry.getKey();
                        String value = entry.getValue();
                        if (Intrinsics.areEqual(key5, "art.gc.blocking-gc-count")) {
                            Intrinsics.checkNotNull(value);
                            Long longOrNull = StringsKt.toLongOrNull(value);
                            jLongValue = longOrNull != null ? longOrNull.longValue() : 0L;
                        } else if (Intrinsics.areEqual(key5, "art.gc.gc-count")) {
                            Intrinsics.checkNotNull(value);
                            Long longOrNull2 = StringsKt.toLongOrNull(value);
                            jLongValue2 = longOrNull2 != null ? longOrNull2.longValue() : 0L;
                        }
                    }
                    jArr = new long[]{jLongValue, jLongValue2};
                } else {
                    jArr = null;
                }
                if (jArr != null) {
                    payload.put("blockingGcCount", jArr[0]);
                    payload.put("gcCount", jArr[1]);
                }
            }
        }
    }
}

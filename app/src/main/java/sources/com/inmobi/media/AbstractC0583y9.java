package com.inmobi.media;

import android.os.Debug;
import com.inmobi.commons.core.configs.CrashConfig;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.y9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0583y9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CrashConfig f536a;

    static {
        LinkedHashMap linkedHashMap = K2.f154a;
        f536a = (CrashConfig) V4.a("crashReporting", "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig", null);
        System.currentTimeMillis();
    }

    public static void a(JSONObject payload, boolean z, boolean z2, long j) {
        int i;
        int i2;
        long[] jArr;
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (f536a.getCrashConfig().getReportOOMInfo() && z) {
            AbstractC0390l3 crashType = z2 ? C0375k3.d : C0344i3.d;
            Intrinsics.checkNotNullParameter(crashType, "type");
            C0284e6 c0284e6A = AbstractC0595z5.a();
            if (c0284e6A != null) {
                String key = crashType.c;
                Intrinsics.checkNotNullParameter(key, "key");
                c0284e6A.a(crashType.c, c0284e6A.f340a.getInt(key, 0) + 1, true);
            }
            Intrinsics.checkNotNullParameter(crashType, "crashType");
            C0284e6 c0284e6A2 = AbstractC0595z5.a();
            if (c0284e6A2 != null) {
                String key2 = crashType.f409a;
                Intrinsics.checkNotNullParameter(key2, "key");
                long j2 = c0284e6A2.f340a.getLong(key2, 0L);
                String str = crashType.b;
                if (j2 == 0) {
                    c0284e6A2.a(str, j, true);
                } else {
                    c0284e6A2.a(str, j - j2, true);
                }
            }
            if (z2) {
                C0375k3 type = C0375k3.d;
                Intrinsics.checkNotNullParameter(type, "type");
                C0284e6 c0284e6A3 = AbstractC0595z5.a();
                if (c0284e6A3 != null) {
                    String key3 = type.c;
                    Intrinsics.checkNotNullParameter(key3, "key");
                    i = c0284e6A3.f340a.getInt(key3, 0);
                } else {
                    i = 0;
                }
                C0344i3 type2 = C0344i3.d;
                Intrinsics.checkNotNullParameter(type2, "type");
                C0284e6 c0284e6A4 = AbstractC0595z5.a();
                if (c0284e6A4 != null) {
                    String key4 = type2.c;
                    Intrinsics.checkNotNullParameter(key4, "key");
                    i2 = c0284e6A4.f340a.getInt(key4, 0);
                } else {
                    i2 = 0;
                }
                int i3 = i + i2;
                float f = i3 > 0 ? (i * 100.0f) / i3 : 0.0f;
                payload.put("inmobiOOMCount", i);
                payload.put("appOOMCount", i2);
                payload.put("appOomCrashInterval", AbstractC0595z5.a(type2));
                payload.put("inmOOMCrashInterval", AbstractC0595z5.a(type));
                payload.put("oomRatioInMobiToApp", Float.valueOf(f));
                if (E3.f104a.H()) {
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

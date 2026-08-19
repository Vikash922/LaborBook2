package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.CrashConfig;
import com.inmobi.commons.core.configs.RootConfig;
import com.inmobi.commons.core.configs.SignalsConfig;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class C2 {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Config a(String configType, String str) {
        Intrinsics.checkNotNullParameter(configType, "configType");
        switch (configType.hashCode()) {
            case -60641721:
                if (configType.equals("crashReporting")) {
                    return new CrashConfig(str);
                }
                break;
            case 96432:
                if (configType.equals("ads")) {
                    return new AdConfig(str);
                }
                break;
            case 3506402:
                if (configType.equals(CommonCssConstants.ROOT)) {
                    return new RootConfig(str);
                }
                break;
            case 780346297:
                if (configType.equals("telemetry")) {
                    return new TelemetryConfig(str);
                }
                break;
            case 2088265419:
                if (configType.equals("signals")) {
                    return new SignalsConfig(str);
                }
                break;
        }
        return new AdConfig(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.commons.core.configs.Config a(java.lang.String r4, org.json.JSONObject r5, java.lang.String r6, long r7) {
        /*
            Method dump skipped, instruction units count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2.a(java.lang.String, org.json.JSONObject, java.lang.String, long):com.inmobi.commons.core.configs.Config");
    }
}

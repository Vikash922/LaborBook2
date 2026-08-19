package com.inmobi.media;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.ma, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0413ma {
    public static final void a(AbstractC0398la telemetryType) {
        Intrinsics.checkNotNullParameter(telemetryType, "telemetryType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (telemetryType instanceof C0336ha) {
            linkedHashMap.put("trigger", ((C0336ha) telemetryType).f375a);
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("BillingClientConnectionError", linkedHashMap, EnumC0415mc.f426a);
            return;
        }
        if (telemetryType instanceof C0351ia) {
            linkedHashMap.put("errorCode", Short.valueOf(((C0351ia) telemetryType).f386a));
            C0353ic c0353ic2 = C0353ic.f388a;
            C0353ic.b("IAPFetchFailed", linkedHashMap, EnumC0415mc.f426a);
        } else {
            if (!(telemetryType instanceof C0382ka)) {
                if (telemetryType instanceof C0367ja) {
                    C0353ic c0353ic3 = C0353ic.f388a;
                    C0353ic.b("IAPFetchSuccess", linkedHashMap, EnumC0415mc.f426a);
                    return;
                }
                return;
            }
            String str = ((C0382ka) telemetryType).f405a;
            if (str != null) {
                linkedHashMap.put("trigger", str);
            }
            C0353ic c0353ic4 = C0353ic.f388a;
            C0353ic.b("BillingClientNotCompatible", linkedHashMap, EnumC0415mc.f426a);
        }
    }
}

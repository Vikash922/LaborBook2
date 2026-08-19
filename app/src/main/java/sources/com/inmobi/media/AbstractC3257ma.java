package com.inmobi.media;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.ma */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3257ma {
    /* JADX INFO: renamed from: a */
    public static final void m2298a(AbstractC3242la telemetryType) {
        Intrinsics.checkNotNullParameter(telemetryType, "telemetryType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (telemetryType instanceof C3182ha) {
            linkedHashMap.put("trigger", ((C3182ha) telemetryType).f2150a);
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("BillingClientConnectionError", linkedHashMap, EnumC3259mc.f2349a);
            return;
        }
        if (telemetryType instanceof C3197ia) {
            linkedHashMap.put("errorCode", Short.valueOf(((C3197ia) telemetryType).f2182a));
            C3199ic c3199ic2 = C3199ic.f2193a;
            C3199ic.m2248b("IAPFetchFailed", linkedHashMap, EnumC3259mc.f2349a);
        } else {
            if (!(telemetryType instanceof C3227ka)) {
                if (telemetryType instanceof C3212ja) {
                    C3199ic c3199ic3 = C3199ic.f2193a;
                    C3199ic.m2248b("IAPFetchSuccess", linkedHashMap, EnumC3259mc.f2349a);
                    return;
                }
                return;
            }
            String str = ((C3227ka) telemetryType).f2259a;
            if (str != null) {
                linkedHashMap.put("trigger", str);
            }
            C3199ic c3199ic4 = C3199ic.f2193a;
            C3199ic.m2248b("BillingClientNotCompatible", linkedHashMap, EnumC3259mc.f2349a);
        }
    }
}

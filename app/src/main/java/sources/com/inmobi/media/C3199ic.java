package com.inmobi.media;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.ServerProtocol;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.TelemetryConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.objectweb.asm.Opcodes;

/* JADX INFO: renamed from: com.inmobi.media.ic */
/* JADX INFO: loaded from: classes6.dex */
public final class C3199ic implements InterfaceC2907O9, InterfaceC2773Fa, InterfaceC2825J2 {

    /* JADX INFO: renamed from: a */
    public static final C3199ic f2193a;

    /* JADX INFO: renamed from: b */
    public static final String f2194b;

    /* JADX INFO: renamed from: c */
    public static final List f2195c;

    /* JADX INFO: renamed from: d */
    public static final AtomicBoolean f2196d;

    /* JADX INFO: renamed from: e */
    public static volatile TelemetryConfig f2197e;

    /* JADX INFO: renamed from: f */
    public static C3161g4 f2198f;

    /* JADX INFO: renamed from: g */
    public static volatile C3379uc f2199g;

    /* JADX INFO: renamed from: h */
    public static final C3184hc f2200h;

    /* JADX INFO: renamed from: i */
    public static C3319qc f2201i;

    static {
        C3199ic c3199ic = new C3199ic();
        f2193a = c3199ic;
        Intrinsics.checkNotNullExpressionValue("ic", "getSimpleName(...)");
        f2194b = "ic";
        List listMutableListOf = CollectionsKt.mutableListOf("AdLoadCalled", "AdLoadDroppedAtSDK", "AdLoadSuccessful", "AdLoadFailed", "ServerFill", "ServerNoFill", "ServerError", "AssetDownloaded", "AdShowCalled", "AdShowSuccessful", "AdShowFailed", "AdGetSignalsCalled", "AdGetSignalsSucceeded", "AdGetSignalsFailed", "UnifiedIdNetworkCallRequested", "UnifiedIdNetworkResponseFailure", "FetchApiInvoked", "FetchCallbackFailure", "AdImpressionSuccessful", "RenderSuccess", "ParseSuccess", "PageStarted", "WebViewLoadFinished", "FireAdReady", "WebViewLoadCalled", "FireAdFailed", "ResourceCacheMiss", "ResourceCacheHit", "ResourceDiskCacheFileMissing", "ResourceDiskCacheFileEvicted", "LowAvailableSpaceForCache", "WebViewRenderProcessGoneEvent", "clickStartCalled", "landingsStartSuccess", "landingsStartFailed", "browserOpenFailed", "landingsPageStarted", "landingsCompleteSuccess", "landingsCompleteFailed", "ImmersiveNotSupported", "AdNotReady", "IAPFetchFailed", "BillingClientConnectionError", "BillingClientNotCompatible");
        f2195c = listMutableListOf;
        f2196d = new AtomicBoolean(false);
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Config configM1161a = C2810I2.m1161a("telemetry", C2849Kb.m1248b(), c3199ic);
        Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig");
        f2197e = (TelemetryConfig) configM1161a;
        TelemetryConfig telemetryConfig = f2197e;
        f2199g = new C3379uc(new C3244lc(telemetryConfig.getEnabled(), telemetryConfig.getAssetReporting().isImageEnabled(), telemetryConfig.getAssetReporting().isGifEnabled(), telemetryConfig.getAssetReporting().isVideoEnabled(), telemetryConfig.getDisableAllGeneralEvents(), telemetryConfig.getPriorityEventsList(), telemetryConfig.getSamplingFactor()), CollectionsKt.toList(listMutableListOf));
        f2200h = C3184hc.f2152a;
    }

    /* JADX INFO: renamed from: b */
    public static final void m2248b(final String eventType, final Map keyValueMap, final EnumC3259mc telemetryEventType) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(keyValueMap, "keyValueMap");
        Intrinsics.checkNotNullParameter(telemetryEventType, "telemetryEventType");
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.ic$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3199ic.m2250c(eventType, keyValueMap, telemetryEventType);
            }
        });
    }

    /* JADX INFO: renamed from: c */
    public static final void m2249c() {
        if (f2196d.getAndSet(true)) {
            return;
        }
        C3199ic c3199ic = f2193a;
        if (AbstractC2942R1.m1750a((AbstractC2942R1) AbstractC2744Db.m970e()) > 0) {
            c3199ic.m2251b();
        }
        C2849Kb.m1256f().m2215a(new int[]{2, 1, Opcodes.FCMPG, Opcodes.DCMPG, Opcodes.DCMPL}, f2200h);
        f2201i = new C3319qc(f2197e);
    }

    @Override // com.inmobi.media.InterfaceC2825J2
    /* JADX INFO: renamed from: a */
    public final void mo1057a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof TelemetryConfig) {
            TelemetryConfig telemetryConfig = (TelemetryConfig) config;
            f2197e = telemetryConfig;
            f2199g = new C3379uc(new C3244lc(telemetryConfig.getEnabled(), telemetryConfig.getAssetReporting().isImageEnabled(), telemetryConfig.getAssetReporting().isGifEnabled(), telemetryConfig.getAssetReporting().isVideoEnabled(), telemetryConfig.getDisableAllGeneralEvents(), telemetryConfig.getPriorityEventsList(), telemetryConfig.getSamplingFactor()), CollectionsKt.toList(f2195c));
            C3319qc c3319qc = f2201i;
            if (c3319qc != null) {
                Intrinsics.checkNotNullParameter(telemetryConfig, "telemetryConfig");
                c3319qc.f2469a = telemetryConfig;
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m2251b() {
        if (f2196d.get()) {
            C3116d4 eventConfig = f2197e.getEventConfig();
            eventConfig.f1995k = f2197e.getTelemetryUrl();
            C3161g4 c3161g4 = f2198f;
            if (c3161g4 == null) {
                f2198f = new C3161g4(AbstractC2744Db.m970e(), this, eventConfig, this);
            } else {
                Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
                c3161g4.f2096i = eventConfig;
            }
            C3161g4 c3161g42 = f2198f;
            if (c3161g42 != null) {
                C3116d4 c3116d4 = c3161g42.f2096i;
                if (c3161g42.f2093f.get() || c3116d4 == null) {
                    return;
                }
                c3161g42.m2144a(c3116d4.f1987c, true);
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static final void m2250c(String eventType, Map keyValueMap, EnumC3259mc telemetryEventType) {
        String str;
        Intrinsics.checkNotNullParameter(eventType, "$eventType");
        Intrinsics.checkNotNullParameter(keyValueMap, "$keyValueMap");
        Intrinsics.checkNotNullParameter(telemetryEventType, "$telemetryEventType");
        Objects.toString(keyValueMap);
        try {
            if (f2199g == null) {
                return;
            }
            C3199ic c3199ic = f2193a;
            if (m2247a(eventType, keyValueMap, telemetryEventType)) {
                return;
            }
            C3379uc c3379uc = f2199g;
            if (c3379uc == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mTelemetryValidator");
                c3379uc = null;
            }
            int iM2495a = c3379uc.m2495a(telemetryEventType, eventType);
            if (iM2495a == 0) {
                keyValueMap.put("samplingRate", Integer.valueOf(MathKt.roundToInt((((double) 1) - f2197e.getSamplingFactor()) * ((double) 100))));
            } else if (iM2495a != 1) {
                return;
            } else {
                keyValueMap.put("samplingRate", 100);
            }
            int iOrdinal = telemetryEventType.ordinal();
            if (iOrdinal == 0) {
                str = ServerProtocol.DIALOG_PARAM_SDK_VERSION;
            } else {
                if (iOrdinal != 1) {
                    throw new NoWhenBranchMatchedException();
                }
                str = SDKConstants.PARAM_UPDATE_TEMPLATE;
            }
            C3304pc c3304pc = new C3304pc(eventType, null, str);
            keyValueMap.put("eventType", c3304pc.f1525a);
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            keyValueMap.put("eventId", string);
            keyValueMap.put("isTemplateEvent", Boolean.valueOf(telemetryEventType == EnumC3259mc.f2350b));
            String payload = new JSONObject(keyValueMap).toString();
            Intrinsics.checkNotNullExpressionValue(payload, "toString(...)");
            Intrinsics.checkNotNullParameter(payload, "payload");
            c3304pc.f1528d = payload;
            int iM1750a = (AbstractC2942R1.m1750a((AbstractC2942R1) AbstractC2744Db.m970e()) + 1) - f2197e.getMaxEventsToPersist();
            if (iM1750a > 0) {
                AbstractC2744Db.m970e().m2093a(iM1750a);
                int iM2321a = AbstractC3274nc.m2321a() + iM1750a;
                if (iM2321a != -1) {
                    AbstractC3274nc.f2387b = iM2321a;
                    C3133e6 c3133e6 = AbstractC3274nc.f2386a;
                    if (c3133e6 != null) {
                        C3133e6.m2099a(c3133e6, "count", iM2321a, false, 4, (Object) null);
                    }
                }
            }
            AbstractC2744Db.m970e().m1753a(c3304pc);
            c3199ic.m2251b();
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x009d  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2247a(java.lang.String r5, java.util.Map r6, com.inmobi.media.EnumC3259mc r7) {
        /*
            com.inmobi.media.uc r0 = com.inmobi.media.C3199ic.f2199g
            if (r0 != 0) goto La
            java.lang.String r0 = "mTelemetryValidator"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            r0 = 0
        La:
            r0.getClass()
            java.lang.String r1 = "telemetryEventType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r1)
            java.lang.String r1 = "keyValueMap"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r1)
            java.lang.String r2 = "eventType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            com.inmobi.media.lc r3 = r0.f2671a
            boolean r3 = r3.f2300a
            r4 = 1
            if (r3 != 0) goto L25
            goto L9d
        L25:
            int r7 = r7.ordinal()
            if (r7 == 0) goto L35
            if (r7 != r4) goto L2f
            goto L9f
        L2f:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        L35:
            com.inmobi.media.Eb r7 = r0.f2672b
            r7.getClass()
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            com.inmobi.media.lc r0 = r7.f1011a
            boolean r1 = r0.f2304e
            if (r1 == 0) goto L4f
            java.util.List r0 = r0.f2305f
            boolean r0 = r0.contains(r5)
            if (r0 != 0) goto L4f
            goto L9d
        L4f:
            boolean r0 = r6.isEmpty()
            if (r0 != 0) goto L9f
            java.lang.String r0 = "AssetDownloaded"
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
            if (r5 == 0) goto L9f
            java.lang.String r5 = "assetType"
            boolean r0 = r6.containsKey(r5)
            if (r0 == 0) goto L9f
            java.lang.Object r0 = r6.get(r5)
            java.lang.String r1 = "image"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r0)
            if (r0 == 0) goto L78
            com.inmobi.media.lc r0 = r7.f1011a
            boolean r0 = r0.f2301b
            if (r0 != 0) goto L78
            goto L9d
        L78:
            java.lang.Object r0 = r6.get(r5)
            java.lang.String r1 = "gif"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r0)
            if (r0 == 0) goto L8b
            com.inmobi.media.lc r0 = r7.f1011a
            boolean r0 = r0.f2302c
            if (r0 != 0) goto L8b
            goto L9d
        L8b:
            java.lang.Object r5 = r6.get(r5)
            java.lang.String r6 = "video"
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r5)
            if (r5 == 0) goto L9f
            com.inmobi.media.lc r5 = r7.f1011a
            boolean r5 = r5.f2303d
            if (r5 != 0) goto L9f
        L9d:
            r5 = 0
            goto La0
        L9f:
            r5 = r4
        La0:
            r5 = r5 ^ r4
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3199ic.m2247a(java.lang.String, java.util.Map, com.inmobi.media.mc):boolean");
    }

    @Override // com.inmobi.media.InterfaceC2907O9
    /* JADX INFO: renamed from: a */
    public final C3146f4 mo1420a() {
        int iM2314a;
        String string;
        if (C2751E3.f962a.m1032p() == 1) {
            iM2314a = f2197e.getWifiConfig().m2314a();
        } else {
            iM2314a = f2197e.getMobileConfig().m2314a();
        }
        List<C3304pc> mutableList = CollectionsKt.toMutableList((Collection) AbstractC2744Db.m970e().m2096b(iM2314a));
        if (!m2247a("DatabaseMaxLimitReachedV2", MapsKt.emptyMap(), EnumC3259mc.f2349a) && mutableList.size() < iM2314a && AbstractC3274nc.m2321a() > 0) {
            int iM2321a = AbstractC3274nc.m2321a();
            C3304pc c3304pc = new C3304pc("DatabaseMaxLimitReachedV2", null, ServerProtocol.DIALOG_PARAM_SDK_VERSION);
            String string2 = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.m2729to("eventId", string2), TuplesKt.m2729to("eventType", "DatabaseMaxLimitReachedV2"), TuplesKt.m2729to("samplingRate", 100), TuplesKt.m2729to("isTemplateEvent", Boolean.FALSE), TuplesKt.m2729to("eventLostCount", Integer.valueOf(iM2321a)));
            Intrinsics.checkNotNull(mapHashMapOf, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
            String payload = new JSONObject(mapHashMapOf).toString();
            Intrinsics.checkNotNullExpressionValue(payload, "toString(...)");
            Intrinsics.checkNotNullParameter(payload, "payload");
            c3304pc.f1528d = payload;
            AbstractC3274nc.f2388c = Integer.valueOf(c3304pc.f1527c);
            mutableList.add(c3304pc);
        }
        if (!mutableList.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = mutableList.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((C3304pc) it.next()).f1527c));
            }
            try {
                String strM1248b = C2849Kb.m1248b();
                if (strM1248b == null) {
                    strM1248b = "";
                }
                Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m2729to("im-accid", strM1248b), TuplesKt.m2729to("version", "4.0.0"), TuplesKt.m2729to("mk-version", C2864Lb.m1313a()), TuplesKt.m2729to("u-appbid", C3098c1.f1905a), TuplesKt.m2729to("tp", C2864Lb.m1318d()));
                String strM1320f = C2864Lb.m1320f();
                if (strM1320f != null) {
                    mapMutableMapOf.put("tp-v", strM1320f);
                }
                Intrinsics.checkNotNull(mapMutableMapOf, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
                JSONObject jSONObject = new JSONObject(mapMutableMapOf);
                JSONArray jSONArray = new JSONArray();
                for (C3304pc c3304pc2 : mutableList) {
                    if (StringsKt.trim((CharSequence) c3304pc2.m1776a()).toString().length() > 0) {
                        jSONArray.put(new JSONObject(c3304pc2.m1776a()));
                    }
                }
                jSONObject.put("payload", jSONArray);
                string = jSONObject.toString();
            } catch (JSONException unused) {
                string = null;
            }
            if (string != null) {
                return new C3146f4(arrayList, string);
            }
        }
        return null;
    }
}

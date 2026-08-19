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

/* JADX INFO: renamed from: com.inmobi.media.ic, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0353ic implements O9, Fa, J2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0353ic f388a;
    public static final String b;
    public static final List c;
    public static final AtomicBoolean d;
    public static volatile TelemetryConfig e;
    public static C0313g4 f;
    public static volatile C0530uc g;
    public static final C0338hc h;
    public static C0475qc i;

    static {
        C0353ic c0353ic = new C0353ic();
        f388a = c0353ic;
        Intrinsics.checkNotNullExpressionValue("ic", "getSimpleName(...)");
        b = "ic";
        List listMutableListOf = CollectionsKt.mutableListOf("AdLoadCalled", "AdLoadDroppedAtSDK", "AdLoadSuccessful", "AdLoadFailed", "ServerFill", "ServerNoFill", "ServerError", "AssetDownloaded", "AdShowCalled", "AdShowSuccessful", "AdShowFailed", "AdGetSignalsCalled", "AdGetSignalsSucceeded", "AdGetSignalsFailed", "UnifiedIdNetworkCallRequested", "UnifiedIdNetworkResponseFailure", "FetchApiInvoked", "FetchCallbackFailure", "AdImpressionSuccessful", "RenderSuccess", "ParseSuccess", "PageStarted", "WebViewLoadFinished", "FireAdReady", "WebViewLoadCalled", "FireAdFailed", "ResourceCacheMiss", "ResourceCacheHit", "ResourceDiskCacheFileMissing", "ResourceDiskCacheFileEvicted", "LowAvailableSpaceForCache", "WebViewRenderProcessGoneEvent", "clickStartCalled", "landingsStartSuccess", "landingsStartFailed", "browserOpenFailed", "landingsPageStarted", "landingsCompleteSuccess", "landingsCompleteFailed", "ImmersiveNotSupported", "AdNotReady", "IAPFetchFailed", "BillingClientConnectionError", "BillingClientNotCompatible");
        c = listMutableListOf;
        d = new AtomicBoolean(false);
        LinkedHashMap linkedHashMap = K2.f154a;
        Config configA = I2.a("telemetry", Kb.b(), c0353ic);
        Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig");
        e = (TelemetryConfig) configA;
        TelemetryConfig telemetryConfig = e;
        g = new C0530uc(new C0400lc(telemetryConfig.getEnabled(), telemetryConfig.getAssetReporting().isImageEnabled(), telemetryConfig.getAssetReporting().isGifEnabled(), telemetryConfig.getAssetReporting().isVideoEnabled(), telemetryConfig.getDisableAllGeneralEvents(), telemetryConfig.getPriorityEventsList(), telemetryConfig.getSamplingFactor()), CollectionsKt.toList(listMutableListOf));
        h = C0338hc.f377a;
    }

    public static final void b(final String eventType, final Map keyValueMap, final EnumC0415mc telemetryEventType) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(keyValueMap, "keyValueMap");
        Intrinsics.checkNotNullParameter(telemetryEventType, "telemetryEventType");
        Kb.a(new Runnable() { // from class: com.inmobi.media.ic$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0353ic.c(eventType, keyValueMap, telemetryEventType);
            }
        });
    }

    public static final void c() {
        if (d.getAndSet(true)) {
            return;
        }
        C0353ic c0353ic = f388a;
        if (R1.a((R1) Db.e()) > 0) {
            c0353ic.b();
        }
        Kb.f().a(new int[]{2, 1, Opcodes.FCMPG, Opcodes.DCMPG, Opcodes.DCMPL}, h);
        i = new C0475qc(e);
    }

    @Override // com.inmobi.media.J2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof TelemetryConfig) {
            TelemetryConfig telemetryConfig = (TelemetryConfig) config;
            e = telemetryConfig;
            g = new C0530uc(new C0400lc(telemetryConfig.getEnabled(), telemetryConfig.getAssetReporting().isImageEnabled(), telemetryConfig.getAssetReporting().isGifEnabled(), telemetryConfig.getAssetReporting().isVideoEnabled(), telemetryConfig.getDisableAllGeneralEvents(), telemetryConfig.getPriorityEventsList(), telemetryConfig.getSamplingFactor()), CollectionsKt.toList(c));
            C0475qc c0475qc = i;
            if (c0475qc != null) {
                Intrinsics.checkNotNullParameter(telemetryConfig, "telemetryConfig");
                c0475qc.f464a = telemetryConfig;
            }
        }
    }

    public final void b() {
        if (d.get()) {
            C0266d4 eventConfig = e.getEventConfig();
            eventConfig.k = e.getTelemetryUrl();
            C0313g4 c0313g4 = f;
            if (c0313g4 == null) {
                f = new C0313g4(Db.e(), this, eventConfig, this);
            } else {
                Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
                c0313g4.i = eventConfig;
            }
            C0313g4 c0313g42 = f;
            if (c0313g42 != null) {
                C0266d4 c0266d4 = c0313g42.i;
                if (c0313g42.f.get() || c0266d4 == null) {
                    return;
                }
                c0313g42.a(c0266d4.c, true);
            }
        }
    }

    public static final void c(String eventType, Map keyValueMap, EnumC0415mc telemetryEventType) {
        String str;
        Intrinsics.checkNotNullParameter(eventType, "$eventType");
        Intrinsics.checkNotNullParameter(keyValueMap, "$keyValueMap");
        Intrinsics.checkNotNullParameter(telemetryEventType, "$telemetryEventType");
        Objects.toString(keyValueMap);
        try {
            if (g == null) {
                return;
            }
            C0353ic c0353ic = f388a;
            if (a(eventType, keyValueMap, telemetryEventType)) {
                return;
            }
            C0530uc c0530uc = g;
            if (c0530uc == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mTelemetryValidator");
                c0530uc = null;
            }
            int iA = c0530uc.a(telemetryEventType, eventType);
            if (iA == 0) {
                keyValueMap.put("samplingRate", Integer.valueOf(MathKt.roundToInt((((double) 1) - e.getSamplingFactor()) * ((double) 100))));
            } else if (iA != 1) {
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
            C0460pc c0460pc = new C0460pc(eventType, null, str);
            keyValueMap.put("eventType", c0460pc.f238a);
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            keyValueMap.put("eventId", string);
            keyValueMap.put("isTemplateEvent", Boolean.valueOf(telemetryEventType == EnumC0415mc.b));
            String payload = new JSONObject(keyValueMap).toString();
            Intrinsics.checkNotNullExpressionValue(payload, "toString(...)");
            Intrinsics.checkNotNullParameter(payload, "payload");
            c0460pc.d = payload;
            int iA2 = (R1.a((R1) Db.e()) + 1) - e.getMaxEventsToPersist();
            if (iA2 > 0) {
                Db.e().a(iA2);
                int iA3 = AbstractC0430nc.a() + iA2;
                if (iA3 != -1) {
                    AbstractC0430nc.b = iA3;
                    C0284e6 c0284e6 = AbstractC0430nc.f437a;
                    if (c0284e6 != null) {
                        C0284e6.a(c0284e6, "count", iA3, false, 4, (Object) null);
                    }
                }
            }
            Db.e().a(c0460pc);
            c0353ic.b();
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r5, java.util.Map r6, com.inmobi.media.EnumC0415mc r7) {
        /*
            com.inmobi.media.uc r0 = com.inmobi.media.C0353ic.g
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
            com.inmobi.media.lc r3 = r0.f503a
            boolean r3 = r3.f415a
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
            com.inmobi.media.Eb r7 = r0.b
            r7.getClass()
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            com.inmobi.media.lc r0 = r7.f110a
            boolean r1 = r0.e
            if (r1 == 0) goto L4f
            java.util.List r0 = r0.f
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
            com.inmobi.media.lc r0 = r7.f110a
            boolean r0 = r0.b
            if (r0 != 0) goto L78
            goto L9d
        L78:
            java.lang.Object r0 = r6.get(r5)
            java.lang.String r1 = "gif"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r0)
            if (r0 == 0) goto L8b
            com.inmobi.media.lc r0 = r7.f110a
            boolean r0 = r0.c
            if (r0 != 0) goto L8b
            goto L9d
        L8b:
            java.lang.Object r5 = r6.get(r5)
            java.lang.String r6 = "video"
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r5)
            if (r5 == 0) goto L9f
            com.inmobi.media.lc r5 = r7.f110a
            boolean r5 = r5.d
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0353ic.a(java.lang.String, java.util.Map, com.inmobi.media.mc):boolean");
    }

    @Override // com.inmobi.media.O9
    public final C0297f4 a() {
        int iA;
        String string;
        if (E3.f104a.p() == 1) {
            iA = e.getWifiConfig().a();
        } else {
            iA = e.getMobileConfig().a();
        }
        List<C0460pc> mutableList = CollectionsKt.toMutableList((Collection) Db.e().b(iA));
        if (!a("DatabaseMaxLimitReachedV2", MapsKt.emptyMap(), EnumC0415mc.f426a) && mutableList.size() < iA && AbstractC0430nc.a() > 0) {
            int iA2 = AbstractC0430nc.a();
            C0460pc c0460pc = new C0460pc("DatabaseMaxLimitReachedV2", null, ServerProtocol.DIALOG_PARAM_SDK_VERSION);
            String string2 = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("eventId", string2), TuplesKt.to("eventType", "DatabaseMaxLimitReachedV2"), TuplesKt.to("samplingRate", 100), TuplesKt.to("isTemplateEvent", Boolean.FALSE), TuplesKt.to("eventLostCount", Integer.valueOf(iA2)));
            Intrinsics.checkNotNull(mapHashMapOf, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
            String payload = new JSONObject(mapHashMapOf).toString();
            Intrinsics.checkNotNullExpressionValue(payload, "toString(...)");
            Intrinsics.checkNotNullParameter(payload, "payload");
            c0460pc.d = payload;
            AbstractC0430nc.c = Integer.valueOf(c0460pc.c);
            mutableList.add(c0460pc);
        }
        if (!mutableList.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = mutableList.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((C0460pc) it.next()).c));
            }
            try {
                String strB = Kb.b();
                if (strB == null) {
                    strB = "";
                }
                Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("im-accid", strB), TuplesKt.to("version", "4.0.0"), TuplesKt.to("mk-version", Lb.a()), TuplesKt.to("u-appbid", C0247c1.f317a), TuplesKt.to("tp", Lb.d()));
                String strF = Lb.f();
                if (strF != null) {
                    mapMutableMapOf.put("tp-v", strF);
                }
                Intrinsics.checkNotNull(mapMutableMapOf, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
                JSONObject jSONObject = new JSONObject(mapMutableMapOf);
                JSONArray jSONArray = new JSONArray();
                for (C0460pc c0460pc2 : mutableList) {
                    if (StringsKt.trim((CharSequence) c0460pc2.a()).toString().length() > 0) {
                        jSONArray.put(new JSONObject(c0460pc2.a()));
                    }
                }
                jSONObject.put("payload", jSONArray);
                string = jSONObject.toString();
            } catch (JSONException unused) {
                string = null;
            }
            if (string != null) {
                return new C0297f4(arrayList, string);
            }
        }
        return null;
    }
}

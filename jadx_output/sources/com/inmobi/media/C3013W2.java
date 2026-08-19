package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.W2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3013W2 {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f1620e = 0;

    /* JADX INFO: renamed from: a */
    public final C3256m9 f1621a;

    /* JADX INFO: renamed from: b */
    public final TreeMap f1622b;

    /* JADX INFO: renamed from: c */
    public final LinkedHashMap f1623c;

    /* JADX INFO: renamed from: d */
    public final C2885N2 f1624d;

    public C3013W2(C2930Q2 networkRequest, C3256m9 mNetworkResponse) {
        Intrinsics.checkNotNullParameter(networkRequest, "networkRequest");
        Intrinsics.checkNotNullParameter(mNetworkResponse, "mNetworkResponse");
        this.f1621a = mNetworkResponse;
        TreeMap treeMap = new TreeMap(networkRequest.f1459y);
        this.f1622b = treeMap;
        this.f1623c = new LinkedHashMap();
        C3196i9 c3196i9 = mNetworkResponse.f2333c;
        Unit unit = null;
        if (c3196i9 != null) {
            for (Map.Entry entry : treeMap.entrySet()) {
                Object value = entry.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                C2957S2 c2957s2 = new C2957S2(null, (Config) value);
                c2957s2.f1531c = new C2885N2((byte) 0, "Network error in fetching config.");
                LinkedHashMap linkedHashMap = this.f1623c;
                Object key = entry.getKey();
                Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
                linkedHashMap.put(key, c2957s2);
            }
            C2885N2 c2885n2 = new C2885N2((byte) 0, c3196i9.f2181b);
            this.f1624d = c2885n2;
            Intrinsics.checkNotNullExpressionValue("W2", "TAG");
            byte b = c2885n2.f1291a;
            String str = c2885n2.f1292b;
            Pair pairM1757a = C2943R2.m1757a(this.f1622b);
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m2729to("errorCode", Integer.valueOf(c3196i9.f2180a.f1944a)), TuplesKt.m2729to("name", (List) pairM1757a.component1()), TuplesKt.m2729to("lts", (List) pairM1757a.component2()), TuplesKt.m2729to("networkType", C2751E3.m1005q()));
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("InvalidConfig", mapMutableMapOf, EnumC3259mc.f2349a);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            try {
                JSONObject jSONObject = new JSONObject(this.f1621a.m2296a());
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    Config config = (Config) this.f1622b.get(next);
                    if (config != null) {
                        Intrinsics.checkNotNull(config);
                        C2957S2 c2957s22 = new C2957S2(jSONObject2, config);
                        LinkedHashMap linkedHashMap2 = this.f1623c;
                        Intrinsics.checkNotNull(next);
                        linkedHashMap2.put(next, c2957s22);
                    }
                }
                Pair pairM1757a2 = C2943R2.m1757a(this.f1622b);
                Map mapMutableMapOf2 = MapsKt.mutableMapOf(TuplesKt.m2729to("name", (List) pairM1757a2.component1()), TuplesKt.m2729to("lts", (List) pairM1757a2.component2()));
                C3199ic c3199ic2 = C3199ic.f2193a;
                C3199ic.m2248b("ConfigFetched", mapMutableMapOf2, EnumC3259mc.f2349a);
            } catch (JSONException e) {
                String localizedMessage = e.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = "Exception while parsing config";
                } else {
                    Intrinsics.checkNotNull(localizedMessage);
                }
                C2885N2 c2885n22 = new C2885N2((byte) 2, localizedMessage);
                this.f1624d = c2885n22;
                String str2 = c2885n22.f1292b;
                Pair pairM1757a3 = C2943R2.m1757a(this.f1622b);
                Map mapMutableMapOf3 = MapsKt.mutableMapOf(TuplesKt.m2729to("errorCode", (short) 1), TuplesKt.m2729to("name", (List) pairM1757a3.component1()), TuplesKt.m2729to("lts", (List) pairM1757a3.component2()), TuplesKt.m2729to("networkType", C2751E3.m1005q()));
                C3199ic c3199ic3 = C3199ic.f2193a;
                C3199ic.m2248b("InvalidConfig", mapMutableMapOf3, EnumC3259mc.f2349a);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1892a() {
        EnumC3101c4 enumC3101c4;
        C3196i9 c3196i9 = this.f1621a.f2333c;
        if ((c3196i9 != null ? c3196i9.f2180a : null) != EnumC3101c4.f1926i) {
            if (c3196i9 == null || (enumC3101c4 = c3196i9.f2180a) == null) {
                enumC3101c4 = EnumC3101c4.f1922e;
            }
            int i = enumC3101c4.f1944a;
            if (500 > i || i >= 600) {
                return false;
            }
        }
        return true;
    }
}

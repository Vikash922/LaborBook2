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

/* JADX INFO: loaded from: classes6.dex */
public final class W2 {
    public static final /* synthetic */ int e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0412m9 f268a;
    public final TreeMap b;
    public final LinkedHashMap c;
    public final N2 d;

    public W2(Q2 networkRequest, C0412m9 mNetworkResponse) {
        Intrinsics.checkNotNullParameter(networkRequest, "networkRequest");
        Intrinsics.checkNotNullParameter(mNetworkResponse, "mNetworkResponse");
        this.f268a = mNetworkResponse;
        TreeMap treeMap = new TreeMap(networkRequest.y);
        this.b = treeMap;
        this.c = new LinkedHashMap();
        C0350i9 c0350i9 = mNetworkResponse.c;
        Unit unit = null;
        if (c0350i9 != null) {
            for (Map.Entry entry : treeMap.entrySet()) {
                Object value = entry.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                S2 s2 = new S2(null, (Config) value);
                s2.c = new N2((byte) 0, "Network error in fetching config.");
                LinkedHashMap linkedHashMap = this.c;
                Object key = entry.getKey();
                Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
                linkedHashMap.put(key, s2);
            }
            N2 n2 = new N2((byte) 0, c0350i9.b);
            this.d = n2;
            Intrinsics.checkNotNullExpressionValue("W2", "TAG");
            byte b = n2.f188a;
            String str = n2.b;
            Pair pairA = R2.a(this.b);
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("errorCode", Integer.valueOf(c0350i9.f385a.f319a)), TuplesKt.to("name", (List) pairA.component1()), TuplesKt.to("lts", (List) pairA.component2()), TuplesKt.to("networkType", E3.q()));
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("InvalidConfig", mapMutableMapOf, EnumC0415mc.f426a);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            try {
                JSONObject jSONObject = new JSONObject(this.f268a.a());
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    Config config = (Config) this.b.get(next);
                    if (config != null) {
                        Intrinsics.checkNotNull(config);
                        S2 s22 = new S2(jSONObject2, config);
                        LinkedHashMap linkedHashMap2 = this.c;
                        Intrinsics.checkNotNull(next);
                        linkedHashMap2.put(next, s22);
                    }
                }
                Pair pairA2 = R2.a(this.b);
                Map mapMutableMapOf2 = MapsKt.mutableMapOf(TuplesKt.to("name", (List) pairA2.component1()), TuplesKt.to("lts", (List) pairA2.component2()));
                C0353ic c0353ic2 = C0353ic.f388a;
                C0353ic.b("ConfigFetched", mapMutableMapOf2, EnumC0415mc.f426a);
            } catch (JSONException e2) {
                String localizedMessage = e2.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = "Exception while parsing config";
                } else {
                    Intrinsics.checkNotNull(localizedMessage);
                }
                N2 n22 = new N2((byte) 2, localizedMessage);
                this.d = n22;
                String str2 = n22.b;
                Pair pairA3 = R2.a(this.b);
                Map mapMutableMapOf3 = MapsKt.mutableMapOf(TuplesKt.to("errorCode", (short) 1), TuplesKt.to("name", (List) pairA3.component1()), TuplesKt.to("lts", (List) pairA3.component2()), TuplesKt.to("networkType", E3.q()));
                C0353ic c0353ic3 = C0353ic.f388a;
                C0353ic.b("InvalidConfig", mapMutableMapOf3, EnumC0415mc.f426a);
            }
        }
    }

    public final boolean a() {
        EnumC0250c4 enumC0250c4;
        C0350i9 c0350i9 = this.f268a.c;
        if ((c0350i9 != null ? c0350i9.f385a : null) != EnumC0250c4.i) {
            if (c0350i9 == null || (enumC0250c4 = c0350i9.f385a) == null) {
                enumC0250c4 = EnumC0250c4.e;
            }
            int i = enumC0250c4.f319a;
            if (500 > i || i >= 600) {
                return false;
            }
        }
        return true;
    }
}

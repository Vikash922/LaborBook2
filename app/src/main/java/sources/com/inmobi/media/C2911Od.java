package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Od */
/* JADX INFO: loaded from: classes6.dex */
public final class C2911Od {

    /* JADX INFO: renamed from: a */
    public final ConcurrentHashMap f1345a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a */
    public final JSONObject m1424a() {
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : this.f1345a.entrySet()) {
                jSONObject.put(String.valueOf(AbstractC2832J9.m1194a((EnumC2817I9) entry.getKey())), ((C2896Nd) entry.getValue()).m1408a());
            }
            return jSONObject;
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return new JSONObject();
        }
    }
}

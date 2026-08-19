package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class Od {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f208a = new ConcurrentHashMap();

    public final JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : this.f208a.entrySet()) {
                jSONObject.put(String.valueOf(J9.a((I9) entry.getKey())), ((Nd) entry.getValue()).a());
            }
            return jSONObject;
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            return new JSONObject();
        }
    }
}

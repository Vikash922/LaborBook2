package com.inmobi.media;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class A9 extends C0526u8 {
    public final String g;
    public final String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A9(String vendorKey, String str, String url, HashMap map) {
        super(url, 0, "OMID_VIEWABILITY", map);
        Intrinsics.checkNotNullParameter(vendorKey, "vendorKey");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter("OMID_VIEWABILITY", "eventType");
        this.h = vendorKey;
        this.g = str;
    }

    @Override // com.inmobi.media.C0526u8
    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "url_ping");
            jSONObject.put("url", this.d);
            jSONObject.put("eventType", this.b);
            jSONObject.put("eventId", this.f500a);
            if (AbstractC0576y2.a(this.h)) {
                jSONObject.put("vendorKey", this.h);
            }
            if (AbstractC0576y2.a(this.g)) {
                jSONObject.put("verificationParams", this.g);
            }
            Map map = this.c;
            boolean z = C0457p9.f457a;
            if (map == null) {
                map = new HashMap();
            }
            jSONObject.put("extras", C0457p9.a(",", map));
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (JSONException e) {
            Intrinsics.checkNotNullExpressionValue("A9", "TAG");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
            return "";
        }
    }
}

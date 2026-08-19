package com.inmobi.media;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.A9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2697A9 extends C3375u8 {

    /* JADX INFO: renamed from: g */
    public final String f832g;

    /* JADX INFO: renamed from: h */
    public final String f833h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2697A9(String vendorKey, String str, String url, HashMap map) {
        super(url, 0, "OMID_VIEWABILITY", map);
        Intrinsics.checkNotNullParameter(vendorKey, "vendorKey");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter("OMID_VIEWABILITY", "eventType");
        this.f833h = vendorKey;
        this.f832g = str;
    }

    @Override // com.inmobi.media.C3375u8
    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "url_ping");
            jSONObject.put("url", this.f2664d);
            jSONObject.put("eventType", this.f2662b);
            jSONObject.put("eventId", this.f2661a);
            if (AbstractC3429y2.m2607a(this.f833h)) {
                jSONObject.put("vendorKey", this.f833h);
            }
            if (AbstractC3429y2.m2607a(this.f832g)) {
                jSONObject.put("verificationParams", this.f832g);
            }
            Map map = this.f2663c;
            boolean z = C3301p9.f2439a;
            if (map == null) {
                map = new HashMap();
            }
            jSONObject.put("extras", C3301p9.m2344a(",", map));
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (JSONException e) {
            Intrinsics.checkNotNullExpressionValue("A9", "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
            return "";
        }
    }
}

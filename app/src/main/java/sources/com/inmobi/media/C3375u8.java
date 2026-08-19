package com.inmobi.media;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.u8 */
/* JADX INFO: loaded from: classes6.dex */
public class C3375u8 {

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ int f2660f = 0;

    /* JADX INFO: renamed from: a */
    public final int f2661a;

    /* JADX INFO: renamed from: b */
    public final String f2662b;

    /* JADX INFO: renamed from: c */
    public Map f2663c;

    /* JADX INFO: renamed from: d */
    public final String f2664d;

    /* JADX INFO: renamed from: e */
    public HashMap f2665e;

    public C3375u8(String url, int i, String eventType, HashMap map) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter("url_ping", "trackerType");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.f2661a = i;
        this.f2662b = eventType;
        this.f2663c = map;
        int length = url.length() - 1;
        int i2 = 0;
        boolean z = false;
        while (i2 <= length) {
            boolean z2 = Intrinsics.compare((int) url.charAt(!z ? i2 : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                } else {
                    length--;
                }
            } else if (z2) {
                i2++;
            } else {
                z = true;
            }
        }
        this.f2664d = AbstractC3194i7.m2246a(length, 1, url, i2);
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "url_ping");
            jSONObject.put("url", this.f2664d);
            jSONObject.put("eventType", this.f2662b);
            jSONObject.put("eventId", this.f2661a);
            boolean z = C3301p9.f2439a;
            Map map = this.f2663c;
            if (map == null) {
                map = new HashMap();
            }
            jSONObject.put("extras", C3301p9.m2344a(",", map));
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (JSONException e) {
            Intrinsics.checkNotNullExpressionValue("u8", "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
            return "";
        }
    }
}

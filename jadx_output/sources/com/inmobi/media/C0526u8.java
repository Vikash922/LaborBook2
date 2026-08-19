package com.inmobi.media;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.u8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public class C0526u8 {
    public static final /* synthetic */ int f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f500a;
    public final String b;
    public Map c;
    public final String d;
    public HashMap e;

    public C0526u8(String url, int i, String eventType, HashMap map) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter("url_ping", "trackerType");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.f500a = i;
        this.b = eventType;
        this.c = map;
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
        this.d = AbstractC0348i7.a(length, 1, url, i2);
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "url_ping");
            jSONObject.put("url", this.d);
            jSONObject.put("eventType", this.b);
            jSONObject.put("eventId", this.f500a);
            boolean z = C0457p9.f457a;
            Map map = this.c;
            if (map == null) {
                map = new HashMap();
            }
            jSONObject.put("extras", C0457p9.a(",", map));
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (JSONException e) {
            Intrinsics.checkNotNullExpressionValue("u8", "TAG");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
            return "";
        }
    }
}

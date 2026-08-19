package com.inmobi.media;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.ad, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0229ad {
    public static final List h = CollectionsKt.listOf((Object[]) new String[]{"image/jpeg", "image/png", "image/jpg"});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f308a;
    public final int b;
    public final String d;
    public boolean g;
    public String c = null;
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();

    public C0229ad(int i, int i2, String str) {
        this.f308a = i;
        this.b = i2;
        this.d = str;
    }

    public final ArrayList a(int i) {
        ArrayList arrayList = new ArrayList();
        for (Zc zc : this.e) {
            if (zc.f300a == i) {
                arrayList.add(zc);
            }
        }
        return arrayList;
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.d;
            if (str != null) {
                jSONObject.put("id", str);
            }
            jSONObject.put("width", this.f308a);
            jSONObject.put("height", this.b);
            jSONObject.put("clickThroughUrl", this.c);
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Zc) it.next()).toString());
            }
            jSONObject.put("resources", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            Iterator it2 = this.f.iterator();
            while (it2.hasNext()) {
                jSONArray2.put(((C0526u8) it2.next()).toString());
            }
            jSONObject.put("trackers", jSONArray2);
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (JSONException e) {
            Intrinsics.checkNotNullExpressionValue("ad", "TAG");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
            return "";
        }
    }

    public final ArrayList a(String trackerEventType) {
        Intrinsics.checkNotNullParameter(trackerEventType, "trackerEventType");
        ArrayList arrayList = new ArrayList();
        for (C0526u8 c0526u8 : this.f) {
            if (Intrinsics.areEqual(c0526u8.b, trackerEventType)) {
                arrayList.add(c0526u8);
            }
        }
        return arrayList;
    }
}

package com.inmobi.media;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.ad */
/* JADX INFO: loaded from: classes6.dex */
public final class C3080ad {

    /* JADX INFO: renamed from: h */
    public static final List f1854h = CollectionsKt.listOf((Object[]) new String[]{"image/jpeg", "image/png", "image/jpg"});

    /* JADX INFO: renamed from: a */
    public final int f1855a;

    /* JADX INFO: renamed from: b */
    public final int f1856b;

    /* JADX INFO: renamed from: d */
    public final String f1858d;

    /* JADX INFO: renamed from: g */
    public boolean f1861g;

    /* JADX INFO: renamed from: c */
    public String f1857c = null;

    /* JADX INFO: renamed from: e */
    public final ArrayList f1859e = new ArrayList();

    /* JADX INFO: renamed from: f */
    public final ArrayList f1860f = new ArrayList();

    public C3080ad(int i, int i2, String str) {
        this.f1855a = i;
        this.f1856b = i2;
        this.f1858d = str;
    }

    /* JADX INFO: renamed from: a */
    public final ArrayList m2030a(int i) {
        ArrayList arrayList = new ArrayList();
        for (C3065Zc c3065Zc : this.f1859e) {
            if (c3065Zc.f1827a == i) {
                arrayList.add(c3065Zc);
            }
        }
        return arrayList;
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.f1858d;
            if (str != null) {
                jSONObject.put("id", str);
            }
            jSONObject.put("width", this.f1855a);
            jSONObject.put("height", this.f1856b);
            jSONObject.put("clickThroughUrl", this.f1857c);
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.f1859e.iterator();
            while (it.hasNext()) {
                jSONArray.put(((C3065Zc) it.next()).toString());
            }
            jSONObject.put("resources", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            Iterator it2 = this.f1860f.iterator();
            while (it2.hasNext()) {
                jSONArray2.put(((C3375u8) it2.next()).toString());
            }
            jSONObject.put("trackers", jSONArray2);
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (JSONException e) {
            Intrinsics.checkNotNullExpressionValue("ad", "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
            return "";
        }
    }

    /* JADX INFO: renamed from: a */
    public final ArrayList m2031a(String trackerEventType) {
        Intrinsics.checkNotNullParameter(trackerEventType, "trackerEventType");
        ArrayList arrayList = new ArrayList();
        for (C3375u8 c3375u8 : this.f1860f) {
            if (Intrinsics.areEqual(c3375u8.f2662b, trackerEventType)) {
                arrayList.add(c3375u8);
            }
        }
        return arrayList;
    }
}

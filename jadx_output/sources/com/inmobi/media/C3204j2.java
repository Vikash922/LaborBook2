package com.inmobi.media;

import android.content.ContentValues;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.j2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3204j2 extends AbstractC2942R1 {
    public C3204j2() {
        super("click", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, pending_attempts INTEGER NOT NULL, url TEXT NOT NULL, ping_in_webview TEXT NOT NULL, follow_redirect TEXT NOT NULL, ts TEXT NOT NULL, track_extras TEXT, created_ts TEXT NOT NULL )");
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: a */
    public final Object mo836a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        Integer asInteger = contentValues.getAsInteger("id");
        Integer asInteger2 = contentValues.getAsInteger("pending_attempts");
        String asString = contentValues.getAsString("url");
        Long asLong = contentValues.getAsLong("ts");
        Long asLong2 = contentValues.getAsLong("created_ts");
        Boolean asBoolean = contentValues.getAsBoolean("follow_redirect");
        Boolean asBoolean2 = contentValues.getAsBoolean("ping_in_webview");
        String asString2 = contentValues.getAsString("track_extras");
        HashMap map = new HashMap();
        if (asString2 != null) {
            try {
                map.putAll(m2255a(new JSONObject(asString2)));
            } catch (JSONException unused) {
                Intrinsics.checkNotNullExpressionValue("j2", "TAG");
            } catch (Exception unused2) {
                Intrinsics.checkNotNullExpressionValue("j2", "TAG");
            }
        }
        Intrinsics.checkNotNull(asInteger);
        int iIntValue = asInteger.intValue();
        Intrinsics.checkNotNull(asString);
        Intrinsics.checkNotNull(asBoolean);
        boolean zBooleanValue = asBoolean.booleanValue();
        Intrinsics.checkNotNull(asBoolean2);
        boolean zBooleanValue2 = asBoolean2.booleanValue();
        Intrinsics.checkNotNull(asInteger2);
        int iIntValue2 = asInteger2.intValue();
        Intrinsics.checkNotNull(asLong);
        long jLongValue = asLong.longValue();
        Intrinsics.checkNotNull(asLong2);
        return new C3189i2(iIntValue, asString, map, zBooleanValue, zBooleanValue2, iIntValue2, jLongValue, asLong2.longValue());
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: b */
    public final ContentValues mo838b(Object obj) {
        C3189i2 click = (C3189i2) obj;
        Intrinsics.checkNotNullParameter(click, "click");
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(click.f2168a));
        contentValues.put("url", click.f2169b);
        contentValues.put("pending_attempts", Integer.valueOf(click.f2173f));
        contentValues.put("ts", Long.valueOf(click.f2174g));
        contentValues.put("created_ts", Long.valueOf(click.f2175h));
        contentValues.put("follow_redirect", Boolean.valueOf(click.f2171d));
        contentValues.put("ping_in_webview", Boolean.valueOf(click.f2172e));
        Map map = click.f2170c;
        if (map != null && !map.isEmpty()) {
            Map map2 = click.f2170c;
            Intrinsics.checkNotNull(map2, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
            contentValues.put("track_extras", new JSONObject(map2).toString());
        }
        return contentValues;
    }

    /* JADX INFO: renamed from: a */
    public final ArrayList m2256a(int i, int i2) {
        if (AbstractC2942R1.m1750a((AbstractC2942R1) this) == 0) {
            return new ArrayList();
        }
        ArrayList<C3189i2> arrayListM1751a = AbstractC2942R1.m1751a(this, null, null, "ts", "ts < " + (System.currentTimeMillis() - ((long) i2)), "ts ASC ", -1 == i ? null : Integer.valueOf(i), 3);
        ArrayList arrayList = new ArrayList();
        for (C3189i2 c3189i2 : arrayListM1751a) {
            if (c3189i2 != null) {
                arrayList.add(c3189i2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: a */
    public static HashMap m2255a(JSONObject jSONObject) throws JSONException {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Intrinsics.checkNotNull(next);
            Object obj = jSONObject.get(next);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            map.put(next, (String) obj);
        }
        return map;
    }
}

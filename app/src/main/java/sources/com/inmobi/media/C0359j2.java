package com.inmobi.media;

import android.content.ContentValues;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.j2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0359j2 extends R1 {
    public C0359j2() {
        super("click", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, pending_attempts INTEGER NOT NULL, url TEXT NOT NULL, ping_in_webview TEXT NOT NULL, follow_redirect TEXT NOT NULL, ts TEXT NOT NULL, track_extras TEXT, created_ts TEXT NOT NULL )");
    }

    @Override // com.inmobi.media.R1
    public final Object a(ContentValues contentValues) {
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
                map.putAll(a(new JSONObject(asString2)));
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
        return new C0343i2(iIntValue, asString, map, zBooleanValue, zBooleanValue2, iIntValue2, jLongValue, asLong2.longValue());
    }

    @Override // com.inmobi.media.R1
    public final ContentValues b(Object obj) {
        C0343i2 click = (C0343i2) obj;
        Intrinsics.checkNotNullParameter(click, "click");
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(click.f382a));
        contentValues.put("url", click.b);
        contentValues.put("pending_attempts", Integer.valueOf(click.f));
        contentValues.put("ts", Long.valueOf(click.g));
        contentValues.put("created_ts", Long.valueOf(click.h));
        contentValues.put("follow_redirect", Boolean.valueOf(click.d));
        contentValues.put("ping_in_webview", Boolean.valueOf(click.e));
        Map map = click.c;
        if (map != null && !map.isEmpty()) {
            Map map2 = click.c;
            Intrinsics.checkNotNull(map2, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
            contentValues.put("track_extras", new JSONObject(map2).toString());
        }
        return contentValues;
    }

    public final ArrayList a(int i, int i2) {
        if (R1.a((R1) this) == 0) {
            return new ArrayList();
        }
        ArrayList<C0343i2> arrayListA = R1.a(this, null, null, "ts", "ts < " + (System.currentTimeMillis() - ((long) i2)), "ts ASC ", -1 == i ? null : Integer.valueOf(i), 3);
        ArrayList arrayList = new ArrayList();
        for (C0343i2 c0343i2 : arrayListA) {
            if (c0343i2 != null) {
                arrayList.add(c0343i2);
            }
        }
        return arrayList;
    }

    public static HashMap a(JSONObject jSONObject) throws JSONException {
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

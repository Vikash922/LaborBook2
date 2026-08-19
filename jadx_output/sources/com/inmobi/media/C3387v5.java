package com.inmobi.media;

import android.content.ContentValues;
import com.google.android.gms.measurement.AppMeasurement;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.v5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3387v5 extends AbstractC3131e4 {
    public C3387v5() {
        super(AppMeasurement.CRASH_ORIGIN, "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, componentType TEXT NOT NULL, eventId TEXT NOT NULL, eventType TEXT NOT NULL, payload TEXT NOT NULL, ts TEXT NOT NULL)");
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: a */
    public final Object mo836a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("eventId");
        String asString2 = contentValues.getAsString("eventType");
        String asString3 = contentValues.getAsString("componentType");
        String asString4 = contentValues.getAsString("payload");
        String asString5 = contentValues.getAsString("ts");
        Intrinsics.checkNotNullExpressionValue(asString5, "getAsString(...)");
        long j = Long.parseLong(asString5);
        Intrinsics.checkNotNull(asString);
        Intrinsics.checkNotNull(asString3);
        Intrinsics.checkNotNull(asString2);
        C3417x5 c3417x5 = new C3417x5(asString, asString3, asString2, asString4);
        c3417x5.f1526b = j;
        Integer asInteger = contentValues.getAsInteger("id");
        Intrinsics.checkNotNullExpressionValue(asInteger, "getAsInteger(...)");
        c3417x5.f1527c = asInteger.intValue();
        return c3417x5;
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: b */
    public final ContentValues mo838b(Object obj) {
        C3417x5 item = (C3417x5) obj;
        Intrinsics.checkNotNullParameter(item, "item");
        item.getClass();
        ContentValues contentValues = new ContentValues();
        contentValues.put("eventId", item.f2741e);
        contentValues.put("componentType", item.f2742f);
        contentValues.put("eventType", item.f1525a);
        contentValues.put("payload", item.m1776a());
        contentValues.put("ts", String.valueOf(item.f1526b));
        return contentValues;
    }
}

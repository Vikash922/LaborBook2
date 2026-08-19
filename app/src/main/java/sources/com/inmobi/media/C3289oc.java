package com.inmobi.media;

import android.content.ContentValues;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.oc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3289oc extends AbstractC3131e4 {
    public C3289oc() {
        super("telemetry", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, eventType TEXT NOT NULL, payload TEXT NOT NULL, eventSource TEXT NOT NULL, ts TEXT NOT NULL)");
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: a */
    public final Object mo836a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("eventType");
        String asString2 = contentValues.getAsString("payload");
        String asString3 = contentValues.getAsString("eventSource");
        String asString4 = contentValues.getAsString("ts");
        Intrinsics.checkNotNullExpressionValue(asString4, "getAsString(...)");
        long j = Long.parseLong(asString4);
        Intrinsics.checkNotNull(asString);
        Intrinsics.checkNotNull(asString3);
        C3304pc c3304pc = new C3304pc(asString, asString2, asString3);
        c3304pc.f1526b = j;
        Integer asInteger = contentValues.getAsInteger("id");
        Intrinsics.checkNotNullExpressionValue(asInteger, "getAsInteger(...)");
        c3304pc.f1527c = asInteger.intValue();
        return c3304pc;
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: b */
    public final ContentValues mo838b(Object obj) {
        C3304pc item = (C3304pc) obj;
        Intrinsics.checkNotNullParameter(item, "item");
        item.getClass();
        ContentValues contentValues = new ContentValues();
        contentValues.put("eventType", item.f1525a);
        contentValues.put("payload", item.m1776a());
        contentValues.put("eventSource", item.f2442e);
        contentValues.put("ts", String.valueOf(item.f1526b));
        return contentValues;
    }
}

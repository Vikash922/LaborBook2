package com.inmobi.media;

import android.content.ContentValues;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.oc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0445oc extends AbstractC0282e4 {
    public C0445oc() {
        super("telemetry", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, eventType TEXT NOT NULL, payload TEXT NOT NULL, eventSource TEXT NOT NULL, ts TEXT NOT NULL)");
    }

    @Override // com.inmobi.media.R1
    public final Object a(ContentValues contentValues) {
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
        C0460pc c0460pc = new C0460pc(asString, asString2, asString3);
        c0460pc.b = j;
        Integer asInteger = contentValues.getAsInteger("id");
        Intrinsics.checkNotNullExpressionValue(asInteger, "getAsInteger(...)");
        c0460pc.c = asInteger.intValue();
        return c0460pc;
    }

    @Override // com.inmobi.media.R1
    public final ContentValues b(Object obj) {
        C0460pc item = (C0460pc) obj;
        Intrinsics.checkNotNullParameter(item, "item");
        item.getClass();
        ContentValues contentValues = new ContentValues();
        contentValues.put("eventType", item.f238a);
        contentValues.put("payload", item.a());
        contentValues.put("eventSource", item.e);
        contentValues.put("ts", String.valueOf(item.b));
        return contentValues;
    }
}

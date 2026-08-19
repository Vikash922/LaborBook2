package com.inmobi.media;

import android.content.ContentValues;
import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.f0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3142f0 extends AbstractC2942R1 {

    /* JADX INFO: renamed from: b */
    public C3097c0 f2057b;

    public C3142f0() {
        super("ad_quality_db", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, image_location TEXT NOT NULL, sdk_model_result TEXT, beacon_url TEXT NOT NULL, extras TEXT)");
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: a */
    public final Object mo836a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("image_location");
        String asString2 = contentValues.getAsString("beacon_url");
        String asString3 = contentValues.getAsString("sdk_model_result");
        String asString4 = contentValues.getAsString("extras");
        if ((asString2 != null && asString2.length() != 0) || (asString != null && asString.length() != 0)) {
            Intrinsics.checkNotNull(asString);
            Intrinsics.checkNotNull(asString2);
            return new AdQualityResult(asString, asString3, asString2, asString4);
        }
        String asString5 = contentValues.getAsString("id");
        Intrinsics.checkNotNullExpressionValue(asString5, "getAsString(...)");
        m1752a("id=?", new String[]{asString5});
        return null;
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: b */
    public final ContentValues mo838b(Object obj) {
        AdQualityResult item = (AdQualityResult) obj;
        Intrinsics.checkNotNullParameter(item, "item");
        ContentValues contentValues = new ContentValues();
        contentValues.put("image_location", item.getImageLocation());
        String sdkModelResult = item.getSdkModelResult();
        if (sdkModelResult == null) {
            sdkModelResult = "";
        }
        contentValues.put("sdk_model_result", sdkModelResult);
        contentValues.put("beacon_url", item.getBeaconUrl());
        contentValues.put("extras", item.getExtras());
        return contentValues;
    }

    /* JADX INFO: renamed from: a */
    public final void m2122a(AdQualityResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        Log.i("AdQualityDao", "queueing");
        m1753a((Object) result);
        C3097c0 c3097c0 = this.f2057b;
        if (c3097c0 != null) {
            Log.i("AdQualityDao", "sending callback - queued");
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
            Intrinsics.checkNotNullParameter("item update callback received", "message");
            Log.i("AdQualityBeaconExecutor", "item update callback received");
            if (c3097c0.f1903c.get()) {
                Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
                Intrinsics.checkNotNullParameter("resume executor", "message");
                Log.i("AdQualityBeaconExecutor", "resume executor");
                c3097c0.f1903c.set(false);
                C3067a0 execute = new C3067a0(c3097c0);
                Intrinsics.checkNotNullParameter(execute, "execute");
                ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
                C3127e0.m2084a(new C3096c(execute));
            }
        }
    }
}

package com.inmobi.media;

import android.content.ContentValues;
import com.truecaller.android.sdk.common.VerificationDataBundle;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.k1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3218k1 extends AbstractC2942R1 {
    public C3218k1() {
        super("asset", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, pending_attempts INTEGER NOT NULL, url TEXT NOT NULL, disk_uri TEXT, ts TEXT NOT NULL, created_ts TEXT NOT NULL, ttl TEXT NOT NULL, soft_ttl TEXT NOT NULL)");
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: a */
    public final Object mo836a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        Integer asInteger = contentValues.getAsInteger("id");
        Integer asInteger2 = contentValues.getAsInteger("pending_attempts");
        String asString = contentValues.getAsString("url");
        String asString2 = contentValues.getAsString("disk_uri");
        Long asLong = contentValues.getAsLong("ts");
        Long asLong2 = contentValues.getAsLong("created_ts");
        Long asLong3 = contentValues.getAsLong(VerificationDataBundle.KEY_TTL);
        Long asLong4 = contentValues.getAsLong("soft_ttl");
        Intrinsics.checkNotNull(asInteger);
        int iIntValue = asInteger.intValue();
        Intrinsics.checkNotNull(asString);
        Intrinsics.checkNotNull(asInteger2);
        int iIntValue2 = asInteger2.intValue();
        Intrinsics.checkNotNull(asLong);
        long jLongValue = asLong.longValue();
        Intrinsics.checkNotNull(asLong2);
        long jLongValue2 = asLong2.longValue();
        Intrinsics.checkNotNull(asLong3);
        long jLongValue3 = asLong3.longValue();
        Intrinsics.checkNotNull(asLong4);
        return new C3201j(iIntValue, asString, asString2, iIntValue2, jLongValue, jLongValue2, jLongValue3, asLong4.longValue());
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: b */
    public final ContentValues mo838b(Object obj) {
        C3201j adAsset = (C3201j) obj;
        Intrinsics.checkNotNullParameter(adAsset, "adAsset");
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(adAsset.f2203a));
        contentValues.put("url", adAsset.f2204b);
        contentValues.put("disk_uri", adAsset.f2205c);
        contentValues.put("pending_attempts", Integer.valueOf(adAsset.f2206d));
        contentValues.put("ts", String.valueOf(adAsset.f2207e));
        contentValues.put("created_ts", String.valueOf(adAsset.f2208f));
        contentValues.put(VerificationDataBundle.KEY_TTL, String.valueOf(adAsset.f2209g));
        contentValues.put("soft_ttl", String.valueOf(adAsset.f2210h));
        return contentValues;
    }

    /* JADX INFO: renamed from: a */
    public final ArrayList m2270a() {
        ArrayList arrayListM1751a = AbstractC2942R1.m1751a(this, null, null, null, null, "created_ts DESC ", null, 47);
        ArrayList<C3201j> arrayList = new ArrayList();
        for (Object obj : arrayListM1751a) {
            C3201j c3201j = (C3201j) obj;
            if (c3201j != null && c3201j.m2253a()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (C3201j c3201j2 : arrayList) {
            if (c3201j2 != null) {
                arrayList2.add(c3201j2);
            }
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: b */
    public final ArrayList m2273b() {
        ArrayList arrayListM1751a = AbstractC2942R1.m1751a(this, null, null, null, null, "ts ASC ", null, 47);
        ArrayList<C3201j> arrayList = new ArrayList();
        for (Object obj : arrayListM1751a) {
            C3201j c3201j = (C3201j) obj;
            if (c3201j != null && !c3201j.m2253a()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (C3201j c3201j2 : arrayList) {
            if (c3201j2 != null) {
                arrayList2.add(c3201j2);
            }
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: a */
    public final C3201j m2269a(String remoteUrl) {
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        ArrayList arrayListM1751a = AbstractC2942R1.m1751a(this, "url=? ", new String[]{remoteUrl}, null, null, "created_ts DESC ", 1, 12);
        if (arrayListM1751a.isEmpty()) {
            return null;
        }
        return (C3201j) arrayListM1751a.get(0);
    }

    /* JADX INFO: renamed from: a */
    public final void m2271a(C3201j asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        m1756b(asset, "url = ?", new String[]{asset.f2204b.toString()});
    }

    /* JADX INFO: renamed from: b */
    public final C3201j m2272b(String remoteUrl) {
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        ArrayList arrayListM1751a = AbstractC2942R1.m1751a(this, "url=? ", new String[]{remoteUrl}, null, null, "created_ts DESC ", 1, 12);
        if (arrayListM1751a.isEmpty()) {
            return null;
        }
        return (C3201j) arrayListM1751a.get(0);
    }
}

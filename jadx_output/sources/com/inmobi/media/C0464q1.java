package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.q1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0464q1 implements InterfaceC0388l1 {
    @Override // com.inmobi.media.InterfaceC0388l1
    public final void a(C0412m9 response, String locationOnDisk, C0356j asset) {
        Object obj;
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        Intrinsics.checkNotNullParameter(asset, "asset");
        C0477r1 c0477r1 = C0477r1.f467a;
        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        AdConfig.AssetCacheConfig assetCacheConfig = C0477r1.c;
        if (assetCacheConfig != null) {
            C0340i c0340iA = new C0340i().a(asset.b, locationOnDisk, response, assetCacheConfig.getMaxRetries(), assetCacheConfig.getTimeToLive());
            int i = c0340iA.f379a;
            String str2 = c0340iA.c;
            if (str2 == null) {
                str2 = "";
            }
            str = "access$getTAG$p(...)";
            obj = "r1";
            C0356j c0356j = new C0356j(i, str2, c0340iA.d, c0340iA.b, c0340iA.e, c0340iA.f, c0340iA.g, c0340iA.h);
            Db.a().a(c0356j);
            c0356j.j = asset.j;
            c0356j.k = asset.k;
            C0477r1.f467a.a(c0356j, (byte) -1);
        } else {
            obj = "r1";
            str = "access$getTAG$p(...)";
        }
        try {
            C0477r1 c0477r12 = C0477r1.f467a;
            if (C0477r1.j.get()) {
                return;
            }
            c0477r12.c();
        } catch (Exception e) {
            C0477r1 c0477r13 = C0477r1.f467a;
            Intrinsics.checkNotNullExpressionValue(obj, str);
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    @Override // com.inmobi.media.InterfaceC0388l1
    public final void a(C0356j asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        C0477r1 c0477r1 = C0477r1.f467a;
        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        String str = asset.b;
        C0477r1 c0477r12 = C0477r1.f467a;
        C0477r1.k.remove(str);
        if (asset.d <= 0) {
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            c0477r12.a(asset, asset.l);
            C0373k1 c0373k1A = Db.a();
            c0373k1A.getClass();
            Intrinsics.checkNotNullParameter(asset, "asset");
            c0373k1A.a("id = ?", new String[]{String.valueOf(asset.f389a)});
        } else {
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            asset.e = System.currentTimeMillis();
            Db.a().a(asset);
            boolean z = C0457p9.f457a;
            if (C0457p9.a(false) != null) {
                c0477r12.a(asset, asset.l);
            }
        }
        try {
            if (C0477r1.j.get()) {
                return;
            }
            c0477r12.c();
        } catch (Exception e) {
            C0477r1 c0477r13 = C0477r1.f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }
}

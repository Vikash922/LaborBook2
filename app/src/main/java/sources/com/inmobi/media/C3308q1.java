package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.q1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3308q1 implements InterfaceC3233l1 {
    @Override // com.inmobi.media.InterfaceC3233l1
    /* JADX INFO: renamed from: a */
    public final void mo2279a(C3256m9 response, String locationOnDisk, C3201j asset) {
        Object obj;
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3323r1 c3323r1 = C3323r1.f2477a;
        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        AdConfig.AssetCacheConfig assetCacheConfig = C3323r1.f2479c;
        if (assetCacheConfig != null) {
            C3186i c3186iM2234a = new C3186i().m2234a(asset.f2204b, locationOnDisk, response, assetCacheConfig.getMaxRetries(), assetCacheConfig.getTimeToLive());
            int i = c3186iM2234a.f2156a;
            String str2 = c3186iM2234a.f2158c;
            if (str2 == null) {
                str2 = "";
            }
            str = "access$getTAG$p(...)";
            obj = "r1";
            C3201j c3201j = new C3201j(i, str2, c3186iM2234a.f2159d, c3186iM2234a.f2157b, c3186iM2234a.f2160e, c3186iM2234a.f2161f, c3186iM2234a.f2162g, c3186iM2234a.f2163h);
            AbstractC2744Db.m966a().m2271a(c3201j);
            c3201j.f2212j = asset.f2212j;
            c3201j.f2213k = asset.f2213k;
            C3323r1.f2477a.m2374a(c3201j, (byte) -1);
        } else {
            obj = "r1";
            str = "access$getTAG$p(...)";
        }
        try {
            C3323r1 c3323r12 = C3323r1.f2477a;
            if (C3323r1.f2486j.get()) {
                return;
            }
            c3323r12.m2377c();
        } catch (Exception e) {
            C3323r1 c3323r13 = C3323r1.f2477a;
            Intrinsics.checkNotNullExpressionValue(obj, str);
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    @Override // com.inmobi.media.InterfaceC3233l1
    /* JADX INFO: renamed from: a */
    public final void mo2278a(C3201j asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3323r1 c3323r1 = C3323r1.f2477a;
        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        String str = asset.f2204b;
        C3323r1 c3323r12 = C3323r1.f2477a;
        C3323r1.f2487k.remove(str);
        if (asset.f2206d <= 0) {
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            c3323r12.m2374a(asset, asset.f2214l);
            C3218k1 c3218k1M966a = AbstractC2744Db.m966a();
            c3218k1M966a.getClass();
            Intrinsics.checkNotNullParameter(asset, "asset");
            c3218k1M966a.m1752a("id = ?", new String[]{String.valueOf(asset.f2203a)});
        } else {
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            asset.f2207e = System.currentTimeMillis();
            AbstractC2744Db.m966a().m2271a(asset);
            boolean z = C3301p9.f2439a;
            if (C3301p9.m2342a(false) != null) {
                c3323r12.m2374a(asset, asset.f2214l);
            }
        }
        try {
            if (C3323r1.f2486j.get()) {
                return;
            }
            c3323r12.m2377c();
        } catch (Exception e) {
            C3323r1 c3323r13 = C3323r1.f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }
}

package com.inmobi.media;

import android.os.Message;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3248m1 implements InterfaceC3233l1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ HandlerC3263n1 f2310a;

    public C3248m1(HandlerC3263n1 handlerC3263n1) {
        this.f2310a = handlerC3263n1;
    }

    @Override // com.inmobi.media.InterfaceC3233l1
    /* JADX INFO: renamed from: a */
    public final void mo2279a(C3256m9 response, String locationOnDisk, C3201j asset) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3323r1 c3323r1 = (C3323r1) this.f2310a.f2368a.get();
        AdConfig.AssetCacheConfig assetCacheConfig = c3323r1 != null ? C3323r1.f2479c : null;
        if (assetCacheConfig == null) {
            C3323r1 c3323r12 = C3323r1.f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            return;
        }
        C3323r1 c3323r13 = C3323r1.f2477a;
        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        C3186i c3186iM2234a = new C3186i().m2234a(asset.f2204b, locationOnDisk, response, assetCacheConfig.getMaxRetries(), assetCacheConfig.getTimeToLive());
        int i = c3186iM2234a.f2156a;
        String str = c3186iM2234a.f2158c;
        if (str == null) {
            str = "";
        }
        C3201j c3201j = new C3201j(i, str, c3186iM2234a.f2159d, c3186iM2234a.f2157b, c3186iM2234a.f2160e, c3186iM2234a.f2161f, c3186iM2234a.f2162g, c3186iM2234a.f2163h);
        AbstractC2744Db.m966a().m2271a(c3201j);
        c3201j.f2212j = asset.f2212j;
        c3201j.f2213k = asset.f2213k;
        c3323r1.m2374a(c3201j, (byte) -1);
        HandlerC3263n1 handlerC3263n1 = this.f2310a;
        handlerC3263n1.getClass();
        try {
            handlerC3263n1.sendEmptyMessage(3);
        } catch (Exception unused) {
            C3323r1 c3323r14 = C3323r1.f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        }
    }

    @Override // com.inmobi.media.InterfaceC3233l1
    /* JADX INFO: renamed from: a */
    public final void mo2278a(C3201j asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3323r1 c3323r1 = (C3323r1) this.f2310a.f2368a.get();
        if (c3323r1 != null) {
            C3323r1 c3323r12 = C3323r1.f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            C3323r1.f2487k.remove(asset.f2204b);
            int i = asset.f2206d;
            if (i > 0) {
                asset.f2206d = i - 1;
                asset.f2207e = System.currentTimeMillis();
                AbstractC2744Db.m966a().m2271a(asset);
                this.f2310a.m2309a();
                return;
            }
            c3323r1.m2374a(asset, asset.f2214l);
            HandlerC3263n1 handlerC3263n1 = this.f2310a;
            handlerC3263n1.getClass();
            try {
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                messageObtain.obj = asset;
                handlerC3263n1.sendMessage(messageObtain);
                return;
            } catch (Exception unused) {
                C3323r1 c3323r13 = C3323r1.f2477a;
                Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                return;
            }
        }
        C3323r1 c3323r14 = C3323r1.f2477a;
        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
    }
}

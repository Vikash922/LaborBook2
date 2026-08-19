package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.listeners.BannerAdEventListener;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.G1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2779G1 extends AbstractC2764F1 {

    /* JADX INFO: renamed from: a */
    public final BannerAdEventListener f1044a;

    public C2779G1(BannerAdEventListener adEventListener) {
        Intrinsics.checkNotNullParameter(adEventListener, "adEventListener");
        this.f1044a = adEventListener;
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1137a(Object obj, Map params) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(params, "params");
        this.f1044a.onAdClicked(ad, params);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: b */
    public final void mo1138b(Object obj, AdMetaInfo info) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f1044a.onAdLoadSucceeded(ad, info);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1134a(Object obj, AdMetaInfo info) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f1044a.onAdFetchSuccessful(ad, info);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1133a(Object obj) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.f1044a.onAdImpression(ad);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1135a(Object obj, InMobiAdRequestStatus status) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullExpressionValue("F1", "getSimpleName(...)");
        this.f1044a.onAdLoadFailed(ad, status);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1136a(Object obj, String data) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            Class<?> cls = Class.forName("IMraidLog");
            Method declaredMethod = cls.getDeclaredMethod("imraidLog", BannerAdEventListener.class, InMobiBanner.class, String.class);
            Intrinsics.checkNotNullExpressionValue(declaredMethod, "getDeclaredMethod(...)");
            declaredMethod.invoke(cls.newInstance(), this.f1044a, ad, data);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

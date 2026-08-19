package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.M5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2873M5 extends AbstractC2858L5 {

    /* JADX INFO: renamed from: a */
    public final InterstitialAdEventListener f1256a;

    public C2873M5(InterstitialAdEventListener adEventListener) {
        Intrinsics.checkNotNullParameter(adEventListener, "adEventListener");
        this.f1256a = adEventListener;
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1137a(Object obj, Map params) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(params, "params");
        this.f1256a.onAdClicked(ad, params);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: b */
    public final void mo1138b(Object obj, AdMetaInfo info) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f1256a.onAdLoadSucceeded(ad, info);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1134a(Object obj, AdMetaInfo info) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f1256a.onAdFetchSuccessful(ad, info);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1133a(Object obj) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.f1256a.onAdImpression(ad);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1135a(Object obj, InMobiAdRequestStatus status) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f1256a.onAdLoadFailed(ad, status);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1136a(Object obj, String data) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            Class<?> cls = Class.forName("IMraidLog");
            Method declaredMethod = cls.getDeclaredMethod("imraidLog", InterstitialAdEventListener.class, InMobiInterstitial.class, String.class);
            Intrinsics.checkNotNullExpressionValue(declaredMethod, "getDeclaredMethod(...)");
            declaredMethod.invoke(cls.newInstance(), this.f1256a, ad, data);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

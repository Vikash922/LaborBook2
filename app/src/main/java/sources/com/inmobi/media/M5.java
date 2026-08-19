package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class M5 extends L5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterstitialAdEventListener f178a;

    public M5(InterstitialAdEventListener adEventListener) {
        Intrinsics.checkNotNullParameter(adEventListener, "adEventListener");
        this.f178a = adEventListener;
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, Map params) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(params, "params");
        this.f178a.onAdClicked(ad, params);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void b(Object obj, AdMetaInfo info) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f178a.onAdLoadSucceeded(ad, info);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, AdMetaInfo info) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f178a.onAdFetchSuccessful(ad, info);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.f178a.onAdImpression(ad);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, InMobiAdRequestStatus status) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f178a.onAdLoadFailed(ad, status);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, String data) {
        InMobiInterstitial ad = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            Class<?> cls = Class.forName("IMraidLog");
            Method declaredMethod = cls.getDeclaredMethod("imraidLog", InterstitialAdEventListener.class, InMobiInterstitial.class, String.class);
            Intrinsics.checkNotNullExpressionValue(declaredMethod, "getDeclaredMethod(...)");
            declaredMethod.invoke(cls.newInstance(), this.f178a, ad, data);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.controllers.PublisherCallbacks;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.R5 */
/* JADX INFO: loaded from: classes6.dex */
public class C2946R5 extends PublisherCallbacks {

    /* JADX INFO: renamed from: a */
    public WeakReference<InMobiInterstitial> f1496a;

    public C2946R5(InMobiInterstitial interstitial) {
        Intrinsics.checkNotNullParameter(interstitial, "interstitial");
        this.f1496a = new WeakReference<>(interstitial);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public byte getType() {
        return (byte) 1;
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdClicked(Map<Object, ? extends Object> params) {
        AbstractC2858L5 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(params, "params");
        InMobiInterstitial inMobiInterstitial = this.f1496a.get();
        if (inMobiInterstitial == null || (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) == null) {
            return;
        }
        mPubListener$media_release.mo1137a(inMobiInterstitial, params);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDismissed() {
        AbstractC2858L5 mPubListener$media_release;
        InMobiInterstitial ad = this.f1496a.get();
        if (ad == null || (mPubListener$media_release = ad.getMPubListener$media_release()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        ((C2873M5) mPubListener$media_release).f1256a.onAdDismissed(ad);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDisplayFailed() {
        AbstractC2858L5 mPubListener$media_release;
        InMobiInterstitial ad = this.f1496a.get();
        if (ad == null || (mPubListener$media_release = ad.getMPubListener$media_release()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        ((C2873M5) mPubListener$media_release).f1256a.onAdDisplayFailed(ad);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDisplayed(AdMetaInfo info) {
        AbstractC2858L5 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiInterstitial ad = this.f1496a.get();
        if (ad == null || (mPubListener$media_release = ad.getMPubListener$media_release()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        ((C2873M5) mPubListener$media_release).f1256a.onAdDisplayed(ad, info);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdFetchFailed(InMobiAdRequestStatus status) {
        AbstractC2858L5 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(status, "status");
        InMobiInterstitial ad = this.f1496a.get();
        if (ad == null || (mPubListener$media_release = ad.getMPubListener$media_release()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
        ((C2873M5) mPubListener$media_release).f1256a.onAdFetchFailed(ad, status);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdFetchSuccessful(AdMetaInfo info) {
        AbstractC2858L5 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiInterstitial inMobiInterstitial = this.f1496a.get();
        if (inMobiInterstitial == null || (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) == null) {
            return;
        }
        mPubListener$media_release.mo1134a(inMobiInterstitial, info);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdImpression(C3334rc c3334rc) {
        InMobiInterstitial inMobiInterstitial = this.f1496a.get();
        AbstractC2858L5 mPubListener$media_release = inMobiInterstitial != null ? inMobiInterstitial.getMPubListener$media_release() : null;
        if (mPubListener$media_release == null) {
            if (c3334rc != null) {
                c3334rc.m2384c();
            }
        } else {
            mPubListener$media_release.mo1133a(inMobiInterstitial);
            if (c3334rc != null) {
                c3334rc.m2385d();
            }
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadFailed(InMobiAdRequestStatus status) {
        AbstractC2858L5 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(status, "status");
        InMobiInterstitial inMobiInterstitial = this.f1496a.get();
        if (inMobiInterstitial == null || (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) == null) {
            return;
        }
        mPubListener$media_release.mo1135a(inMobiInterstitial, status);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadSucceeded(AdMetaInfo info) {
        AbstractC2858L5 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiInterstitial inMobiInterstitial = this.f1496a.get();
        if (inMobiInterstitial == null || (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) == null) {
            return;
        }
        mPubListener$media_release.mo1138b(inMobiInterstitial, info);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdWillDisplay() {
        AbstractC2858L5 mPubListener$media_release;
        InMobiInterstitial ad = this.f1496a.get();
        if (ad == null || (mPubListener$media_release = ad.getMPubListener$media_release()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        ((C2873M5) mPubListener$media_release).f1256a.onAdWillDisplay(ad);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onImraidLog(String log) {
        AbstractC2858L5 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(log, "log");
        InMobiInterstitial inMobiInterstitial = this.f1496a.get();
        if (inMobiInterstitial == null || (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) == null) {
            return;
        }
        mPubListener$media_release.mo1136a(inMobiInterstitial, log);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreated(byte[] request) {
        AbstractC2858L5 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(request, "request");
        InMobiInterstitial inMobiInterstitial = this.f1496a.get();
        if (inMobiInterstitial == null || (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) == null) {
            return;
        }
        ((C2873M5) mPubListener$media_release).f1256a.onRequestPayloadCreated(request);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreationFailed(InMobiAdRequestStatus status) {
        AbstractC2858L5 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(status, "reason");
        InMobiInterstitial inMobiInterstitial = this.f1496a.get();
        if (inMobiInterstitial == null || (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(status, "status");
        ((C2873M5) mPubListener$media_release).f1256a.onRequestPayloadCreationFailed(status);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRewardsUnlocked(Map<Object, ? extends Object> rewards) {
        AbstractC2858L5 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InMobiInterstitial ad = this.f1496a.get();
        if (ad == null || (mPubListener$media_release = ad.getMPubListener$media_release()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        ((C2873M5) mPubListener$media_release).f1256a.onRewardsUnlocked(ad, rewards);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onUserLeftApplication() {
        AbstractC2858L5 mPubListener$media_release;
        InMobiInterstitial ad = this.f1496a.get();
        if (ad == null || (mPubListener$media_release = ad.getMPubListener$media_release()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        ((C2873M5) mPubListener$media_release).f1256a.onUserLeftApplication(ad);
    }
}

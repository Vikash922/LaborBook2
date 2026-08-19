package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.AudioStatus;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.banner.AudioListener;
import com.inmobi.ads.controllers.PublisherCallbacks;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.M1 */
/* JADX INFO: loaded from: classes6.dex */
public class C2869M1 extends PublisherCallbacks {

    /* JADX INFO: renamed from: a */
    private WeakReference<InMobiBanner> f1245a;

    public C2869M1(InMobiBanner banner) {
        Intrinsics.checkNotNullParameter(banner, "banner");
        this.f1245a = new WeakReference<>(banner);
    }

    /* JADX INFO: renamed from: a */
    public final WeakReference<InMobiBanner> m1330a() {
        return this.f1245a;
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public byte getType() {
        return (byte) 1;
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdClicked(Map<Object, ? extends Object> params) {
        AbstractC2764F1 mPubListener;
        Intrinsics.checkNotNullParameter(params, "params");
        InMobiBanner inMobiBanner = this.f1245a.get();
        if (inMobiBanner == null || (mPubListener = inMobiBanner.getMPubListener()) == null) {
            return;
        }
        mPubListener.mo1137a(inMobiBanner, params);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDismissed() {
        InMobiBanner ad = this.f1245a.get();
        if (ad == null) {
            return;
        }
        AbstractC2764F1 mPubListener = ad.getMPubListener();
        if (mPubListener != null) {
            Intrinsics.checkNotNullParameter(ad, "ad");
            ((C2779G1) mPubListener).f1044a.onAdDismissed(ad);
        }
        ad.scheduleRefresh$media_release();
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDisplayed(AdMetaInfo info) {
        AbstractC2764F1 mPubListener;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiBanner ad = this.f1245a.get();
        if (ad == null || (mPubListener = ad.getMPubListener()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        ((C2779G1) mPubListener).f1044a.onAdDisplayed(ad);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdFetchFailed(InMobiAdRequestStatus status) {
        AbstractC2764F1 mPubListener;
        Intrinsics.checkNotNullParameter(status, "status");
        InMobiBanner ad = this.f1245a.get();
        if (ad == null || (mPubListener = ad.getMPubListener()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
        ((C2779G1) mPubListener).f1044a.onAdFetchFailed(ad, status);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdFetchSuccessful(AdMetaInfo info) {
        AbstractC2764F1 mPubListener;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiBanner inMobiBanner = this.f1245a.get();
        if (inMobiBanner == null || (mPubListener = inMobiBanner.getMPubListener()) == null) {
            return;
        }
        mPubListener.mo1134a(inMobiBanner, info);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdImpression(C3334rc c3334rc) {
        InMobiBanner inMobiBanner = this.f1245a.get();
        AbstractC2764F1 mPubListener = inMobiBanner != null ? inMobiBanner.getMPubListener() : null;
        if (mPubListener == null) {
            if (c3334rc != null) {
                c3334rc.m2384c();
            }
        } else {
            mPubListener.mo1133a(inMobiBanner);
            if (c3334rc != null) {
                c3334rc.m2385d();
            }
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadFailed(InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullExpressionValue("M1", "getSimpleName(...)");
        InMobiBanner inMobiBanner = this.f1245a.get();
        if (inMobiBanner == null) {
            return;
        }
        AbstractC2764F1 mPubListener = inMobiBanner.getMPubListener();
        if (mPubListener != null) {
            mPubListener.mo1135a(inMobiBanner, status);
        }
        inMobiBanner.scheduleRefresh$media_release();
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadSucceeded(AdMetaInfo info) {
        C2914P1 mAdManager;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiBanner inMobiBanner = this.f1245a.get();
        if (inMobiBanner == null || (mAdManager = inMobiBanner.getMAdManager()) == null) {
            return;
        }
        if (!mAdManager.m1434B() && mAdManager.m1449x()) {
            inMobiBanner.swapAdUnitsAndDisplayAd$media_release();
            AbstractC2764F1 mPubListener = inMobiBanner.getMPubListener();
            if (mPubListener != null) {
                mPubListener.mo1138b(inMobiBanner, info);
            }
            inMobiBanner.scheduleRefresh$media_release();
            return;
        }
        if (mAdManager.m1434B()) {
            AbstractC2928Q0 abstractC2928Q0Mo886j = mAdManager.mo886j();
            if (abstractC2928Q0Mo886j != null) {
                abstractC2928Q0Mo886j.m1639b((short) 2173);
                return;
            }
            return;
        }
        AbstractC2928Q0 abstractC2928Q0Mo886j2 = mAdManager.mo886j();
        if (abstractC2928Q0Mo886j2 != null) {
            abstractC2928Q0Mo886j2.m1639b((short) 2174);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAudioStatusChanged(EnumC2704B1 item) {
        Intrinsics.checkNotNullParameter(item, "audioStatusInternal");
        InMobiBanner inMobiBanner = this.f1245a.get();
        if (inMobiBanner == null) {
            return;
        }
        inMobiBanner.setAudioStatusInternal$media_release(item);
        AudioListener mAudioListener = inMobiBanner.getMAudioListener();
        if (mAudioListener != null) {
            EnumC2704B1.f839b.getClass();
            Intrinsics.checkNotNullParameter(item, "item");
            int iOrdinal = item.ordinal();
            mAudioListener.onAudioStatusChanged(inMobiBanner, iOrdinal != 1 ? iOrdinal != 2 ? AudioStatus.COMPLETED : AudioStatus.PAUSED : AudioStatus.PLAYING);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onImraidLog(String log) {
        AbstractC2764F1 mPubListener;
        Intrinsics.checkNotNullParameter(log, "log");
        InMobiBanner inMobiBanner = this.f1245a.get();
        if (inMobiBanner == null || (mPubListener = inMobiBanner.getMPubListener()) == null) {
            return;
        }
        mPubListener.mo1136a(inMobiBanner, log);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreated(byte[] request) {
        AbstractC2764F1 mPubListener;
        Intrinsics.checkNotNullParameter(request, "request");
        InMobiBanner inMobiBanner = this.f1245a.get();
        if (inMobiBanner == null || (mPubListener = inMobiBanner.getMPubListener()) == null) {
            return;
        }
        ((C2779G1) mPubListener).f1044a.onRequestPayloadCreated(request);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreationFailed(InMobiAdRequestStatus status) {
        AbstractC2764F1 mPubListener;
        Intrinsics.checkNotNullParameter(status, "reason");
        InMobiBanner inMobiBanner = this.f1245a.get();
        if (inMobiBanner == null || (mPubListener = inMobiBanner.getMPubListener()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(status, "status");
        ((C2779G1) mPubListener).f1044a.onRequestPayloadCreationFailed(status);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRewardsUnlocked(Map<Object, ? extends Object> rewards) {
        AbstractC2764F1 mPubListener;
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InMobiBanner ad = this.f1245a.get();
        if (ad == null || (mPubListener = ad.getMPubListener()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        ((C2779G1) mPubListener).f1044a.onRewardsUnlocked(ad, rewards);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onUserLeftApplication() {
        AbstractC2764F1 mPubListener;
        InMobiBanner ad = this.f1245a.get();
        if (ad == null || (mPubListener = ad.getMPubListener()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(ad, "ad");
        ((C2779G1) mPubListener).f1044a.onUserLeftApplication(ad);
    }

    /* JADX INFO: renamed from: a */
    public final void m1331a(WeakReference<InMobiBanner> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.f1245a = weakReference;
    }
}

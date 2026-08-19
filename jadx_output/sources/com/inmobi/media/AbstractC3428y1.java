package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.AudioStatus;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiAudio;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.ads.listeners.AudioAdEventListener;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.y1 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3428y1 extends PublisherCallbacks {

    /* JADX INFO: renamed from: a */
    private WeakReference<InMobiAudio> f2753a;

    public AbstractC3428y1(InMobiAudio audio) {
        Intrinsics.checkNotNullParameter(audio, "audio");
        this.f2753a = new WeakReference<>(audio);
    }

    /* JADX INFO: renamed from: a */
    public final WeakReference<InMobiAudio> m2599a() {
        return this.f2753a;
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdClicked(Map<Object, ? extends Object> params) {
        AudioAdEventListener mPubListener;
        Intrinsics.checkNotNullParameter(params, "params");
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onAdClicked(inMobiAudio, params);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDismissed() {
        AudioAdEventListener mPubListener;
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onAdDismissed(inMobiAudio);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDisplayFailed() {
        AudioAdEventListener mPubListener;
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onAdDisplayFailed(inMobiAudio);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDisplayed(AdMetaInfo info) {
        AudioAdEventListener mPubListener;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onAdDisplayed(inMobiAudio);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdFetchSuccessful(AdMetaInfo info) {
        AudioAdEventListener mPubListener;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onAdFetchSuccessful(inMobiAudio, info);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdImpression(C3334rc c3334rc) {
        InMobiAudio inMobiAudio = this.f2753a.get();
        AudioAdEventListener mPubListener = inMobiAudio != null ? inMobiAudio.getMPubListener() : null;
        if (mPubListener == null) {
            if (c3334rc != null) {
                c3334rc.m2384c();
            }
        } else {
            mPubListener.onAdImpression(inMobiAudio);
            if (c3334rc != null) {
                c3334rc.m2385d();
            }
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadFailed(InMobiAdRequestStatus status) {
        AudioAdEventListener mPubListener;
        Intrinsics.checkNotNullParameter(status, "status");
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onAdLoadFailed(inMobiAudio, status);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadSucceeded(AdMetaInfo info) {
        AudioAdEventListener mPubListener;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onAdLoadSucceeded(inMobiAudio, info);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAudioStatusChanged(EnumC2704B1 item) {
        AudioAdEventListener mPubListener;
        Intrinsics.checkNotNullParameter(item, "audioStatusInternal");
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        EnumC2704B1.f839b.getClass();
        Intrinsics.checkNotNullParameter(item, "item");
        int iOrdinal = item.ordinal();
        mPubListener.onAudioStatusChanged(inMobiAudio, iOrdinal != 1 ? iOrdinal != 2 ? AudioStatus.COMPLETED : AudioStatus.PAUSED : AudioStatus.PLAYING);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreated(byte[] request) {
        AudioAdEventListener mPubListener;
        Intrinsics.checkNotNullParameter(request, "request");
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onRequestPayloadCreated(request);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreationFailed(InMobiAdRequestStatus reason) {
        AudioAdEventListener mPubListener;
        Intrinsics.checkNotNullParameter(reason, "reason");
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onRequestPayloadCreationFailed(reason);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRewardsUnlocked(Map<Object, ? extends Object> rewards) {
        AudioAdEventListener mPubListener;
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onRewardsUnlocked(inMobiAudio, rewards);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onUserLeftApplication() {
        AudioAdEventListener mPubListener;
        InMobiAudio inMobiAudio = this.f2753a.get();
        if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
            return;
        }
        mPubListener.onUserLeftApplication(inMobiAudio);
    }

    /* JADX INFO: renamed from: a */
    public final void m2600a(WeakReference<InMobiAudio> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.f2753a = weakReference;
    }
}

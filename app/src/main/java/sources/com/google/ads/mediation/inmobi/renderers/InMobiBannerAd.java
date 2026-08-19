package com.google.ads.mediation.inmobi.renderers;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdViewHolder;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiBannerWrapper;
import com.google.ads.mediation.inmobi.InMobiConstants;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.listeners.BannerAdEventListener;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class InMobiBannerAd extends BannerAdEventListener implements MediationBannerAd {
    private InMobiAdFactory inMobiAdFactory;
    private InMobiAdViewHolder inMobiAdViewHolder;
    protected InMobiInitializer inMobiInitializer;
    protected final MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback;
    private MediationBannerAdCallback mediationBannerAdCallback;
    protected final MediationBannerAdConfiguration mediationBannerAdConfiguration;

    protected abstract void internalLoadAd(InMobiBannerWrapper inMobiBannerWrapper);

    public abstract void loadAd();

    @Override // com.inmobi.ads.listeners.BannerAdEventListener
    public void onRewardsUnlocked(InMobiBanner inMobiBanner, Map<Object, Object> map) {
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public /* bridge */ /* synthetic */ void onAdClicked(InMobiBanner inMobiBanner, Map map) {
        onAdClicked2(inMobiBanner, (Map<Object, Object>) map);
    }

    public InMobiBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback, InMobiInitializer inMobiInitializer, InMobiAdFactory inMobiAdFactory) {
        this.mediationBannerAdConfiguration = mediationBannerAdConfiguration;
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.inMobiInitializer = inMobiInitializer;
        this.inMobiAdFactory = inMobiAdFactory;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void createAndLoadBannerAd(Context context, long j, AdSize adSize) {
        InMobiAdapterUtils.setIsAgeRestricted();
        InMobiAdapterUtils.configureGlobalTargeting(this.mediationBannerAdConfiguration.getMediationExtras());
        InMobiBannerWrapper inMobiBannerWrapperCreateInMobiBannerWrapper = this.inMobiAdFactory.createInMobiBannerWrapper(context, Long.valueOf(j));
        inMobiBannerWrapperCreateInMobiBannerWrapper.setEnableAutoRefresh(false);
        inMobiBannerWrapperCreateInMobiBannerWrapper.setAnimationType(InMobiBanner.AnimationType.ANIMATION_OFF);
        inMobiBannerWrapperCreateInMobiBannerWrapper.setListener(this);
        String watermark = this.mediationBannerAdConfiguration.getWatermark();
        if (!TextUtils.isEmpty(watermark)) {
            inMobiBannerWrapperCreateInMobiBannerWrapper.setWatermarkData(new WatermarkData(watermark, 0.3f));
        }
        InMobiAdViewHolder inMobiAdViewHolderCreateInMobiAdViewHolder = this.inMobiAdFactory.createInMobiAdViewHolder(context);
        this.inMobiAdViewHolder = inMobiAdViewHolderCreateInMobiAdViewHolder;
        inMobiAdViewHolderCreateInMobiAdViewHolder.setLayoutParams(new FrameLayout.LayoutParams(adSize.getWidthInPixels(context), adSize.getHeightInPixels(context)));
        inMobiBannerWrapperCreateInMobiBannerWrapper.setLayoutParams(new LinearLayout.LayoutParams(adSize.getWidthInPixels(context), adSize.getHeightInPixels(context)));
        this.inMobiAdViewHolder.addView(inMobiBannerWrapperCreateInMobiBannerWrapper);
        internalLoadAd(inMobiBannerWrapperCreateInMobiBannerWrapper);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    public View getView() {
        return this.inMobiAdViewHolder.getFrameLayout();
    }

    @Override // com.inmobi.ads.listeners.BannerAdEventListener
    public void onUserLeftApplication(InMobiBanner inMobiBanner) {
        this.mediationBannerAdCallback.onAdLeftApplication();
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdLoadSucceeded(InMobiBanner inMobiBanner, AdMetaInfo adMetaInfo) {
        this.mediationBannerAdCallback = this.mediationAdLoadCallback.onSuccess(this);
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdLoadFailed(InMobiBanner inMobiBanner, InMobiAdRequestStatus inMobiAdRequestStatus) {
        AdError adErrorCreateSdkError = InMobiConstants.createSdkError(InMobiAdapterUtils.getMediationErrorCode(inMobiAdRequestStatus), inMobiAdRequestStatus.getMessage());
        Log.w(InMobiMediationAdapter.TAG, adErrorCreateSdkError.toString());
        this.mediationAdLoadCallback.onFailure(adErrorCreateSdkError);
    }

    @Override // com.inmobi.ads.listeners.BannerAdEventListener
    public void onAdDisplayed(InMobiBanner inMobiBanner) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.onAdOpened();
        }
    }

    @Override // com.inmobi.ads.listeners.BannerAdEventListener
    public void onAdDismissed(InMobiBanner inMobiBanner) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.onAdClosed();
        }
    }

    /* JADX INFO: renamed from: onAdClicked, reason: avoid collision after fix types in other method */
    public void onAdClicked2(InMobiBanner inMobiBanner, Map<Object, Object> map) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.reportAdClicked();
        }
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdImpression(InMobiBanner inMobiBanner) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.reportAdImpression();
        }
    }
}

package com.google.ads.mediation.inmobi.renderers;

import android.content.Context;
import android.util.Log;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiConstants;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.ads.mediation.inmobi.InMobiNativeWrapper;
import com.google.ads.mediation.inmobi.InMobiUnifiedNativeAdMapper;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.listeners.NativeAdEventListener;
import com.inmobi.ads.listeners.VideoEventListener;

/* JADX INFO: loaded from: classes3.dex */
public abstract class InMobiNativeAd extends NativeAdEventListener {
    public InMobiAdFactory inMobiAdFactory;
    public InMobiInitializer inMobiInitializer;
    private InMobiNativeWrapper inMobiNativeWrapper;
    public InMobiUnifiedNativeAdMapper inMobiUnifiedNativeAdMapper;
    protected final MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback;
    public MediationNativeAdCallback mediationNativeAdCallback;
    protected final MediationNativeAdConfiguration mediationNativeAdConfiguration;

    protected abstract void internalLoadAd(InMobiNativeWrapper inMobiNativeWrapper);

    public abstract void loadAd();

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onAdFullScreenWillDisplay(InMobiNative inMobiNative) {
    }

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onAdStatusChanged(InMobiNative inMobiNative) {
    }

    public InMobiNativeAd(MediationNativeAdConfiguration mediationNativeAdConfiguration, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback, InMobiInitializer inMobiInitializer, InMobiAdFactory inMobiAdFactory) {
        this.mediationNativeAdConfiguration = mediationNativeAdConfiguration;
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.inMobiInitializer = inMobiInitializer;
        this.inMobiAdFactory = inMobiAdFactory;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void createAndLoadNativeAd(Context context, long j) {
        InMobiNativeWrapper inMobiNativeWrapperCreateInMobiNativeWrapper = this.inMobiAdFactory.createInMobiNativeWrapper(context, Long.valueOf(j), this);
        this.inMobiNativeWrapper = inMobiNativeWrapperCreateInMobiNativeWrapper;
        inMobiNativeWrapperCreateInMobiNativeWrapper.setVideoEventListener(new VideoEventListener() { // from class: com.google.ads.mediation.inmobi.renderers.InMobiNativeAd.1
            @Override // com.inmobi.ads.listeners.VideoEventListener
            public void onVideoCompleted(InMobiNative inMobiNative) {
                super.onVideoCompleted(inMobiNative);
                Log.d(InMobiMediationAdapter.TAG, "InMobi native ad video has completed.");
                if (InMobiNativeAd.this.mediationNativeAdCallback != null) {
                    InMobiNativeAd.this.mediationNativeAdCallback.onVideoComplete();
                }
            }

            @Override // com.inmobi.ads.listeners.VideoEventListener
            public void onVideoSkipped(InMobiNative inMobiNative) {
                super.onVideoSkipped(inMobiNative);
                Log.d(InMobiMediationAdapter.TAG, "InMobi native ad video has been skipped.");
            }
        });
        InMobiAdapterUtils.setIsAgeRestricted();
        InMobiAdapterUtils.configureGlobalTargeting(this.mediationNativeAdConfiguration.getMediationExtras());
        internalLoadAd(this.inMobiNativeWrapper);
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdLoadSucceeded(InMobiNative inMobiNative, AdMetaInfo adMetaInfo) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has been loaded.");
        NativeAdOptions nativeAdOptions = this.mediationNativeAdConfiguration.getNativeAdOptions();
        InMobiUnifiedNativeAdMapper inMobiUnifiedNativeAdMapper = new InMobiUnifiedNativeAdMapper(this.inMobiAdFactory.createInMobiNativeWrapper(inMobiNative), Boolean.valueOf(nativeAdOptions != null ? nativeAdOptions.shouldReturnUrlsForImageAssets() : false), this.mediationAdLoadCallback, this);
        this.inMobiUnifiedNativeAdMapper = inMobiUnifiedNativeAdMapper;
        inMobiUnifiedNativeAdMapper.mapUnifiedNativeAd(this.mediationNativeAdConfiguration.getContext());
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdLoadFailed(InMobiNative inMobiNative, InMobiAdRequestStatus inMobiAdRequestStatus) {
        AdError adErrorCreateSdkError = InMobiConstants.createSdkError(InMobiAdapterUtils.getMediationErrorCode(inMobiAdRequestStatus), inMobiAdRequestStatus.getMessage());
        Log.w(InMobiMediationAdapter.TAG, adErrorCreateSdkError.toString());
        this.mediationAdLoadCallback.onFailure(adErrorCreateSdkError);
    }

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onAdFullScreenDismissed(InMobiNative inMobiNative) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has been dismissed.");
        MediationNativeAdCallback mediationNativeAdCallback = this.mediationNativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onAdClosed();
        }
    }

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onAdFullScreenDisplayed(InMobiNative inMobiNative) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has been displayed.");
        MediationNativeAdCallback mediationNativeAdCallback = this.mediationNativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onAdOpened();
        }
    }

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onUserWillLeaveApplication(InMobiNative inMobiNative) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has caused the user to leave the application.");
        MediationNativeAdCallback mediationNativeAdCallback = this.mediationNativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onAdClicked(InMobiNative inMobiNative) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has been clicked.");
        MediationNativeAdCallback mediationNativeAdCallback = this.mediationNativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.reportAdClicked();
        }
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdImpression(InMobiNative inMobiNative) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has logged an impression.");
        MediationNativeAdCallback mediationNativeAdCallback = this.mediationNativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.reportAdImpression();
        }
    }
}

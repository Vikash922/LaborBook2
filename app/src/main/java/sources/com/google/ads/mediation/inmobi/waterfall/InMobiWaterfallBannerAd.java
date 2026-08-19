package com.google.ads.mediation.inmobi.waterfall;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiBannerWrapper;
import com.google.ads.mediation.inmobi.InMobiConstants;
import com.google.ads.mediation.inmobi.InMobiExtras;
import com.google.ads.mediation.inmobi.InMobiExtrasBuilder;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.ads.mediation.inmobi.renderers.InMobiBannerAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;

/* JADX INFO: loaded from: classes3.dex */
public class InMobiWaterfallBannerAd extends InMobiBannerAd {
    public InMobiWaterfallBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback, InMobiInitializer inMobiInitializer, InMobiAdFactory inMobiAdFactory) {
        super(mediationBannerAdConfiguration, mediationAdLoadCallback, inMobiInitializer, inMobiAdFactory);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiBannerAd
    public void loadAd() {
        final Context context = this.mediationBannerAdConfiguration.getContext();
        final AdSize adSizeFindClosestBannerSize = InMobiAdapterUtils.findClosestBannerSize(context, this.mediationBannerAdConfiguration.getAdSize());
        if (adSizeFindClosestBannerSize == null) {
            AdError adErrorCreateAdapterError = InMobiConstants.createAdapterError(102, String.format("The requested banner size: %s is not supported by InMobi SDK.", this.mediationBannerAdConfiguration.getAdSize()));
            Log.e(InMobiMediationAdapter.TAG, adErrorCreateAdapterError.toString());
            this.mediationAdLoadCallback.onFailure(adErrorCreateAdapterError);
            return;
        }
        Bundle serverParameters = this.mediationBannerAdConfiguration.getServerParameters();
        String string = serverParameters.getString(InMobiAdapterUtils.KEY_ACCOUNT_ID);
        final long placementId = InMobiAdapterUtils.getPlacementId(serverParameters);
        AdError adErrorValidateInMobiAdLoadParams = InMobiAdapterUtils.validateInMobiAdLoadParams(string, placementId);
        if (adErrorValidateInMobiAdLoadParams != null) {
            this.mediationAdLoadCallback.onFailure(adErrorValidateInMobiAdLoadParams);
        } else {
            this.inMobiInitializer.init(context, string, new InMobiInitializer.Listener() { // from class: com.google.ads.mediation.inmobi.waterfall.InMobiWaterfallBannerAd.1
                @Override // com.google.ads.mediation.inmobi.InMobiInitializer.Listener
                public void onInitializeSuccess() {
                    InMobiWaterfallBannerAd.this.createAndLoadBannerAd(context, placementId, adSizeFindClosestBannerSize);
                }

                @Override // com.google.ads.mediation.inmobi.InMobiInitializer.Listener
                public void onInitializeError(AdError adError) {
                    Log.w(InMobiMediationAdapter.TAG, adError.toString());
                    InMobiWaterfallBannerAd.this.mediationAdLoadCallback.onFailure(adError);
                }
            });
        }
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiBannerAd
    public void internalLoadAd(InMobiBannerWrapper inMobiBannerWrapper) {
        InMobiExtras inMobiExtrasBuild = InMobiExtrasBuilder.build(this.mediationBannerAdConfiguration.getContext(), this.mediationBannerAdConfiguration.getMediationExtras(), InMobiAdapterUtils.PROTOCOL_WATERFALL);
        inMobiBannerWrapper.setExtras(inMobiExtrasBuild.getParameterMap());
        inMobiBannerWrapper.setKeywords(inMobiExtrasBuild.getKeywords());
        inMobiBannerWrapper.load();
    }
}

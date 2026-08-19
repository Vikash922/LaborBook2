package com.google.ads.mediation.inmobi.waterfall;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiExtras;
import com.google.ads.mediation.inmobi.InMobiExtrasBuilder;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.ads.mediation.inmobi.InMobiNativeWrapper;
import com.google.ads.mediation.inmobi.renderers.InMobiNativeAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;

/* JADX INFO: loaded from: classes3.dex */
public class InMobiWaterfallNativeAd extends InMobiNativeAd {
    public InMobiWaterfallNativeAd(MediationNativeAdConfiguration mediationNativeAdConfiguration, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback, InMobiInitializer inMobiInitializer, InMobiAdFactory inMobiAdFactory) {
        super(mediationNativeAdConfiguration, mediationAdLoadCallback, inMobiInitializer, inMobiAdFactory);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiNativeAd
    public void loadAd() {
        final Context context = this.mediationNativeAdConfiguration.getContext();
        Bundle serverParameters = this.mediationNativeAdConfiguration.getServerParameters();
        String string = serverParameters.getString(InMobiAdapterUtils.KEY_ACCOUNT_ID);
        final long placementId = InMobiAdapterUtils.getPlacementId(serverParameters);
        AdError adErrorValidateInMobiAdLoadParams = InMobiAdapterUtils.validateInMobiAdLoadParams(string, placementId);
        if (adErrorValidateInMobiAdLoadParams != null) {
            this.mediationAdLoadCallback.onFailure(adErrorValidateInMobiAdLoadParams);
        } else {
            this.inMobiInitializer.init(context, string, new InMobiInitializer.Listener() { // from class: com.google.ads.mediation.inmobi.waterfall.InMobiWaterfallNativeAd.1
                @Override // com.google.ads.mediation.inmobi.InMobiInitializer.Listener
                public void onInitializeSuccess() {
                    InMobiWaterfallNativeAd.this.createAndLoadNativeAd(context, placementId);
                }

                @Override // com.google.ads.mediation.inmobi.InMobiInitializer.Listener
                public void onInitializeError(AdError adError) {
                    Log.w(InMobiMediationAdapter.TAG, adError.toString());
                    if (InMobiWaterfallNativeAd.this.mediationAdLoadCallback != null) {
                        InMobiWaterfallNativeAd.this.mediationAdLoadCallback.onFailure(adError);
                    }
                }
            });
        }
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiNativeAd
    public void internalLoadAd(InMobiNativeWrapper inMobiNativeWrapper) {
        InMobiExtras inMobiExtrasBuild = InMobiExtrasBuilder.build(this.mediationNativeAdConfiguration.getContext(), this.mediationNativeAdConfiguration.getMediationExtras(), InMobiAdapterUtils.PROTOCOL_WATERFALL);
        inMobiNativeWrapper.setExtras(inMobiExtrasBuild.getParameterMap());
        inMobiNativeWrapper.setKeywords(inMobiExtrasBuild.getKeywords());
        inMobiNativeWrapper.load();
    }
}

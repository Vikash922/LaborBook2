package com.google.ads.mediation.inmobi.rtb;

import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiExtras;
import com.google.ads.mediation.inmobi.InMobiExtrasBuilder;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiInterstitialWrapper;
import com.google.ads.mediation.inmobi.renderers.InMobiInterstitialAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;

/* JADX INFO: loaded from: classes3.dex */
public class InMobiRtbInterstitialAd extends InMobiInterstitialAd {
    public InMobiRtbInterstitialAd(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback, InMobiInitializer inMobiInitializer, InMobiAdFactory inMobiAdFactory) {
        super(mediationInterstitialAdConfiguration, mediationAdLoadCallback, inMobiInitializer, inMobiAdFactory);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiInterstitialAd
    public void loadAd() {
        createAndLoadInterstitialAd(this.mediationInterstitialAdConfiguration.getContext(), InMobiAdapterUtils.getPlacementId(this.mediationInterstitialAdConfiguration.getServerParameters()));
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiInterstitialAd
    protected void internalLoadAd(InMobiInterstitialWrapper inMobiInterstitialWrapper) {
        InMobiExtras inMobiExtrasBuild = InMobiExtrasBuilder.build(this.mediationInterstitialAdConfiguration.getContext(), this.mediationInterstitialAdConfiguration.getMediationExtras(), InMobiAdapterUtils.PROTOCOL_RTB);
        inMobiInterstitialWrapper.setExtras(inMobiExtrasBuild.getParameterMap());
        inMobiInterstitialWrapper.setKeywords(inMobiExtrasBuild.getKeywords());
        inMobiInterstitialWrapper.load(this.mediationInterstitialAdConfiguration.getBidResponse().getBytes());
    }
}

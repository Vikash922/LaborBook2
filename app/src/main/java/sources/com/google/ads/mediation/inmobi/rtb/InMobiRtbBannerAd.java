package com.google.ads.mediation.inmobi.rtb;

import android.content.Context;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiBannerWrapper;
import com.google.ads.mediation.inmobi.InMobiExtras;
import com.google.ads.mediation.inmobi.InMobiExtrasBuilder;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.renderers.InMobiBannerAd;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;

/* JADX INFO: loaded from: classes3.dex */
public class InMobiRtbBannerAd extends InMobiBannerAd {
    public InMobiRtbBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback, InMobiInitializer inMobiInitializer, InMobiAdFactory inMobiAdFactory) {
        super(mediationBannerAdConfiguration, mediationAdLoadCallback, inMobiInitializer, inMobiAdFactory);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiBannerAd
    public void loadAd() {
        Context context = this.mediationBannerAdConfiguration.getContext();
        AdSize adSizeFindClosestBannerSize = InMobiAdapterUtils.findClosestBannerSize(context, this.mediationBannerAdConfiguration.getAdSize());
        if (adSizeFindClosestBannerSize == null) {
            adSizeFindClosestBannerSize = this.mediationBannerAdConfiguration.getAdSize();
        }
        createAndLoadBannerAd(context, InMobiAdapterUtils.getPlacementId(this.mediationBannerAdConfiguration.getServerParameters()), adSizeFindClosestBannerSize);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiBannerAd
    public void internalLoadAd(InMobiBannerWrapper inMobiBannerWrapper) {
        InMobiExtras inMobiExtrasBuild = InMobiExtrasBuilder.build(this.mediationBannerAdConfiguration.getContext(), this.mediationBannerAdConfiguration.getMediationExtras(), InMobiAdapterUtils.PROTOCOL_RTB);
        inMobiBannerWrapper.setExtras(inMobiExtrasBuild.getParameterMap());
        inMobiBannerWrapper.setKeywords(inMobiExtrasBuild.getKeywords());
        inMobiBannerWrapper.load(this.mediationBannerAdConfiguration.getBidResponse().getBytes());
    }
}

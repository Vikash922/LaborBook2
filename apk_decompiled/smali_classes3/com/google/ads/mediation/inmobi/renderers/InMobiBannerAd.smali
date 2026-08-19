.class public abstract Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;
.super Lcom/inmobi/ads/listeners/BannerAdEventListener;
.source "InMobiBannerAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAd;


# instance fields
.field private inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

.field private inMobiAdViewHolder:Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;

.field protected inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

.field protected final mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAd;",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mediationBannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

.field protected final mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAd;",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/inmobi/InMobiInitializer;",
            "Lcom/google/ads/mediation/inmobi/InMobiAdFactory;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/inmobi/ads/listeners/BannerAdEventListener;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 64
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 65
    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    .line 66
    iput-object p4, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    return-void
.end method


# virtual methods
.method protected createAndLoadBannerAd(Landroid/content/Context;JLcom/google/android/gms/ads/AdSize;)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->setIsAgeRestricted()V

    .line 79
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->configureGlobalTargeting(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    .line 83
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/inmobi/InMobiAdFactory;->createInMobiBannerWrapper(Landroid/content/Context;Ljava/lang/Long;)Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;

    move-result-object p2

    const/4 p3, 0x0

    .line 85
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->setEnableAutoRefresh(Ljava/lang/Boolean;)V

    .line 87
    sget-object p3, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ANIMATION_OFF:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    invoke-virtual {p2, p3}, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V

    .line 89
    invoke-virtual {p2, p0}, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->setListener(Lcom/inmobi/ads/listeners/BannerAdEventListener;)V

    .line 91
    iget-object p3, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getWatermark()Ljava/lang/String;

    move-result-object p3

    .line 92
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/inmobi/ads/WatermarkData;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, p3, v1}, Lcom/inmobi/ads/WatermarkData;-><init>(Ljava/lang/String;F)V

    invoke-virtual {p2, v0}, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->setWatermarkData(Lcom/inmobi/ads/WatermarkData;)V

    .line 100
    :cond_0
    iget-object p3, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    invoke-virtual {p3, p1}, Lcom/google/ads/mediation/inmobi/InMobiAdFactory;->createInMobiAdViewHolder(Landroid/content/Context;)Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;

    move-result-object p3

    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->inMobiAdViewHolder:Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;

    .line 101
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    .line 104
    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    invoke-virtual {p3, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v0

    .line 109
    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p3, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    invoke-virtual {p2, p3}, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->inMobiAdViewHolder:Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;

    invoke-virtual {p1, p2}, Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;->addView(Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->internalLoadAd(Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->inMobiAdViewHolder:Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;

    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected abstract internalLoadAd(Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;)V
.end method

.method public abstract loadAd()V
.end method

.method public onAdClicked(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiBanner;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;->reportAdClicked()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdClicked(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->onAdClicked(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V

    return-void
.end method

.method public onAdDismissed(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    if-eqz p1, :cond_0

    .line 157
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    if-eqz p1, :cond_0

    .line 150
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;->onAdOpened()V

    :cond_0
    return-void
.end method

.method public onAdImpression(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    if-eqz p1, :cond_0

    .line 171
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;->reportAdImpression()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdImpression(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->onAdImpression(Lcom/inmobi/ads/InMobiBanner;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 1

    .line 141
    invoke-static {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getMediationErrorCode(Lcom/inmobi/ads/InMobiAdRequestStatus;)I

    move-result p1

    .line 142
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-static {p1, p2}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createSdkError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 143
    sget-object p2, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p2, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->onAdLoadFailed(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    return-void
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    return-void
.end method

.method public bridge synthetic onAdLoadSucceeded(Ljava/lang/Object;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->onAdLoadSucceeded(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/AdMetaInfo;)V

    return-void
.end method

.method public onRewardsUnlocked(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiBanner;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiBannerAd;->mediationBannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;->onAdLeftApplication()V

    return-void
.end method

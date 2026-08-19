.class public Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;
.super Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;
.source "InMobiRtbNativeAd.java"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/inmobi/InMobiInitializer;",
            "Lcom/google/ads/mediation/inmobi/InMobiAdFactory;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    return-void
.end method


# virtual methods
.method public internalLoadAd(Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;->mediationNativeAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;->mediationNativeAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "c_google"

    .line 47
    invoke-static {v0, v1, v2}, Lcom/google/ads/mediation/inmobi/InMobiExtrasBuilder;->build(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiExtras;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/InMobiExtras;->getParameterMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->setExtras(Ljava/util/Map;)V

    .line 50
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/InMobiExtras;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->setKeywords(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;->mediationNativeAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->getBidResponse()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->load([B)V

    return-void
.end method

.method public loadAd()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;->mediationNativeAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;->mediationNativeAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getPlacementId(Landroid/os/Bundle;)J

    move-result-wide v1

    .line 41
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;->createAndLoadNativeAd(Landroid/content/Context;J)V

    return-void
.end method

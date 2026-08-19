.class public Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;
.super Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;
.source "InMobiWaterfallInterstitialAd.java"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/inmobi/InMobiInitializer;",
            "Lcom/google/ads/mediation/inmobi/InMobiAdFactory;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;Landroid/content/Context;J)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;->createAndLoadInterstitialAd(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    return-object p0
.end method


# virtual methods
.method protected internalLoadAd(Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "c_admob"

    .line 73
    invoke-static {v0, v1, v2}, Lcom/google/ads/mediation/inmobi/InMobiExtrasBuilder;->build(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiExtras;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/InMobiExtras;->getParameterMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;->setExtras(Ljava/util/Map;)V

    .line 76
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/InMobiExtras;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;->setKeywords(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;->load()V

    return-void
.end method

.method public loadAd()V
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 43
    const-string v2, "accountid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v1}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getPlacementId(Landroid/os/Bundle;)J

    move-result-wide v3

    .line 45
    invoke-static {v2, v3, v4}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->validateInMobiAdLoadParams(Ljava/lang/String;J)Lcom/google/android/gms/ads/AdError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    new-instance v5, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd$1;

    invoke-direct {v5, p0, v0, v3, v4}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd$1;-><init>(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;Landroid/content/Context;J)V

    invoke-virtual {v1, v0, v2, v5}, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->init(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;)V

    return-void
.end method

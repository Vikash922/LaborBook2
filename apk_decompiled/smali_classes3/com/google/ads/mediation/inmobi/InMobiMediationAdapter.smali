.class public Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;
.super Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;
.source "InMobiMediationAdapter.java"


# static fields
.field public static final ERROR_MESSAGE_FOR_INVALID_ACCOUNTID:Ljava/lang/String; = "Missing or invalid Account ID, configured for this ad source instance in the AdMob or Ad Manager UI"

.field public static final TAG:Ljava/lang/String; = "InMobiMediationAdapter"


# instance fields
.field private inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

.field private inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

.field private inMobiRtbBannerAd:Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbBannerAd;

.field private inMobiRtbInterstitialAd:Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbInterstitialAd;

.field private inMobiRtbNativeAd:Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;

.field private inMobiRtbRewardedAd:Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbRewardedAd;

.field private inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

.field private inMobiWaterfallBannerAd:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

.field private inMobiWaterfallInterstitialAd:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;

.field private inMobiWaterfallNativeAd:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;

.field private inMobiWaterfallRewardedAd:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;-><init>()V

    .line 105
    invoke-static {}, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->getInstance()Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    .line 106
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    invoke-direct {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdFactory;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    .line 107
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    invoke-direct {v0}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    .line 99
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    .line 100
    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    return-void
.end method


# virtual methods
.method public collectSignals(Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V
    .locals 2

    .line 209
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;->getNetworkExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "c_google"

    .line 208
    invoke-static {v0, p1, v1}, Lcom/google/ads/mediation/inmobi/InMobiExtrasBuilder;->build(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiExtras;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    .line 212
    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiExtras;->getParameterMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiExtras;->getKeywords()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;->getToken(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public getSDKVersionInfo()Lcom/google/android/gms/ads/VersionInfo;
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 141
    array-length v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 142
    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    .line 143
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 144
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 145
    new-instance v3, Lcom/google/android/gms/ads/VersionInfo;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object v3

    .line 147
    :cond_0
    const-string v1, "Unexpected SDK version format: %s. Returning 0.0.0 for SDK version."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 148
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Lcom/google/android/gms/ads/VersionInfo;

    invoke-direct {v0, v4, v4, v4}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/VersionInfo;
    .locals 1

    .line 113
    const-string v0, "10.8.3.1"

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->getVersionInfo(Ljava/lang/String;)Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method getVersionInfo(Ljava/lang/String;)Lcom/google/android/gms/ads/VersionInfo;
    .locals 4

    .line 119
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 122
    aget-object p1, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    .line 123
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 124
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 125
    new-instance v0, Lcom/google/android/gms/ads/VersionInfo;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object v0

    .line 128
    :cond_0
    const-string v0, "Unexpected adapter version format: %s. Returning 0.0.0 for adapter version."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 131
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance p1, Lcom/google/android/gms/ads/VersionInfo;

    invoke-direct {p1, v3, v3, v3}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object p1
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;->isSDKInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationSucceeded()V

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 165
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "accountid"

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 166
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 167
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p3

    if-gtz p3, :cond_3

    const/16 p1, 0x64

    .line 176
    const-string p3, "Missing or invalid Account ID, configured for this ad source instance in the AdMob or Ad Manager UI"

    invoke-static {p1, p3}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    if-le p3, v3, :cond_4

    .line 185
    const-string p3, "Multiple \'%s\' entries found: %s. Using \'%s\' to initialize the InMobi SDK"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 188
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4
    iget-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter$1;-><init>(Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    invoke-virtual {p3, p1, v1, v0}, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->init(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;)V

    return-void
.end method

.method public loadBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAd;",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiWaterfallBannerAd:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

    .line 274
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;->loadAd()V

    return-void
.end method

.method public loadInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 281
    new-instance v0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiWaterfallInterstitialAd:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;

    .line 284
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallInterstitialAd;->loadAd()V

    return-void
.end method

.method public loadNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 290
    new-instance v0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiWaterfallNativeAd:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;

    .line 293
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;->loadAd()V

    return-void
.end method

.method public loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 258
    new-instance v0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiWaterfallRewardedAd:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;

    .line 264
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;->loadAd()V

    return-void
.end method

.method public loadRtbBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAd;",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbBannerAd;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbBannerAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiRtbBannerAd:Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbBannerAd;

    .line 222
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbBannerAd;->loadAd()V

    return-void
.end method

.method public loadRtbInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 231
    new-instance v0, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbInterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbInterstitialAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiRtbInterstitialAd:Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbInterstitialAd;

    .line 233
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbInterstitialAd;->loadAd()V

    return-void
.end method

.method public loadRtbNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiRtbNativeAd:Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;

    .line 251
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbNativeAd;->loadAd()V

    return-void
.end method

.method public loadRtbRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbRewardedAd;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbRewardedAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->inMobiRtbRewardedAd:Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbRewardedAd;

    .line 242
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/rtb/InMobiRtbRewardedAd;->loadAd()V

    return-void
.end method

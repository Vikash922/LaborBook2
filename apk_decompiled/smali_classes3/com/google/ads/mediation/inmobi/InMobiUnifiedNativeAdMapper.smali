.class public Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "InMobiUnifiedNativeAdMapper.java"


# instance fields
.field private final inMobiNativeAd:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

.field private final inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

.field private final isOnlyURL:Z

.field private final mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetinMobiNativeAd(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeAd:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinMobiNativeWrapper(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediationAdLoadCallback(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;Ljava/lang/Boolean;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;",
            "Ljava/lang/Boolean;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 76
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->isOnlyURL:Z

    .line 77
    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 78
    iput-object p4, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeAd:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setOverrideImpressionRecording(Z)V

    return-void
.end method


# virtual methods
.method public handleClick(Landroid/view/View;)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->reportAdClickAndOpenLandingPage()V

    return-void
.end method

.method public mapUnifiedNativeAd(Landroid/content/Context;)V
    .locals 11

    .line 84
    const-string v0, "price"

    const-string v1, "rating"

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-static {v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->isValidNativeAd(Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 p1, 0x6b

    .line 85
    const-string v0, "InMobi native ad returned with a missing asset."

    invoke-static {p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 87
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdCtaText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 102
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {v3}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 113
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {v5}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdLandingPageUrl()Ljava/lang/String;

    move-result-object v5

    .line 114
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v7, "landingURL"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v6}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setExtras(Landroid/os/Bundle;)V

    .line 118
    iget-boolean v5, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->isOnlyURL:Z

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 119
    const-string v5, "icon_key"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_1
    new-instance v2, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;

    const/4 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-direct {v2, v5, v3, v7, v8}, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-virtual {p0, v2}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v9, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v9, v10, v5, v7, v8}, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p0, v2}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setImages(Ljava/util/List;)V

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getCustomAdContent()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 129
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getCustomAdContent()Lorg/json/JSONObject;

    move-result-object v2

    .line 132
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setStarRating(Ljava/lang/Double;)V

    .line 136
    :cond_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setPrice(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 140
    :catch_0
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "InMobi custom native ad content payload could not be parsed. The returned native ad will not have star rating or price values."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    :goto_1
    const-string v0, "package_name"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const-string v0, "Google Play"

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setStore(Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :cond_4
    const-string v0, "Others"

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setStore(Ljava/lang/String;)V

    .line 152
    :cond_5
    :goto_2
    new-instance v0, Lcom/google/ads/mediation/inmobi/ClickInterceptorRelativeLayout;

    invoke-direct {v0, p1}, Lcom/google/ads/mediation/inmobi/ClickInterceptorRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 157
    new-instance v1, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;-><init>(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 174
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    .line 175
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->isVideo()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->isVideo()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 176
    :goto_3
    invoke-virtual {p0, v6}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setHasVideoContent(Z)V

    .line 179
    iget-boolean p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->isOnlyURL:Z

    if-nez p1, :cond_7

    .line 180
    new-instance p1, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;

    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;

    invoke-direct {v0, p0, v3}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;-><init>(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;Landroid/net/Uri;)V

    invoke-direct {p1, v0}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;-><init>(Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 211
    :cond_7
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    if-eqz p1, :cond_8

    .line 212
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeAd:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    iput-object p1, v0, Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;->mediationNativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    :cond_8
    :goto_4
    return-void

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_5
    const/16 v0, 0x6c

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {v0, p1}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 107
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->resume()V

    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 0

    .line 226
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->pause()V

    return-void
.end method

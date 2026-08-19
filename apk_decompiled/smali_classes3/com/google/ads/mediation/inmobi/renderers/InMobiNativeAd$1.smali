.class Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd$1;
.super Lcom/inmobi/ads/listeners/VideoEventListener;
.source "InMobiNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;->createAndLoadNativeAd(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd$1;->this$0:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

    invoke-direct {p0}, Lcom/inmobi/ads/listeners/VideoEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted(Lcom/inmobi/ads/InMobiNative;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/inmobi/ads/listeners/VideoEventListener;->onVideoCompleted(Lcom/inmobi/ads/InMobiNative;)V

    .line 77
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "InMobi native ad video has completed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd$1;->this$0:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

    iget-object p1, p1, Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;->mediationNativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd$1;->this$0:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

    iget-object p1, p1, Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;->mediationNativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public onVideoSkipped(Lcom/inmobi/ads/InMobiNative;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/inmobi/ads/listeners/VideoEventListener;->onVideoSkipped(Lcom/inmobi/ads/InMobiNative;)V

    .line 86
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "InMobi native ad video has been skipped."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

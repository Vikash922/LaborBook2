.class Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;
.super Ljava/lang/Object;
.source "InMobiWaterfallBannerAd.java"

# interfaces
.implements Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

.field final synthetic val$closestBannerSize:Lcom/google/android/gms/ads/AdSize;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementId:J


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;Landroid/content/Context;JLcom/google/android/gms/ads/AdSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$placementId:J

    iput-object p5, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$closestBannerSize:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeError(Lcom/google/android/gms/ads/AdError;)V
    .locals 2

    .line 79
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;->access$100(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public onInitializeSuccess()V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$placementId:J

    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$closestBannerSize:Lcom/google/android/gms/ads/AdSize;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;->access$000(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;Landroid/content/Context;JLcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

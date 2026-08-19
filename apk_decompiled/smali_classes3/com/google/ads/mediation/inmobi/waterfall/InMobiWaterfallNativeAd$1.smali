.class Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd$1;
.super Ljava/lang/Object;
.source "InMobiWaterfallNativeAd.java"

# interfaces
.implements Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementId:J


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;Landroid/content/Context;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;

    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd$1;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd$1;->val$placementId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeError(Lcom/google/android/gms/ads/AdError;)V
    .locals 2

    .line 62
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;->access$100(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;->access$200(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public onInitializeSuccess()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd$1;->val$context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd$1;->val$placementId:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;->access$000(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallNativeAd;Landroid/content/Context;J)V

    return-void
.end method

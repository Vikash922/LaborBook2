.class Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;
.super Ljava/lang/Object;
.source "InMobiUnifiedNativeAdMapper.java"

# interfaces
.implements Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mapUnifiedNativeAd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

.field final synthetic val$iconUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->val$iconUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailure()V
    .locals 3

    const/16 v0, 0x6d

    .line 204
    const-string v1, "InMobi SDK failed to download native ad image assets."

    invoke-static {v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    invoke-static {v1}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->-$$Nest$fgetmediationAdLoadCallback(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 183
    const-string v0, "icon_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    new-instance v1, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->val$iconUri:Landroid/net/Uri;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v1, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    invoke-virtual {v1, v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setImages(Ljava/util/List;)V

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    invoke-static {p1}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->-$$Nest$fgetmediationAdLoadCallback(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    invoke-static {p1}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->-$$Nest$fgetinMobiNativeAd(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->-$$Nest$fgetmediationAdLoadCallback(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    iput-object v0, p1, Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;->mediationNativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    goto :goto_0

    :cond_0
    const/16 p1, 0x6d

    .line 195
    const-string v0, "InMobi SDK failed to download native ad image assets."

    invoke-static {p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 197
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->-$$Nest$fgetmediationAdLoadCallback(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    :goto_0
    return-void
.end method

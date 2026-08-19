.class Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;
.super Ljava/lang/Object;
.source "InMobiUnifiedNativeAdMapper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placeHolderView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;->val$placeHolderView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->-$$Nest$fgetinMobiNativeWrapper(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;->val$placeHolderView:Landroid/widget/RelativeLayout;

    .line 161
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    .line 160
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getPrimaryViewOfWidth(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;->val$placeHolderView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_1

    .line 169
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;->this$0:Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->setMediaContentAspectRatio(F)V

    :cond_1
    return-void
.end method

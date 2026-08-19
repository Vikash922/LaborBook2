.class public final synthetic Lcom/inmobi/media/Ya$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/inmobi/media/Ya;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Lcom/inmobi/ads/WatermarkData;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/Ya;[BLcom/inmobi/ads/WatermarkData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda4;->f$0:Lcom/inmobi/media/Ya;

    iput-object p2, p0, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda4;->f$1:[B

    iput-object p3, p0, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda4;->f$2:Lcom/inmobi/ads/WatermarkData;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda4;->f$0:Lcom/inmobi/media/Ya;

    iget-object v1, p0, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda4;->f$1:[B

    iget-object v2, p0, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda4;->f$2:Lcom/inmobi/ads/WatermarkData;

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/Ya;[BLcom/inmobi/ads/WatermarkData;)V

    return-void
.end method

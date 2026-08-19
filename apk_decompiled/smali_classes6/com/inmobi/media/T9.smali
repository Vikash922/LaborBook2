.class public Lcom/inmobi/media/T9;
.super Lcom/inmobi/media/yd;
.source "SourceFile"


# instance fields
.field public final n:Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

.field public final o:I


# direct methods
.method public constructor <init>(Lcom/inmobi/media/sd;Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;BLcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "visibilityChecker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/inmobi/media/yd;-><init>(Lcom/inmobi/media/sd;BLcom/inmobi/media/f5;)V

    .line 2
    iput-object p2, p0, Lcom/inmobi/media/T9;->n:Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    const/16 p1, 0x64

    .line 7
    iput p1, p0, Lcom/inmobi/media/T9;->o:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T9;->n:Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getVisibilityThrottleMillis()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/inmobi/media/T9;->o:I

    :goto_0
    return v0
.end method

.method public final d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/yd;->g()V

    return-void
.end method

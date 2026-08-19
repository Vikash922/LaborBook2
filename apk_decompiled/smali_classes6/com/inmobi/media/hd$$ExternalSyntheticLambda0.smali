.class public final synthetic Lcom/inmobi/media/hd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/inmobi/media/h;

.field public final synthetic f$1:Lcom/inmobi/commons/core/configs/AdConfig;

.field public final synthetic f$2:Lcom/inmobi/media/id;

.field public final synthetic f$3:Lcom/inmobi/media/f5;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/h;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/id;Lcom/inmobi/media/f5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda0;->f$0:Lcom/inmobi/media/h;

    iput-object p2, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda0;->f$1:Lcom/inmobi/commons/core/configs/AdConfig;

    iput-object p3, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda0;->f$2:Lcom/inmobi/media/id;

    iput-object p4, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda0;->f$3:Lcom/inmobi/media/f5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda0;->f$0:Lcom/inmobi/media/h;

    iget-object v1, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda0;->f$1:Lcom/inmobi/commons/core/configs/AdConfig;

    iget-object v2, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda0;->f$2:Lcom/inmobi/media/id;

    iget-object v3, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda0;->f$3:Lcom/inmobi/media/f5;

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/media/hd;->b(Lcom/inmobi/media/h;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/id;Lcom/inmobi/media/f5;)V

    return-void
.end method

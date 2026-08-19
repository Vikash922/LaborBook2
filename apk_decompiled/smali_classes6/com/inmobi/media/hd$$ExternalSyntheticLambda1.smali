.class public final synthetic Lcom/inmobi/media/hd$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/inmobi/media/id;

.field public final synthetic f$1:Lcom/inmobi/media/h;

.field public final synthetic f$2:Z

.field public final synthetic f$3:S


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/id;Lcom/inmobi/media/h;ZS)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda1;->f$0:Lcom/inmobi/media/id;

    iput-object p2, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda1;->f$1:Lcom/inmobi/media/h;

    iput-boolean p3, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda1;->f$2:Z

    iput-short p4, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda1;->f$3:S

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda1;->f$0:Lcom/inmobi/media/id;

    iget-object v1, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda1;->f$1:Lcom/inmobi/media/h;

    iget-boolean v2, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda1;->f$2:Z

    iget-short v3, p0, Lcom/inmobi/media/hd$$ExternalSyntheticLambda1;->f$3:S

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/media/hd;->a(Lcom/inmobi/media/id;Lcom/inmobi/media/h;ZS)V

    return-void
.end method

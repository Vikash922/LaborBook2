.class public final synthetic Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/inmobi/media/n0;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/inmobi/media/La;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/n0;Landroid/app/Activity;JZLcom/inmobi/media/La;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;->f$0:Lcom/inmobi/media/n0;

    iput-object p2, p0, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;->f$2:J

    iput-boolean p5, p0, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p6, p0, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;->f$4:Lcom/inmobi/media/La;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;->f$0:Lcom/inmobi/media/n0;

    iget-object v1, p0, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;->f$2:J

    iget-boolean v4, p0, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;->f$3:Z

    iget-object v5, p0, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;->f$4:Lcom/inmobi/media/La;

    invoke-static/range {v0 .. v5}, Lcom/inmobi/media/n0;->a(Lcom/inmobi/media/n0;Landroid/app/Activity;JZLcom/inmobi/media/La;)V

    return-void
.end method

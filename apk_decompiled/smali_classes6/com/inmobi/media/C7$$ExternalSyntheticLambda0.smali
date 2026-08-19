.class public final synthetic Lcom/inmobi/media/C7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/inmobi/media/C7;

.field public final synthetic f$1:Lcom/inmobi/media/md;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/C7;Lcom/inmobi/media/md;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/C7$$ExternalSyntheticLambda0;->f$0:Lcom/inmobi/media/C7;

    iput-object p2, p0, Lcom/inmobi/media/C7$$ExternalSyntheticLambda0;->f$1:Lcom/inmobi/media/md;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/C7$$ExternalSyntheticLambda0;->f$0:Lcom/inmobi/media/C7;

    iget-object v1, p0, Lcom/inmobi/media/C7$$ExternalSyntheticLambda0;->f$1:Lcom/inmobi/media/md;

    invoke-static {v0, v1}, Lcom/inmobi/media/C7;->a(Lcom/inmobi/media/C7;Lcom/inmobi/media/md;)V

    return-void
.end method

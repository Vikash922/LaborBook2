.class public final synthetic Lcom/inmobi/media/Mc$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/inmobi/media/Mc;

.field public final synthetic f$1:Lcom/inmobi/media/rc;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/Mc;Lcom/inmobi/media/rc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Mc$$ExternalSyntheticLambda9;->f$0:Lcom/inmobi/media/Mc;

    iput-object p2, p0, Lcom/inmobi/media/Mc$$ExternalSyntheticLambda9;->f$1:Lcom/inmobi/media/rc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/Mc$$ExternalSyntheticLambda9;->f$0:Lcom/inmobi/media/Mc;

    iget-object v1, p0, Lcom/inmobi/media/Mc$$ExternalSyntheticLambda9;->f$1:Lcom/inmobi/media/rc;

    invoke-static {v0, v1}, Lcom/inmobi/media/Mc;->a(Lcom/inmobi/media/Mc;Lcom/inmobi/media/rc;)V

    return-void
.end method

.class public final synthetic Lcom/inmobi/media/A$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/inmobi/media/E1;


# direct methods
.method public synthetic constructor <init>(ILcom/inmobi/media/E1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/inmobi/media/A$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/inmobi/media/A$$ExternalSyntheticLambda0;->f$1:Lcom/inmobi/media/E1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget v0, p0, Lcom/inmobi/media/A$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/inmobi/media/A$$ExternalSyntheticLambda0;->f$1:Lcom/inmobi/media/E1;

    invoke-static {v0, v1}, Lcom/inmobi/media/A;->b(ILcom/inmobi/media/E1;)V

    return-void
.end method

.class public final synthetic Lcom/inmobi/media/L6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/inmobi/media/A6;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/A6;JI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/L6$$ExternalSyntheticLambda0;->f$0:Lcom/inmobi/media/A6;

    iput-wide p2, p0, Lcom/inmobi/media/L6$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/inmobi/media/L6$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/L6$$ExternalSyntheticLambda0;->f$0:Lcom/inmobi/media/A6;

    iget-wide v1, p0, Lcom/inmobi/media/L6$$ExternalSyntheticLambda0;->f$1:J

    iget v3, p0, Lcom/inmobi/media/L6$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/media/L6;->b(Lcom/inmobi/media/A6;JI)V

    return-void
.end method

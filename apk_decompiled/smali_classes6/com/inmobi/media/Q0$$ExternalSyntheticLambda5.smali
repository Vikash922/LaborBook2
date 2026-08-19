.class public final synthetic Lcom/inmobi/media/Q0$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/inmobi/media/Q0;

.field public final synthetic f$1:Lcom/inmobi/media/Ya;

.field public final synthetic f$2:S


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/Q0;Lcom/inmobi/media/Ya;S)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Q0$$ExternalSyntheticLambda5;->f$0:Lcom/inmobi/media/Q0;

    iput-object p2, p0, Lcom/inmobi/media/Q0$$ExternalSyntheticLambda5;->f$1:Lcom/inmobi/media/Ya;

    iput-short p3, p0, Lcom/inmobi/media/Q0$$ExternalSyntheticLambda5;->f$2:S

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/Q0$$ExternalSyntheticLambda5;->f$0:Lcom/inmobi/media/Q0;

    iget-object v1, p0, Lcom/inmobi/media/Q0$$ExternalSyntheticLambda5;->f$1:Lcom/inmobi/media/Ya;

    iget-short v2, p0, Lcom/inmobi/media/Q0$$ExternalSyntheticLambda5;->f$2:S

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Q0;Lcom/inmobi/media/Ya;S)V

    return-void
.end method

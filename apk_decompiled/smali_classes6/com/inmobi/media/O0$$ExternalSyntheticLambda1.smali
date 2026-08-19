.class public final synthetic Lcom/inmobi/media/O0$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/inmobi/media/Q0;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/Q0;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/O0$$ExternalSyntheticLambda1;->f$0:Lcom/inmobi/media/Q0;

    iput-object p2, p0, Lcom/inmobi/media/O0$$ExternalSyntheticLambda1;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/O0$$ExternalSyntheticLambda1;->f$0:Lcom/inmobi/media/Q0;

    iget-object v1, p0, Lcom/inmobi/media/O0$$ExternalSyntheticLambda1;->f$1:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lcom/inmobi/media/O0;->a(Lcom/inmobi/media/Q0;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

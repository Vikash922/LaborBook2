.class public final Lcom/inmobi/media/G;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/I;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/I;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/G;->a:Lcom/inmobi/media/I;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/G;->a:Lcom/inmobi/media/I;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/I;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/G;->a:Lcom/inmobi/media/I;

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/I;->k:Lcom/inmobi/media/Pd;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/Pd;->a()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/G;->a:Lcom/inmobi/media/I;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/inmobi/media/I;->k:Lcom/inmobi/media/Pd;

    .line 9
    iput-object v1, v0, Lcom/inmobi/media/I;->j:Ljava/util/concurrent/ScheduledFuture;

    .line 10
    new-instance v2, Lcom/inmobi/media/n4;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v1}, Lcom/inmobi/media/n4;-><init>(FLcom/inmobi/media/o4;Ljava/util/ArrayList;)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/inmobi/media/I;->a(Lcom/inmobi/media/n4;)V

    .line 12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

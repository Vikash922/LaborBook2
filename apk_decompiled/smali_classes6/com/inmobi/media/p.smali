.class public final Lcom/inmobi/media/p;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/p;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/s;->c:Lcom/inmobi/media/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/inmobi/media/p;->a:Landroid/content/Context;

    .line 3
    new-instance v3, Lcom/inmobi/media/o;

    invoke-direct {v3, v2, v0}, Lcom/inmobi/media/o;-><init>(Landroid/content/Context;Lcom/inmobi/media/n;)V

    invoke-static {v3}, Lcom/inmobi/media/z2;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 4
    sput-object v1, Lcom/inmobi/media/s;->c:Lcom/inmobi/media/n;

    .line 5
    :cond_0
    sget-object v0, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 6
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    :cond_1
    sget-object v0, Lcom/inmobi/media/s;->h:Lcom/inmobi/media/q;

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/media/h7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 9
    :cond_2
    sput-object v1, Lcom/inmobi/media/s;->h:Lcom/inmobi/media/q;

    .line 10
    sput-object v1, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.class public final Lcom/inmobi/media/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/q2;

.field public final b:Lcom/inmobi/media/f5;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/q2;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "mEventHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/o2;->a:Lcom/inmobi/media/q2;

    iput-object p2, p0, Lcom/inmobi/media/o2;->b:Lcom/inmobi/media/f5;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/i2;Lcom/inmobi/media/o2;Landroid/os/Handler;)V
    .locals 3

    const-string v0, "$click"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/inmobi/media/l9;

    .line 6
    iget-object v1, p0, Lcom/inmobi/media/i2;->b:Ljava/lang/String;

    .line 7
    iget-object v2, p1, Lcom/inmobi/media/o2;->b:Lcom/inmobi/media/f5;

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/l9;-><init>(Ljava/lang/String;Lcom/inmobi/media/f5;)V

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/inmobi/media/l9;->x:Z

    .line 10
    iput-boolean v1, v0, Lcom/inmobi/media/l9;->t:Z

    .line 11
    iput-boolean v1, v0, Lcom/inmobi/media/l9;->u:Z

    .line 12
    sget-object v1, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-static {v1, p0}, Lcom/inmobi/media/u2;->a(Lcom/inmobi/media/u2;Lcom/inmobi/media/i2;)Ljava/util/HashMap;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    iget-object v2, v0, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 15
    :cond_0
    new-instance v1, Lcom/inmobi/media/Hd;

    new-instance v2, Lcom/inmobi/media/n2;

    invoke-direct {v2, p0, p1, p2}, Lcom/inmobi/media/n2;-><init>(Lcom/inmobi/media/i2;Lcom/inmobi/media/o2;Landroid/os/Handler;)V

    invoke-direct {v1, v0, v2}, Lcom/inmobi/media/Hd;-><init>(Lcom/inmobi/media/l9;Lcom/inmobi/media/n2;)V

    .line 117
    invoke-virtual {v1}, Lcom/inmobi/media/Hd;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/i2;)V
    .locals 2

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/inmobi/media/i2;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance v1, Lcom/inmobi/media/o2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, v0}, Lcom/inmobi/media/o2$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/i2;Lcom/inmobi/media/o2;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

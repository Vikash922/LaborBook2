.class public final Lcom/inmobi/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/b;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/b;->f:Landroid/os/Handler;

    const/16 v1, 0x7e7

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 8
    iget-object v0, v0, Lcom/inmobi/media/b;->f:Landroid/os/Handler;

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 14
    iget-object v0, v0, Lcom/inmobi/media/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    invoke-static {v0}, Lcom/inmobi/media/b;->a(Lcom/inmobi/media/b;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 19
    iget-object v2, v2, Lcom/inmobi/media/z3;->a:Lcom/inmobi/media/A3;

    .line 20
    new-instance v3, Lcom/inmobi/media/zd;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v0}, Lcom/inmobi/media/zd;-><init>([Ljava/lang/StackTraceElement;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/media/A3;->a(Lcom/inmobi/media/x5;)V

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 24
    iget-object v0, v0, Lcom/inmobi/media/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 28
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 29
    iget-object v0, v0, Lcom/inmobi/media/b;->f:Landroid/os/Handler;

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

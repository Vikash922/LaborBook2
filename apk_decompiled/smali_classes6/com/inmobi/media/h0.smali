.class public final Lcom/inmobi/media/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/X9;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/n0;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/inmobi/media/n0;Z)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/h0;->a:Lcom/inmobi/media/n0;

    iput-boolean p2, p0, Lcom/inmobi/media/h0;->b:Z

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/h0;->a:Lcom/inmobi/media/n0;

    const-string v0, "result pushed to queue"

    .line 3
    invoke-virtual {p1, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    .line 4
    iget-boolean p1, p0, Lcom/inmobi/media/h0;->b:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/inmobi/media/h0;->a:Lcom/inmobi/media/n0;

    .line 6
    const-string v0, "session end - cleanup"

    invoke-virtual {p1, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p1, Lcom/inmobi/media/n0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    .line 8
    iget-object v0, p1, Lcom/inmobi/media/n0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 9
    iget-object v0, p1, Lcom/inmobi/media/n0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object p1, p1, Lcom/inmobi/media/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h0;->a:Lcom/inmobi/media/n0;

    const-string v1, "error in pushing to queue"

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/n0;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

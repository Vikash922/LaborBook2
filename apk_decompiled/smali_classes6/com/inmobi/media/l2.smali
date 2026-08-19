.class public final Lcom/inmobi/media/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/q2;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/m2;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/m2;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/l2;->a:Lcom/inmobi/media/m2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/i2;)V
    .locals 3

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l2;->a:Lcom/inmobi/media/m2;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    .line 4
    iput v2, v1, Landroid/os/Message;->what:I

    .line 5
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/inmobi/media/i2;Lcom/inmobi/media/c4;)V
    .locals 3

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/inmobi/media/l2;->a:Lcom/inmobi/media/m2;

    .line 8
    iget-object p2, p2, Lcom/inmobi/media/m2;->a:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_0

    .line 9
    invoke-static {}, Lcom/inmobi/media/u2;->f()Ljava/lang/String;

    move-result-object v0

    .line 10
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "Pinging click ("

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    iget-object v2, p1, Lcom/inmobi/media/i2;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") via WebView failed ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    sget-object p2, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-static {p2, p1}, Lcom/inmobi/media/u2;->c(Lcom/inmobi/media/u2;Lcom/inmobi/media/i2;)V

    .line 17
    iget-object p2, p0, Lcom/inmobi/media/l2;->a:Lcom/inmobi/media/m2;

    .line 18
    invoke-virtual {p2, p1}, Lcom/inmobi/media/m2;->b(Lcom/inmobi/media/i2;)V

    return-void
.end method

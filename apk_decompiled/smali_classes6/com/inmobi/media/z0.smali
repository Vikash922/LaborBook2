.class public final Lcom/inmobi/media/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/s1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/A0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/A0;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/A0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/A0;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/Q0;

    .line 5
    iget-object p0, p0, Lcom/inmobi/media/A0;->c:Lcom/inmobi/media/Y;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p0, v1, v2}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Y;ZS)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/A0;B)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/Q0;

    .line 2
    iget-object p0, p0, Lcom/inmobi/media/A0;->c:Lcom/inmobi/media/Y;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x4e

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 p1, 0x4f

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const/16 p1, 0x50

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const/16 p1, 0x51

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    const/16 p1, 0x4d

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    const/16 p1, 0x1f

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    const/16 p1, 0x1b

    goto :goto_0

    :cond_7
    const/16 p1, 0x52

    :goto_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p0, v1, p1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Y;ZS)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/k;)V
    .locals 3

    const-string v0, "assetBatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/A0;

    .line 125
    iget-object v0, v0, Lcom/inmobi/media/A0;->h:Lcom/inmobi/media/y0;

    .line 126
    invoke-virtual {v0, p1}, Lcom/inmobi/media/y0;->a(Lcom/inmobi/media/k;)V

    .line 127
    iget-object p1, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/A0;

    .line 128
    iget-object v0, p1, Lcom/inmobi/media/A0;->f:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 129
    iget-object p1, p1, Lcom/inmobi/media/A0;->d:Ljava/lang/String;

    .line 130
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "Notifying ad unit with placement ID ("

    invoke-static {p1, v1, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    iget-object v2, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/A0;

    .line 247
    iget-object v2, v2, Lcom/inmobi/media/A0;->c:Lcom/inmobi/media/Y;

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/A0;

    new-instance v1, Lcom/inmobi/media/z0$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/inmobi/media/z0$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/A0;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/inmobi/media/k;B)V
    .locals 3

    const-string v0, "assetBatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/A0;

    .line 8
    iget-object v0, v0, Lcom/inmobi/media/A0;->h:Lcom/inmobi/media/y0;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/y0;->a(Lcom/inmobi/media/k;B)V

    .line 10
    iget-object p1, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/A0;

    .line 11
    iget-object v0, p1, Lcom/inmobi/media/A0;->f:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 12
    iget-object p1, p1, Lcom/inmobi/media/A0;->d:Ljava/lang/String;

    .line 13
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "Notifying failure  to ad unit with placement ID ("

    invoke-static {p1, v1, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/A0;

    .line 118
    iget-object v2, v2, Lcom/inmobi/media/A0;->c:Lcom/inmobi/media/Y;

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/A0;

    new-instance v1, Lcom/inmobi/media/z0$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p2}, Lcom/inmobi/media/z0$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/A0;B)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

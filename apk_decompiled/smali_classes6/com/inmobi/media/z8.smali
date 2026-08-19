.class public final Lcom/inmobi/media/z8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/w;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/A8;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/A8;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 3
    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/O0;->c()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    invoke-virtual {v0}, Lcom/inmobi/media/t7;->f()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    instance-of v0, p1, Lcom/inmobi/media/C8;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/inmobi/media/C8;

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 13
    iget-object v0, v0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 14
    const-string v2, "access$getTAG$p(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 15
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 16
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "didRequestFullScreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v4, "isFullScreen"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v5, "shouldAutoPlay"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p1, Lcom/inmobi/media/D7;->w:Lcom/inmobi/media/D7;

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 28
    iget-byte v2, v0, Lcom/inmobi/media/t7;->a:B

    if-nez v2, :cond_4

    .line 29
    invoke-virtual {v0}, Lcom/inmobi/media/A8;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/media/md;->a(B)V

    :cond_3
    if-eqz p1, :cond_4

    .line 37
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 38
    invoke-virtual {v0, p1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 40
    iget-object v2, v2, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 41
    const-string v3, "fullscreen"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 47
    iget-object p1, p1, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz p1, :cond_5

    .line 48
    invoke-virtual {p1}, Lcom/inmobi/media/O0;->d()V

    :cond_5
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 3
    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v0, p1, Lcom/inmobi/media/C8;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/inmobi/media/C8;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "didRequestFullScreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v4, "isFullScreen"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object v1, p1, Lcom/inmobi/media/D7;->w:Lcom/inmobi/media/D7;

    .line 9
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object v1, p1, Lcom/inmobi/media/D7;->w:Lcom/inmobi/media/D7;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 14
    iget-byte v2, v0, Lcom/inmobi/media/t7;->a:B

    if-nez v2, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/inmobi/media/A8;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/inmobi/media/md;->a(B)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 17
    iget-object v0, v0, Lcom/inmobi/media/t7;->v:Lcom/inmobi/media/t7;

    if-eqz v0, :cond_3

    .line 18
    invoke-interface {v0}, Lcom/inmobi/media/x;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/inmobi/media/md;->a(B)V

    :cond_3
    if-eqz p1, :cond_5

    .line 21
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 22
    invoke-virtual {v0, p1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 24
    iget-object v2, v2, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 25
    const-string v3, "exitFullscreen"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/media/A8;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/inmobi/media/md;->a(B)V

    .line 32
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 33
    iget-object p1, p1, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz p1, :cond_6

    .line 34
    invoke-virtual {p1}, Lcom/inmobi/media/O0;->b()V

    .line 35
    :cond_6
    iget-object p1, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/A8;

    .line 36
    iget-object p1, p1, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_7

    .line 37
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1}, Lcom/inmobi/media/g5;->a()V

    :cond_7
    return-void
.end method

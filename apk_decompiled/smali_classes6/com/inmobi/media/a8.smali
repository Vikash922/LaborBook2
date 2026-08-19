.class public final Lcom/inmobi/media/a8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/G8;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/d8;

.field public final synthetic b:Lcom/inmobi/media/C8;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/d8;Lcom/inmobi/media/C8;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/a8;->a:Lcom/inmobi/media/d8;

    iput-object p2, p0, Lcom/inmobi/media/a8;->b:Lcom/inmobi/media/C8;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/a8;->a:Lcom/inmobi/media/d8;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 3
    iget-boolean v1, v0, Lcom/inmobi/media/t7;->t:Z

    if-nez v1, :cond_5

    .line 4
    instance-of v1, v0, Lcom/inmobi/media/A8;

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-nez p1, :cond_0

    .line 10
    :try_start_0
    check-cast v0, Lcom/inmobi/media/A8;

    .line 11
    iget-object v0, v0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0, v1}, Lcom/inmobi/media/md;->a(B)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 13
    check-cast v0, Lcom/inmobi/media/A8;

    iget-object v1, p0, Lcom/inmobi/media/a8;->b:Lcom/inmobi/media/C8;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/A8;->g(Lcom/inmobi/media/C8;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 16
    check-cast v0, Lcom/inmobi/media/A8;

    iget-object v1, p0, Lcom/inmobi/media/a8;->b:Lcom/inmobi/media/C8;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/A8;->f(Lcom/inmobi/media/C8;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 19
    check-cast v0, Lcom/inmobi/media/A8;

    iget-object v1, p0, Lcom/inmobi/media/a8;->b:Lcom/inmobi/media/C8;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/A8;->h(Lcom/inmobi/media/C8;)V

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_5

    .line 22
    check-cast v0, Lcom/inmobi/media/A8;

    iget-object v1, p0, Lcom/inmobi/media/a8;->b:Lcom/inmobi/media/C8;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/A8;->d(Lcom/inmobi/media/C8;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/a8;->a:Lcom/inmobi/media/d8;

    .line 29
    iget-object v2, v1, Lcom/inmobi/media/d8;->f:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_4

    .line 30
    iget-object v1, v1, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 31
    const-string v3, "access$getTAG$p(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SDK encountered unexpected error in handling ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ") event; "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 465
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v1, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_4
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 468
    const-string p1, "event"

    invoke-static {v0, p1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 469
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_5
    :goto_1
    return-void
.end method

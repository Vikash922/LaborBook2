.class public final Lcom/inmobi/media/Z7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/H8;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/d8;

.field public final synthetic b:Lcom/inmobi/media/C8;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/d8;Lcom/inmobi/media/C8;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/Z7;->a:Lcom/inmobi/media/d8;

    iput-object p2, p0, Lcom/inmobi/media/Z7;->b:Lcom/inmobi/media/C8;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Z7;->a:Lcom/inmobi/media/d8;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 3
    iget-boolean v1, v0, Lcom/inmobi/media/t7;->t:Z

    if-nez v1, :cond_a

    .line 4
    instance-of v1, v0, Lcom/inmobi/media/A8;

    if-eqz v1, :cond_a

    .line 5
    check-cast v0, Lcom/inmobi/media/A8;

    iget-object v1, p0, Lcom/inmobi/media/Z7;->b:Lcom/inmobi/media/C8;

    .line 6
    const-string v2, "videoAsset"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-boolean v2, v0, Lcom/inmobi/media/t7;->t:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "TAG"

    const/4 v4, 0x0

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 9
    const-string v7, "firstQuartile"

    invoke-virtual {v1, v7, v5, v4, v6}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 13
    iget-object v1, v0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "onVideoQuartileEvent(Q1)"

    invoke-virtual {v1, v4, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    iget-object v0, v0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v0, :cond_9

    const/16 v1, 0x9

    .line 15
    invoke-virtual {v0, v1}, Lcom/inmobi/media/md;->a(B)V

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x1

    if-ne p1, v5, :cond_4

    .line 20
    invoke-virtual {v0, v1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 21
    const-string v7, "midpoint"

    invoke-virtual {v1, v7, v5, v4, v6}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 25
    iget-object v1, v0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_3

    iget-object v4, v0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "onVideoQuartileEvent(Q2)"

    invoke-virtual {v1, v4, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_3
    iget-object v0, v0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 27
    invoke-virtual {v0, v1}, Lcom/inmobi/media/md;->a(B)V

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    if-ne p1, v5, :cond_6

    .line 32
    invoke-virtual {v0, v1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 33
    const-string v7, "thirdQuartile"

    invoke-virtual {v1, v7, v5, v4, v6}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 37
    iget-object v1, v0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_5

    iget-object v4, v0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "onVideoQuartileEvent(Q3)"

    invoke-virtual {v1, v4, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_5
    iget-object v0, v0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 39
    invoke-virtual {v0, v1}, Lcom/inmobi/media/md;->a(B)V

    goto :goto_0

    :cond_6
    if-ne p1, v3, :cond_8

    .line 40
    iget-object v2, v1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 41
    const-string v5, "didQ4Fire"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_7

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    :cond_7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 42
    invoke-virtual {v0, v1}, Lcom/inmobi/media/A8;->d(Lcom/inmobi/media/C8;)V

    goto :goto_0

    .line 46
    :cond_8
    iget-object v1, v0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unhandled quartileEvent ( "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ) for Native Video"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    if-ne v3, p1, :cond_a

    .line 47
    :try_start_0
    iget-object p1, p0, Lcom/inmobi/media/Z7;->a:Lcom/inmobi/media/d8;

    .line 48
    iget-object p1, p1, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 49
    check-cast p1, Lcom/inmobi/media/A8;

    iget-object v0, p0, Lcom/inmobi/media/Z7;->b:Lcom/inmobi/media/C8;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/A8;->c(Lcom/inmobi/media/C8;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 51
    iget-object v0, p0, Lcom/inmobi/media/Z7;->a:Lcom/inmobi/media/d8;

    .line 52
    iget-object v1, v0, Lcom/inmobi/media/d8;->f:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_a

    .line 53
    iget-object v0, v0, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 54
    const-string v2, "access$getTAG$p(...)"

    const-string v3, "SDK encountered unexpected error in handling the onVideoCompleted event; "

    invoke-static {v0, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    invoke-static {p1, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 455
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_1
    return-void
.end method

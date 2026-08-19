.class public final Lcom/inmobi/media/H0;
.super Lcom/inmobi/media/E1;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/inmobi/media/Q0;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/inmobi/media/a2;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Q0;Ljava/lang/String;Lcom/inmobi/media/a2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/H0;->d:Lcom/inmobi/media/Q0;

    iput-object p2, p0, Lcom/inmobi/media/H0;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/media/H0;->f:Lcom/inmobi/media/a2;

    iput-object p4, p0, Lcom/inmobi/media/H0;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/inmobi/media/H0;->h:Ljava/lang/String;

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/media/E1;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    const-string v0, "<get-TAG>(...)"

    .line 1
    const-string v1, "();"

    const-string v2, "Returning blob "

    .line 2
    iget-object v3, p0, Lcom/inmobi/media/E1;->b:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/Q0;

    if-eqz v3, :cond_5

    .line 6
    :try_start_0
    invoke-virtual {v3}, Lcom/inmobi/media/Q0;->m()Lcom/inmobi/media/h;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "retrievedBlob"

    const-string v5, "TAG"

    const-string v6, "blob"

    const-string v7, "callback"

    const-string v8, "jsCallbackNamespace"

    if-eqz v3, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v3}, Lcom/inmobi/media/h;->s()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/inmobi/media/H0;->e:Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/inmobi/media/h;->F()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/inmobi/media/H0;->f:Lcom/inmobi/media/a2;

    iget-object v9, p0, Lcom/inmobi/media/H0;->g:Ljava/lang/String;

    iget-object v10, p0, Lcom/inmobi/media/H0;->h:Ljava/lang/String;

    check-cast v3, Lcom/inmobi/media/Ya;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2224
    iget-object v6, v3, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v6, :cond_0

    sget-object v7, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/inmobi/media/g5;

    invoke-virtual {v6, v7, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    iget-object v3, p0, Lcom/inmobi/media/H0;->d:Lcom/inmobi/media/Q0;

    .line 2227
    iget-object v3, v3, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_5

    .line 2228
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v4

    .line 2229
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2232
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/H0;->d:Lcom/inmobi/media/Q0;

    .line 2233
    iget-object v2, v2, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_2

    .line 2234
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 2235
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "Returning blob as empty string"

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v9}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :cond_2
    iget-object v2, p0, Lcom/inmobi/media/H0;->f:Lcom/inmobi/media/a2;

    iget-object v3, p0, Lcom/inmobi/media/H0;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/inmobi/media/H0;->h:Ljava/lang/String;

    const-string v10, ""

    check-cast v2, Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2237
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4451
    iget-object v6, v2, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v6, :cond_3

    sget-object v7, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/inmobi/media/g5;

    invoke-virtual {v6, v7, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4452
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4453
    iget-object v2, p0, Lcom/inmobi/media/H0;->d:Lcom/inmobi/media/Q0;

    .line 4454
    iget-object v2, v2, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_4

    .line 4455
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 4456
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v0, "Exception while getBlob"

    invoke-virtual {v2, v3, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4457
    :cond_4
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 4458
    const-string v0, "event"

    invoke-static {v1, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 4459
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_5
    :goto_0
    return-void
.end method

.class public final Lcom/inmobi/media/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/inmobi/media/Oc;

.field public final b:Lcom/inmobi/media/Rc;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Oc;Lcom/inmobi/media/Rc;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/media/Oc;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/l5;->b:Lcom/inmobi/media/Rc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/l5;->b:Lcom/inmobi/media/Rc;

    .line 2
    iget v2, v1, Lcom/inmobi/media/rb;->y:I

    if-gt v0, v2, :cond_6

    .line 3
    invoke-virtual {v1}, Lcom/inmobi/media/l9;->b()Lcom/inmobi/media/m9;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/inmobi/media/l5;->b:Lcom/inmobi/media/Rc;

    .line 5
    iget-object v2, v2, Lcom/inmobi/media/rb;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/inmobi/media/m9;->b()Z

    move-result v2

    const-string v3, "TAG"

    const-string v4, "l5"

    if-eqz v2, :cond_1

    .line 8
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v1, v1, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    .line 10
    iget-object v2, p0, Lcom/inmobi/media/l5;->b:Lcom/inmobi/media/Rc;

    .line 11
    iget v2, v2, Lcom/inmobi/media/rb;->y:I

    if-ne v0, v2, :cond_4

    .line 12
    iget-object v0, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/media/Oc;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/Oc;->a(Lcom/inmobi/media/i9;)V

    return-void

    .line 17
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/inmobi/media/m9;->a()Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    const-class v1, Lorg/json/JSONObject;

    const-class v5, Lorg/json/JSONObject;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    iget-object v1, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/media/Oc;

    invoke-virtual {v1, v2}, Lcom/inmobi/media/Oc;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_2
    const-class v1, Lorg/json/JSONObject;

    .line 23
    new-instance v5, Lcom/inmobi/media/U5;

    invoke-direct {v5}, Lcom/inmobi/media/U5;-><init>()V

    invoke-virtual {v5, v2, v1}, Lcom/inmobi/media/U5;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/media/Oc;

    invoke-virtual {v2, v1}, Lcom/inmobi/media/Oc;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    .line 30
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lcom/inmobi/media/l5;->b:Lcom/inmobi/media/Rc;

    .line 32
    iget v2, v2, Lcom/inmobi/media/rb;->y:I

    if-ne v0, v2, :cond_4

    .line 33
    iget-object v0, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/media/Oc;

    .line 34
    new-instance v2, Lcom/inmobi/media/i9;

    .line 35
    sget-object v3, Lcom/inmobi/media/c4;->l:Lcom/inmobi/media/c4;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "Exception while parsing the response"

    .line 37
    :cond_3
    invoke-direct {v2, v3, v1}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v2}, Lcom/inmobi/media/Oc;->a(Lcom/inmobi/media/i9;)V

    return-void

    .line 49
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/media/l5;->b:Lcom/inmobi/media/Rc;

    .line 50
    iget v1, v1, Lcom/inmobi/media/rb;->z:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 53
    :catch_1
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :goto_2
    iget-object v1, p0, Lcom/inmobi/media/l5;->b:Lcom/inmobi/media/Rc;

    .line 56
    iget-object v1, v1, Lcom/inmobi/media/rb;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

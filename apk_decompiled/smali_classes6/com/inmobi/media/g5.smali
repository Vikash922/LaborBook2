.class public final Lcom/inmobi/media/g5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/f5;


# instance fields
.field public a:Lcom/inmobi/media/Ca;

.field public final b:Lcom/inmobi/media/dc;


# direct methods
.method public constructor <init>(Landroid/content/Context;DLcom/inmobi/media/B6;ZZIJZ)V
    .locals 11

    move-object v0, p0

    const-string v1, "context"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "logLevel"

    move-object v6, p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p6, :cond_0

    .line 21
    new-instance v1, Lcom/inmobi/media/dc;

    invoke-direct {v1}, Lcom/inmobi/media/dc;-><init>()V

    iput-object v1, v0, Lcom/inmobi/media/g5;->b:Lcom/inmobi/media/dc;

    :cond_0
    if-nez p5, :cond_1

    .line 24
    new-instance v1, Lcom/inmobi/media/Ca;

    move-object v2, v1

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-wide/from16 v7, p8

    move/from16 v9, p7

    move/from16 v10, p10

    invoke-direct/range {v2 .. v10}, Lcom/inmobi/media/Ca;-><init>(Landroid/content/Context;DLcom/inmobi/media/B6;JIZ)V

    iput-object v1, v0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    .line 32
    sget-object v2, Lcom/inmobi/media/K6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    const-string v2, "logger"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    sget-object v2, Lcom/inmobi/media/K6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/Ca;->b()V

    .line 18
    :cond_0
    sget-object v0, Lcom/inmobi/media/K6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    invoke-static {v0}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/Ca;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/inmobi/media/B6;->b:Lcom/inmobi/media/B6;

    invoke-virtual {v2, v3, p1, p2}, Lcom/inmobi/media/Ca;->a(Lcom/inmobi/media/B6;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/g5;->b:Lcom/inmobi/media/dc;

    if-eqz v2, :cond_1

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 7

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "error"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/inmobi/media/B6;->c:Lcom/inmobi/media/B6;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p1, v5}, Lcom/inmobi/media/Ca;->a(Lcom/inmobi/media/B6;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/inmobi/media/g5;->b:Lcom/inmobi/media/dc;

    if-eqz v3, :cond_1

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, v0, Lcom/inmobi/media/Ca;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    iget-object v1, v0, Lcom/inmobi/media/Ca;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iput-boolean p1, v0, Lcom/inmobi/media/Ca;->d:Z

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p1, Lcom/inmobi/media/Ca;->f:Lcom/inmobi/media/Fb;

    invoke-virtual {p1}, Lcom/inmobi/media/Fb;->a()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    sget-object p1, Lcom/inmobi/media/K6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    invoke-static {p1}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/Ca;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    :cond_3
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/Ca;->a()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/inmobi/media/B6;->c:Lcom/inmobi/media/B6;

    invoke-virtual {v2, v3, p1, p2}, Lcom/inmobi/media/Ca;->a(Lcom/inmobi/media/B6;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/g5;->b:Lcom/inmobi/media/dc;

    if-eqz v2, :cond_1

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/inmobi/media/B6;->a:Lcom/inmobi/media/B6;

    invoke-virtual {v2, v3, p1, p2}, Lcom/inmobi/media/Ca;->a(Lcom/inmobi/media/B6;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/g5;->b:Lcom/inmobi/media/dc;

    if-eqz v2, :cond_1

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/inmobi/media/B6;->d:Lcom/inmobi/media/B6;

    invoke-virtual {v2, v3, p1, p2}, Lcom/inmobi/media/Ca;->a(Lcom/inmobi/media/B6;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/g5;->b:Lcom/inmobi/media/dc;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "STATE_CHANGE: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz v2, :cond_1

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, v2, Lcom/inmobi/media/Ca;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    iget-object v0, v2, Lcom/inmobi/media/Ca;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, v2, Lcom/inmobi/media/Ca;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.class public final Lcom/inmobi/media/dd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I

.field public static final e:I

.field public static final f:Lcom/inmobi/media/cd;

.field public static final g:Ljava/util/concurrent/LinkedBlockingQueue;

.field public static h:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public final b:Lcom/inmobi/media/l9;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/inmobi/media/dd;->d:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 7
    sput v0, Lcom/inmobi/media/dd;->e:I

    .line 10
    new-instance v0, Lcom/inmobi/media/cd;

    invoke-direct {v0}, Lcom/inmobi/media/cd;-><init>()V

    sput-object v0, Lcom/inmobi/media/dd;->f:Lcom/inmobi/media/cd;

    .line 19
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/inmobi/media/dd;->g:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/media/bd;ILjava/util/concurrent/CountDownLatch;)V
    .locals 9

    const-string v0, "vastMediaFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/inmobi/media/l9;

    .line 43
    iget-object v1, p1, Lcom/inmobi/media/bd;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 44
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/l9;-><init>(Ljava/lang/String;Lcom/inmobi/media/f5;)V

    iput-object v0, p0, Lcom/inmobi/media/dd;->b:Lcom/inmobi/media/l9;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, v0, Lcom/inmobi/media/l9;->t:Z

    .line 46
    iput-boolean v1, v0, Lcom/inmobi/media/l9;->u:Z

    .line 47
    iput-boolean v1, v0, Lcom/inmobi/media/l9;->x:Z

    .line 48
    iput p2, v0, Lcom/inmobi/media/l9;->p:I

    const/4 p2, 0x1

    .line 49
    iput-boolean p2, v0, Lcom/inmobi/media/l9;->s:Z

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/media/dd;->c:Ljava/lang/ref/WeakReference;

    .line 51
    iput-object p3, p0, Lcom/inmobi/media/dd;->a:Ljava/util/concurrent/CountDownLatch;

    .line 53
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    sget v2, Lcom/inmobi/media/dd;->d:I

    sget v3, Lcom/inmobi/media/dd;->e:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    sget-object v7, Lcom/inmobi/media/dd;->g:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v8, Lcom/inmobi/media/dd;->f:Lcom/inmobi/media/cd;

    const-wide/16 v4, 0x1e

    move-object v1, p1

    .line 56
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 59
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 60
    sput-object p1, Lcom/inmobi/media/dd;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/dd;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/dd;->b:Lcom/inmobi/media/l9;

    invoke-virtual {v0}, Lcom/inmobi/media/l9;->b()Lcom/inmobi/media/m9;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/m9;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/dd;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/inmobi/media/dd;->a(Lcom/inmobi/media/m9;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    const-string v0, "dd"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/inmobi/media/c4;->e:Lcom/inmobi/media/c4;

    .line 10
    const-string v1, "errorCode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p0, Lcom/inmobi/media/dd;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/inmobi/media/dd;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/inmobi/media/dd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/inmobi/media/dd$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/dd;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/m9;)V
    .locals 5

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/dd;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/bd;

    if-eqz v0, :cond_0

    .line 14
    iget p1, p1, Lcom/inmobi/media/m9;->d:I

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    const/high16 p1, 0x100000

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 15
    iput-wide v1, v0, Lcom/inmobi/media/bd;->c:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/dd;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v0, Lcom/inmobi/media/d2;

    invoke-direct {v0, p1}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 18
    const-string p1, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    iget-object p1, p0, Lcom/inmobi/media/dd;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_1

    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/dd;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 98
    :cond_2
    throw p1
.end method

.class public final Lcom/inmobi/media/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/A;

.field public static final b:Landroid/util/SparseArray;

.field public static final c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/inmobi/media/A;

    invoke-direct {v0}, Lcom/inmobi/media/A;-><init>()V

    sput-object v0, Lcom/inmobi/media/A;->a:Lcom/inmobi/media/A;

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/inmobi/media/A;->b:Landroid/util/SparseArray;

    .line 10
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 11
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    const/4 v1, 0x0

    const-string v2, "ads"

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    .line 51
    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 52
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getMaxPoolSize()I

    move-result v2

    .line 54
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getMaxPoolSize()I

    move-result v3

    .line 56
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 58
    new-instance v8, Lcom/inmobi/media/p5;

    const-string v0, "-AD"

    const-string v1, "A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/inmobi/media/p5;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x5

    move-object v1, v9

    .line 59
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    .line 67
    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 68
    sput-object v9, Lcom/inmobi/media/A;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILcom/inmobi/media/E1;)V
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/inmobi/media/A;->c(ILcom/inmobi/media/E1;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/inmobi/media/m4;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/P6;

    .line 4
    new-instance v1, Lcom/inmobi/media/A$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/A$$ExternalSyntheticLambda0;-><init>(ILcom/inmobi/media/E1;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    const-string p0, "runnable"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p0, v0, Lcom/inmobi/media/P6;->a:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static final b(ILcom/inmobi/media/E1;)V
    .locals 1

    const-string v0, "$task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/inmobi/media/A;->c(ILcom/inmobi/media/E1;)V

    return-void
.end method

.method public static c(ILcom/inmobi/media/E1;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/inmobi/media/A;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/E1;

    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p0, :cond_1

    .line 9
    :try_start_1
    sget-object p1, Lcom/inmobi/media/A;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 11
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/media/E1;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 12
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 13
    const-string p1, "event"

    invoke-static {p0, p1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p0

    .line 14
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_1
    :goto_0
    return-void
.end method

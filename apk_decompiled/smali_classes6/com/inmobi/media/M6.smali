.class public abstract Lcom/inmobi/media/M6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static final c:Ljava/util/concurrent/Semaphore;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/media/p5;

    const-string v1, "Log"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/p5;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x5

    .line 2
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "newScheduledThreadPool(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/media/M6;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    new-instance v0, Lcom/inmobi/media/p5;

    const-string v1, "LogSingle"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/p5;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/M6;->b:Ljava/util/concurrent/ExecutorService;

    .line 8
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/inmobi/media/M6;->c:Ljava/util/concurrent/Semaphore;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/media/M6;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

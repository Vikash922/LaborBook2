.class public abstract Lcom/inmobi/media/v2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/W9;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Lcom/inmobi/media/W9;->a:I

    .line 4
    new-instance v0, Lcom/inmobi/media/p5;

    const-string v1, "ClickManagerExecutor"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/p5;-><init>(Ljava/lang/String;Z)V

    .line 5
    const-string v1, "threadFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v1, Lcom/inmobi/media/W9;

    .line 42
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 43
    invoke-direct {v1, v2, v3, v0}, Lcom/inmobi/media/W9;-><init>(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/PriorityBlockingQueue;Lcom/inmobi/media/p5;)V

    .line 44
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.sdk.PriorityExecutor"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/inmobi/media/v2;->a:Lcom/inmobi/media/W9;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;Lcom/inmobi/media/V9;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/inmobi/media/v2;->a:Lcom/inmobi/media/W9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/inmobi/media/A2;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/A2;-><init>(Ljava/lang/Runnable;Lcom/inmobi/media/V9;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

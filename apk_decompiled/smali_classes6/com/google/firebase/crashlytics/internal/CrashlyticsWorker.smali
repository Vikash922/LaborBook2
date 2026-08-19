.class public Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;
.super Ljava/lang/Object;
.source "CrashlyticsWorker.java"


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private tail:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "*>;"
        }
    .end annotation
.end field

.field private final tailLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tailLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    .line 47
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic lambda$await$5()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$submit$0(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 65
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$submit$1(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$submit$2(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 84
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$submit$3(Ljava/lang/Runnable;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$submitTask$4(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->submit(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void
.end method

.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    .line 95
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    .line 70
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public submitTask(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsWorker;->tail:Lcom/google/android/gms/tasks/Task;

    .line 114
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

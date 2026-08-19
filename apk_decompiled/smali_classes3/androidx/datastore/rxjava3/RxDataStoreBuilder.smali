.class public final Landroidx/datastore/rxjava3/RxDataStoreBuilder;
.super Ljava/lang/Object;
.source "RxDataStoreBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxDataStoreBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxDataStoreBuilder.kt\nandroidx/datastore/rxjava3/RxDataStoreBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1#2:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B#\u0008\u0016\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008B%\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\rJ\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0012J\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001aJ\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cJ\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fJ\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0013\u001a\u00020\u0014R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/datastore/rxjava3/RxDataStoreBuilder;",
        "T",
        "",
        "produceFile",
        "Ljava/util/concurrent/Callable;",
        "Ljava/io/File;",
        "serializer",
        "Landroidx/datastore/core/Serializer;",
        "(Ljava/util/concurrent/Callable;Landroidx/datastore/core/Serializer;)V",
        "context",
        "Landroid/content/Context;",
        "fileName",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Landroidx/datastore/core/Serializer;)V",
        "corruptionHandler",
        "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;",
        "dataMigrations",
        "",
        "Landroidx/datastore/core/DataMigration;",
        "ioScheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "name",
        "addDataMigration",
        "dataMigration",
        "addRxDataMigration",
        "rxDataMigration",
        "Landroidx/datastore/rxjava3/RxDataMigration;",
        "build",
        "Landroidx/datastore/rxjava3/RxDataStore;",
        "setCorruptionHandler",
        "setIoScheduler",
        "datastore-rxjava3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final dataMigrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private ioScheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private name:Ljava/lang/String;

.field private produceFile:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private serializer:Landroidx/datastore/core/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/Serializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/datastore/core/Serializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/datastore/core/Serializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    const-string v1, "io()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->ioScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->dataMigrations:Ljava/util/List;

    .line 69
    iput-object p1, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->name:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->serializer:Landroidx/datastore/core/Serializer;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Landroidx/datastore/core/Serializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/File;",
            ">;",
            "Landroidx/datastore/core/Serializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "produceFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    const-string v1, "io()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->ioScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->dataMigrations:Ljava/util/List;

    .line 52
    iput-object p1, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->produceFile:Ljava/util/concurrent/Callable;

    .line 53
    iput-object p2, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->serializer:Landroidx/datastore/core/Serializer;

    return-void
.end method

.method public static final synthetic access$getContext$p(Landroidx/datastore/rxjava3/RxDataStoreBuilder;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getName$p(Landroidx/datastore/rxjava3/RxDataStoreBuilder;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getProduceFile$p(Landroidx/datastore/rxjava3/RxDataStoreBuilder;)Ljava/util/concurrent/Callable;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->produceFile:Ljava/util/concurrent/Callable;

    return-object p0
.end method


# virtual methods
.method public final addDataMigration(Landroidx/datastore/core/DataMigration;)Landroidx/datastore/rxjava3/RxDataStoreBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;)",
            "Landroidx/datastore/rxjava3/RxDataStoreBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "dataMigration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    move-object v0, p0

    check-cast v0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    .line 134
    iget-object v0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->dataMigrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addRxDataMigration(Landroidx/datastore/rxjava3/RxDataMigration;)Landroidx/datastore/rxjava3/RxDataStoreBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/rxjava3/RxDataMigration<",
            "TT;>;)",
            "Landroidx/datastore/rxjava3/RxDataStoreBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "rxDataMigration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    .line 123
    iget-object v0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->dataMigrations:Ljava/util/List;

    new-instance v1, Landroidx/datastore/rxjava3/DataMigrationFromRxDataMigration;

    invoke-direct {v1, p1}, Landroidx/datastore/rxjava3/DataMigrationFromRxDataMigration;-><init>(Landroidx/datastore/rxjava3/RxDataMigration;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Landroidx/datastore/rxjava3/RxDataStore;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/rxjava3/RxDataStore<",
            "TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->ioScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {v0}, Lkotlinx/coroutines/rx3/RxSchedulerKt;->asCoroutineDispatcher(Lio/reactivex/rxjava3/core/Scheduler;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 145
    iget-object v1, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->produceFile:Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 148
    iget-object v2, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->serializer:Landroidx/datastore/core/Serializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    iget-object v3, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 151
    iget-object v4, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->dataMigrations:Ljava/util/List;

    .line 146
    new-instance v5, Landroidx/datastore/rxjava3/RxDataStoreBuilder$build$delegateDs$1;

    invoke-direct {v5, p0}, Landroidx/datastore/rxjava3/RxDataStoreBuilder$build$delegateDs$1;-><init>(Landroidx/datastore/rxjava3/RxDataStoreBuilder;)V

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/core/DataStoreFactory;->create(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 154
    sget-object v1, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 156
    iget-object v2, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->serializer:Landroidx/datastore/core/Serializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    iget-object v3, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 159
    iget-object v4, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->dataMigrations:Ljava/util/List;

    .line 154
    new-instance v5, Landroidx/datastore/rxjava3/RxDataStoreBuilder$build$delegateDs$2;

    invoke-direct {v5, p0}, Landroidx/datastore/rxjava3/RxDataStoreBuilder$build$delegateDs$2;-><init>(Landroidx/datastore/rxjava3/RxDataStoreBuilder;)V

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/core/DataStoreFactory;->create(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;

    move-result-object v1

    .line 165
    :goto_0
    sget-object v2, Landroidx/datastore/rxjava3/RxDataStore;->Companion:Landroidx/datastore/rxjava3/RxDataStore$Companion;

    invoke-virtual {v2, v1, v0}, Landroidx/datastore/rxjava3/RxDataStore$Companion;->create(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)Landroidx/datastore/rxjava3/RxDataStore;

    move-result-object v0

    return-object v0

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 162
    const-string v1, "Either produceFile or context and name must be set. This should never happen."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCorruptionHandler(Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;)Landroidx/datastore/rxjava3/RxDataStoreBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "TT;>;)",
            "Landroidx/datastore/rxjava3/RxDataStoreBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "corruptionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    move-object v0, p0

    check-cast v0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    iput-object p1, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    return-object p0
.end method

.method public final setIoScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Landroidx/datastore/rxjava3/RxDataStoreBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ")",
            "Landroidx/datastore/rxjava3/RxDataStoreBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "ioScheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    move-object v0, p0

    check-cast v0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    iput-object p1, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->ioScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

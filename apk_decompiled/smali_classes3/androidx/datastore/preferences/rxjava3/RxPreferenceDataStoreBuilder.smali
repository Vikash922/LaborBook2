.class public final Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;
.super Ljava/lang/Object;
.source "RxPreferenceDataStoreBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxPreferenceDataStoreBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxPreferenceDataStoreBuilder.kt\nandroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0008\u0016\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0014\u0010\u0013\u001a\u00020\u00002\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0010J\u0014\u0010\u0015\u001a\u00020\u00002\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0017J\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0019J\u0014\u0010\u001a\u001a\u00020\u00002\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;",
        "",
        "produceFile",
        "Ljava/util/concurrent/Callable;",
        "Ljava/io/File;",
        "(Ljava/util/concurrent/Callable;)V",
        "context",
        "Landroid/content/Context;",
        "name",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "corruptionHandler",
        "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "dataMigrations",
        "",
        "Landroidx/datastore/core/DataMigration;",
        "ioScheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "addDataMigration",
        "dataMigration",
        "addRxDataMigration",
        "rxDataMigration",
        "Landroidx/datastore/rxjava3/RxDataMigration;",
        "build",
        "Landroidx/datastore/rxjava3/RxDataStore;",
        "setCorruptionHandler",
        "setIoScheduler",
        "datastore-preferences-rxjava3_release"
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
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation
.end field

.field private final dataMigrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/datastore/core/DataMigration<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;>;"
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    const-string v1, "io()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->ioScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->dataMigrations:Ljava/util/List;

    .line 79
    iput-object p1, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->context:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "produceFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    const-string v1, "io()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->ioScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->dataMigrations:Ljava/util/List;

    .line 64
    iput-object p1, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->produceFile:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final addDataMigration(Landroidx/datastore/core/DataMigration;)Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataMigration<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;)",
            "Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;"
        }
    .end annotation

    const-string v0, "dataMigration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    move-object v0, p0

    check-cast v0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;

    .line 129
    iget-object v0, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->dataMigrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addRxDataMigration(Landroidx/datastore/rxjava3/RxDataMigration;)Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/rxjava3/RxDataMigration<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;)",
            "Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;"
        }
    .end annotation

    const-string v0, "rxDataMigration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    move-object v0, p0

    check-cast v0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;

    .line 117
    iget-object v0, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->dataMigrations:Ljava/util/List;

    new-instance v1, Landroidx/datastore/preferences/rxjava3/DataMigrationFromRxDataMigration;

    invoke-direct {v1, p1}, Landroidx/datastore/preferences/rxjava3/DataMigrationFromRxDataMigration;-><init>(Landroidx/datastore/rxjava3/RxDataMigration;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Landroidx/datastore/rxjava3/RxDataStore;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/rxjava3/RxDataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->ioScheduler:Lio/reactivex/rxjava3/core/Scheduler;

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

    .line 142
    iget-object v1, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->produceFile:Ljava/util/concurrent/Callable;

    .line 143
    iget-object v2, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->context:Landroid/content/Context;

    .line 144
    iget-object v3, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 147
    sget-object v2, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;->INSTANCE:Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;

    .line 150
    iget-object v3, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 151
    iget-object v4, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->dataMigrations:Ljava/util/List;

    .line 147
    new-instance v5, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder$build$delegate$1;

    invoke-direct {v5, v1}, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder$build$delegate$1;-><init>(Ljava/util/concurrent/Callable;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;->create(Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 154
    sget-object v1, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;->INSTANCE:Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;

    .line 157
    iget-object v4, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 158
    iget-object v5, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->dataMigrations:Ljava/util/List;

    .line 154
    new-instance v6, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder$build$delegate$2;

    invoke-direct {v6, v2, v3}, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder$build$delegate$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v4, v5, v0, v6}, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;->create(Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;

    move-result-object v1

    .line 164
    :goto_0
    sget-object v2, Landroidx/datastore/rxjava3/RxDataStore;->Companion:Landroidx/datastore/rxjava3/RxDataStore$Companion;

    invoke-virtual {v2, v1, v0}, Landroidx/datastore/rxjava3/RxDataStore$Companion;->create(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)Landroidx/datastore/rxjava3/RxDataStore;

    move-result-object v0

    return-object v0

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 161
    const-string v1, "Either produceFile or context and name must be set. This should never happen."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCorruptionHandler(Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;)Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;)",
            "Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;"
        }
    .end annotation

    const-string v0, "corruptionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    move-object v0, p0

    check-cast v0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;

    iput-object p1, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    return-object p0
.end method

.method public final setIoScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;
    .locals 1

    const-string v0, "ioScheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    move-object v0, p0

    check-cast v0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;

    iput-object p1, p0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->ioScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

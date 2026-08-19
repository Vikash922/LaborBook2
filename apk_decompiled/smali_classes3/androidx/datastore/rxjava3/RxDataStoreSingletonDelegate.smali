.class public final Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;
.super Ljava/lang/Object;
.source "RxDataStoreDelegate.kt"

# interfaces
.implements Lkotlin/properties/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadOnlyProperty<",
        "Landroid/content/Context;",
        "Landroidx/datastore/rxjava3/RxDataStore<",
        "TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxDataStoreDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxDataStoreDelegate.kt\nandroidx/datastore/rxjava3/RxDataStoreSingletonDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1855#2,2:118\n1#3:120\n*S KotlinDebug\n*F\n+ 1 RxDataStoreDelegate.kt\nandroidx/datastore/rxjava3/RxDataStoreSingletonDelegate\n*L\n106#1:118,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00050\u0003BW\u0008\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000b\u0012 \u0008\u0002\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f0\u000e0\r\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J#\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0016\u001a\u00020\u00042\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0018H\u0096\u0002R\u001a\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f0\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;",
        "T",
        "",
        "Lkotlin/properties/ReadOnlyProperty;",
        "Landroid/content/Context;",
        "Landroidx/datastore/rxjava3/RxDataStore;",
        "fileName",
        "",
        "serializer",
        "Landroidx/datastore/core/Serializer;",
        "corruptionHandler",
        "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;",
        "produceMigrations",
        "Lkotlin/Function1;",
        "",
        "Landroidx/datastore/core/DataMigration;",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)V",
        "INSTANCE",
        "lock",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
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
.field private volatile INSTANCE:Landroidx/datastore/rxjava3/RxDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/rxjava3/RxDataStore<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private final produceMigrations:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private final serializer:Landroidx/datastore/core/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/Serializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/datastore/core/Serializer<",
            "TT;>;",
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ")V"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "produceMigrations"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->fileName:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->serializer:Landroidx/datastore/core/Serializer;

    .line 82
    iput-object p3, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 83
    iput-object p4, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->produceMigrations:Lkotlin/jvm/functions/Function1;

    .line 84
    iput-object p5, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 87
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->lock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 83
    sget-object p4, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate$1;->INSTANCE:Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 79
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;-><init>(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Lkotlin/reflect/KProperty;)Landroidx/datastore/rxjava3/RxDataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Landroidx/datastore/rxjava3/RxDataStore<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/rxjava3/RxDataStore;

    if-nez p2, :cond_3

    iget-object p2, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->lock:Ljava/lang/Object;

    monitor-enter p2

    .line 101
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/rxjava3/RxDataStore;

    if-nez v0, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 104
    new-instance v0, Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    const-string v1, "applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->fileName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->serializer:Landroidx/datastore/core/Serializer;

    invoke-direct {v0, p1, v1, v2}, Landroidx/datastore/rxjava3/RxDataStoreBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/datastore/core/Serializer;)V

    .line 105
    iget-object v1, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v0, v1}, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->setIoScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    .line 106
    iget-object v1, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->produceMigrations:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/core/DataMigration;

    .line 107
    invoke-virtual {v0, v1}, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->addDataMigration(Landroidx/datastore/core/DataMigration;)Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->setCorruptionHandler(Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;)Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    .line 110
    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->build()Landroidx/datastore/rxjava3/RxDataStore;

    move-result-object p1

    .line 104
    iput-object p1, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/rxjava3/RxDataStore;

    .line 113
    :cond_2
    iget-object p1, p0, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/rxjava3/RxDataStore;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p2

    move-object p2, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_3
    :goto_1
    return-object p2
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;->getValue(Landroid/content/Context;Lkotlin/reflect/KProperty;)Landroidx/datastore/rxjava3/RxDataStore;

    move-result-object p1

    return-object p1
.end method

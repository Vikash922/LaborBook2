.class public final Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;
.super Ljava/lang/Object;
.source "RxPreferenceDataStoreDelegate.kt"

# interfaces
.implements Lkotlin/properties/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadOnlyProperty<",
        "Landroid/content/Context;",
        "Landroidx/datastore/rxjava3/RxDataStore<",
        "Landroidx/datastore/preferences/core/Preferences;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxPreferenceDataStoreDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxPreferenceDataStoreDelegate.kt\nandroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1855#2,2:115\n1#3:117\n*S KotlinDebug\n*F\n+ 1 RxPreferenceDataStoreDelegate.kt\nandroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate\n*L\n103#1:115,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001BG\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008\u0012\u001e\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u000c0\u000b0\n\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ#\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0014\u001a\u00020\u00022\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0016H\u0096\u0002R\u001a\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u000c0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;",
        "Lkotlin/properties/ReadOnlyProperty;",
        "Landroid/content/Context;",
        "Landroidx/datastore/rxjava3/RxDataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "fileName",
        "",
        "corruptionHandler",
        "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;",
        "produceMigrations",
        "Lkotlin/Function1;",
        "",
        "Landroidx/datastore/core/DataMigration;",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)V",
        "INSTANCE",
        "lock",
        "",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
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
.field private volatile INSTANCE:Landroidx/datastore/rxjava3/RxDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/rxjava3/RxDataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation
.end field

.field private final corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
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
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final scheduler:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/core/DataMigration<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;>;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ")V"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "produceMigrations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->fileName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 79
    iput-object p3, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->produceMigrations:Lkotlin/jvm/functions/Function1;

    .line 80
    iput-object p4, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 83
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Lkotlin/reflect/KProperty;)Landroidx/datastore/rxjava3/RxDataStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Landroidx/datastore/rxjava3/RxDataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/rxjava3/RxDataStore;

    if-nez p2, :cond_3

    iget-object p2, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->lock:Ljava/lang/Object;

    monitor-enter p2

    .line 97
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/rxjava3/RxDataStore;

    if-nez v0, :cond_2

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 100
    new-instance v0, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;

    const-string v1, "applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->fileName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->setIoScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;

    .line 103
    iget-object v1, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->produceMigrations:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 115
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/core/DataMigration;

    .line 104
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->addDataMigration(Landroidx/datastore/core/DataMigration;)Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->setCorruptionHandler(Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;)Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;

    .line 107
    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;->build()Landroidx/datastore/rxjava3/RxDataStore;

    move-result-object p1

    .line 100
    iput-object p1, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/rxjava3/RxDataStore;

    .line 110
    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/rxjava3/RxDataStore;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
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

    .line 76
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;->getValue(Landroid/content/Context;Lkotlin/reflect/KProperty;)Landroidx/datastore/rxjava3/RxDataStore;

    move-result-object p1

    return-object p1
.end method

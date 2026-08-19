.class public final Landroidx/datastore/preferences/rxjava3/DataMigrationFromRxDataMigration;
.super Ljava/lang/Object;
.source "RxPreferenceDataStoreBuilder.kt"

# interfaces
.implements Landroidx/datastore/core/DataMigration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/DataMigration<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u0007H\u0096@\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\t\u001a\u00028\u00002\u0006\u0010\n\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0002\u0010\u000bJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0002\u0010\u000bR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/datastore/preferences/rxjava3/DataMigrationFromRxDataMigration;",
        "T",
        "Landroidx/datastore/core/DataMigration;",
        "migration",
        "Landroidx/datastore/rxjava3/RxDataMigration;",
        "(Landroidx/datastore/rxjava3/RxDataMigration;)V",
        "cleanUp",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "migrate",
        "currentData",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shouldMigrate",
        "",
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
.field private final migration:Landroidx/datastore/rxjava3/RxDataMigration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/rxjava3/RxDataMigration<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/datastore/rxjava3/RxDataMigration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/rxjava3/RxDataMigration<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "migration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/rxjava3/DataMigrationFromRxDataMigration;->migration:Landroidx/datastore/rxjava3/RxDataMigration;

    return-void
.end method


# virtual methods
.method public cleanUp(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroidx/datastore/preferences/rxjava3/DataMigrationFromRxDataMigration;->migration:Landroidx/datastore/rxjava3/RxDataMigration;

    invoke-interface {v0}, Landroidx/datastore/rxjava3/RxDataMigration;->cleanUp()Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    const-string v1, "migration.cleanUp()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/rxjava3/core/CompletableSource;

    invoke-static {v0, p1}, Lkotlinx/coroutines/rx3/RxAwaitKt;->await(Lio/reactivex/rxjava3/core/CompletableSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public migrate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Landroidx/datastore/preferences/rxjava3/DataMigrationFromRxDataMigration;->migration:Landroidx/datastore/rxjava3/RxDataMigration;

    invoke-interface {v0, p1}, Landroidx/datastore/rxjava3/RxDataMigration;->migrate(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string v0, "migration.migrate(currentData)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/reactivex/rxjava3/core/SingleSource;

    invoke-static {p1, p2}, Lkotlinx/coroutines/rx3/RxAwaitKt;->await(Lio/reactivex/rxjava3/core/SingleSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public shouldMigrate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroidx/datastore/preferences/rxjava3/DataMigrationFromRxDataMigration;->migration:Landroidx/datastore/rxjava3/RxDataMigration;

    invoke-interface {v0, p1}, Landroidx/datastore/rxjava3/RxDataMigration;->shouldMigrate(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string v0, "migration.shouldMigrate(currentData)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/reactivex/rxjava3/core/SingleSource;

    invoke-static {p1, p2}, Lkotlinx/coroutines/rx3/RxAwaitKt;->await(Lio/reactivex/rxjava3/core/SingleSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

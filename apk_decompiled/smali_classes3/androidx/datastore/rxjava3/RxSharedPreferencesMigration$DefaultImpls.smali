.class public final Landroidx/datastore/rxjava3/RxSharedPreferencesMigration$DefaultImpls;
.super Ljava/lang/Object;
.source "RxSharedPreferencesMigration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static shouldMigrate(Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/rxjava3/RxSharedPreferencesMigration<",
            "TT;>;TT;)",
            "Lio/reactivex/rxjava3/core/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-static {p0, p1}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;->access$shouldMigrate$jd(Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

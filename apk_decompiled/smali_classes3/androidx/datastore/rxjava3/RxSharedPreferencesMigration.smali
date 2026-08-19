.class public interface abstract Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;
.super Ljava/lang/Object;
.source "RxSharedPreferencesMigration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/rxjava3/RxSharedPreferencesMigration$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J#\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0008J\u001b\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00042\u0006\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000b\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000c\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;",
        "T",
        "",
        "migrate",
        "Lio/reactivex/rxjava3/core/Single;",
        "sharedPreferencesView",
        "Landroidx/datastore/migrations/SharedPreferencesView;",
        "currentData",
        "(Landroidx/datastore/migrations/SharedPreferencesView;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;",
        "shouldMigrate",
        "",
        "(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;",
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


# direct methods
.method public static synthetic access$shouldMigrate$jd(Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;->shouldMigrate(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract migrate(Landroidx/datastore/migrations/SharedPreferencesView;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/migrations/SharedPreferencesView;",
            "TT;)",
            "Lio/reactivex/rxjava3/core/Single<",
            "TT;>;"
        }
    .end annotation
.end method

.method public shouldMigrate(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/rxjava3/core/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 40
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Single;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string v0, "just(true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

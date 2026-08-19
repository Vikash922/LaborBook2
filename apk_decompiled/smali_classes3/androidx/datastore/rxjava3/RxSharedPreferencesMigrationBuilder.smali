.class public final Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;
.super Ljava/lang/Object;
.source "RxSharedPreferencesMigration.kt"


# annotations
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
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJ\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rJ%\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0010\"\u00020\u0006\u00a2\u0006\u0002\u0010\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;",
        "T",
        "",
        "context",
        "Landroid/content/Context;",
        "sharedPreferencesName",
        "",
        "rxSharedPreferencesMigration",
        "Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;",
        "(Landroid/content/Context;Ljava/lang/String;Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;)V",
        "keysToMigrate",
        "",
        "build",
        "Landroidx/datastore/core/DataMigration;",
        "setKeysToMigrate",
        "keys",
        "",
        "([Ljava/lang/String;)Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;",
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
.field private final context:Landroid/content/Context;

.field private keysToMigrate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rxSharedPreferencesMigration:Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/rxjava3/RxSharedPreferencesMigration<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sharedPreferencesName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/datastore/rxjava3/RxSharedPreferencesMigration<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedPreferencesName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxSharedPreferencesMigration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->context:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->sharedPreferencesName:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->rxSharedPreferencesMigration:Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;

    return-void
.end method

.method public static final synthetic access$getRxSharedPreferencesMigration$p(Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;)Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->rxSharedPreferencesMigration:Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;

    return-object p0
.end method


# virtual methods
.method public final build()Landroidx/datastore/core/DataMigration;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;"
        }
    .end annotation

    .line 105
    iget-object v3, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->keysToMigrate:Ljava/util/Set;

    const/4 v0, 0x0

    if-nez v3, :cond_0

    .line 107
    iget-object v5, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->context:Landroid/content/Context;

    .line 108
    iget-object v6, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->sharedPreferencesName:Ljava/lang/String;

    .line 106
    new-instance v1, Landroidx/datastore/migrations/SharedPreferencesMigration;

    .line 112
    new-instance v2, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$1;

    invoke-direct {v2, p0, v0}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$1;-><init>(Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;Lkotlin/coroutines/Continuation;)V

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 109
    new-instance v2, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$2;

    invoke-direct {v2, p0, v0}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$2;-><init>(Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;Lkotlin/coroutines/Continuation;)V

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function3;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    .line 106
    invoke-direct/range {v4 .. v11}, Landroidx/datastore/migrations/SharedPreferencesMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/datastore/core/DataMigration;

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->context:Landroid/content/Context;

    .line 119
    iget-object v2, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->sharedPreferencesName:Ljava/lang/String;

    .line 123
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    new-instance v6, Landroidx/datastore/migrations/SharedPreferencesMigration;

    .line 124
    new-instance v4, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$3;

    invoke-direct {v4, p0, v0}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$3;-><init>(Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 120
    new-instance v5, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;

    invoke-direct {v5, p0, v0}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;-><init>(Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function3;

    move-object v0, v6

    .line 117
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/migrations/SharedPreferencesMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    move-object v1, v6

    check-cast v1, Landroidx/datastore/core/DataMigration;

    :goto_0
    return-object v1
.end method

.method public final varargs setKeysToMigrate([Ljava/lang/String;)Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    move-object v0, p0

    check-cast v0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;

    .line 96
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->keysToMigrate:Ljava/util/Set;

    return-object p0
.end method

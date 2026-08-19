.class public final Landroidx/datastore/rxjava3/RxDataStore$Companion;
.super Ljava/lang/Object;
.source "RxDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/rxjava3/RxDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/datastore/rxjava3/RxDataStore$Companion;",
        "",
        "()V",
        "create",
        "Landroidx/datastore/rxjava3/RxDataStore;",
        "T",
        "delegateDs",
        "Landroidx/datastore/core/DataStore;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
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
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/rxjava3/RxDataStore$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)Landroidx/datastore/rxjava3/RxDataStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/core/DataStore<",
            "TT;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Landroidx/datastore/rxjava3/RxDataStore<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "delegateDs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroidx/datastore/rxjava3/RxDataStore;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/datastore/rxjava3/RxDataStore;-><init>(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

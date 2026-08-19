.class public final Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;
.super Ljava/lang/Object;
.source "StateDefinitionParameter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;",
        "",
        "()V",
        "from",
        "Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;",
        "state",
        "Landroidx/lifecycle/SavedStateHandle;",
        "params",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "koin-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Landroidx/lifecycle/SavedStateHandle;Lorg/koin/core/parameter/DefinitionParameters;)Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;

    invoke-virtual {p2}, Lorg/koin/core/parameter/DefinitionParameters;->getValues()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;-><init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/List;)V

    return-object v0
.end method

.class public final Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;
.super Lorg/koin/core/parameter/DefinitionParameters;
.source "StateDefinitionParameter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J!\u0010\n\u001a\u0004\u0018\u0001H\u000b\"\u0004\u0008\u0000\u0010\u000b2\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0016\u00a2\u0006\u0002\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "state",
        "Landroidx/lifecycle/SavedStateHandle;",
        "values",
        "",
        "",
        "(Landroidx/lifecycle/SavedStateHandle;Ljava/util/List;)V",
        "getState",
        "()Landroidx/lifecycle/SavedStateHandle;",
        "getOrNull",
        "T",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "(Lkotlin/reflect/KClass;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field public static final Companion:Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;


# instance fields
.field private final state:Landroidx/lifecycle/SavedStateHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;->Companion:Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/SavedStateHandle;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p2}, Lorg/koin/core/parameter/DefinitionParameters;-><init>(Ljava/util/List;)V

    .line 7
    iput-object p1, p0, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;->state:Landroidx/lifecycle/SavedStateHandle;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;-><init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "*>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const-class v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object p1, p0, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;->state:Landroidx/lifecycle/SavedStateHandle;

    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lorg/koin/core/parameter/DefinitionParameters;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getState()Landroidx/lifecycle/SavedStateHandle;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;->state:Landroidx/lifecycle/SavedStateHandle;

    return-object v0
.end method

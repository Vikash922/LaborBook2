.class final Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StateViewModelFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;->create(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "T",
        "Landroidx/lifecycle/ViewModel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $handle:Landroidx/lifecycle/SavedStateHandle;

.field final synthetic this$0:Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory<",
            "TT;>;",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory$create$1;->this$0:Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory$create$1;->$handle:Landroidx/lifecycle/SavedStateHandle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory$create$1;->invoke()Lorg/koin/core/parameter/DefinitionParameters;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/core/parameter/DefinitionParameters;
    .locals 3

    .line 25
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory$create$1;->this$0:Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;

    invoke-virtual {v0}, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;->getParameters()Lorg/koin/androidx/viewmodel/ViewModelParameter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getParameters()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/parameter/DefinitionParameters;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/koin/core/parameter/DefinitionParameters;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lorg/koin/core/parameter/DefinitionParameters;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    :cond_1
    sget-object v1, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;->Companion:Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;

    iget-object v2, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory$create$1;->$handle:Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {v1, v2, v0}, Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;->from(Landroidx/lifecycle/SavedStateHandle;Lorg/koin/core/parameter/DefinitionParameters;)Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;

    move-result-object v0

    check-cast v0, Lorg/koin/core/parameter/DefinitionParameters;

    return-object v0
.end method

.class public final Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;
.super Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
.source "StateViewModelFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/lifecycle/ViewModel;",
        ">",
        "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008J5\u0010\r\u001a\u0002H\u0001\"\u0008\u0008\u0001\u0010\u0001*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014\u00a2\u0006\u0002\u0010\u0014R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "parameters",
        "Lorg/koin/androidx/viewmodel/ViewModelParameter;",
        "(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;)V",
        "getParameters",
        "()Lorg/koin/androidx/viewmodel/ViewModelParameter;",
        "getScope",
        "()Lorg/koin/core/scope/Scope;",
        "create",
        "key",
        "",
        "modelClass",
        "Ljava/lang/Class;",
        "handle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;",
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


# instance fields
.field private final parameters:Lorg/koin/androidx/viewmodel/ViewModelParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/koin/androidx/viewmodel/ViewModelParameter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/androidx/viewmodel/ViewModelParameter<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getRegistryOwner()Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p2}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getInitialState()Landroid/os/Bundle;

    move-result-object v1

    .line 15
    invoke-direct {p0, v0, v1}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    .line 13
    iput-object p1, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 14
    iput-object p2, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;->parameters:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t create SavedStateViewModelFactory without a proper stateRegistryOwner"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method protected create(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "modelClass"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handle"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 22
    iget-object p2, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;->parameters:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-virtual {p2}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getClazz()Lkotlin/reflect/KClass;

    move-result-object p2

    .line 23
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;->parameters:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-virtual {v0}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v0

    .line 24
    new-instance v1, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory$create$1;

    invoke-direct {v1, p0, p3}, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory$create$1;-><init>(Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;Landroidx/lifecycle/SavedStateHandle;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 21
    invoke-virtual {p1, p2, v0, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method

.method public final getParameters()Lorg/koin/androidx/viewmodel/ViewModelParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/koin/androidx/viewmodel/ViewModelParameter<",
            "TT;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;->parameters:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    return-object v0
.end method

.method public final getScope()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    return-object v0
.end method

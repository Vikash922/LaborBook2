.class final Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SavedStateRegistryOwnerExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt;->stateViewModel(Landroidx/savedstate/SavedStateRegistryOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $clazz:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $parameters:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $state:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_stateViewModel:Landroidx/savedstate/SavedStateRegistryOwner;


# direct methods
.method constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/savedstate/SavedStateRegistryOwner;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/os/Bundle;",
            ">;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->$this_stateViewModel:Landroidx/savedstate/SavedStateRegistryOwner;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->$state:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->$clazz:Lkotlin/reflect/KClass;

    iput-object p5, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->$this_stateViewModel:Landroidx/savedstate/SavedStateRegistryOwner;

    iget-object v1, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v2, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->$state:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->$clazz:Lkotlin/reflect/KClass;

    iget-object v4, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->$parameters:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt;->getStateViewModel(Landroidx/savedstate/SavedStateRegistryOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$stateViewModel$2;->invoke()Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

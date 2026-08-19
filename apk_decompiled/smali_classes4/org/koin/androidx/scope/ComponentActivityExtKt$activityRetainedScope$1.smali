.class final Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ComponentActivityExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/scope/ComponentActivityExtKt;->activityRetainedScope(Landroidx/activity/ComponentActivity;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/koin/core/scope/Scope;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComponentActivityExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentActivityExt.kt\norg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,40:1\n41#2,7:41\n*S KotlinDebug\n*F\n+ 1 ComponentActivityExt.kt\norg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1\n*L\n32#1:41,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lorg/koin/core/scope/Scope;"
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
.field final synthetic $this_activityRetainedScope:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1;->$this_activityRetainedScope:Landroidx/activity/ComponentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1;->invoke()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/core/scope/Scope;
    .locals 6

    .line 32
    iget-object v0, p0, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1;->$this_activityRetainedScope:Landroidx/activity/ComponentActivity;

    const/4 v1, 0x0

    .line 41
    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 43
    new-instance v2, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1$invoke$$inlined$viewModels$default$1;

    invoke-direct {v2, v0}, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1$invoke$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 47
    new-instance v3, Landroidx/lifecycle/ViewModelLazy;

    const-class v4, Lorg/koin/androidx/scope/ScopeHandlerViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1$invoke$$inlined$viewModels$default$2;

    invoke-direct {v5, v0}, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1$invoke$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5, v2}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/Lazy;

    .line 32
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;

    .line 33
    invoke-virtual {v0}, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v2

    if-nez v2, :cond_0

    .line 34
    iget-object v2, p0, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1;->$this_activityRetainedScope:Landroidx/activity/ComponentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v1}, Lorg/koin/androidx/scope/ComponentActivityExtKt;->createScope$default(Landroidx/activity/ComponentActivity;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->setScope(Lorg/koin/core/scope/Scope;)V

    .line 36
    :cond_0
    invoke-virtual {v0}, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

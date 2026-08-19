.class public final Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;
.super Ljava/lang/Object;
.source "LifecycleScopeDelegate.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/scope/LifecycleScopeDelegate;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/context/KoinContext;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "org/koin/androidx/scope/LifecycleScopeDelegate$2",
        "Landroidx/lifecycle/LifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
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
.field final synthetic $logger:Lorg/koin/core/logger/Logger;

.field final synthetic this$0:Lorg/koin/androidx/scope/LifecycleScopeDelegate;


# direct methods
.method constructor <init>(Lorg/koin/core/logger/Logger;Lorg/koin/androidx/scope/LifecycleScopeDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->$logger:Lorg/koin/core/logger/Logger;

    iput-object p2, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->this$0:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->$logger:Lorg/koin/core/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Closing scope: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->this$0:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-static {v1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->access$get_scope$p(Lorg/koin/androidx/scope/LifecycleScopeDelegate;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->this$0:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-virtual {v1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->this$0:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-static {p1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->access$get_scope$p(Lorg/koin/androidx/scope/LifecycleScopeDelegate;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getClosed()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 38
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->this$0:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-static {p1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->access$get_scope$p(Lorg/koin/androidx/scope/LifecycleScopeDelegate;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->close()V

    .line 40
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->this$0:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-static {p1, v0}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->access$set_scope$p(Lorg/koin/androidx/scope/LifecycleScopeDelegate;Lorg/koin/core/scope/Scope;)V

    return-void
.end method

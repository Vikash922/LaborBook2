.class public final Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;->onStart(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onCreate",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroy",
        "navigator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field final synthetic $isFromPopBack:Z

.field final synthetic $isFromSwitchTab:Z

.field final synthetic this$0:Lcom/boilerplate/navigator/MultipleStackNavigator;


# direct methods
.method public constructor <init>(Lcom/boilerplate/navigator/MultipleStackNavigator;ZLandroidx/fragment/app/Fragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->this$0:Lcom/boilerplate/navigator/MultipleStackNavigator;

    iput-boolean p2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->$isFromPopBack:Z

    iput-object p3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->$fragment:Landroidx/fragment/app/Fragment;

    iput-boolean p4, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->$isFromSwitchTab:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->this$0:Lcom/boilerplate/navigator/MultipleStackNavigator;

    iget-boolean v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->$isFromPopBack:Z

    invoke-static {p1, v0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->access$setFromPopBack$p(Lcom/boilerplate/navigator/MultipleStackNavigator;Z)V

    iget-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->this$0:Lcom/boilerplate/navigator/MultipleStackNavigator;

    invoke-static {p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->access$getDestinationChangeLiveData$p(Lcom/boilerplate/navigator/MultipleStackNavigator;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->this$0:Lcom/boilerplate/navigator/MultipleStackNavigator;

    iget-boolean v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->$isFromSwitchTab:Z

    invoke-static {p1, v0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->access$setFromSwitchTab$p(Lcom/boilerplate/navigator/MultipleStackNavigator;Z)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->this$0:Lcom/boilerplate/navigator/MultipleStackNavigator;

    invoke-static {v0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->access$getDestinationChangeLiveData$p(Lcom/boilerplate/navigator/MultipleStackNavigator;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->$fragment:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;->this$0:Lcom/boilerplate/navigator/MultipleStackNavigator;

    invoke-static {v0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->access$getDestinationChangeLiveData$p(Lcom/boilerplate/navigator/MultipleStackNavigator;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

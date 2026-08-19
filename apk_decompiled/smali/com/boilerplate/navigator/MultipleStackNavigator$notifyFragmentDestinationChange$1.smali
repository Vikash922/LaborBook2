.class public final Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boilerplate/navigator/MultipleStackNavigator;->notifyFragmentDestinationChange(Landroidx/fragment/app/Fragment;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onStart",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
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
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/boilerplate/navigator/MultipleStackNavigator;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;->$fragment:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;->this$0:Lcom/boilerplate/navigator/MultipleStackNavigator;

    iput-boolean p3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;->$isFromPopBack:Z

    iput-boolean p4, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;->$isFromSwitchTab:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;->$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;->this$0:Lcom/boilerplate/navigator/MultipleStackNavigator;

    iget-boolean v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;->$isFromPopBack:Z

    iget-object v3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;->$fragment:Landroidx/fragment/app/Fragment;

    iget-boolean v4, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;->$isFromSwitchTab:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1;-><init>(Lcom/boilerplate/navigator/MultipleStackNavigator;ZLandroidx/fragment/app/Fragment;Z)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

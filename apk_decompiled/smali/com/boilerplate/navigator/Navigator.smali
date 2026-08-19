.class public interface abstract Lcom/boilerplate/navigator/Navigator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boilerplate/navigator/Navigator$DefaultImpls;,
        Lcom/boilerplate/navigator/Navigator$NavigatorListener;,
        Lcom/boilerplate/navigator/Navigator$OnGoBackListener;,
        Lcom/boilerplate/navigator/Navigator$OnNavigatorTransactionListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001:\u0003-./J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H&J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u0003H&J\u0008\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u001a\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000eH&J\u0012\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000eH&J\u0008\u0010\u0010\u001a\u00020\u0003H&J1\u0010\u0013\u001a\u00020\u00032\"\u0010\u0014\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00160\u0017j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0016`\u0015H&\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\tH&J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001eH&J\u0012\u0010\u001f\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010\u001eH&J$\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00030%H&J\u0012\u0010&\u001a\u00020\t2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0007H&J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010(\u001a\u00020)H&J*\u0010*\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#2\u0018\u0010$\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00030+H&J*\u0010,\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#2\u0018\u0010$\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00030+H&\u00a8\u00060"
    }
    d2 = {
        "Lcom/boilerplate/navigator/Navigator;",
        "",
        "start",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "fragmentGroupName",
        "",
        "tabIndex",
        "",
        "transitionAnimation",
        "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;",
        "goBack",
        "canGoBack",
        "",
        "switchTab",
        "reset",
        "resetRootFragment",
        "resetCurrentTab",
        "resetWithFragmentProvider",
        "rootFragmentProvider",
        "Lkotlin/collections/ArrayList;",
        "Lkotlin/Function0;",
        "Ljava/util/ArrayList;",
        "(Ljava/util/ArrayList;)V",
        "clearGroup",
        "hasOnlyRoot",
        "getCurrentFragment",
        "onSaveInstanceState",
        "outState",
        "Landroid/os/Bundle;",
        "initialize",
        "savedState",
        "observeDestinationChanges",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "destinationChangedListener",
        "Lkotlin/Function1;",
        "getFragmentIndexInStackBySameType",
        "tag",
        "bottomSheetFragment",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "observeDestinationChangesWithTabChange",
        "Lkotlin/Function2;",
        "observeDestinationChangesWithPopBack",
        "NavigatorListener",
        "OnGoBackListener",
        "OnNavigatorTransactionListener",
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


# virtual methods
.method public abstract canGoBack()Z
.end method

.method public abstract clearGroup(Ljava/lang/String;)V
.end method

.method public abstract getCurrentFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract getFragmentIndexInStackBySameType(Ljava/lang/String;)I
.end method

.method public abstract goBack()V
.end method

.method public abstract hasOnlyRoot(I)Z
.end method

.method public abstract initialize(Landroid/os/Bundle;)V
.end method

.method public abstract observeDestinationChanges(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract observeDestinationChangesWithPopBack(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/Fragment;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract observeDestinationChangesWithTabChange(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/Fragment;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract reset()V
.end method

.method public abstract reset(IZ)V
.end method

.method public abstract resetCurrentTab(Z)V
.end method

.method public abstract resetWithFragmentProvider(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract start(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract start(Landroidx/fragment/app/Fragment;I)V
.end method

.method public abstract start(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
.end method

.method public abstract start(Landroidx/fragment/app/Fragment;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;)V
.end method

.method public abstract start(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
.end method

.method public abstract start(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;)V
.end method

.method public abstract start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
.end method

.method public abstract switchTab(I)V
.end method

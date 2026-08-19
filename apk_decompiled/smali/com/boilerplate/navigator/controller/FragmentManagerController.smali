.class public final Lcom/boilerplate/navigator/controller/FragmentManagerController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boilerplate/navigator/controller/FragmentManagerController$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0014\u0010\u0014\u001a\u00020\u000f2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0016J\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0019J\'\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00112\u0012\u0010\u001c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00190\u001d\"\u00020\u0019\u00a2\u0006\u0002\u0010\u001eJ\u001c\u0010\u001f\u001a\u00020\u000f2\u0008\u0008\u0001\u0010 \u001a\u00020\u00052\u0008\u0008\u0001\u0010!\u001a\u00020\u0005H\u0002J0\u0010\u001f\u001a\u00020\u000f2\u0008\u0008\u0001\u0010 \u001a\u00020\u00052\u0008\u0008\u0001\u0010!\u001a\u00020\u00052\u0008\u0008\u0001\u0010\"\u001a\u00020\u00052\u0008\u0008\u0001\u0010#\u001a\u00020\u0005H\u0002J\u0012\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\'\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010(\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010)\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010*\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010+\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010,\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0006\u0010-\u001a\u00020\u000fJ\u0008\u0010.\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/boilerplate/navigator/controller/FragmentManagerController;",
        "",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "containerId",
        "",
        "navigatorTransaction",
        "Lcom/boilerplate/navigator/transaction/NavigatorTransaction;",
        "<init>",
        "(Landroidx/fragment/app/FragmentManager;ILcom/boilerplate/navigator/transaction/NavigatorTransaction;)V",
        "currentTransaction",
        "Landroidx/fragment/app/FragmentTransaction;",
        "currentTransitionAnimationType",
        "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;",
        "enableFragment",
        "",
        "fragmentTag",
        "",
        "disableFragment",
        "removeFragment",
        "removeFragments",
        "fragmentTagList",
        "",
        "addFragment",
        "fragmentData",
        "Lcom/boilerplate/navigator/data/FragmentData;",
        "disableAndStartFragment",
        "disableFragmentTag",
        "fragmentDataArgs",
        "",
        "(Ljava/lang/String;[Lcom/boilerplate/navigator/data/FragmentData;)V",
        "setCustomAnimations",
        "enter",
        "exit",
        "popEnter",
        "popExit",
        "getFragmentWithExecutingPendingTransactionsIfNeeded",
        "Landroidx/fragment/app/Fragment;",
        "getFragment",
        "getFragmentNavigatorTransaction",
        "findFragmentByTagAndRemove",
        "commitShow",
        "commitAttach",
        "commitHide",
        "commitDetach",
        "commitAllowingStateLoss",
        "checkAndCreateTransaction",
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
.field private final containerId:I

.field private currentTransaction:Landroidx/fragment/app/FragmentTransaction;

.field private currentTransitionAnimationType:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final navigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;ILcom/boilerplate/navigator/transaction/NavigatorTransaction;)V
    .locals 1

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigatorTransaction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput p2, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->containerId:I

    iput-object p3, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->navigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    return-void
.end method

.method public static final synthetic access$checkAndCreateTransaction(Lcom/boilerplate/navigator/controller/FragmentManagerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->checkAndCreateTransaction()V

    return-void
.end method

.method public static final synthetic access$getCurrentTransaction$p(Lcom/boilerplate/navigator/controller/FragmentManagerController;)Landroidx/fragment/app/FragmentTransaction;
    .locals 0

    iget-object p0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method private final checkAndCreateTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method private final commitAttach(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->checkAndCreateTransaction()V

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/boilerplate/navigator/common/extensions/FragmentTransactionExtensionsKt;->attach(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;)V

    :cond_0
    invoke-virtual {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAllowingStateLoss()V

    return-void
.end method

.method private final commitDetach(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->checkAndCreateTransaction()V

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragmentWithExecutingPendingTransactionsIfNeeded(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/boilerplate/navigator/common/extensions/FragmentTransactionExtensionsKt;->detach(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;)V

    :cond_0
    invoke-virtual {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAllowingStateLoss()V

    return-void
.end method

.method private final commitHide(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->checkAndCreateTransaction()V

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragmentWithExecutingPendingTransactionsIfNeeded(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/boilerplate/navigator/common/extensions/FragmentTransactionExtensionsKt;->hide(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;)V

    :cond_0
    invoke-virtual {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAllowingStateLoss()V

    return-void
.end method

.method private final commitShow(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->checkAndCreateTransaction()V

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/boilerplate/navigator/common/extensions/FragmentTransactionExtensionsKt;->show(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;)V

    :cond_0
    invoke-virtual {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAllowingStateLoss()V

    return-void
.end method

.method private final getFragmentNavigatorTransaction(Ljava/lang/String;)Lcom/boilerplate/navigator/transaction/NavigatorTransaction;
    .locals 2

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->navigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    invoke-virtual {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/boilerplate/navigator/Navigator$OnNavigatorTransactionListener;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/boilerplate/navigator/Navigator$OnNavigatorTransactionListener;

    invoke-interface {p1}, Lcom/boilerplate/navigator/Navigator$OnNavigatorTransactionListener;->getNavigatorTransaction()Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final getFragmentWithExecutingPendingTransactionsIfNeeded(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final setCustomAnimations(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method private final setCustomAnimations(IIII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addFragment(Lcom/boilerplate/navigator/data/FragmentData;)V
    .locals 3

    const-string v0, "fragmentData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->checkAndCreateTransaction()V

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->containerId:I

    invoke-virtual {p1}, Lcom/boilerplate/navigator/data/FragmentData;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {p1}, Lcom/boilerplate/navigator/data/FragmentData;->getFragmentTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    invoke-virtual {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAllowingStateLoss()V

    return-void
.end method

.method public final commitAllowingStateLoss()V
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method public final varargs disableAndStartFragment(Ljava/lang/String;[Lcom/boilerplate/navigator/data/FragmentData;)V
    .locals 9

    const-string v0, "disableFragmentTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentDataArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragmentWithExecutingPendingTransactionsIfNeeded(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->checkAndCreateTransaction()V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v1, :cond_8

    aget-object v5, p2, v2

    invoke-virtual {v5}, Lcom/boilerplate/navigator/data/FragmentData;->getTransitionAnimation()Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    move-result-object v6

    iput-object v6, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransitionAnimationType:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    const/4 v7, -0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    sget-object v8, Lcom/boilerplate/navigator/controller/FragmentManagerController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    :goto_1
    if-eq v6, v7, :cond_6

    if-eq v6, v4, :cond_5

    if-eq v6, v3, :cond_4

    const/4 v3, 0x3

    if-eq v6, v3, :cond_3

    const/4 v3, 0x4

    if-eq v6, v3, :cond_2

    const/4 v3, 0x5

    if-ne v6, v3, :cond_1

    sget v3, Lcom/boilerplate/navigator/R$anim;->fade_in:I

    goto :goto_2

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    sget v3, Lcom/boilerplate/navigator/R$anim;->enter_from_top:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/boilerplate/navigator/R$anim;->enter_from_bottom:I

    goto :goto_2

    :cond_4
    sget v3, Lcom/boilerplate/navigator/R$anim;->enter_from_right:I

    goto :goto_2

    :cond_5
    sget v3, Lcom/boilerplate/navigator/R$anim;->enter_from_left:I

    :goto_2
    sget v4, Lcom/boilerplate/navigator/R$anim;->empty_animation:I

    invoke-direct {p0, v3, v4}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->setCustomAnimations(II)V

    :cond_6
    iget-object v3, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v3, :cond_7

    iget v4, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->containerId:I

    invoke-virtual {v5}, Lcom/boilerplate/navigator/data/FragmentData;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    invoke-virtual {v5}, Lcom/boilerplate/navigator/data/FragmentData;->getFragmentTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v6, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragmentNavigatorTransaction(Ljava/lang/String;)Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->getTransactionType()Lcom/boilerplate/navigator/transaction/TransactionType;

    move-result-object p1

    sget-object p2, Lcom/boilerplate/navigator/controller/FragmentManagerController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v4, :cond_a

    if-ne p1, v3, :cond_9

    iget-object p1, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_b

    invoke-static {p1, v0}, Lcom/boilerplate/navigator/common/extensions/FragmentTransactionExtensionsKt;->detach(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_a
    iget-object p1, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_b

    invoke-static {p1, v0}, Lcom/boilerplate/navigator/common/extensions/FragmentTransactionExtensionsKt;->hide(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;)V

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAllowingStateLoss()V

    return-void
.end method

.method public final disableFragment(Ljava/lang/String;)V
    .locals 2

    const-string v0, "fragmentTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragmentNavigatorTransaction(Ljava/lang/String;)Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->getTransactionType()Lcom/boilerplate/navigator/transaction/TransactionType;

    move-result-object v0

    sget-object v1, Lcom/boilerplate/navigator/controller/FragmentManagerController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitDetach(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitHide(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final enableFragment(Ljava/lang/String;)V
    .locals 2

    const-string v0, "fragmentTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragmentNavigatorTransaction(Ljava/lang/String;)Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->getTransactionType()Lcom/boilerplate/navigator/transaction/TransactionType;

    move-result-object v0

    sget-object v1, Lcom/boilerplate/navigator/controller/FragmentManagerController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAttach(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitShow(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final findFragmentByTagAndRemove(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragmentTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->checkAndCreateTransaction()V

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragmentWithExecutingPendingTransactionsIfNeeded(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method public final getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    const-string v0, "fragmentTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final removeFragment(Ljava/lang/String;)V
    .locals 6

    const-string v0, "fragmentTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransitionAnimationType:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/boilerplate/navigator/controller/FragmentManagerController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    sget v0, Lcom/boilerplate/navigator/R$anim;->fade_out:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/boilerplate/navigator/R$anim;->exit_to_top:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/boilerplate/navigator/R$anim;->exit_to_bottom:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/boilerplate/navigator/R$anim;->exit_to_right:I

    goto :goto_1

    :cond_5
    sget v0, Lcom/boilerplate/navigator/R$anim;->exit_to_left:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    :goto_2
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_3

    :cond_7
    move-object v4, v2

    :goto_3
    invoke-static {v4, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Lcom/boilerplate/navigator/controller/FragmentManagerController$removeFragment$1$1;

    invoke-direct {v4, p0, p1, v3}, Lcom/boilerplate/navigator/controller/FragmentManagerController$removeFragment$1$1;-><init>(Lcom/boilerplate/navigator/controller/FragmentManagerController;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_8
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->checkAndCreateTransaction()V

    iget-object v0, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/boilerplate/navigator/common/extensions/FragmentTransactionExtensionsKt;->remove(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;)V

    :cond_9
    invoke-virtual {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAllowingStateLoss()V

    :cond_a
    return-void
.end method

.method public final removeFragments(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragmentTagList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->checkAndCreateTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/boilerplate/navigator/controller/FragmentManagerController;->currentTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAllowingStateLoss()V

    return-void
.end method

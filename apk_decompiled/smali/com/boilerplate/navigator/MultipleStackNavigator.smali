.class public Lcom/boilerplate/navigator/MultipleStackNavigator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/boilerplate/navigator/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boilerplate/navigator/MultipleStackNavigator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 [2\u00020\u0001:\u0001[Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\"\u0010\u0006\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\nj\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008`\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\tH\u0016J\u0018\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\u0005H\u0016J \u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\u00052\u0006\u00103\u001a\u000204H\u0016J\u0018\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00103\u001a\u000204H\u0016J\u0018\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00105\u001a\u00020\u0010H\u0016J\"\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u00106\u001a\u000200H\u0016J\u0008\u00107\u001a\u00020-H\u0016J\u0010\u00108\u001a\u0002002\u0006\u00102\u001a\u00020\u0005H\u0016J\u0018\u00109\u001a\u0002002\u0006\u00102\u001a\u00020\u00052\u0006\u0010:\u001a\u00020-H\u0016J\u0010\u0010;\u001a\u0002002\u0006\u0010:\u001a\u00020-H\u0016J\u0008\u00109\u001a\u000200H\u0016J1\u0010<\u001a\u0002002\"\u0010\u0006\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\nj\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008`\u0007H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010=\u001a\u0002002\u0006\u00103\u001a\u000204H\u0016J\u000e\u0010=\u001a\u0002002\u0006\u00102\u001a\u00020\u0005J\u0010\u0010>\u001a\u00020-2\u0006\u00102\u001a\u00020\u0005H\u0016J\n\u0010?\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010@\u001a\u0002002\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J$\u0010C\u001a\u0002002\u0006\u0010D\u001a\u00020E2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002000GH\u0016J*\u0010H\u001a\u0002002\u0006\u0010D\u001a\u00020E2\u0018\u0010F\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u0002000IH\u0016J*\u0010J\u001a\u0002002\u0006\u0010D\u001a\u00020E2\u0018\u0010F\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u0002000IH\u0016J\u0012\u0010K\u001a\u00020\u00052\u0008\u0010L\u001a\u0004\u0018\u000104H\u0016J\u0008\u0010M\u001a\u000200H\u0002J\u0010\u0010N\u001a\u0002002\u0006\u0010A\u001a\u00020BH\u0002J\u0010\u0010O\u001a\u00020\t2\u0006\u00102\u001a\u00020\u0005H\u0002J\u001c\u0010P\u001a\u0002002\u0008\u0008\u0002\u0010,\u001a\u00020-2\u0008\u0008\u0002\u0010.\u001a\u00020-H\u0002J\u0008\u0010Q\u001a\u000204H\u0002J\u0008\u0010R\u001a\u00020-H\u0002J\u0008\u0010S\u001a\u00020-H\u0002J\u0008\u0010T\u001a\u000200H\u0002J\u0018\u0010T\u001a\u0002002\u0006\u00102\u001a\u00020\u00052\u0006\u0010:\u001a\u00020-H\u0002J\u0008\u0010U\u001a\u00020-H\u0002J$\u0010V\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0008\u0008\u0002\u0010,\u001a\u00020-2\u0008\u0008\u0002\u0010.\u001a\u00020-H\u0002J\u0010\u0010W\u001a\u0002002\u0006\u0010X\u001a\u00020BH\u0016J\u0010\u0010/\u001a\u0002002\u0006\u0010Y\u001a\u00020ZH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R8\u0010\u0006\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\nj\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008`\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u000e\u0010,\u001a\u00020-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020-X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/boilerplate/navigator/MultipleStackNavigator;",
        "Lcom/boilerplate/navigator/Navigator;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "containerId",
        "",
        "rootFragmentProvider",
        "Lkotlin/collections/ArrayList;",
        "Lkotlin/Function0;",
        "Landroidx/fragment/app/Fragment;",
        "Ljava/util/ArrayList;",
        "navigatorListener",
        "Lcom/boilerplate/navigator/Navigator$NavigatorListener;",
        "navigatorConfiguration",
        "Lcom/boilerplate/navigator/NavigatorConfiguration;",
        "transitionAnimationType",
        "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;Lcom/boilerplate/navigator/Navigator$NavigatorListener;Lcom/boilerplate/navigator/NavigatorConfiguration;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;Landroid/content/Context;)V",
        "getFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "getRootFragmentProvider",
        "()Ljava/util/ArrayList;",
        "setRootFragmentProvider",
        "(Ljava/util/ArrayList;)V",
        "Ljava/util/ArrayList;",
        "getContext",
        "()Landroid/content/Context;",
        "destinationChangeLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "tagCreator",
        "Lcom/boilerplate/navigator/tag/TagCreator;",
        "fragmentManagerController",
        "Lcom/boilerplate/navigator/controller/FragmentManagerController;",
        "fragmentStackStateMapper",
        "Lcom/boilerplate/navigator/FragmentStackStateMapper;",
        "fragmentStackState",
        "Lcom/boilerplate/navigator/FragmentStackState;",
        "getFragmentStackState",
        "()Lcom/boilerplate/navigator/FragmentStackState;",
        "setFragmentStackState",
        "(Lcom/boilerplate/navigator/FragmentStackState;)V",
        "isFromSwitchTab",
        "",
        "isFromPopBack",
        "start",
        "",
        "fragment",
        "tabIndex",
        "fragmentGroupName",
        "",
        "transitionAnimation",
        "goBack",
        "canGoBack",
        "switchTab",
        "reset",
        "resetRootFragment",
        "resetCurrentTab",
        "resetWithFragmentProvider",
        "clearGroup",
        "hasOnlyRoot",
        "getCurrentFragment",
        "initialize",
        "savedState",
        "Landroid/os/Bundle;",
        "observeDestinationChanges",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "destinationChangedListener",
        "Lkotlin/Function1;",
        "observeDestinationChangesWithTabChange",
        "Lkotlin/Function2;",
        "observeDestinationChangesWithPopBack",
        "getFragmentIndexInStackBySameType",
        "tag",
        "initializeStackState",
        "loadStackStateFromSavedState",
        "getRootFragment",
        "showUpperFragment",
        "getCurrentFragmentTag",
        "shouldExit",
        "shouldGoBackToInitialIndex",
        "clearAllFragments",
        "canFragmentGoBack",
        "notifyFragmentDestinationChange",
        "onSaveInstanceState",
        "outState",
        "bottomSheetFragment",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/boilerplate/navigator/MultipleStackNavigator$Companion;

.field public static final DEFAULT_GROUP_NAME:Ljava/lang/String; = ""

.field public static final MEDUSA_STACK_STATE_KEY:Ljava/lang/String; = "MEDUSA_STACK_STATE_KEY"


# instance fields
.field private final context:Landroid/content/Context;

.field private destinationChangeLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

.field private fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

.field private final fragmentStackStateMapper:Lcom/boilerplate/navigator/FragmentStackStateMapper;

.field private isFromPopBack:Z

.field private isFromSwitchTab:Z

.field private final navigatorConfiguration:Lcom/boilerplate/navigator/NavigatorConfiguration;

.field private navigatorListener:Lcom/boilerplate/navigator/Navigator$NavigatorListener;

.field private rootFragmentProvider:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tagCreator:Lcom/boilerplate/navigator/tag/TagCreator;

.field private final transitionAnimationType:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;


# direct methods
.method public static synthetic $r8$lambda$Qm0cliiry-7jSSerMGbqeuadrAY(Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/Fragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->observeDestinationChanges$lambda$6(Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZNdqG_al4FXBe96r6WT_ShyFfbM(Lkotlin/jvm/functions/Function2;Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->observeDestinationChangesWithPopBack$lambda$8(Lkotlin/jvm/functions/Function2;Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pM0YTuAqt44Idav3-CNnnny2WSk(Lkotlin/jvm/functions/Function2;Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->observeDestinationChangesWithTabChange$lambda$7(Lkotlin/jvm/functions/Function2;Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/boilerplate/navigator/MultipleStackNavigator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boilerplate/navigator/MultipleStackNavigator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/boilerplate/navigator/MultipleStackNavigator;->Companion:Lcom/boilerplate/navigator/MultipleStackNavigator$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;Lcom/boilerplate/navigator/Navigator$NavigatorListener;Lcom/boilerplate/navigator/NavigatorConfiguration;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "I",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;",
            "Lcom/boilerplate/navigator/Navigator$NavigatorListener;",
            "Lcom/boilerplate/navigator/NavigatorConfiguration;",
            "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootFragmentProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigatorConfiguration"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->rootFragmentProvider:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorListener:Lcom/boilerplate/navigator/Navigator$NavigatorListener;

    iput-object p5, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorConfiguration:Lcom/boilerplate/navigator/NavigatorConfiguration;

    iput-object p6, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->transitionAnimationType:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    iput-object p7, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->context:Landroid/content/Context;

    new-instance p3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->destinationChangeLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p3, Lcom/boilerplate/navigator/tag/UniqueTagCreator;

    invoke-direct {p3}, Lcom/boilerplate/navigator/tag/UniqueTagCreator;-><init>()V

    iput-object p3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->tagCreator:Lcom/boilerplate/navigator/tag/TagCreator;

    new-instance p3, Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {p5}, Lcom/boilerplate/navigator/NavigatorConfiguration;->getDefaultNavigatorTransaction()Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    move-result-object p4

    invoke-direct {p3, p1, p2, p4}, Lcom/boilerplate/navigator/controller/FragmentManagerController;-><init>(Landroidx/fragment/app/FragmentManager;ILcom/boilerplate/navigator/transaction/NavigatorTransaction;)V

    iput-object p3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    new-instance p1, Lcom/boilerplate/navigator/FragmentStackStateMapper;

    invoke-direct {p1}, Lcom/boilerplate/navigator/FragmentStackStateMapper;-><init>()V

    iput-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackStateMapper:Lcom/boilerplate/navigator/FragmentStackStateMapper;

    new-instance p1, Lcom/boilerplate/navigator/FragmentStackState;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p2, p3, p2}, Lcom/boilerplate/navigator/FragmentStackState;-><init>(Ljava/util/List;Ljava/util/Stack;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;Lcom/boilerplate/navigator/Navigator$NavigatorListener;Lcom/boilerplate/navigator/NavigatorConfiguration;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/boilerplate/navigator/NavigatorConfiguration;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/boilerplate/navigator/NavigatorConfiguration;-><init>(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/boilerplate/navigator/MultipleStackNavigator;-><init>(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;Lcom/boilerplate/navigator/Navigator$NavigatorListener;Lcom/boilerplate/navigator/NavigatorConfiguration;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getDestinationChangeLiveData$p(Lcom/boilerplate/navigator/MultipleStackNavigator;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->destinationChangeLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$setFromPopBack$p(Lcom/boilerplate/navigator/MultipleStackNavigator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->isFromPopBack:Z

    return-void
.end method

.method public static final synthetic access$setFromSwitchTab$p(Lcom/boilerplate/navigator/MultipleStackNavigator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->isFromSwitchTab:Z

    return-void
.end method

.method private final canFragmentGoBack()Z
    .locals 2

    invoke-virtual {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/boilerplate/navigator/Navigator$OnGoBackListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.boilerplate.navigator.Navigator.OnGoBackListener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/boilerplate/navigator/Navigator$OnGoBackListener;

    invoke-interface {v0}, Lcom/boilerplate/navigator/Navigator$OnGoBackListener;->onGoBack()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private final clearAllFragments()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->popItemsFromNonEmptyTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boilerplate/navigator/data/StackItem;

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v1}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->findFragmentByTagAndRemove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAllowingStateLoss()V

    return-void
.end method

.method private final clearAllFragments(IZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/FragmentStackState;->isTabEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/FragmentStackState;->isTabEmpty(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/FragmentStackState;->hasOnlyRoot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/FragmentStackState;->popItem(I)Lcom/boilerplate/navigator/data/StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v1, v0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->findFragmentByTagAndRemove(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->commitAllowingStateLoss()V

    return-void
.end method

.method private final getCurrentFragmentTag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->peekItemFromSelectedTab()Lcom/boilerplate/navigator/data/StackItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getRootFragment(I)Landroidx/fragment/app/Fragment;
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v2, v1}, Lcom/boilerplate/navigator/FragmentStackState;->isTabEmpty(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v2, v0}, Lcom/boilerplate/navigator/FragmentStackState;->peekItem(I)Lcom/boilerplate/navigator/data/StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->rootFragmentProvider:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    :goto_1
    return-object v0
.end method

.method private final initializeStackState()V
    .locals 9

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorConfiguration:Lcom/boilerplate/navigator/NavigatorConfiguration;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/NavigatorConfiguration;->getInitialTabIndex()I

    move-result v0

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->rootFragmentProvider:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->tagCreator:Lcom/boilerplate/navigator/tag/TagCreator;

    invoke-interface {v2, v1}, Lcom/boilerplate/navigator/tag/TagCreator;->create(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/boilerplate/navigator/data/StackItem;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/boilerplate/navigator/data/StackItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    iget-object v4, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->rootFragmentProvider:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/boilerplate/navigator/FragmentStackState;->setStackCount(I)V

    iget-object v3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v3, v0, v2}, Lcom/boilerplate/navigator/FragmentStackState;->notifyStackItemAdd(ILcom/boilerplate/navigator/data/StackItem;)V

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v2, v0}, Lcom/boilerplate/navigator/FragmentStackState;->switchTab(I)V

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v2, v0}, Lcom/boilerplate/navigator/FragmentStackState;->peekItem(I)Lcom/boilerplate/navigator/data/StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/boilerplate/navigator/data/FragmentData;

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/boilerplate/navigator/data/FragmentData;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v2, v0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->addFragment(Lcom/boilerplate/navigator/data/FragmentData;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorListener:Lcom/boilerplate/navigator/Navigator$NavigatorListener;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorConfiguration:Lcom/boilerplate/navigator/NavigatorConfiguration;

    invoke-virtual {v2}, Lcom/boilerplate/navigator/NavigatorConfiguration;->getInitialTabIndex()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/boilerplate/navigator/Navigator$NavigatorListener;->onTabChanged(I)V

    :cond_0
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/navigator/MultipleStackNavigator;->notifyFragmentDestinationChange$default(Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final loadStackStateFromSavedState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackStateMapper:Lcom/boilerplate/navigator/FragmentStackStateMapper;

    const-string v1, "MEDUSA_STACK_STATE_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/FragmentStackStateMapper;->fromBundle(Landroid/os/Bundle;)Lcom/boilerplate/navigator/FragmentStackState;

    move-result-object p1

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/FragmentStackState;->setStackState(Lcom/boilerplate/navigator/FragmentStackState;)V

    invoke-virtual {p1}, Lcom/boilerplate/navigator/FragmentStackState;->getTabIndexStack()Ljava/util/Stack;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorListener:Lcom/boilerplate/navigator/Navigator$NavigatorListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->getSelectedTabIndex()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "getSelectedTabIndex(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/boilerplate/navigator/Navigator$NavigatorListener;->onTabChanged(I)V

    :cond_0
    return-void
.end method

.method private final notifyFragmentDestinationChange(Landroidx/fragment/app/Fragment;ZZ)V
    .locals 2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;

    invoke-direct {v1, p1, p0, p3, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator$notifyFragmentDestinationChange$1;-><init>(Landroidx/fragment/app/Fragment;Lcom/boilerplate/navigator/MultipleStackNavigator;ZZ)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static synthetic notifyFragmentDestinationChange$default(Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/boilerplate/navigator/MultipleStackNavigator;->notifyFragmentDestinationChange(Landroidx/fragment/app/Fragment;ZZ)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: notifyFragmentDestinationChange"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final observeDestinationChanges$lambda$6(Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/Fragment;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$destinationChangedListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final observeDestinationChangesWithPopBack$lambda$8(Lkotlin/jvm/functions/Function2;Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$destinationChangedListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lcom/boilerplate/navigator/MultipleStackNavigator;->isFromPopBack:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final observeDestinationChangesWithTabChange$lambda$7(Lkotlin/jvm/functions/Function2;Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$destinationChangedListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lcom/boilerplate/navigator/MultipleStackNavigator;->isFromSwitchTab:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final shouldExit()Z
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->hasTabStack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->hasSelectedTabOnlyRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final shouldGoBackToInitialIndex()Z
    .locals 2

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->getSelectedTabIndex()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorConfiguration:Lcom/boilerplate/navigator/NavigatorConfiguration;

    invoke-virtual {v1}, Lcom/boilerplate/navigator/NavigatorConfiguration;->getInitialTabIndex()I

    move-result v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorConfiguration:Lcom/boilerplate/navigator/NavigatorConfiguration;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/NavigatorConfiguration;->getAlwaysExitFromInitial()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final showUpperFragment(ZZ)V
    .locals 12

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->peekItemFromSelectedTab()Lcom/boilerplate/navigator/data/StackItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v1, v0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v2, v0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->enableFragment(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->notifyFragmentDestinationChange(Landroidx/fragment/app/Fragment;ZZ)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->getSelectedTabIndex()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "getSelectedTabIndex(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getRootFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->tagCreator:Lcom/boilerplate/navigator/tag/TagCreator;

    invoke-interface {v2, v0}, Lcom/boilerplate/navigator/tag/TagCreator;->create(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/boilerplate/navigator/data/FragmentData;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v9

    move-object v3, v0

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/boilerplate/navigator/data/FragmentData;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v2}, Lcom/boilerplate/navigator/FragmentStackState;->getSelectedTabIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v10, Lcom/boilerplate/navigator/data/StackItem;

    const/4 v7, 0x6

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object v3, v10

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/boilerplate/navigator/data/StackItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v1, v10}, Lcom/boilerplate/navigator/FragmentStackState;->notifyStackItemAdd(ILcom/boilerplate/navigator/data/StackItem;)V

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v1, v9}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->addFragment(Lcom/boilerplate/navigator/data/FragmentData;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->notifyFragmentDestinationChange(Landroidx/fragment/app/Fragment;ZZ)V

    :goto_2
    return-void
.end method

.method public static synthetic showUpperFragment$default(Lcom/boilerplate/navigator/MultipleStackNavigator;ZZILjava/lang/Object;)V
    .locals 1

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->showUpperFragment(ZZ)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showUpperFragment"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->shouldExit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->shouldGoBackToInitialIndex()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final clearGroup(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->peekItemFromSelectedTab()Lcom/boilerplate/navigator/data/StackItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v2, p1}, Lcom/boilerplate/navigator/FragmentStackState;->popItemsFromTabIndex(I)Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boilerplate/navigator/data/StackItem;

    invoke-virtual {v3}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {p1, v2}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->removeFragments(Ljava/util/List;)V

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, v1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->showUpperFragment$default(Lcom/boilerplate/navigator/MultipleStackNavigator;ZZILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public clearGroup(Ljava/lang/String;)V
    .locals 4

    .line 2
    const-string v0, "fragmentGroupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->peekItemFromSelectedTab()Lcom/boilerplate/navigator/data/StackItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v2, p1}, Lcom/boilerplate/navigator/FragmentStackState;->popItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boilerplate/navigator/data/StackItem;

    invoke-virtual {v3}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {p1, v2}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->removeFragments(Ljava/util/List;)V

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, v1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->showUpperFragment$default(Lcom/boilerplate/navigator/MultipleStackNavigator;ZZILjava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fragment group name can not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getCurrentFragmentTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v1, v0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getFragmentIndexInStackBySameType(Ljava/lang/String;)I
    .locals 7

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v1}, Lcom/boilerplate/navigator/FragmentStackState;->getFragmentTagStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v5, Lcom/boilerplate/navigator/data/StackItem;

    invoke-virtual {v5}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    sub-int/2addr p1, v4

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public final getFragmentStackState()Lcom/boilerplate/navigator/FragmentStackState;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    return-object v0
.end method

.method public final getRootFragmentProvider()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->rootFragmentProvider:Ljava/util/ArrayList;

    return-object v0
.end method

.method public goBack()V
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->canGoBack()Z

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->canFragmentGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->shouldExit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->shouldGoBackToInitialIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorConfiguration:Lcom/boilerplate/navigator/NavigatorConfiguration;

    invoke-virtual {v1}, Lcom/boilerplate/navigator/NavigatorConfiguration;->getInitialTabIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boilerplate/navigator/FragmentStackState;->insertTabToBottom(I)V

    :cond_1
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->hasSelectedTabOnlyRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getCurrentFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->disableFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->popSelectedTab()I

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorListener:Lcom/boilerplate/navigator/Navigator$NavigatorListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v1}, Lcom/boilerplate/navigator/FragmentStackState;->getSelectedTabIndex()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getSelectedTabIndex(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/boilerplate/navigator/Navigator$NavigatorListener;->onTabChanged(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->popItemFromSelectedTab()Lcom/boilerplate/navigator/data/StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/data/StackItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v1, v0}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->removeFragment(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v2, v1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->showUpperFragment$default(Lcom/boilerplate/navigator/MultipleStackNavigator;ZZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public hasOnlyRoot(I)Z
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/FragmentStackState;->hasOnlyRoot(I)Z

    move-result p1

    return p1
.end method

.method public initialize(Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->initializeStackState()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->loadStackStateFromSavedState(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public observeDestinationChanges(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V
    .locals 2
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

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationChangedListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->destinationChangeLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/boilerplate/navigator/a;

    invoke-direct {p2, v1}, Lcom/boilerplate/navigator/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public observeDestinationChangesWithPopBack(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)V
    .locals 2
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

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationChangedListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->destinationChangeLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p0}, Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function2;Lcom/boilerplate/navigator/MultipleStackNavigator;)V

    new-instance p2, Lcom/boilerplate/navigator/a;

    invoke-direct {p2, v1}, Lcom/boilerplate/navigator/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public observeDestinationChangesWithTabChange(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)V
    .locals 2
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

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationChangedListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->destinationChangeLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p0}, Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;Lcom/boilerplate/navigator/MultipleStackNavigator;)V

    new-instance p2, Lcom/boilerplate/navigator/a;

    invoke-direct {p2, v1}, Lcom/boilerplate/navigator/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackStateMapper:Lcom/boilerplate/navigator/FragmentStackStateMapper;

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0, v1}, Lcom/boilerplate/navigator/FragmentStackStateMapper;->toBundle(Lcom/boilerplate/navigator/FragmentStackState;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MEDUSA_STACK_STATE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->clearAllFragments()V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->clear()V

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->initializeStackState()V

    return-void
.end method

.method public reset(IZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/FragmentStackState;->isSelectedTab(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->resetCurrentTab(Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->clearAllFragments(IZ)V

    return-void
.end method

.method public resetCurrentTab(Z)V
    .locals 11

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/FragmentStackState;->getSelectedTabIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->clearAllFragments(IZ)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getRootFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->tagCreator:Lcom/boilerplate/navigator/tag/TagCreator;

    invoke-interface {v1, p1}, Lcom/boilerplate/navigator/tag/TagCreator;->create(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/boilerplate/navigator/data/FragmentData;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/boilerplate/navigator/data/FragmentData;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/boilerplate/navigator/FragmentStackState;->switchTab(I)V

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v9, Lcom/boilerplate/navigator/data/StackItem;

    const/4 v6, 0x6

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v2, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/boilerplate/navigator/data/StackItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v0, v9}, Lcom/boilerplate/navigator/FragmentStackState;->notifyStackItemAdd(ILcom/boilerplate/navigator/data/StackItem;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v0, v8}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->addFragment(Lcom/boilerplate/navigator/data/FragmentData;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/navigator/MultipleStackNavigator;->notifyFragmentDestinationChange$default(Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getCurrentFragmentTag()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v1, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getRootFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :cond_1
    move-object v1, p1

    iget-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->tagCreator:Lcom/boilerplate/navigator/tag/TagCreator;

    invoke-interface {p1, v1}, Lcom/boilerplate/navigator/tag/TagCreator;->create(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/navigator/MultipleStackNavigator;->notifyFragmentDestinationChange$default(Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->enableFragment(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resetWithFragmentProvider(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "rootFragmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->rootFragmentProvider:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->reset()V

    return-void
.end method

.method public final setFragmentStackState(Lcom/boilerplate/navigator/FragmentStackState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    return-void
.end method

.method public final setRootFragmentProvider(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->rootFragmentProvider:Ljava/util/ArrayList;

    return-void
.end method

.method public start(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->RIGHT_TO_LEFT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    const-string v1, ""

    invoke-virtual {p0, p1, v1, v0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->start(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;)V

    return-void
.end method

.method public start(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 2
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->start(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    return-void
.end method

.method public start(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
    .locals 1

    .line 3
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentGroupName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->switchTab(I)V

    invoke-virtual {p0, p1, p3}, Lcom/boilerplate/navigator/MultipleStackNavigator;->start(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorListener:Lcom/boilerplate/navigator/Navigator$NavigatorListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/boilerplate/navigator/Navigator$NavigatorListener;->onTabChanged(I)V

    :cond_0
    return-void
.end method

.method public start(Landroidx/fragment/app/Fragment;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;)V
    .locals 1

    .line 4
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionAnimation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->start(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;)V

    return-void
.end method

.method public start(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 5
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentGroupName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->transitionAnimationType:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->start(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;)V

    return-void
.end method

.method public start(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;)V
    .locals 9

    .line 6
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentGroupName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->tagCreator:Lcom/boilerplate/navigator/tag/TagCreator;

    invoke-interface {v0, p1}, Lcom/boilerplate/navigator/tag/TagCreator;->create(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v1}, Lcom/boilerplate/navigator/FragmentStackState;->getSelectedTabIndex()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/boilerplate/navigator/data/FragmentData;

    invoke-direct {v2, p1, v0, p3}, Lcom/boilerplate/navigator/data/FragmentData;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;)V

    iget-object v3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v3}, Lcom/boilerplate/navigator/FragmentStackState;->isSelectedTabEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getRootFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->tagCreator:Lcom/boilerplate/navigator/tag/TagCreator;

    invoke-interface {v3, v1}, Lcom/boilerplate/navigator/tag/TagCreator;->create(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/boilerplate/navigator/data/FragmentData;

    invoke-direct {v6, v1, v3, p3}, Lcom/boilerplate/navigator/data/FragmentData;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;)V

    iget-object p3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getCurrentFragmentTag()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/boilerplate/navigator/data/FragmentData;

    aput-object v6, v3, v4

    aput-object v2, v3, v5

    invoke-virtual {p3, v1, v3}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->disableAndStartFragment(Ljava/lang/String;[Lcom/boilerplate/navigator/data/FragmentData;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getCurrentFragmentTag()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Lcom/boilerplate/navigator/data/FragmentData;

    aput-object v2, v3, v4

    invoke-virtual {p3, v1, v3}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->disableAndStartFragment(Ljava/lang/String;[Lcom/boilerplate/navigator/data/FragmentData;)V

    :goto_0
    iget-object p3, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    new-instance v1, Lcom/boilerplate/navigator/data/StackItem;

    iget-object v2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v2}, Lcom/boilerplate/navigator/FragmentStackState;->getSelectedTabIndex()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "getSelectedTabIndex(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v1, v0, p2, v2}, Lcom/boilerplate/navigator/data/StackItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3, v1}, Lcom/boilerplate/navigator/FragmentStackState;->notifyStackItemAddToCurrentTab(Lcom/boilerplate/navigator/data/StackItem;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/navigator/MultipleStackNavigator;->notifyFragmentDestinationChange$default(Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .locals 2

    .line 7
    const-string v0, "bottomSheetFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->tagCreator:Lcom/boilerplate/navigator/tag/TagCreator;

    invoke-interface {v1, p1}, Lcom/boilerplate/navigator/tag/TagCreator;->create(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public switchTab(I)V
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/FragmentStackState;->isSelectedTab(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentManagerController:Lcom/boilerplate/navigator/controller/FragmentManagerController;

    invoke-direct {p0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->getCurrentFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boilerplate/navigator/controller/FragmentManagerController;->disableFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->fragmentStackState:Lcom/boilerplate/navigator/FragmentStackState;

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/FragmentStackState;->switchTab(I)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v3, v0, v1, v2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->showUpperFragment$default(Lcom/boilerplate/navigator/MultipleStackNavigator;ZZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator;->navigatorListener:Lcom/boilerplate/navigator/Navigator$NavigatorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/boilerplate/navigator/Navigator$NavigatorListener;->onTabChanged(I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

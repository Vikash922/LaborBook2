.class public final Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "UpiSelectionBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 #2\u00020\u0001:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0013\u001a\u00020\u000e2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0010J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\u001f\u001a\u00020\u000eH\u0002J\u001a\u0010 \u001a\u00020\u000e2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cJ\u0008\u0010\"\u001a\u00020\u000eH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "<init>",
        "()V",
        "_binding",
        "Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;",
        "binding",
        "getBinding",
        "()Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;",
        "selectedPackageName",
        "",
        "onUpiSelectedListener",
        "Lkotlin/Function1;",
        "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
        "",
        "installedUpiAppsList",
        "",
        "adapter",
        "Lcom/laborbook/keep/screen/premium/UpiAppAdapter;",
        "setInstalledUpiApps",
        "apps",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "setupRecyclerView",
        "setOnUpiSelectedListener",
        "listener",
        "onDestroyView",
        "Companion",
        "keep_release"
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
.field private static final ARG_SELECTED_PACKAGE:Ljava/lang/String; = "selected_package"

.field public static final Companion:Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;

.field public static final TAG:Ljava/lang/String; = "UpiSelectionBottomSheet"


# instance fields
.field private _binding:Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;

.field private adapter:Lcom/laborbook/keep/screen/premium/UpiAppAdapter;

.field private installedUpiAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
            ">;"
        }
    .end annotation
.end field

.field private onUpiSelectedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$o5SQY-qmbNe3dEG1a7u4pQaL1b8(Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->setupRecyclerView$lambda$0(Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->Companion:Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->selectedPackageName:Ljava/lang/String;

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->installedUpiAppsList:Ljava/util/List;

    return-void
.end method

.method private final getBinding()Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->_binding:Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;)Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->Companion:Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;

    invoke-virtual {v0, p0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;->newInstance(Ljava/lang/String;)Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;

    move-result-object p0

    return-object p0
.end method

.method private final setupRecyclerView()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->installedUpiAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->dismiss()V

    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;

    .line 48
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->installedUpiAppsList:Ljava/util/List;

    .line 49
    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->selectedPackageName:Ljava/lang/String;

    .line 47
    new-instance v3, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->adapter:Lcom/laborbook/keep/screen/premium/UpiAppAdapter;

    .line 56
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->getBinding()Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;->rvUpiApps:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 57
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->adapter:Lcom/laborbook/keep/screen/premium/UpiAppAdapter;

    if-nez v1, :cond_1

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void
.end method

.method private static final setupRecyclerView$lambda$0(Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upiApp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->selectedPackageName:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->onUpiSelectedListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->dismiss()V

    .line 54
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 30
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->_binding:Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;

    .line 31
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->getBinding()Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->_binding:Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "selected_package"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->selectedPackageName:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->setupRecyclerView()V

    return-void
.end method

.method public final setInstalledUpiApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->installedUpiAppsList:Ljava/util/List;

    return-void
.end method

.method public final setOnUpiSelectedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->onUpiSelectedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

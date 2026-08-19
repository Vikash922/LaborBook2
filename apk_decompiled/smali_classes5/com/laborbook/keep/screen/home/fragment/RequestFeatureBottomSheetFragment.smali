.class public final Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;
.super Lcom/laborbook/base/BaseBottomsheetFragment;
.source "RequestFeatureBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseBottomsheetFragment<",
        "Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00142\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u0017\u001a\u00020\nH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;",
        "Lcom/laborbook/base/BaseBottomsheetFragment;",
        "Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "onStart",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onCreateView",
        "Landroid/view/View;",
        "onViewCreated",
        "view",
        "setOnClickListeners",
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
.field public static final Companion:Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$Companion;


# direct methods
.method public static synthetic $r8$lambda$9iNIBVomp3-AxKYBNgvinVwfi_M(Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->setOnClickListeners$lambda$2$lambda$1(Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xjo0p7euUw2f9zpJdht0i1srCAM(Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->setOnClickListeners$lambda$2$lambda$0(Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;-><init>()V

    return-void
.end method

.method public static final newInstance()Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;

    move-result-object v0

    return-object v0
.end method

.method private final setOnClickListeners()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;->btnSubmit:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    new-instance v2, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final setOnClickListeners$lambda$2$lambda$0(Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;Landroid/view/View;)V
    .locals 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;->etDescription:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object p1

    const/4 v1, 0x2

    .line 73
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Mixpanel"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Firebase"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 74
    new-array v3, v5, [Lkotlin/Pair;

    new-instance v5, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v6

    check-cast v6, Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;->etDescription:Landroid/widget/EditText;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "message"

    invoke-direct {v5, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    invoke-static {v3}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v3

    .line 70
    const-string v5, "request_feature_submit"

    const-string v6, "click"

    invoke-virtual {p1, v5, v6, v2, v3}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    .line 75
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/laborbook/keep/R$string;->request_sent_successfully:I

    invoke-virtual {p0, v2}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 76
    move-object p1, p0

    check-cast p1, Lcom/laborbook/base/BaseBottomsheetFragment;

    const-string v2, "feature_request_sent"

    invoke-static {p1, v2, v0, v1, v0}, Lcom/laborbook/base/BaseBottomsheetFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseBottomsheetFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->dismiss()V

    :cond_2
    return-void
.end method

.method private static final setOnClickListeners$lambda$2$lambda$1(Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "request_feature"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 46
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseBottomsheetFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseBottomsheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 27
    invoke-super {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;->onStart()V

    .line 28
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 29
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    const-string v3, "from(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x3

    .line 32
    invoke-virtual {v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 34
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseBottomsheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;->setOnClickListeners()V

    .line 60
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$onViewCreated$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$onViewCreated$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

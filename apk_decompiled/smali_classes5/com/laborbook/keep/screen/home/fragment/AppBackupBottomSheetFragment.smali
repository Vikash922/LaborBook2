.class public final Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;
.super Lcom/laborbook/base/BaseBottomsheetFragment;
.source "AppBackupBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseBottomsheetFragment<",
        "Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J&\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\nH\u0002J\u0008\u0010\u0017\u001a\u00020\nH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;",
        "Lcom/laborbook/base/BaseBottomsheetFragment;",
        "Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "onStart",
        "",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "onViewCreated",
        "view",
        "setupViews",
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
.field public static final Companion:Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$Companion;


# direct methods
.method public static synthetic $r8$lambda$WmDqrVEI88vcbtXrUGr2TirSPVQ(Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->setOnClickListeners$lambda$3$lambda$2(Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gMpZ4cOktDqwVZcC39Z81qenVpc(Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->setOnClickListeners$lambda$3$lambda$1(Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;-><init>()V

    return-void
.end method

.method public static final newInstance()Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;

    move-result-object v0

    return-object v0
.end method

.method private final setOnClickListeners()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final setOnClickListeners$lambda$3$lambda$1(Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->dismiss()V

    return-void
.end method

.method private static final setOnClickListeners$lambda$3$lambda$2(Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->dismiss()V

    return-void
.end method

.method private final setupViews()V
    .locals 17

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;

    if-eqz v0, :cond_0

    .line 57
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 58
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "h:mma, d MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 59
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, " AM"

    const-string v7, "AM"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, " PM"

    const-string v13, "PM"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->tvLastUpdated:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    sget v2, Lcom/laborbook/keep/R$string;->last_updated:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    :goto_0
    return-void
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "settings"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 37
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseBottomsheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    .line 22
    invoke-super {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;->onStart()V

    .line 23
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 24
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    const-string v3, "from(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x4

    .line 27
    invoke-virtual {v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 29
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseBottomsheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->setupViews()V

    .line 51
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/AppBackupBottomSheetFragment;->setOnClickListeners()V

    return-void
.end method

.class public final Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;
.super Ljava/lang/Object;
.source "FragmentTransactionStatusBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adView:Lcom/google/android/gms/ads/AdView;

.field public final btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final customAdView:Lcom/laborbook/base/ads/CustomAdView;

.field public final ivTick:Landroid/widget/ImageView;

.field public final llTick:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvAttendanceMarkedSuccess:Lcom/boilerplate/uikit/views/textviews/text20/TextViewRegular20;

.field public final tvStaffName:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/gms/ads/AdView;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Lcom/laborbook/base/ads/CustomAdView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text20/TextViewRegular20;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "adView",
            "btnOk",
            "customAdView",
            "ivTick",
            "llTick",
            "tvAttendanceMarkedSuccess",
            "tvStaffName"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    iput-object p2, p0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->adView:Lcom/google/android/gms/ads/AdView;

    .line 55
    iput-object p3, p0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    .line 56
    iput-object p4, p0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->customAdView:Lcom/laborbook/base/ads/CustomAdView;

    .line 57
    iput-object p5, p0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->ivTick:Landroid/widget/ImageView;

    .line 58
    iput-object p6, p0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->llTick:Landroid/widget/LinearLayout;

    .line 59
    iput-object p7, p0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->tvAttendanceMarkedSuccess:Lcom/boilerplate/uikit/views/textviews/text20/TextViewRegular20;

    .line 60
    iput-object p8, p0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->tvStaffName:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 90
    sget v0, Lcom/laborbook/keep/R$id;->adView:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/ads/AdView;

    if-eqz v4, :cond_0

    .line 96
    sget v0, Lcom/laborbook/keep/R$id;->btn_ok:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v5, :cond_0

    .line 102
    sget v0, Lcom/laborbook/keep/R$id;->customAdView:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/laborbook/base/ads/CustomAdView;

    if-eqz v6, :cond_0

    .line 108
    sget v0, Lcom/laborbook/keep/R$id;->iv_tick:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 114
    sget v0, Lcom/laborbook/keep/R$id;->ll_tick:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 120
    sget v0, Lcom/laborbook/keep/R$id;->tv_attendance_marked_success:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/boilerplate/uikit/views/textviews/text20/TextViewRegular20;

    if-eqz v9, :cond_0

    .line 126
    sget v0, Lcom/laborbook/keep/R$id;->tv_staff_name:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v10, :cond_0

    .line 132
    new-instance v0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/gms/ads/AdView;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Lcom/laborbook/base/ads/CustomAdView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text20/TextViewRegular20;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;)V

    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 77
    sget v0, Lcom/laborbook/keep/R$layout;->fragment_transaction_status:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

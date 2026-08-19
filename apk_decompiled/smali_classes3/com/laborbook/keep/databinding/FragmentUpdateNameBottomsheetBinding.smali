.class public final Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;
.super Ljava/lang/Object;
.source "FragmentUpdateNameBottomsheetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnUpdateName:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final clAttendance:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final divider2:Landroid/view/View;

.field public final etName:Landroid/widget/EditText;

.field public final ivClose:Landroid/widget/ImageView;

.field public final pb:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvAdvance:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;)V
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
            "btnUpdateName",
            "clAttendance",
            "divider2",
            "etName",
            "ivClose",
            "pb",
            "tvAdvance"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    iput-object p2, p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->btnUpdateName:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    .line 53
    iput-object p3, p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->clAttendance:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    iput-object p4, p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->divider2:Landroid/view/View;

    .line 55
    iput-object p5, p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->etName:Landroid/widget/EditText;

    .line 56
    iput-object p6, p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->ivClose:Landroid/widget/ImageView;

    .line 57
    iput-object p7, p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->pb:Landroid/widget/ProgressBar;

    .line 58
    iput-object p8, p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->tvAdvance:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 88
    sget v0, Lcom/laborbook/keep/R$id;->btn_update_name:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v4, :cond_0

    .line 94
    sget v0, Lcom/laborbook/keep/R$id;->cl_attendance:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    .line 100
    sget v0, Lcom/laborbook/keep/R$id;->divider_2:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 106
    sget v0, Lcom/laborbook/keep/R$id;->et_name:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 112
    sget v0, Lcom/laborbook/keep/R$id;->iv_close:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 118
    sget v0, Lcom/laborbook/keep/R$id;->pb:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ProgressBar;

    if-eqz v9, :cond_0

    .line 124
    sget v0, Lcom/laborbook/keep/R$id;->tv_advance:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    if-eqz v10, :cond_0

    .line 130
    new-instance v0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;)V

    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;
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

    .line 69
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;
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

    .line 75
    sget v0, Lcom/laborbook/keep/R$layout;->fragment_update_name_bottomsheet:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

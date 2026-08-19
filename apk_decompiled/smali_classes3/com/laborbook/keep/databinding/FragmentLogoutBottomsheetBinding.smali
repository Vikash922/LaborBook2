.class public final Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;
.super Ljava/lang/Object;
.source "FragmentLogoutBottomsheetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnNo:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final btnYes:Landroid/widget/Button;

.field public final clLogoutContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final divider:Landroid/view/View;

.field public final ivClose:Landroid/widget/ImageView;

.field public final ivLogoutIcon:Landroid/widget/ImageView;

.field public final llButtons:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvLogoutMessage:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;)V
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
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnNo",
            "btnYes",
            "clLogoutContent",
            "divider",
            "ivClose",
            "ivLogoutIcon",
            "llButtons",
            "tvLogoutMessage"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    iput-object p2, p0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->btnNo:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    .line 57
    iput-object p3, p0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->btnYes:Landroid/widget/Button;

    .line 58
    iput-object p4, p0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->clLogoutContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    iput-object p5, p0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->divider:Landroid/view/View;

    .line 60
    iput-object p6, p0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->ivClose:Landroid/widget/ImageView;

    .line 61
    iput-object p7, p0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->ivLogoutIcon:Landroid/widget/ImageView;

    .line 62
    iput-object p8, p0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->llButtons:Landroid/widget/LinearLayout;

    .line 63
    iput-object p9, p0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->tvLogoutMessage:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 93
    sget v0, Lcom/laborbook/keep/R$id;->btn_no:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v4, :cond_0

    .line 99
    sget v0, Lcom/laborbook/keep/R$id;->btn_yes:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 105
    sget v0, Lcom/laborbook/keep/R$id;->cl_logout_content:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    .line 111
    sget v0, Lcom/laborbook/keep/R$id;->divider:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 117
    sget v0, Lcom/laborbook/keep/R$id;->iv_close:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 123
    sget v0, Lcom/laborbook/keep/R$id;->iv_logout_icon:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 129
    sget v0, Lcom/laborbook/keep/R$id;->ll_buttons:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 135
    sget v0, Lcom/laborbook/keep/R$id;->tv_logout_message:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v11, :cond_0

    .line 141
    new-instance v0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;)V

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;
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

    .line 74
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;
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

    .line 80
    sget v0, Lcom/laborbook/keep/R$layout;->fragment_logout_bottomsheet:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

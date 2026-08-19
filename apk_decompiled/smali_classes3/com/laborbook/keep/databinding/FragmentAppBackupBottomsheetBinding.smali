.class public final Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;
.super Ljava/lang/Object;
.source "FragmentAppBackupBottomsheetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final clBackupContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final divider:Landroid/view/View;

.field public final ivBackupIcon:Landroid/widget/ImageView;

.field public final ivClose:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvBackupMessage:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvBackupTitle:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

.field public final tvLastUpdated:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;)V
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
            "btnOk",
            "clBackupContent",
            "divider",
            "ivBackupIcon",
            "ivClose",
            "tvBackupMessage",
            "tvBackupTitle",
            "tvLastUpdated"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    iput-object p2, p0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    .line 57
    iput-object p3, p0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->clBackupContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    iput-object p4, p0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->divider:Landroid/view/View;

    .line 59
    iput-object p5, p0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->ivBackupIcon:Landroid/widget/ImageView;

    .line 60
    iput-object p6, p0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->ivClose:Landroid/widget/ImageView;

    .line 61
    iput-object p7, p0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->tvBackupMessage:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    .line 62
    iput-object p8, p0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->tvBackupTitle:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    .line 63
    iput-object p9, p0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->tvLastUpdated:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;
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
    sget v0, Lcom/laborbook/keep/R$id;->btn_ok:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v4, :cond_0

    .line 99
    sget v0, Lcom/laborbook/keep/R$id;->cl_backup_content:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    .line 105
    sget v0, Lcom/laborbook/keep/R$id;->divider:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 111
    sget v0, Lcom/laborbook/keep/R$id;->iv_backup_icon:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

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
    sget v0, Lcom/laborbook/keep/R$id;->tv_backup_message:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v9, :cond_0

    .line 129
    sget v0, Lcom/laborbook/keep/R$id;->tv_backup_title:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    if-eqz v10, :cond_0

    .line 135
    sget v0, Lcom/laborbook/keep/R$id;->tv_last_updated:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    if-eqz v11, :cond_0

    .line 141
    new-instance v0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;)V

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;
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
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;
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
    sget v0, Lcom/laborbook/keep/R$layout;->fragment_app_backup_bottomsheet:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/laborbook/keep/databinding/FragmentAppBackupBottomsheetBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

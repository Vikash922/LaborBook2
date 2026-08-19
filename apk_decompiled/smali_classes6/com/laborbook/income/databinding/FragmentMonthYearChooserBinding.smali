.class public final Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;
.super Ljava/lang/Object;
.source "FragmentMonthYearChooserBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final clChooser:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final divider2:Landroid/view/View;

.field public final ivClose:Landroid/widget/ImageView;

.field public final llMonth:Landroid/widget/LinearLayout;

.field public final llYear:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvMonth:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvTitle:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvYear:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;)V
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
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnOk",
            "clChooser",
            "divider2",
            "ivClose",
            "llMonth",
            "llYear",
            "tvMonth",
            "tvTitle",
            "tvYear"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    iput-object p2, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    .line 60
    iput-object p3, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->clChooser:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    iput-object p4, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->divider2:Landroid/view/View;

    .line 62
    iput-object p5, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->ivClose:Landroid/widget/ImageView;

    .line 63
    iput-object p6, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->llMonth:Landroid/widget/LinearLayout;

    .line 64
    iput-object p7, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->llYear:Landroid/widget/LinearLayout;

    .line 65
    iput-object p8, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->tvMonth:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 66
    iput-object p9, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->tvTitle:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    .line 67
    iput-object p10, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->tvYear:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 97
    sget v0, Lcom/laborbook/income/R$id;->btn_ok:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v4, :cond_0

    .line 103
    sget v0, Lcom/laborbook/income/R$id;->cl_chooser:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    .line 109
    sget v0, Lcom/laborbook/income/R$id;->divider_2:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 115
    sget v0, Lcom/laborbook/income/R$id;->iv_close:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 121
    sget v0, Lcom/laborbook/income/R$id;->ll_month:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 127
    sget v0, Lcom/laborbook/income/R$id;->ll_year:I

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 133
    sget v0, Lcom/laborbook/income/R$id;->tv_month:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v10, :cond_0

    .line 139
    sget v0, Lcom/laborbook/income/R$id;->tv_title:I

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v11, :cond_0

    .line 145
    sget v0, Lcom/laborbook/income/R$id;->tv_year:I

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v12, :cond_0

    .line 151
    new-instance v0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;)V

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;
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

    .line 78
    invoke-static {p0, v0, v1}, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;
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

    .line 84
    sget v0, Lcom/laborbook/income/R$layout;->fragment_month_year_chooser:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->bind(Landroid/view/View;)Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/laborbook/income/databinding/FragmentMonthYearChooserBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

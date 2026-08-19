.class public final Lcom/laborbook/keep/databinding/FragmentStaffListBinding;
.super Ljava/lang/Object;
.source "FragmentStaffListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnAddStaff:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

.field public final etSearchStaffs:Landroid/widget/EditText;

.field public final ivDownChevron:Landroid/widget/ImageView;

.field public final ivProTag:Landroid/widget/TextView;

.field public final llAddStaffToolTip:Landroid/widget/ImageView;

.field public final llLogoContainer:Landroid/widget/LinearLayout;

.field public final pb:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvStaffs:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvShare:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHyperLinkBold12;

.field public final tvStaffs:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

.field public final tvTitle:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Lcom/boilerplate/uikit/views/textviews/text12/TextViewHyperLinkBold12;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;Landroid/widget/ImageView;)V
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnAddStaff",
            "etSearchStaffs",
            "ivDownChevron",
            "ivProTag",
            "llAddStaffToolTip",
            "llLogoContainer",
            "pb",
            "rvStaffs",
            "tvShare",
            "tvStaffs",
            "tvTitle"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    iput-object p2, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->btnAddStaff:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    .line 72
    iput-object p3, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->etSearchStaffs:Landroid/widget/EditText;

    .line 73
    iput-object p4, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->ivDownChevron:Landroid/widget/ImageView;

    .line 74
    iput-object p5, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->ivProTag:Landroid/widget/TextView;

    .line 75
    iput-object p6, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->llAddStaffToolTip:Landroid/widget/ImageView;

    .line 76
    iput-object p7, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->llLogoContainer:Landroid/widget/LinearLayout;

    .line 77
    iput-object p8, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->pb:Landroid/widget/ProgressBar;

    .line 78
    iput-object p9, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->rvStaffs:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    iput-object p10, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->tvShare:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHyperLinkBold12;

    .line 80
    iput-object p11, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->tvStaffs:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    .line 81
    iput-object p12, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->tvTitle:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentStaffListBinding;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 111
    sget v0, Lcom/laborbook/keep/R$id;->btn_add_staff:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    if-eqz v4, :cond_0

    .line 117
    sget v0, Lcom/laborbook/keep/R$id;->et_search_staffs:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 123
    sget v0, Lcom/laborbook/keep/R$id;->iv_down_chevron:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 129
    sget v0, Lcom/laborbook/keep/R$id;->iv_pro_tag:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 135
    sget v0, Lcom/laborbook/keep/R$id;->ll_add_staff_tool_tip:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 141
    sget v0, Lcom/laborbook/keep/R$id;->ll_logo_container:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 147
    sget v0, Lcom/laborbook/keep/R$id;->pb:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ProgressBar;

    if-eqz v10, :cond_0

    .line 153
    sget v0, Lcom/laborbook/keep/R$id;->rv_staffs:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_0

    .line 159
    sget v0, Lcom/laborbook/keep/R$id;->tv_share:I

    .line 160
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHyperLinkBold12;

    if-eqz v12, :cond_0

    .line 165
    sget v0, Lcom/laborbook/keep/R$id;->tv_staffs:I

    .line 166
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    if-eqz v13, :cond_0

    .line 171
    sget v0, Lcom/laborbook/keep/R$id;->tv_title:I

    .line 172
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 177
    new-instance v0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Lcom/boilerplate/uikit/views/textviews/text12/TextViewHyperLinkBold12;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;Landroid/widget/ImageView;)V

    return-object v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/FragmentStaffListBinding;
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

    .line 92
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentStaffListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentStaffListBinding;
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

    .line 98
    sget v0, Lcom/laborbook/keep/R$layout;->fragment_staff_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentStaffListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

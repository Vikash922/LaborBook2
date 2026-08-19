.class public final Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;
.super Ljava/lang/Object;
.source "FragmentTransactionReportsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSharePdf:Landroid/widget/Button;

.field public final btnShareWhatsapp:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldWhite16;

.field public final header:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final headerDivider:Landroid/view/View;

.field public final ivBack:Landroid/widget/ImageView;

.field public final llDateRange:Landroid/widget/LinearLayout;

.field public final llShareButtons:Landroid/widget/LinearLayout;

.field public final llTableHeader:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvTransactions:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvFromDate:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

.field public final tvTitle:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

.field public final tvToDate:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldWhite16;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;)V
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
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnSharePdf",
            "btnShareWhatsapp",
            "header",
            "headerDivider",
            "ivBack",
            "llDateRange",
            "llShareButtons",
            "llTableHeader",
            "rvTransactions",
            "tvFromDate",
            "tvTitle",
            "tvToDate"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    iput-object p2, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->btnSharePdf:Landroid/widget/Button;

    .line 73
    iput-object p3, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->btnShareWhatsapp:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldWhite16;

    .line 74
    iput-object p4, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->header:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    iput-object p5, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->headerDivider:Landroid/view/View;

    .line 76
    iput-object p6, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->ivBack:Landroid/widget/ImageView;

    .line 77
    iput-object p7, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->llDateRange:Landroid/widget/LinearLayout;

    .line 78
    iput-object p8, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->llShareButtons:Landroid/widget/LinearLayout;

    .line 79
    iput-object p9, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->llTableHeader:Landroid/widget/LinearLayout;

    .line 80
    iput-object p10, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->rvTransactions:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    iput-object p11, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->tvFromDate:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    .line 82
    iput-object p12, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->tvTitle:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    .line 83
    iput-object p13, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->tvToDate:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 113
    sget v1, Lcom/laborbook/income/R$id;->btn_share_pdf:I

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 119
    sget v1, Lcom/laborbook/income/R$id;->btn_share_whatsapp:I

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldWhite16;

    if-eqz v6, :cond_0

    .line 125
    sget v1, Lcom/laborbook/income/R$id;->header:I

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 131
    sget v1, Lcom/laborbook/income/R$id;->header_divider:I

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 137
    sget v1, Lcom/laborbook/income/R$id;->iv_back:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 143
    sget v1, Lcom/laborbook/income/R$id;->ll_date_range:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 149
    sget v1, Lcom/laborbook/income/R$id;->ll_share_buttons:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 155
    sget v1, Lcom/laborbook/income/R$id;->ll_table_header:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 161
    sget v1, Lcom/laborbook/income/R$id;->rv_transactions:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    .line 167
    sget v1, Lcom/laborbook/income/R$id;->tv_from_date:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz v14, :cond_0

    .line 173
    sget v1, Lcom/laborbook/income/R$id;->tv_title:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    if-eqz v15, :cond_0

    .line 179
    sget v1, Lcom/laborbook/income/R$id;->tv_to_date:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz v16, :cond_0

    .line 185
    new-instance v1, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldWhite16;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;)V

    return-object v1

    .line 189
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;
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

    .line 94
    invoke-static {p0, v0, v1}, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;
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

    .line 100
    sget v0, Lcom/laborbook/income/R$layout;->fragment_transaction_reports:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->bind(Landroid/view/View;)Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.class public final Lcom/laborbook/keep/databinding/FragmentCashbookBinding;
.super Ljava/lang/Object;
.source "FragmentCashbookBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etSearch:Landroid/widget/EditText;

.field public final fabCashIn:Lcom/google/android/material/button/MaterialButton;

.field public final fabCashOut:Lcom/google/android/material/button/MaterialButton;

.field public final llFabs:Landroid/widget/LinearLayout;

.field public final llSummary:Landroid/widget/LinearLayout;

.field public final pb:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvTransactions:Landroidx/recyclerview/widget/RecyclerView;

.field public final scrollContent:Landroidx/core/widget/NestedScrollView;

.field public final tvBalance:Landroid/widget/TextView;

.field public final tvCashIn:Landroid/widget/TextView;

.field public final tvCashOut:Landroid/widget/TextView;

.field public final tvCashbook:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

.field public final tvEmpty:Landroid/widget/TextView;

.field public final tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

.field public final tvReports:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Landroid/widget/TextView;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Landroid/widget/LinearLayout;)V
    .locals 2
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "etSearch",
            "fabCashIn",
            "fabCashOut",
            "llFabs",
            "llSummary",
            "pb",
            "rvTransactions",
            "scrollContent",
            "tvBalance",
            "tvCashIn",
            "tvCashOut",
            "tvCashbook",
            "tvEmpty",
            "tvMonthYear",
            "tvReports"
        }
    .end annotation

    move-object v0, p0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 82
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 83
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->etSearch:Landroid/widget/EditText;

    move-object v1, p3

    .line 84
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->fabCashIn:Lcom/google/android/material/button/MaterialButton;

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->fabCashOut:Lcom/google/android/material/button/MaterialButton;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->llFabs:Landroid/widget/LinearLayout;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->llSummary:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 88
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->pb:Landroid/widget/ProgressBar;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->rvTransactions:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->scrollContent:Landroidx/core/widget/NestedScrollView;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvBalance:Landroid/widget/TextView;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvCashIn:Landroid/widget/TextView;

    move-object v1, p12

    .line 93
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvCashOut:Landroid/widget/TextView;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvCashbook:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvEmpty:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvReports:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentCashbookBinding;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 127
    sget v1, Lcom/laborbook/keep/R$id;->et_search:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 133
    sget v1, Lcom/laborbook/keep/R$id;->fab_cash_in:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    if-eqz v6, :cond_0

    .line 139
    sget v1, Lcom/laborbook/keep/R$id;->fab_cash_out:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    if-eqz v7, :cond_0

    .line 145
    sget v1, Lcom/laborbook/keep/R$id;->ll_fabs:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 151
    sget v1, Lcom/laborbook/keep/R$id;->ll_summary:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 157
    sget v1, Lcom/laborbook/keep/R$id;->pb:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ProgressBar;

    if-eqz v10, :cond_0

    .line 163
    sget v1, Lcom/laborbook/keep/R$id;->rv_transactions:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_0

    .line 169
    sget v1, Lcom/laborbook/keep/R$id;->scroll_content:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/core/widget/NestedScrollView;

    if-eqz v12, :cond_0

    .line 175
    sget v1, Lcom/laborbook/keep/R$id;->tv_balance:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 181
    sget v1, Lcom/laborbook/keep/R$id;->tv_cash_in:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 187
    sget v1, Lcom/laborbook/keep/R$id;->tv_cash_out:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 193
    sget v1, Lcom/laborbook/keep/R$id;->tv_cashbook:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v16, :cond_0

    .line 199
    sget v1, Lcom/laborbook/keep/R$id;->tv_empty:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 205
    sget v1, Lcom/laborbook/keep/R$id;->tv_month_year:I

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz v18, :cond_0

    .line 211
    sget v1, Lcom/laborbook/keep/R$id;->tv_reports:I

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/LinearLayout;

    if-eqz v19, :cond_0

    .line 217
    new-instance v1, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v19}, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Landroid/widget/TextView;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Landroid/widget/LinearLayout;)V

    return-object v1

    .line 221
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/FragmentCashbookBinding;
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

    .line 108
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentCashbookBinding;
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

    .line 114
    sget v0, Lcom/laborbook/keep/R$layout;->fragment_cashbook:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

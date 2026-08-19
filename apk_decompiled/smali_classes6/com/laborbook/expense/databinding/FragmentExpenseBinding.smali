.class public final Lcom/laborbook/expense/databinding/FragmentExpenseBinding;
.super Ljava/lang/Object;
.source "FragmentExpenseBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnCashOut:Lcom/boilerplate/uikit/views/buttons/RoundedRedButton;

.field public final dividerHeader:Landroid/view/View;

.field public final etSearchExpense:Landroid/widget/EditText;

.field public final ivArrow:Landroid/widget/ImageView;

.field public final llStats:Landroid/widget/LinearLayout;

.field public final llStatsRow:Landroid/widget/LinearLayout;

.field public final llTableHeader:Landroid/widget/LinearLayout;

.field public final nestedScrollView:Landroidx/core/widget/NestedScrollView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvExpense:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvAddFirstEntry:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvCashOutTitle:Lcom/boilerplate/uikit/views/textviews/text10/TextViewHintBold10;

.field public final tvEntriesTitle:Lcom/boilerplate/uikit/views/textviews/text10/TextViewHintBold10;

.field public final tvExpense:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

.field public final tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

.field public final tvTotalCashOut:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

.field public final tvTotalEntries:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvViewReports:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/RoundedRedButton;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text10/TextViewHintBold10;Lcom/boilerplate/uikit/views/textviews/text10/TextViewHintBold10;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;)V
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnCashOut",
            "dividerHeader",
            "etSearchExpense",
            "ivArrow",
            "llStats",
            "llStatsRow",
            "llTableHeader",
            "nestedScrollView",
            "progressBar",
            "rvExpense",
            "tvAddFirstEntry",
            "tvCashOutTitle",
            "tvEntriesTitle",
            "tvExpense",
            "tvMonthYear",
            "tvTotalCashOut",
            "tvTotalEntries",
            "tvViewReports"
        }
    .end annotation

    move-object v0, p0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 98
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 99
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->btnCashOut:Lcom/boilerplate/uikit/views/buttons/RoundedRedButton;

    move-object v1, p3

    .line 100
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->dividerHeader:Landroid/view/View;

    move-object v1, p4

    .line 101
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->etSearchExpense:Landroid/widget/EditText;

    move-object v1, p5

    .line 102
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->ivArrow:Landroid/widget/ImageView;

    move-object v1, p6

    .line 103
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->llStats:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 104
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->llStatsRow:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 105
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->llTableHeader:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 106
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p10

    .line 107
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->progressBar:Landroid/widget/ProgressBar;

    move-object v1, p11

    .line 108
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p12

    .line 109
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvAddFirstEntry:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object v1, p13

    .line 110
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvCashOutTitle:Lcom/boilerplate/uikit/views/textviews/text10/TextViewHintBold10;

    move-object/from16 v1, p14

    .line 111
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvEntriesTitle:Lcom/boilerplate/uikit/views/textviews/text10/TextViewHintBold10;

    move-object/from16 v1, p15

    .line 112
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvExpense:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    move-object/from16 v1, p16

    .line 113
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    move-object/from16 v1, p17

    .line 114
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvTotalCashOut:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

    move-object/from16 v1, p18

    .line 115
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvTotalEntries:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object/from16 v1, p19

    .line 116
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvViewReports:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/FragmentExpenseBinding;
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 146
    sget v1, Lcom/laborbook/expense/R$id;->btn_cash_out:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/boilerplate/uikit/views/buttons/RoundedRedButton;

    if-eqz v5, :cond_0

    .line 152
    sget v1, Lcom/laborbook/expense/R$id;->divider_header:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 158
    sget v1, Lcom/laborbook/expense/R$id;->et_search_expense:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 164
    sget v1, Lcom/laborbook/expense/R$id;->iv_arrow:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 170
    sget v1, Lcom/laborbook/expense/R$id;->ll_stats:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 176
    sget v1, Lcom/laborbook/expense/R$id;->ll_stats_row:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 182
    sget v1, Lcom/laborbook/expense/R$id;->ll_table_header:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 188
    sget v1, Lcom/laborbook/expense/R$id;->nested_scroll_view:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/core/widget/NestedScrollView;

    if-eqz v12, :cond_0

    .line 194
    sget v1, Lcom/laborbook/expense/R$id;->progressBar:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ProgressBar;

    if-eqz v13, :cond_0

    .line 200
    sget v1, Lcom/laborbook/expense/R$id;->rv_expense:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_0

    .line 206
    sget v1, Lcom/laborbook/expense/R$id;->tv_add_first_entry:I

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v15, :cond_0

    .line 212
    sget v1, Lcom/laborbook/expense/R$id;->tv_cash_out_title:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/boilerplate/uikit/views/textviews/text10/TextViewHintBold10;

    if-eqz v16, :cond_0

    .line 218
    sget v1, Lcom/laborbook/expense/R$id;->tv_entries_title:I

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/boilerplate/uikit/views/textviews/text10/TextViewHintBold10;

    if-eqz v17, :cond_0

    .line 224
    sget v1, Lcom/laborbook/expense/R$id;->tv_expense:I

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v18, :cond_0

    .line 230
    sget v1, Lcom/laborbook/expense/R$id;->tv_month_year:I

    .line 231
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz v19, :cond_0

    .line 236
    sget v1, Lcom/laborbook/expense/R$id;->tv_total_cash_out:I

    .line 237
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

    if-eqz v20, :cond_0

    .line 242
    sget v1, Lcom/laborbook/expense/R$id;->tv_total_entries:I

    .line 243
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v21, :cond_0

    .line 248
    sget v1, Lcom/laborbook/expense/R$id;->tv_view_reports:I

    .line 249
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    if-eqz v22, :cond_0

    .line 254
    new-instance v1, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v22}, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/RoundedRedButton;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text10/TextViewHintBold10;Lcom/boilerplate/uikit/views/textviews/text10/TextViewHintBold10;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;)V

    return-object v1

    .line 259
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/expense/databinding/FragmentExpenseBinding;
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

    .line 127
    invoke-static {p0, v0, v1}, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/FragmentExpenseBinding;
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

    .line 133
    sget v0, Lcom/laborbook/expense/R$layout;->fragment_expense:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

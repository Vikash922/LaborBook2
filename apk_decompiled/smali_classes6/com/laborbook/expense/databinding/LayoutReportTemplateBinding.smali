.class public final Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;
.super Ljava/lang/Object;
.source "LayoutReportTemplateBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final llCashInTotal:Landroid/widget/LinearLayout;

.field public final llCashOutTotal:Landroid/widget/LinearLayout;

.field public final llMarketingFooter:Landroid/widget/LinearLayout;

.field public final llTotalEarnings:Landroid/widget/LinearLayout;

.field public final llTransactionItems:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/ScrollView;

.field public final tvCashInTotal:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvCashOutTotal:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvDownloadApp:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

.field public final tvNameLabel:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

.field public final tvPhoneLabel:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

.field public final tvReportGeneratedBy:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

.field public final tvReportTitle:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

.field public final tvTotalAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvTotalLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;)V
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "llCashInTotal",
            "llCashOutTotal",
            "llMarketingFooter",
            "llTotalEarnings",
            "llTransactionItems",
            "tvCashInTotal",
            "tvCashOutTotal",
            "tvDownloadApp",
            "tvNameLabel",
            "tvPhoneLabel",
            "tvReportGeneratedBy",
            "tvReportTitle",
            "tvTotalAmount",
            "tvTotalLabel"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->rootView:Landroid/widget/ScrollView;

    .line 78
    iput-object p2, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->llCashInTotal:Landroid/widget/LinearLayout;

    .line 79
    iput-object p3, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->llCashOutTotal:Landroid/widget/LinearLayout;

    .line 80
    iput-object p4, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->llMarketingFooter:Landroid/widget/LinearLayout;

    .line 81
    iput-object p5, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->llTotalEarnings:Landroid/widget/LinearLayout;

    .line 82
    iput-object p6, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->llTransactionItems:Landroid/widget/LinearLayout;

    .line 83
    iput-object p7, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->tvCashInTotal:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 84
    iput-object p8, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->tvCashOutTotal:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 85
    iput-object p9, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->tvDownloadApp:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    .line 86
    iput-object p10, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->tvNameLabel:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    .line 87
    iput-object p11, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->tvPhoneLabel:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    .line 88
    iput-object p12, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->tvReportGeneratedBy:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    .line 89
    iput-object p13, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->tvReportTitle:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    .line 90
    iput-object p14, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->tvTotalAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    .line 91
    iput-object p15, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->tvTotalLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 121
    sget v1, Lcom/laborbook/expense/R$id;->ll_cash_in_total:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 127
    sget v1, Lcom/laborbook/expense/R$id;->ll_cash_out_total:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 133
    sget v1, Lcom/laborbook/expense/R$id;->ll_marketing_footer:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 139
    sget v1, Lcom/laborbook/expense/R$id;->ll_total_earnings:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 145
    sget v1, Lcom/laborbook/expense/R$id;->ll_transaction_items:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 151
    sget v1, Lcom/laborbook/expense/R$id;->tv_cash_in_total:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v10, :cond_0

    .line 157
    sget v1, Lcom/laborbook/expense/R$id;->tv_cash_out_total:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v11, :cond_0

    .line 163
    sget v1, Lcom/laborbook/expense/R$id;->tv_download_app:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    if-eqz v12, :cond_0

    .line 169
    sget v1, Lcom/laborbook/expense/R$id;->tv_name_label:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v13, :cond_0

    .line 175
    sget v1, Lcom/laborbook/expense/R$id;->tv_phone_label:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v14, :cond_0

    .line 181
    sget v1, Lcom/laborbook/expense/R$id;->tv_report_generated_by:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    if-eqz v15, :cond_0

    .line 187
    sget v1, Lcom/laborbook/expense/R$id;->tv_report_title:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v16, :cond_0

    .line 193
    sget v1, Lcom/laborbook/expense/R$id;->tv_total_amount:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v17, :cond_0

    .line 199
    sget v1, Lcom/laborbook/expense/R$id;->tv_total_label:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v18, :cond_0

    .line 205
    new-instance v1, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;)V

    return-object v1

    .line 210
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;
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

    .line 102
    invoke-static {p0, v0, v1}, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;
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

    .line 108
    sget v0, Lcom/laborbook/expense/R$layout;->layout_report_template:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/laborbook/expense/databinding/LayoutReportTemplateBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

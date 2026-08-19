.class public final Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;
.super Ljava/lang/Object;
.source "LayoutReportTemplateBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final llMarketingFooter:Landroid/widget/LinearLayout;

.field public final llTotalEarnings:Landroid/widget/LinearLayout;

.field public final llTransactionItems:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/ScrollView;

.field public final tvDownloadApp:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

.field public final tvNameLabel:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

.field public final tvPhoneLabel:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

.field public final tvReportGeneratedBy:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

.field public final tvReportTitle:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

.field public final tvTotalAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvTotalLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;)V
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
            0x0
        }
        names = {
            "rootView",
            "llMarketingFooter",
            "llTotalEarnings",
            "llTransactionItems",
            "tvDownloadApp",
            "tvNameLabel",
            "tvPhoneLabel",
            "tvReportGeneratedBy",
            "tvReportTitle",
            "tvTotalAmount",
            "tvTotalLabel"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->rootView:Landroid/widget/ScrollView;

    .line 63
    iput-object p2, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->llMarketingFooter:Landroid/widget/LinearLayout;

    .line 64
    iput-object p3, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->llTotalEarnings:Landroid/widget/LinearLayout;

    .line 65
    iput-object p4, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->llTransactionItems:Landroid/widget/LinearLayout;

    .line 66
    iput-object p5, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvDownloadApp:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    .line 67
    iput-object p6, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvNameLabel:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    .line 68
    iput-object p7, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvPhoneLabel:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    .line 69
    iput-object p8, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvReportGeneratedBy:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    .line 70
    iput-object p9, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvReportTitle:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    .line 71
    iput-object p10, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvTotalAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    .line 72
    iput-object p11, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvTotalLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 102
    sget v0, Lcom/laborbook/income/R$id;->ll_marketing_footer:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 108
    sget v0, Lcom/laborbook/income/R$id;->ll_total_earnings:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 114
    sget v0, Lcom/laborbook/income/R$id;->ll_transaction_items:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 120
    sget v0, Lcom/laborbook/income/R$id;->tv_download_app:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    if-eqz v7, :cond_0

    .line 126
    sget v0, Lcom/laborbook/income/R$id;->tv_name_label:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v8, :cond_0

    .line 132
    sget v0, Lcom/laborbook/income/R$id;->tv_phone_label:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v9, :cond_0

    .line 138
    sget v0, Lcom/laborbook/income/R$id;->tv_report_generated_by:I

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    if-eqz v10, :cond_0

    .line 144
    sget v0, Lcom/laborbook/income/R$id;->tv_report_title:I

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v11, :cond_0

    .line 150
    sget v0, Lcom/laborbook/income/R$id;->tv_total_amount:I

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v12, :cond_0

    .line 156
    sget v0, Lcom/laborbook/income/R$id;->tv_total_label:I

    .line 157
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v13, :cond_0

    .line 162
    new-instance v0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;)V

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;
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

    .line 83
    invoke-static {p0, v0, v1}, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;
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

    .line 89
    sget v0, Lcom/laborbook/income/R$layout;->layout_report_template:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->bind(Landroid/view/View;)Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

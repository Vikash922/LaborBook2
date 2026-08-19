.class public final Lcom/laborbook/income/databinding/ItemIncomeBinding;
.super Ljava/lang/Object;
.source "ItemIncomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final container:Landroid/widget/LinearLayout;

.field public final divider:Landroid/view/View;

.field public final ivArrow:Landroid/widget/ImageView;

.field public final ivSecretAmount:Landroid/widget/ImageView;

.field public final llAmountWithArrow:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvCashInAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;

.field public final tvIncomeDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvIncomeDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

.field public final tvIncomeReason:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V
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
            "container",
            "divider",
            "ivArrow",
            "ivSecretAmount",
            "llAmountWithArrow",
            "tvCashInAmount",
            "tvIncomeDate",
            "tvIncomeDay",
            "tvIncomeReason"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 58
    iput-object p2, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->container:Landroid/widget/LinearLayout;

    .line 59
    iput-object p3, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->divider:Landroid/view/View;

    .line 60
    iput-object p4, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->ivArrow:Landroid/widget/ImageView;

    .line 61
    iput-object p5, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->ivSecretAmount:Landroid/widget/ImageView;

    .line 62
    iput-object p6, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->llAmountWithArrow:Landroid/widget/LinearLayout;

    .line 63
    iput-object p7, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->tvCashInAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;

    .line 64
    iput-object p8, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->tvIncomeDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 65
    iput-object p9, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->tvIncomeDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    .line 66
    iput-object p10, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->tvIncomeReason:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/income/databinding/ItemIncomeBinding;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 96
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 98
    sget v0, Lcom/laborbook/income/R$id;->divider:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 104
    sget v0, Lcom/laborbook/income/R$id;->iv_arrow:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 110
    sget v0, Lcom/laborbook/income/R$id;->iv_secret_amount:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 116
    sget v0, Lcom/laborbook/income/R$id;->ll_amount_with_arrow:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 122
    sget v0, Lcom/laborbook/income/R$id;->tv_cash_in_amount:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;

    if-eqz v7, :cond_0

    .line 128
    sget v0, Lcom/laborbook/income/R$id;->tv_income_date:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v8, :cond_0

    .line 134
    sget v0, Lcom/laborbook/income/R$id;->tv_income_day:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v9, :cond_0

    .line 140
    sget v0, Lcom/laborbook/income/R$id;->tv_income_reason:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v10, :cond_0

    .line 146
    new-instance p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v10}, Lcom/laborbook/income/databinding/ItemIncomeBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V

    return-object p0

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/income/databinding/ItemIncomeBinding;
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

    .line 77
    invoke-static {p0, v0, v1}, Lcom/laborbook/income/databinding/ItemIncomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/ItemIncomeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/ItemIncomeBinding;
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

    .line 83
    sget v0, Lcom/laborbook/income/R$layout;->item_income:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/laborbook/income/databinding/ItemIncomeBinding;->bind(Landroid/view/View;)Lcom/laborbook/income/databinding/ItemIncomeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/laborbook/income/databinding/ItemIncomeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

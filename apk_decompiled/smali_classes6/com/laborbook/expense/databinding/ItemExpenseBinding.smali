.class public final Lcom/laborbook/expense/databinding/ItemExpenseBinding;
.super Ljava/lang/Object;
.source "ItemExpenseBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final container:Landroid/widget/LinearLayout;

.field public final divider:Landroid/view/View;

.field public final ivArrow:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvCashOutAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

.field public final tvExpenseDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvExpenseDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

.field public final tvExpenseReason:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ImageView;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V
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
            0x0
        }
        names = {
            "rootView",
            "container",
            "divider",
            "ivArrow",
            "tvCashOutAmount",
            "tvExpenseDate",
            "tvExpenseDay",
            "tvExpenseReason"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->rootView:Landroid/widget/LinearLayout;

    .line 51
    iput-object p2, p0, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->container:Landroid/widget/LinearLayout;

    .line 52
    iput-object p3, p0, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->divider:Landroid/view/View;

    .line 53
    iput-object p4, p0, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->ivArrow:Landroid/widget/ImageView;

    .line 54
    iput-object p5, p0, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->tvCashOutAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

    .line 55
    iput-object p6, p0, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->tvExpenseDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 56
    iput-object p7, p0, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->tvExpenseDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    .line 57
    iput-object p8, p0, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->tvExpenseReason:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/ItemExpenseBinding;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 87
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 89
    sget v0, Lcom/laborbook/expense/R$id;->divider:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 95
    sget v0, Lcom/laborbook/expense/R$id;->iv_arrow:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 101
    sget v0, Lcom/laborbook/expense/R$id;->tv_cash_out_amount:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

    if-eqz v5, :cond_0

    .line 107
    sget v0, Lcom/laborbook/expense/R$id;->tv_expense_date:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v6, :cond_0

    .line 113
    sget v0, Lcom/laborbook/expense/R$id;->tv_expense_day:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v7, :cond_0

    .line 119
    sget v0, Lcom/laborbook/expense/R$id;->tv_expense_reason:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v8, :cond_0

    .line 125
    new-instance p0, Lcom/laborbook/expense/databinding/ItemExpenseBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v8}, Lcom/laborbook/expense/databinding/ItemExpenseBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ImageView;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V

    return-object p0

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/expense/databinding/ItemExpenseBinding;
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

    .line 68
    invoke-static {p0, v0, v1}, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/ItemExpenseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/ItemExpenseBinding;
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

    .line 74
    sget v0, Lcom/laborbook/expense/R$layout;->item_expense:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/ItemExpenseBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

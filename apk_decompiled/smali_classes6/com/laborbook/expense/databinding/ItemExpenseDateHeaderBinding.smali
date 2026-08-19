.class public final Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;
.super Ljava/lang/Object;
.source "ItemExpenseDateHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final llTableHeader:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvCashOutAmount:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

.field public final tvDateHeader:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "llTableHeader",
            "tvCashOutAmount",
            "tvDateHeader"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    iput-object p2, p0, Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;->llTableHeader:Landroid/widget/LinearLayout;

    .line 38
    iput-object p3, p0, Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;->tvCashOutAmount:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    .line 39
    iput-object p4, p0, Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;->tvDateHeader:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 69
    sget v0, Lcom/laborbook/expense/R$id;->ll_table_header:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 75
    sget v0, Lcom/laborbook/expense/R$id;->tvCashOutAmount:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz v2, :cond_0

    .line 81
    sget v0, Lcom/laborbook/expense/R$id;->tv_date_header:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v3, :cond_0

    .line 87
    new-instance v0, Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;)V

    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;
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

    .line 50
    invoke-static {p0, v0, v1}, Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;
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

    .line 56
    sget v0, Lcom/laborbook/expense/R$layout;->item_expense_date_header:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {p0}, Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;->bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/laborbook/expense/databinding/ItemExpenseDateHeaderBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

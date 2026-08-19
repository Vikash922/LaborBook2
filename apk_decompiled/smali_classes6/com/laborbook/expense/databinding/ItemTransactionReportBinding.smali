.class public final Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;
.super Ljava/lang/Object;
.source "ItemTransactionReportBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final divider:Landroid/view/View;

.field public final llDate:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

.field public final tvNotes:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "divider",
            "llDate",
            "tvAmount",
            "tvDate",
            "tvDay",
            "tvNotes"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->rootView:Landroid/widget/LinearLayout;

    .line 46
    iput-object p2, p0, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->divider:Landroid/view/View;

    .line 47
    iput-object p3, p0, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->llDate:Landroid/widget/LinearLayout;

    .line 48
    iput-object p4, p0, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->tvAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 49
    iput-object p5, p0, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 50
    iput-object p6, p0, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->tvDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    .line 51
    iput-object p7, p0, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->tvNotes:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 81
    sget v0, Lcom/laborbook/expense/R$id;->divider:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    sget v0, Lcom/laborbook/expense/R$id;->ll_date:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 93
    sget v0, Lcom/laborbook/expense/R$id;->tv_amount:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v5, :cond_0

    .line 99
    sget v0, Lcom/laborbook/expense/R$id;->tv_date:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v6, :cond_0

    .line 105
    sget v0, Lcom/laborbook/expense/R$id;->tv_day:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v7, :cond_0

    .line 111
    sget v0, Lcom/laborbook/expense/R$id;->tv_notes:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v8, :cond_0

    .line 117
    new-instance v0, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;
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

    .line 62
    invoke-static {p0, v0, v1}, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;
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

    .line 68
    sget v0, Lcom/laborbook/expense/R$layout;->item_transaction_report:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/laborbook/expense/databinding/ItemTransactionReportBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.class public final Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;
.super Ljava/lang/Object;
.source "ItemCashbookTransactionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvAmount:Landroid/widget/TextView;

.field public final tvDateDay:Landroid/widget/TextView;

.field public final tvDateWeekday:Landroid/widget/TextView;

.field public final tvMode:Landroid/widget/TextView;

.field public final tvReason:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "tvAmount",
            "tvDateDay",
            "tvDateWeekday",
            "tvMode",
            "tvReason"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->rootView:Landroid/widget/LinearLayout;

    .line 41
    iput-object p2, p0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvAmount:Landroid/widget/TextView;

    .line 42
    iput-object p3, p0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvDateDay:Landroid/widget/TextView;

    .line 43
    iput-object p4, p0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvDateWeekday:Landroid/widget/TextView;

    .line 44
    iput-object p5, p0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvMode:Landroid/widget/TextView;

    .line 45
    iput-object p6, p0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvReason:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 75
    sget v0, Lcom/laborbook/keep/R$id;->tv_amount:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 81
    sget v0, Lcom/laborbook/keep/R$id;->tv_date_day:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 87
    sget v0, Lcom/laborbook/keep/R$id;->tv_date_weekday:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 93
    sget v0, Lcom/laborbook/keep/R$id;->tv_mode:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 99
    sget v0, Lcom/laborbook/keep/R$id;->tv_reason:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 105
    new-instance v0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;
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

    .line 56
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;
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

    .line 62
    sget v0, Lcom/laborbook/keep/R$layout;->item_cashbook_transaction:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

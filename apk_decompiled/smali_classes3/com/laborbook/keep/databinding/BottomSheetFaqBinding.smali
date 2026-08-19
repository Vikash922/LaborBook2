.class public final Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;
.super Ljava/lang/Object;
.source "BottomSheetFaqBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvFaq1A:Landroid/widget/TextView;

.field public final tvFaq1Q:Landroid/widget/TextView;

.field public final tvFaq3A:Landroid/widget/TextView;

.field public final tvFaq3Q:Landroid/widget/TextView;

.field public final tvFaq4A:Landroid/widget/TextView;

.field public final tvFaq4Q:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            "tvFaq1A",
            "tvFaq1Q",
            "tvFaq3A",
            "tvFaq3Q",
            "tvFaq4A",
            "tvFaq4Q"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->rootView:Landroid/widget/LinearLayout;

    .line 44
    iput-object p2, p0, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->tvFaq1A:Landroid/widget/TextView;

    .line 45
    iput-object p3, p0, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->tvFaq1Q:Landroid/widget/TextView;

    .line 46
    iput-object p4, p0, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->tvFaq3A:Landroid/widget/TextView;

    .line 47
    iput-object p5, p0, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->tvFaq3Q:Landroid/widget/TextView;

    .line 48
    iput-object p6, p0, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->tvFaq4A:Landroid/widget/TextView;

    .line 49
    iput-object p7, p0, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->tvFaq4Q:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 79
    sget v0, Lcom/laborbook/keep/R$id;->tv_faq1_a:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 85
    sget v0, Lcom/laborbook/keep/R$id;->tv_faq1_q:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 91
    sget v0, Lcom/laborbook/keep/R$id;->tv_faq3_a:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 97
    sget v0, Lcom/laborbook/keep/R$id;->tv_faq3_q:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 103
    sget v0, Lcom/laborbook/keep/R$id;->tv_faq4_a:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 109
    sget v0, Lcom/laborbook/keep/R$id;->tv_faq4_q:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 115
    new-instance v0, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;
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

    .line 60
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;
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

    .line 66
    sget v0, Lcom/laborbook/keep/R$layout;->bottom_sheet_faq:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/laborbook/keep/databinding/BottomSheetFaqBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

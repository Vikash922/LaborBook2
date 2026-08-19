.class public final Lcom/laborbook/keep/databinding/ItemUpiAppBinding;
.super Ljava/lang/Object;
.source "ItemUpiAppBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flUpiIconContainer:Landroid/widget/FrameLayout;

.field public final ivSelected:Landroid/widget/ImageView;

.field public final ivUpiIcon:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvUpiLetter:Landroid/widget/TextView;

.field public final tvUpiName:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V
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
            "flUpiIconContainer",
            "ivSelected",
            "ivUpiIcon",
            "tvUpiLetter",
            "tvUpiName"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 45
    iput-object p2, p0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->flUpiIconContainer:Landroid/widget/FrameLayout;

    .line 46
    iput-object p3, p0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->ivSelected:Landroid/widget/ImageView;

    .line 47
    iput-object p4, p0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->ivUpiIcon:Landroid/widget/ImageView;

    .line 48
    iput-object p5, p0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->tvUpiLetter:Landroid/widget/TextView;

    .line 49
    iput-object p6, p0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->tvUpiName:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ItemUpiAppBinding;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 79
    sget v0, Lcom/laborbook/keep/R$id;->fl_upi_icon_container:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 85
    sget v0, Lcom/laborbook/keep/R$id;->iv_selected:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 91
    sget v0, Lcom/laborbook/keep/R$id;->iv_upi_icon:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 97
    sget v0, Lcom/laborbook/keep/R$id;->tv_upi_letter:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 103
    sget v0, Lcom/laborbook/keep/R$id;->tv_upi_name:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v8, :cond_0

    .line 109
    new-instance v0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/ItemUpiAppBinding;
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
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemUpiAppBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemUpiAppBinding;
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
    sget v0, Lcom/laborbook/keep/R$layout;->item_upi_app:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ItemUpiAppBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

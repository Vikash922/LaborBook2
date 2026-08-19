.class public final Lcom/laborbook/keep/databinding/ItemContactListBinding;
.super Ljava/lang/Object;
.source "ItemContactListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivLock:Landroid/widget/ImageView;

.field public final llContacts:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvInitial:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvName:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvNumber:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V
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
            "itemRoot",
            "ivLock",
            "llContacts",
            "tvInitial",
            "tvName",
            "tvNumber"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p2, p0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    iput-object p3, p0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->ivLock:Landroid/widget/ImageView;

    .line 50
    iput-object p4, p0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->llContacts:Landroid/widget/LinearLayout;

    .line 51
    iput-object p5, p0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvInitial:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 52
    iput-object p6, p0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvName:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 53
    iput-object p7, p0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvNumber:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ItemContactListBinding;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 83
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 85
    sget v0, Lcom/laborbook/keep/R$id;->iv_lock:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 91
    sget v0, Lcom/laborbook/keep/R$id;->ll_contacts:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 97
    sget v0, Lcom/laborbook/keep/R$id;->tv_initial:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v5, :cond_0

    .line 103
    sget v0, Lcom/laborbook/keep/R$id;->tv_name:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v6, :cond_0

    .line 109
    sget v0, Lcom/laborbook/keep/R$id;->tv_number:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v7, :cond_0

    .line 115
    new-instance p0, Lcom/laborbook/keep/databinding/ItemContactListBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v7}, Lcom/laborbook/keep/databinding/ItemContactListBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V

    return-object p0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/ItemContactListBinding;
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

    .line 64
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/ItemContactListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemContactListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemContactListBinding;
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

    .line 70
    sget v0, Lcom/laborbook/keep/R$layout;->item_contact_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/ItemContactListBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ItemContactListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/ItemContactListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

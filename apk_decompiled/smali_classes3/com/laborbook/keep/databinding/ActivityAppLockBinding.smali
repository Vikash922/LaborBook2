.class public final Lcom/laborbook/keep/databinding/ActivityAppLockBinding;
.super Ljava/lang/Object;
.source "ActivityAppLockBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivLockIcon:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvLockMessage:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

.field public final tvLockTitle:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;)V
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
            "ivLockIcon",
            "tvLockMessage",
            "tvLockTitle"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    iput-object p2, p0, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->ivLockIcon:Landroid/widget/ImageView;

    .line 37
    iput-object p3, p0, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->tvLockMessage:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    .line 38
    iput-object p4, p0, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->tvLockTitle:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ActivityAppLockBinding;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 68
    sget v0, Lcom/laborbook/keep/R$id;->iv_lock_icon:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 74
    sget v0, Lcom/laborbook/keep/R$id;->tv_lock_message:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v2, :cond_0

    .line 80
    sget v0, Lcom/laborbook/keep/R$id;->tv_lock_title:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;)V

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/ActivityAppLockBinding;
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

    .line 49
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ActivityAppLockBinding;
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

    .line 55
    sget v0, Lcom/laborbook/keep/R$layout;->activity_app_lock:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

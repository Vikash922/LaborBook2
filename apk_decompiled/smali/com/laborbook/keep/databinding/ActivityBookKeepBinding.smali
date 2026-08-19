.class public final Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;
.super Ljava/lang/Object;
.source "ActivityBookKeepBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adContainer:Landroid/widget/FrameLayout;

.field public final adView:Lcom/google/android/gms/ads/AdView;

.field public final adsBarrier:Landroidx/constraintlayout/widget/Barrier;

.field public final adsShadow:Landroid/view/View;

.field public final bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public final container:Landroidx/fragment/app/FragmentContainerView;

.field public final customAdView:Lcom/laborbook/base/ads/CustomAdView;

.field public final main:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final shadow:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Lcom/google/android/gms/ads/AdView;Landroidx/constraintlayout/widget/Barrier;Landroid/view/View;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroidx/fragment/app/FragmentContainerView;Lcom/laborbook/base/ads/CustomAdView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V
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
            "adContainer",
            "adView",
            "adsBarrier",
            "adsShadow",
            "bottomNav",
            "container",
            "customAdView",
            "main",
            "shadow"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    iput-object p2, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adContainer:Landroid/widget/FrameLayout;

    .line 61
    iput-object p3, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adView:Lcom/google/android/gms/ads/AdView;

    .line 62
    iput-object p4, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adsBarrier:Landroidx/constraintlayout/widget/Barrier;

    .line 63
    iput-object p5, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adsShadow:Landroid/view/View;

    .line 64
    iput-object p6, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 65
    iput-object p7, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->container:Landroidx/fragment/app/FragmentContainerView;

    .line 66
    iput-object p8, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->customAdView:Lcom/laborbook/base/ads/CustomAdView;

    .line 67
    iput-object p9, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->main:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    iput-object p10, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->shadow:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 98
    sget v0, Lcom/laborbook/keep/R$id;->ad_container:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 104
    sget v0, Lcom/laborbook/keep/R$id;->adView:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/ads/AdView;

    if-eqz v5, :cond_0

    .line 110
    sget v0, Lcom/laborbook/keep/R$id;->ads_barrier:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v6, :cond_0

    .line 116
    sget v0, Lcom/laborbook/keep/R$id;->ads_shadow:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 122
    sget v0, Lcom/laborbook/keep/R$id;->bottom_nav:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v8, :cond_0

    .line 128
    sget v0, Lcom/laborbook/keep/R$id;->container:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v9, :cond_0

    .line 134
    sget v0, Lcom/laborbook/keep/R$id;->customAdView:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/laborbook/base/ads/CustomAdView;

    if-eqz v10, :cond_0

    .line 140
    move-object v11, p0

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 142
    sget v0, Lcom/laborbook/keep/R$id;->shadow:I

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 148
    new-instance p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-object v2, p0

    move-object v3, v11

    invoke-direct/range {v2 .. v12}, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Lcom/google/android/gms/ads/AdView;Landroidx/constraintlayout/widget/Barrier;Landroid/view/View;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroidx/fragment/app/FragmentContainerView;Lcom/laborbook/base/ads/CustomAdView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V

    return-object p0

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;
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

    .line 79
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;
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

    .line 85
    sget v0, Lcom/laborbook/keep/R$layout;->activity_book_keep:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

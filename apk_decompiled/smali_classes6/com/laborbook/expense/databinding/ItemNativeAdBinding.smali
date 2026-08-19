.class public final Lcom/laborbook/expense/databinding/ItemNativeAdBinding;
.super Ljava/lang/Object;
.source "ItemNativeAdBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adBody:Landroid/widget/TextView;

.field public final adCallToAction:Landroid/widget/Button;

.field public final adHeadline:Landroid/widget/TextView;

.field public final adIcon:Landroid/widget/ImageView;

.field public final adImageBarrier:Landroidx/constraintlayout/widget/Barrier;

.field public final adLabel:Landroid/widget/TextView;

.field public final adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

.field public final adTextContainer:Landroid/widget/LinearLayout;

.field public final divider:Landroid/view/View;

.field private final rootView:Lcom/google/android/gms/ads/nativead/NativeAdView;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAdView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/TextView;Lcom/google/android/gms/ads/nativead/MediaView;Landroid/widget/LinearLayout;Landroid/view/View;)V
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
            "adBody",
            "adCallToAction",
            "adHeadline",
            "adIcon",
            "adImageBarrier",
            "adLabel",
            "adMedia",
            "adTextContainer",
            "divider"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->rootView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 59
    iput-object p2, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    .line 60
    iput-object p3, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    .line 61
    iput-object p4, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    .line 62
    iput-object p5, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    .line 63
    iput-object p6, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adImageBarrier:Landroidx/constraintlayout/widget/Barrier;

    .line 64
    iput-object p7, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adLabel:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 66
    iput-object p9, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adTextContainer:Landroid/widget/LinearLayout;

    .line 67
    iput-object p10, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->divider:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/ItemNativeAdBinding;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 97
    sget v0, Lcom/laborbook/expense/R$id;->ad_body:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 103
    sget v0, Lcom/laborbook/expense/R$id;->ad_call_to_action:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 109
    sget v0, Lcom/laborbook/expense/R$id;->ad_headline:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 115
    sget v0, Lcom/laborbook/expense/R$id;->ad_icon:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 121
    sget v0, Lcom/laborbook/expense/R$id;->ad_image_barrier:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_0

    .line 127
    sget v0, Lcom/laborbook/expense/R$id;->ad_label:I

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 133
    sget v0, Lcom/laborbook/expense/R$id;->ad_media:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/ads/nativead/MediaView;

    if-eqz v10, :cond_0

    .line 139
    sget v0, Lcom/laborbook/expense/R$id;->ad_text_container:I

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 145
    sget v0, Lcom/laborbook/expense/R$id;->divider:I

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 151
    new-instance v0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;-><init>(Lcom/google/android/gms/ads/nativead/NativeAdView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/TextView;Lcom/google/android/gms/ads/nativead/MediaView;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/expense/databinding/ItemNativeAdBinding;
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

    .line 78
    invoke-static {p0, v0, v1}, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/ItemNativeAdBinding;
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

    .line 84
    sget v0, Lcom/laborbook/expense/R$layout;->item_native_ad:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->rootView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-object v0
.end method

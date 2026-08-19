.class public final Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContactItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactItemAdapter.kt\ncom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,561:1\n1#2:562\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001a\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\u0013\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/laborbook/keep/databinding/ItemNativeAdBinding;",
        "adUnitId",
        "",
        "adapter",
        "Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;",
        "<init>",
        "(Lcom/laborbook/keep/databinding/ItemNativeAdBinding;Ljava/lang/String;Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)V",
        "currentNativeAd",
        "Lcom/google/android/gms/ads/nativead/NativeAd;",
        "adKey",
        "viewStartTime",
        "",
        "bind",
        "",
        "nativeAd",
        "key",
        "unregisterAd",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private adKey:Ljava/lang/String;

.field private final adUnitId:Ljava/lang/String;

.field private final adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

.field private final binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

.field private currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

.field private viewStartTime:J


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/databinding/ItemNativeAdBinding;Ljava/lang/String;Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    .line 73
    iput-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adUnitId:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;)V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    invoke-virtual {v0}, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.gms.ads.nativead.NativeAdView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x8

    if-nez p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 89
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    invoke-virtual {p1, p2, v1, v2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->recordAdHidden(Ljava/lang/String;J)V

    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    invoke-virtual {v4}, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 97
    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    invoke-virtual {v4, p2, v1, v2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->shouldRefreshAdByViewTime(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->refreshAdByKey(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    .line 107
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    invoke-virtual {p1, p2, v1, v2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->recordAdVisible(Ljava/lang/String;J)V

    :cond_3
    return-void

    .line 112
    :cond_4
    iput-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 114
    iput-wide v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->viewStartTime:J

    if-eqz p2, :cond_5

    .line 115
    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    invoke-virtual {v4, p2, v1, v2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->recordAdVisible(Ljava/lang/String;J)V

    .line 118
    :cond_5
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 119
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 120
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 121
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 122
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    .line 126
    :cond_6
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    invoke-virtual {p2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 129
    :cond_7
    :goto_0
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    .line 134
    :cond_8
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 137
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_a

    goto :goto_4

    .line 142
    :cond_a
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 145
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 150
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/ads/nativead/MediaView;->setVisibility(I)V

    goto :goto_7

    .line 153
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 154
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p2, v5}, Lcom/google/android/gms/ads/nativead/MediaView;->setVisibility(I)V

    goto :goto_7

    .line 157
    :cond_e
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/ads/nativead/MediaView;->setVisibility(I)V

    .line 162
    :goto_7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public final unregisterAd()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->recordAdHidden(Ljava/lang/String;J)V

    :cond_0
    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 172
    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    return-void
.end method

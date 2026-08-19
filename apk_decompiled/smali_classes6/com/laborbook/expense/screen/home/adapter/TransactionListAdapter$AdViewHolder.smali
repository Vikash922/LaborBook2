.class public final Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TransactionListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionListAdapter.kt\ncom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,515:1\n1#2:516\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u0010\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/laborbook/expense/databinding/ItemNativeAdBinding;",
        "adapter",
        "Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;",
        "<init>",
        "(Lcom/laborbook/expense/databinding/ItemNativeAdBinding;Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)V",
        "currentNativeAd",
        "Lcom/google/android/gms/ads/nativead/NativeAd;",
        "adKey",
        "",
        "bind",
        "",
        "nativeAd",
        "key",
        "unregisterAd",
        "expense_release"
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

.field private final adapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

.field private final binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

.field private currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;


# direct methods
.method public constructor <init>(Lcom/laborbook/expense/databinding/ItemNativeAdBinding;Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 218
    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    .line 219
    iput-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;)V
    .locals 6

    .line 226
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    invoke-virtual {v0}, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.gms.ads.nativead.NativeAdView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x8

    if-nez p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    invoke-virtual {p1}, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 231
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    invoke-virtual {p1, p2, v1, v2}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->recordAdHidden(Ljava/lang/String;J)V

    :cond_0
    return-void

    .line 235
    :cond_1
    iget-object v4, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    invoke-virtual {v4}, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 239
    iget-object v4, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    invoke-virtual {v4, p2, v1, v2}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->shouldRefreshAdByViewTime(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    iget-object v4, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    invoke-virtual {p1, p2}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->refreshAdByKey(Ljava/lang/String;)V

    return-void

    .line 247
    :cond_2
    iget-object v4, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    .line 248
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    invoke-virtual {p1, p2, v1, v2}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->recordAdVisible(Ljava/lang/String;J)V

    :cond_3
    return-void

    .line 253
    :cond_4
    iput-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    .line 254
    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz p2, :cond_5

    .line 255
    iget-object v4, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    invoke-virtual {v4, p2, v1, v2}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->recordAdVisible(Ljava/lang/String;J)V

    .line 258
    :cond_5
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 259
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 260
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 261
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 262
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    .line 265
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    .line 266
    :cond_6
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    invoke-virtual {p2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 269
    :cond_7
    :goto_0
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    .line 274
    :cond_8
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 277
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_a

    goto :goto_4

    .line 282
    :cond_a
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 285
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 290
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

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

    .line 291
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/ads/nativead/MediaView;->setVisibility(I)V

    goto :goto_7

    .line 293
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 294
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p2, v5}, Lcom/google/android/gms/ads/nativead/MediaView;->setVisibility(I)V

    goto :goto_7

    .line 297
    :cond_e
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/ads/nativead/MediaView;->setVisibility(I)V

    .line 302
    :goto_7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public final unregisterAd()V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->recordAdHidden(Ljava/lang/String;J)V

    :cond_0
    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 308
    iput-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    return-void
.end method

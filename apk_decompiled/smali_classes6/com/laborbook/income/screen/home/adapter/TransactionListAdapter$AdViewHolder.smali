.class public final Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TransactionListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionListAdapter.kt\ncom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n1#2:544\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u0010\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/laborbook/income/databinding/ItemNativeAdBinding;",
        "adapter",
        "Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;",
        "<init>",
        "(Lcom/laborbook/income/databinding/ItemNativeAdBinding;Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;)V",
        "currentNativeAd",
        "Lcom/google/android/gms/ads/nativead/NativeAd;",
        "adKey",
        "",
        "bind",
        "",
        "nativeAd",
        "key",
        "unregisterAd",
        "income_release"
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

.field private final adapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

.field private final binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

.field private currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;


# direct methods
.method public constructor <init>(Lcom/laborbook/income/databinding/ItemNativeAdBinding;Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 244
    iput-object p1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    .line 245
    iput-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;)V
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    invoke-virtual {v0}, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.gms.ads.nativead.NativeAdView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x8

    if-nez p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    invoke-virtual {p1}, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 257
    iget-object p1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    invoke-virtual {p1, p2, v1, v2}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->recordAdHidden(Ljava/lang/String;J)V

    :cond_0
    return-void

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    invoke-virtual {v4}, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->getRoot()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 265
    iget-object v4, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    invoke-virtual {v4, p2, v1, v2}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->shouldRefreshAdByViewTime(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    iget-object v4, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    iget-object p1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    invoke-virtual {p1, p2}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->refreshAdByKey(Ljava/lang/String;)V

    return-void

    .line 273
    :cond_2
    iget-object v4, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    .line 274
    iget-object p1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    invoke-virtual {p1, p2, v1, v2}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->recordAdVisible(Ljava/lang/String;J)V

    :cond_3
    return-void

    .line 279
    :cond_4
    iput-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    .line 280
    iput-object p1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz p2, :cond_5

    .line 281
    iget-object v4, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    invoke-virtual {v4, p2, v1, v2}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->recordAdVisible(Ljava/lang/String;J)V

    .line 284
    :cond_5
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 285
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 286
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 287
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 288
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    .line 291
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    .line 292
    :cond_6
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    invoke-virtual {p2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 295
    :cond_7
    :goto_0
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adCallToAction:Landroid/widget/Button;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    .line 300
    :cond_8
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 303
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adHeadline:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_a

    goto :goto_4

    .line 308
    :cond_a
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 311
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adBody:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 316
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

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

    .line 317
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/ads/nativead/MediaView;->setVisibility(I)V

    goto :goto_7

    .line 319
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 320
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p2, v5}, Lcom/google/android/gms/ads/nativead/MediaView;->setVisibility(I)V

    goto :goto_7

    .line 323
    :cond_e
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->binding:Lcom/laborbook/income/databinding/ItemNativeAdBinding;

    iget-object p2, p2, Lcom/laborbook/income/databinding/ItemNativeAdBinding;->adMedia:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/ads/nativead/MediaView;->setVisibility(I)V

    .line 328
    :goto_7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public final unregisterAd()V
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->recordAdHidden(Ljava/lang/String;J)V

    :cond_0
    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->currentNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 334
    iput-object v0, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$AdViewHolder;->adKey:Ljava/lang/String;

    return-void
.end method

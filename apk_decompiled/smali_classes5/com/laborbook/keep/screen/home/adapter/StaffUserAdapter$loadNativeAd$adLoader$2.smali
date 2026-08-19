.class public final Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "StaffUserAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->loadNativeAd(IILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2",
        "Lcom/google/android/gms/ads/AdListener;",
        "onAdFailedToLoad",
        "",
        "loadAdError",
        "Lcom/google/android/gms/ads/LoadAdError;",
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
.field final synthetic $adKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    iput-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->$adKey:Ljava/lang/String;

    .line 329
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    const-string v0, "loadAdError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdRetryCount$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->$adKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    invoke-static {v1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdRetryCount$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->$adKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 337
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdPositions$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->$adKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 338
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getNativeAds$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->$adKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdRetryCount$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->$adKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 342
    :cond_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdPositions$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;->$adKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :goto_1
    return-void
.end method

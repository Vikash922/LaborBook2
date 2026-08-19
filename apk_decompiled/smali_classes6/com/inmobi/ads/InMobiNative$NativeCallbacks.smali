.class public final Lcom/inmobi/ads/InMobiNative$NativeCallbacks;
.super Lcom/inmobi/media/h8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeCallbacks"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0005\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u000cJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0008J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u000cJ\u000f\u0010\u0015\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0008J#\u0010\u0019\u001a\u00020\u00062\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0008J\u000f\u0010\u001c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0008J\u000f\u0010\u001d\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0008J\u000f\u0010\u001e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0008J\u0017\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008(\u0010\u0010J\u0019\u0010+\u001a\u00020\u00062\u0008\u0010*\u001a\u0004\u0018\u00010)H\u0016\u00a2\u0006\u0004\u0008+\u0010,R\u0016\u0010/\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u00103\u001a\u0002008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102\u00a8\u00064"
    }
    d2 = {
        "Lcom/inmobi/ads/InMobiNative$NativeCallbacks;",
        "Lcom/inmobi/media/h8;",
        "Lcom/inmobi/ads/InMobiNative;",
        "inMobiNative",
        "<init>",
        "(Lcom/inmobi/ads/InMobiNative;)V",
        "",
        "resetHasGivenCallbackFlag",
        "()V",
        "Lcom/inmobi/ads/AdMetaInfo;",
        "info",
        "onAdFetchSuccessful",
        "(Lcom/inmobi/ads/AdMetaInfo;)V",
        "Lcom/inmobi/ads/InMobiAdRequestStatus;",
        "status",
        "onAdFetchFailed",
        "(Lcom/inmobi/ads/InMobiAdRequestStatus;)V",
        "onAdLoadSucceeded",
        "onAdLoadFailed",
        "onAdWillDisplay",
        "onAdDisplayed",
        "onAdDismissed",
        "",
        "",
        "params",
        "onAdClicked",
        "(Ljava/util/Map;)V",
        "onUserLeftApplication",
        "onAdImpressed",
        "onVideoCompleted",
        "onVideoSkipped",
        "",
        "isMuted",
        "onAudioStateChanged",
        "(Z)V",
        "",
        "request",
        "onRequestPayloadCreated",
        "([B)V",
        "reason",
        "onRequestPayloadCreationFailed",
        "Lcom/inmobi/media/rc;",
        "telemetryOnAdImpression",
        "onAdImpression",
        "(Lcom/inmobi/media/rc;)V",
        "b",
        "Z",
        "mHasGivenCallback",
        "",
        "getType",
        "()B",
        "type",
        "media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiNative;)V
    .locals 1

    const-string v0, "inMobiNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/media/h8;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;->b:Z

    return-void
.end method


# virtual methods
.method public getType()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAdClicked(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/ads/InMobiNative;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access$getTAG$cp(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v0, p1, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/v7;

    .line 6
    const-string v1, "ad"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, v0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/ads/listeners/NativeAdEventListener;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/listeners/NativeAdEventListener;->onAdClicked(Lcom/inmobi/ads/InMobiNative;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/inmobi/media/v7;

    .line 6
    const-string v2, "ad"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v1, v1, Lcom/inmobi/media/v7;->a:Lcom/inmobi/ads/listeners/NativeAdEventListener;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/listeners/NativeAdEventListener;->onAdFullScreenDismissed(Lcom/inmobi/ads/InMobiNative;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/ads/InMobiNative;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access$getTAG$cp(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v0, p1, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/v7;

    .line 6
    const-string v1, "ad"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, v0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/ads/listeners/NativeAdEventListener;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/listeners/NativeAdEventListener;->onAdFullScreenDisplayed(Lcom/inmobi/ads/InMobiNative;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdFetchFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;->onAdLoadFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    return-void
.end method

.method public onAdFetchSuccessful(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access$getTAG$cp(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v0, p1, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/media/z;->a(Ljava/lang/Object;Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdImpressed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/inmobi/media/v7;

    .line 6
    const-string v2, "ad"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v1, v1, Lcom/inmobi/media/v7;->a:Lcom/inmobi/ads/listeners/NativeAdEventListener;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/listeners/NativeAdEventListener;->onAdImpressed(Lcom/inmobi/ads/InMobiNative;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdImpression(Lcom/inmobi/media/rc;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/inmobi/media/rc;->c()V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1, v0}, Lcom/inmobi/media/z;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/inmobi/media/rc;->d()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access$getTAG$cp(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v1, p1, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v2, p0, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;->b:Z

    if-nez v2, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;->b:Z

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/media/z;->a(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access$getTAG$cp(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v1, p1, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v2, p0, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;->b:Z

    if-nez v2, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;->b:Z

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/media/z;->b(Ljava/lang/Object;Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdWillDisplay()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$getMLockScreenListener$p(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$LockScreenListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiNative$LockScreenListener;->onActionRequired(Lcom/inmobi/ads/InMobiNative;)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/inmobi/media/v7;

    .line 7
    const-string v2, "ad"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v1, v1, Lcom/inmobi/media/v7;->a:Lcom/inmobi/ads/listeners/NativeAdEventListener;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/listeners/NativeAdEventListener;->onAdFullScreenWillDisplay(Lcom/inmobi/ads/InMobiNative;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAudioStateChanged(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access$getTAG$cp(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v0, p1, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$getMVideoEventListener$p(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/listeners/VideoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/ads/listeners/VideoEventListener;->onAudioStateChanged(Lcom/inmobi/ads/InMobiNative;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPayloadCreated([B)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access$getTAG$cp(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v0, p1, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/v7;

    .line 6
    iget-object v0, v0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/ads/listeners/NativeAdEventListener;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/listeners/AdEventListener;->onRequestPayloadCreated([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPayloadCreationFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access$getTAG$cp(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v0, p1, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/v7;

    .line 6
    const-string v1, "status"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, v0, Lcom/inmobi/media/v7;->a:Lcom/inmobi/ads/listeners/NativeAdEventListener;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/listeners/AdEventListener;->onRequestPayloadCreationFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserLeftApplication()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$getMLockScreenListener$p(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$LockScreenListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiNative$LockScreenListener;->onActionRequired(Lcom/inmobi/ads/InMobiNative;)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->getMPubListener()Lcom/inmobi/media/u7;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/inmobi/media/v7;

    .line 7
    const-string v2, "ad"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v1, v1, Lcom/inmobi/media/v7;->a:Lcom/inmobi/ads/listeners/NativeAdEventListener;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/listeners/NativeAdEventListener;->onUserWillLeaveApplication(Lcom/inmobi/ads/InMobiNative;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVideoCompleted()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$getMVideoEventListener$p(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/listeners/VideoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/listeners/VideoEventListener;->onVideoCompleted(Lcom/inmobi/ads/InMobiNative;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoSkipped()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h8;->getNativeRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "Lost reference to InMobiNative! callback cannot be given"

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$getMVideoEventListener$p(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/listeners/VideoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/listeners/VideoEventListener;->onVideoSkipped(Lcom/inmobi/ads/InMobiNative;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resetHasGivenCallbackFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;->b:Z

    return-void
.end method

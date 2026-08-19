.class public final Lcom/inmobi/ads/InMobiNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiNative$Companion;,
        Lcom/inmobi/ads/InMobiNative$LockScreenListener;,
        Lcom/inmobi/ads/InMobiNative$NativeCallbacks;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0007\n\u0002\u0008\n\u0018\u0000 V2\u00020\u0001:\u0003VWXB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\r\u0010\u0018\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0018\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001f\u0010\u0015J\r\u0010 \u001a\u00020\u000c\u00a2\u0006\u0004\u0008 \u0010\u0015J\r\u0010!\u001a\u00020\u000c\u00a2\u0006\u0004\u0008!\u0010\u0015J5\u0010(\u001a\u0004\u0018\u00010\"2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010#\u001a\u0004\u0018\u00010\"2\u0008\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008(\u0010)J\r\u0010*\u001a\u00020\u000c\u00a2\u0006\u0004\u0008*\u0010\u0015J\r\u0010+\u001a\u00020\n\u00a2\u0006\u0004\u0008+\u0010,J#\u00100\u001a\u00020\u000c2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020.\u0018\u00010-\u00a2\u0006\u0004\u00080\u00101J\u0017\u00103\u001a\u00020\u000c2\u0008\u00102\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u00083\u00104J\u0017\u00106\u001a\u00020\u000c2\u0008\u00105\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u00086\u00104J\r\u00107\u001a\u00020\u000c\u00a2\u0006\u0004\u00087\u0010\u0015R$\u0010?\u001a\u0004\u0018\u0001088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u0013\u0010C\u001a\u0004\u0018\u00010@8F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010BR\u0013\u0010F\u001a\u0004\u0018\u00010.8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER\u0013\u0010H\u001a\u0004\u0018\u00010.8F\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010ER\u0013\u0010J\u001a\u0004\u0018\u00010.8F\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010ER\u0013\u0010L\u001a\u0004\u0018\u00010.8F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010ER\u0013\u0010N\u001a\u0004\u0018\u00010.8F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010ER\u0011\u0010R\u001a\u00020O8F\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010QR\u0011\u0010S\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010,R\u0013\u0010T\u001a\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010U\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/inmobi/ads/InMobiNative;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "placementId",
        "Lcom/inmobi/ads/listeners/NativeAdEventListener;",
        "listener",
        "<init>",
        "(Landroid/content/Context;JLcom/inmobi/ads/listeners/NativeAdEventListener;)V",
        "",
        "mPrimaryViewReturned",
        "",
        "setPrimaryViewReturned",
        "(Z)V",
        "setListener",
        "(Lcom/inmobi/ads/listeners/NativeAdEventListener;)V",
        "Lcom/inmobi/ads/listeners/VideoEventListener;",
        "setVideoEventListener",
        "(Lcom/inmobi/ads/listeners/VideoEventListener;)V",
        "getSignals",
        "()V",
        "",
        "response",
        "load",
        "([B)V",
        "(Landroid/content/Context;)V",
        "Lcom/inmobi/ads/InMobiNative$LockScreenListener;",
        "lockScreenListener",
        "showOnLockScreen",
        "(Lcom/inmobi/ads/InMobiNative$LockScreenListener;)V",
        "takeAction",
        "pause",
        "resume",
        "Landroid/view/View;",
        "convertView",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewWidthInPixels",
        "getPrimaryViewOfWidth",
        "(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;",
        "reportAdClickAndOpenLandingPage",
        "isReady",
        "()Z",
        "",
        "",
        "extras",
        "setExtras",
        "(Ljava/util/Map;)V",
        "keywords",
        "setKeywords",
        "(Ljava/lang/String;)V",
        "contentUrl",
        "setContentUrl",
        "destroy",
        "Lcom/inmobi/media/u7;",
        "c",
        "Lcom/inmobi/media/u7;",
        "getMPubListener",
        "()Lcom/inmobi/media/u7;",
        "setMPubListener",
        "(Lcom/inmobi/media/u7;)V",
        "mPubListener",
        "Lorg/json/JSONObject;",
        "getCustomAdContent",
        "()Lorg/json/JSONObject;",
        "customAdContent",
        "getAdTitle",
        "()Ljava/lang/String;",
        "adTitle",
        "getAdDescription",
        "adDescription",
        "getAdIconUrl",
        "adIconUrl",
        "getAdLandingPageUrl",
        "adLandingPageUrl",
        "getAdCtaText",
        "adCtaText",
        "",
        "getAdRating",
        "()F",
        "adRating",
        "isAppDownload",
        "isVideo",
        "()Ljava/lang/Boolean;",
        "Companion",
        "LockScreenListener",
        "NativeCallbacks",
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


# static fields
.field public static final Companion:Lcom/inmobi/ads/InMobiNative$Companion;

.field public static final j:Ljava/lang/String;


# instance fields
.field public final a:Lcom/inmobi/media/v8;

.field public final b:Lcom/inmobi/ads/InMobiNative$NativeCallbacks;

.field public c:Lcom/inmobi/media/u7;

.field public d:Lcom/inmobi/ads/listeners/VideoEventListener;

.field public e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public final g:Lcom/inmobi/media/Y9;

.field public h:Ljava/lang/ref/WeakReference;

.field public i:Lcom/inmobi/ads/InMobiNative$LockScreenListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/inmobi/ads/InMobiNative$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiNative$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/inmobi/ads/InMobiNative;->Companion:Lcom/inmobi/ads/InMobiNative$Companion;

    .line 1
    const-string v0, "InMobiNative"

    sput-object v0, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/listeners/NativeAdEventListener;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/inmobi/media/Y9;

    invoke-direct {v0}, Lcom/inmobi/media/Y9;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->g:Lcom/inmobi/media/Y9;

    .line 32
    invoke-static {}, Lcom/inmobi/media/Kb;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iput-wide p2, v0, Lcom/inmobi/media/Y9;->a:J

    .line 34
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    .line 35
    new-instance p1, Lcom/inmobi/media/v7;

    invoke-direct {p1, p4}, Lcom/inmobi/media/v7;-><init>(Lcom/inmobi/ads/listeners/NativeAdEventListener;)V

    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->c:Lcom/inmobi/media/u7;

    .line 36
    new-instance p1, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;

    invoke-direct {p1, p0}, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->b:Lcom/inmobi/ads/InMobiNative$NativeCallbacks;

    .line 37
    new-instance p2, Lcom/inmobi/media/v8;

    invoke-direct {p2, p1}, Lcom/inmobi/media/v8;-><init>(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    iput-object p2, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    return-void

    .line 39
    :cond_0
    new-instance p1, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;

    sget-object p2, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string p3, "TAG"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getMLockScreenListener$p(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$LockScreenListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/inmobi/ads/InMobiNative;->i:Lcom/inmobi/ads/InMobiNative$LockScreenListener;

    return-object p0
.end method

.method public static final synthetic access$getMVideoEventListener$p(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/listeners/VideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/inmobi/ads/InMobiNative;->d:Lcom/inmobi/ads/listeners/VideoEventListener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Z)Z
    .locals 2

    const-string v0, "TAG"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/inmobi/ads/InMobiNative;->c:Lcom/inmobi/media/u7;

    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Listener supplied is null, your call is ignored."

    invoke-static {v1, p1, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    sget-object p1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Context supplied is null, your call is ignored."

    invoke-static {v1, p1, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method public final destroy()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->e:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->x()V

    .line 6
    iput-object v1, p0, Lcom/inmobi/ads/InMobiNative;->c:Lcom/inmobi/media/u7;

    .line 7
    iput-object v1, p0, Lcom/inmobi/ads/InMobiNative;->d:Lcom/inmobi/ads/listeners/VideoEventListener;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiNative;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "Failed to destroy ad; SDK encountered an unexpected error"

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 12
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_1
    return-void
.end method

.method public final getAdCtaText()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->y()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "Could not get the ctaText; SDK encountered unexpected error"

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 5
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdDescription()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->z()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 6
    const-string v3, "Could not get the description; SDK encountered unexpected error"

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 12
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdIconUrl()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->A()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "Could not get the iconUrl; SDK encountered unexpected error"

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 5
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdLandingPageUrl()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->B()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 6
    const-string v3, "Could not get the adLandingPageUrl; SDK encountered unexpected error"

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 12
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdRating()F
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->C()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 4
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 6
    const-string v0, "InMobi"

    const-string v1, "Could not get rating; SDK encountered an unexpected error"

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final getAdTitle()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->D()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "Could not get the ad title; SDK encountered unexpected error"

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 5
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCustomAdContent()Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->E()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 5
    const-string v3, "Could not get the ad customJson ; SDK encountered unexpected error"

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 10
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMPubListener()Lcom/inmobi/media/u7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->c:Lcom/inmobi/media/u7;

    return-object v0
.end method

.method public final getPrimaryViewOfWidth(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    const-string v0, "TAG"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    sget-object p1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "View can not be rendered using null context"

    invoke-static {v1, p1, p2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v3}, Lcom/inmobi/media/v8;->j()Lcom/inmobi/media/Q0;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v3}, Lcom/inmobi/media/v8;->j()Lcom/inmobi/media/Q0;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/C7;

    :goto_0
    if-nez v3, :cond_2

    .line 8
    sget-object p1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    const-string p2, "InMobiNative is not initialized. Ignoring InMobiNative.getPrimaryView()"

    .line 10
    invoke-static {v1, p1, p2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 17
    :cond_2
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v3, p1}, Lcom/inmobi/media/C7;->a(Landroid/content/Context;)V

    .line 19
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p2, p3, p4}, Lcom/inmobi/media/C7;->a(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->e:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_3

    .line 22
    sget-object p1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 25
    :cond_3
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiNative;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    sget-object p2, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 29
    const-string p2, "event"

    invoke-static {p1, p2}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 30
    sget-object p2, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p2, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 31
    const-string p1, "InMobi"

    const-string p2, "Could not pause ad; SDK encountered an unexpected error"

    invoke-static {v1, p1, p2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object p1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method

.method public final getSignals()V
    .locals 5
    .annotation runtime Lkotlin/Deprecated;
        message = "Use [InMobiSdk.getToken] instead."
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiNative;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->b:Lcom/inmobi/ads/InMobiNative$NativeCallbacks;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;->resetHasGivenCallbackFlag()V

    .line 4
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    iget-object v3, p0, Lcom/inmobi/ads/InMobiNative;->g:Lcom/inmobi/media/Y9;

    const-string v4, "getToken"

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/inmobi/media/v8;->a(Lcom/inmobi/media/Y9;Landroid/content/Context;ZLjava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->b:Lcom/inmobi/ads/InMobiNative$NativeCallbacks;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/Mc;->a(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    :cond_1
    return-void
.end method

.method public final isAppDownload()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->G()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 5
    const-string v3, "Could not get isAppDownload; SDK encountered unexpected error"

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 10
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->F()Z

    move-result v0

    return v0
.end method

.method public final isVideo()Ljava/lang/Boolean;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->I()Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 5
    const-string v3, "Could not get isVideo; SDK encountered unexpected error"

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 10
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final load()V
    .locals 6

    const-string v0, "TAG"

    const/4 v1, 0x1

    .line 12
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/InMobiNative;->a(Z)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->b:Lcom/inmobi/ads/InMobiNative$NativeCallbacks;

    invoke-virtual {v2}, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;->resetHasGivenCallbackFlag()V

    .line 16
    iget-boolean v2, p0, Lcom/inmobi/ads/InMobiNative;->f:Z

    if-eqz v2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    .line 18
    invoke-virtual {v2}, Lcom/inmobi/media/v8;->j()Lcom/inmobi/media/Q0;

    move-result-object v3

    .line 19
    new-instance v4, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v5, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v4, v5}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 20
    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/Mc;->a(Lcom/inmobi/media/Q0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 26
    sget-object v2, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string v3, "You can call load() on an instance of InMobiNative only once if the ad request has been successful. Ignoring InMobiNative.load()"

    .line 28
    invoke-static {v1, v2, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    .line 36
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 37
    invoke-static {v2}, Lcom/inmobi/media/N3;->b(Landroid/content/Context;)V

    .line 39
    :cond_2
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->g:Lcom/inmobi/media/Y9;

    const-string v3, "NonAB"

    iput-object v3, v2, Lcom/inmobi/media/Y9;->e:Ljava/lang/String;

    .line 40
    const-string v2, "native"

    .line 41
    iget-object v3, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    if-nez v3, :cond_3

    goto :goto_0

    .line 42
    :cond_3
    iget-object v4, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    iget-object v5, p0, Lcom/inmobi/ads/InMobiNative;->g:Lcom/inmobi/media/Y9;

    invoke-virtual {v4, v5, v3, v1, v2}, Lcom/inmobi/media/v8;->a(Lcom/inmobi/media/Y9;Landroid/content/Context;ZLjava/lang/String;)V

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v1}, Lcom/inmobi/media/v8;->J()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 45
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    const/16 v3, 0x890

    invoke-virtual {v2, v3}, Lcom/inmobi/media/Mc;->a(S)V

    .line 46
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->c:Lcom/inmobi/media/u7;

    if-eqz v2, :cond_4

    .line 47
    new-instance v3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 48
    invoke-virtual {v2, p0, v3}, Lcom/inmobi/media/z;->a(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 51
    :cond_4
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v2}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v3, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v0, "Load failed with unexpected error: "

    invoke-virtual {v2, v3, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final load(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiNative;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiNative;->load()V

    :cond_0
    return-void
.end method

.method public final load([B)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiNative;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/inmobi/media/N3;->b(Landroid/content/Context;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->g:Lcom/inmobi/media/Y9;

    const-string v1, "AB"

    iput-object v1, v0, Lcom/inmobi/media/Y9;->e:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->g:Lcom/inmobi/media/Y9;

    const/4 v3, 0x1

    const-string v4, "native"

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/inmobi/media/v8;->a(Lcom/inmobi/media/Y9;Landroid/content/Context;ZLjava/lang/String;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->b:Lcom/inmobi/ads/InMobiNative$NativeCallbacks;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative$NativeCallbacks;->resetHasGivenCallbackFlag()V

    .line 11
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->b:Lcom/inmobi/ads/InMobiNative$NativeCallbacks;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/Mc;->a([BLcom/inmobi/ads/controllers/PublisherCallbacks;)V

    :cond_2
    return-void
.end method

.method public final pause()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->K()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "Could not pause ad; SDK encountered an unexpected error"

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final reportAdClickAndOpenLandingPage()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->L()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 5
    const-string v4, "reportAdClickAndOpenLandingPage failed; SDK encountered unexpected error"

    invoke-static {v3, v1, v4}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 11
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_0
    return-void
.end method

.method public final resume()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "Could not resume ad; SDK encountered an unexpected error"

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setContentUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->g:Lcom/inmobi/media/Y9;

    iput-object p1, v0, Lcom/inmobi/media/Y9;->f:Ljava/lang/String;

    return-void
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    const-string v0, "tp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/media/Lb;->a(Ljava/lang/String;)V

    .line 2
    const-string v0, "tp-v"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/media/Lb;->b(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->g:Lcom/inmobi/media/Y9;

    iput-object p1, v0, Lcom/inmobi/media/Y9;->c:Ljava/util/Map;

    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->g:Lcom/inmobi/media/Y9;

    iput-object p1, v0, Lcom/inmobi/media/Y9;->b:Ljava/lang/String;

    return-void
.end method

.method public final setListener(Lcom/inmobi/ads/listeners/NativeAdEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/inmobi/media/v7;

    invoke-direct {v0, p1}, Lcom/inmobi/media/v7;-><init>(Lcom/inmobi/ads/listeners/NativeAdEventListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->c:Lcom/inmobi/media/u7;

    return-void
.end method

.method public final setMPubListener(Lcom/inmobi/media/u7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->c:Lcom/inmobi/media/u7;

    return-void
.end method

.method public final setPrimaryViewReturned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/ads/InMobiNative;->f:Z

    return-void
.end method

.method public final setVideoEventListener(Lcom/inmobi/ads/listeners/VideoEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->d:Lcom/inmobi/ads/listeners/VideoEventListener;

    return-void
.end method

.method public final showOnLockScreen(Lcom/inmobi/ads/InMobiNative$LockScreenListener;)V
    .locals 5

    const-string v0, "lockScreenListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "TAG"

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v0, "InMobiNative is not initialized. Provided context is null. Ignoring showOnLockScreen"

    invoke-static {v1, p1, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    iget-object v3, p0, Lcom/inmobi/ads/InMobiNative;->g:Lcom/inmobi/media/Y9;

    iget-object v4, p0, Lcom/inmobi/ads/InMobiNative;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v0, v3, v4}, Lcom/inmobi/media/v8;->a(Lcom/inmobi/media/Y9;Landroid/content/Context;)V

    .line 12
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->i:Lcom/inmobi/ads/InMobiNative$LockScreenListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    sget-object p1, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SDK encountered unexpected error in showOnLockScreen"

    invoke-static {v1, p1, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final takeAction()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->a:Lcom/inmobi/media/v8;

    invoke-virtual {v0}, Lcom/inmobi/media/v8;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->j:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "SDK encountered unexpected error in takeAction"

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

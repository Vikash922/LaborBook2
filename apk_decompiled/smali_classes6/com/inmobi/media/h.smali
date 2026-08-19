.class public Lcom/inmobi/media/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLICK_BEACON:Ljava/lang/String; = "click"

.field public static final Companion:Lcom/inmobi/media/f;

.field private static final DEFAULT_ALLOW_AUTO_REDIRECTION:Z = false

.field public static final IMPRESSION_BEACON:Ljava/lang/String; = "impression"

.field private static final INVALID_AD_EXPIRY:J = -0x1L

.field public static final LOAD_AD_TOKEN_URL:Ljava/lang/String; = "load_ad_token_url"

.field public static final LOAD_AD_TOKEN_URL_FAILURE:Ljava/lang/String; = "load_ad_token_url_failure"

.field private static final TAG:Ljava/lang/String; = "h"

.field public static final WIN_BEACON:Ljava/lang/String; = "win_beacon"


# instance fields
.field private final adAuctionMeta:Ljava/lang/String;

.field private adContent:Lorg/json/JSONObject;

.field private final adMetaInfo$delegate:Lkotlin/Lazy;

.field private adQualityControl:Lcom/inmobi/adquality/models/AdQualityControl;

.field private adType:Ljava/lang/String;

.field private final allowAutoRedirection:Z

.field private assetUrls:Lorg/json/JSONArray;

.field private final contextData:Lorg/json/JSONObject;

.field private features:Lcom/inmobi/media/q0;
    .annotation runtime Lcom/inmobi/media/H4;
    .end annotation
.end field

.field private final impressionId:Ljava/lang/String;

.field private isPreloadWebView:Z

.field private landingPageParams:Lorg/json/JSONArray;

.field private mExpiryDurationInMillis:J

.field private mInsertionTimestampInMillis:J

.field private markupType:Ljava/lang/String;

.field private final metaInfo:Lorg/json/JSONObject;

.field private pubContent:Ljava/lang/String;

.field private sf:Ljava/lang/String;

.field private final trackers:Lorg/json/JSONArray;

.field private final trackingInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inmobi/ads/core/TrackingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final transaction:Lorg/json/JSONObject;

.field private webVast:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/media/f;

    invoke-direct {v0}, Lcom/inmobi/media/f;-><init>()V

    sput-object v0, Lcom/inmobi/media/h;->Companion:Lcom/inmobi/media/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/media/h;->webVast:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/inmobi/media/h;->impressionId:Ljava/lang/String;

    .line 9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/media/h;->trackingInfo:Ljava/util/List;

    .line 10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    .line 22
    iput-object v0, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    .line 26
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/inmobi/media/h;->markupType:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/inmobi/media/g;

    invoke-direct {v0, p0}, Lcom/inmobi/media/g;-><init>(Lcom/inmobi/media/h;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/media/h;->adMetaInfo$delegate:Lkotlin/Lazy;

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/media/h;->mInsertionTimestampInMillis:J

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/media/h;Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/media/h;->webVast:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/inmobi/media/h;->impressionId:Ljava/lang/String;

    .line 88
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/media/h;->trackingInfo:Ljava/util/List;

    .line 89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    .line 101
    iput-object v0, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    .line 105
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/inmobi/media/h;->markupType:Ljava/lang/String;

    .line 157
    new-instance v0, Lcom/inmobi/media/g;

    invoke-direct {v0, p0}, Lcom/inmobi/media/g;-><init>(Lcom/inmobi/media/h;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/media/h;->adMetaInfo$delegate:Lkotlin/Lazy;

    .line 158
    invoke-static {p1, p0}, Lcom/inmobi/media/T5;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    iput-object p2, p0, Lcom/inmobi/media/h;->assetUrls:Lorg/json/JSONArray;

    return-void
.end method

.method public static synthetic B()V
    .locals 0

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    return-void
.end method

.method public static synthetic r()V
    .locals 0

    return-void
.end method

.method public static synthetic v()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->sf:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->contextData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final D()Lorg/json/JSONArray;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "trackingEvents"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final E()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->webVast:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/h;->isPreloadWebView:Z

    return v0
.end method

.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/h;->markupType:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Invalid Ad"

    const/4 v2, 0x1

    const-string v3, "TAG"

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/h;->impressionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Impression Id is Null"

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    sget-object v0, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "UnKnown MarkUp Type"

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/inmobi/media/q0;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/inmobi/media/h;->features:Lcom/inmobi/media/q0;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "buyerPrice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 30
    iget-object p1, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "transaction"

    iget-object v1, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 34
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 35
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/h;->assetUrls:Lorg/json/JSONArray;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 42
    iget-object v2, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/inmobi/media/h;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    .line 15
    iput-object p2, p0, Lcom/inmobi/media/h;->adType:Ljava/lang/String;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/inmobi/media/h;->mInsertionTimestampInMillis:J

    .line 17
    iput-wide p3, p0, Lcom/inmobi/media/h;->mExpiryDurationInMillis:J

    .line 18
    iget-object p1, p0, Lcom/inmobi/media/h;->sf:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 19
    invoke-static {p1}, Lcom/inmobi/media/y2;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 21
    new-instance p2, Lcom/inmobi/media/q0;

    invoke-direct {p2, p1}, Lcom/inmobi/media/q0;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/inmobi/media/h;->features:Lcom/inmobi/media/q0;

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/inmobi/media/h;->isPreloadWebView:Z

    return-void
.end method

.method public final a(J)Z
    .locals 7

    .line 22
    iget-wide v0, p0, Lcom/inmobi/media/h;->mExpiryDurationInMillis:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    move-wide v5, v2

    goto :goto_0

    .line 25
    :cond_0
    iget-wide v5, p0, Lcom/inmobi/media/h;->mInsertionTimestampInMillis:J

    add-long/2addr v5, v0

    :goto_0
    cmp-long v5, v5, v2

    if-nez v5, :cond_1

    .line 26
    iget-wide v0, p0, Lcom/inmobi/media/h;->mInsertionTimestampInMillis:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 27
    :cond_2
    iget-wide p1, p0, Lcom/inmobi/media/h;->mInsertionTimestampInMillis:J

    add-long v2, p1, v0

    .line 28
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v2, p1

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adAuctionMeta:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    const-string v1, "ctxHash"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "transaction"

    iget-object v1, p0, Lcom/inmobi/media/h;->transaction:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v0, Lcom/inmobi/media/d2;

    invoke-direct {v0, p1}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 7
    const-string p1, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/h;->trackers:Lorg/json/JSONArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/inmobi/media/h;->trackers:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 13
    :try_start_0
    iget-object v6, p0, Lcom/inmobi/media/h;->trackers:Lorg/json/JSONArray;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 15
    const-string v7, "url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 17
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_1

    .line 18
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    return-object v2

    .line 27
    :cond_2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_5

    :cond_3
    move-object v2, v1

    goto/16 :goto_5

    .line 28
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/h;->trackingInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_5

    .line 29
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/inmobi/media/h;->trackingInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/core/TrackingInfo;

    .line 31
    invoke-virtual {v3}, Lcom/inmobi/ads/core/TrackingInfo;->getTrackers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_1
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/ads/core/Trackers;

    .line 33
    :try_start_1
    invoke-virtual {v5}, Lcom/inmobi/ads/core/Trackers;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 34
    invoke-virtual {v5}, Lcom/inmobi/ads/core/Trackers;->getUrl()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {v5}, Lcom/inmobi/ads/core/Trackers;->getImExts()Ljava/util/List;

    move-result-object v5

    .line 99
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 101
    check-cast v7, Ljava/lang/String;

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/inmobi/ads/core/TrackingInfo;->getImBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 168
    :cond_8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 177
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move-object v2, v0

    :goto_5
    return-object v2
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final d()Lcom/inmobi/ads/AdMetaInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/h;->adMetaInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdMetaInfo;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/h;->sf:Ljava/lang/String;

    return-void
.end method

.method public final e()Lcom/inmobi/adquality/models/AdQualityControl;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/h;->adQualityControl:Lcom/inmobi/adquality/models/AdQualityControl;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/h;->webVast:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adType:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pubContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/h;->markupType:Ljava/lang/String;

    const-string v2, "inmobiJson"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->contextData:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "advertisedContent"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/h;->allowAutoRedirection:Z

    return v0
.end method

.method public final j()Ljava/lang/Long;
    .locals 4

    const-string v0, "asPlcId"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 7
    sget-object v2, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v2, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v2, Lcom/inmobi/media/d2;

    invoke-direct {v2, v0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 9
    const-string v0, "event"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, v2}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_1
    return-object v1
.end method

.method public final k()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->assetUrls:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "baseEventUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final m()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->contextData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "bidderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final n()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->contextData:Lorg/json/JSONObject;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v2, "casAdTypeId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "creativeId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->metaInfo:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "creativeType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final q()Lcom/inmobi/media/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->features:Lcom/inmobi/media/q0;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->impressionId:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/h;->metaInfo:Lorg/json/JSONObject;

    const-string v1, "DEFAULT"

    if-eqz v0, :cond_2

    .line 3
    const-string v2, "landingPageParams"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/media/h;->landingPageParams:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    const-string v0, "openMode"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "optString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->markupType:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "telemetryMetadataBlob"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h;->pubContent:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/inmobi/media/za;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/h;->assetUrls:Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    .line 9
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 11
    new-instance v6, Lcom/inmobi/media/za;

    invoke-direct {v6, v5, v4}, Lcom/inmobi/media/za;-><init>(BLjava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    sget-object v2, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v2, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v2, Lcom/inmobi/media/d2;

    invoke-direct {v2, v1}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 19
    const-string v1, "event"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v2}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_1
    return-object v0
.end method

.method public final z()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "rewards"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/h;->adContent:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "pubContent"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 3
    sget-object v4, Lcom/inmobi/media/h;->Companion:Lcom/inmobi/media/f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 9
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    move-object v1, v3

    :cond_2
    return-object v1

    :catch_0
    move-exception v0

    .line 13
    sget-object v2, Lcom/inmobi/media/h;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v2, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v2, Lcom/inmobi/media/d2;

    invoke-direct {v2, v0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 15
    const-string v0, "event"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, v2}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_3
    return-object v1
.end method

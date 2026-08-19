.class public final Lcom/inmobi/media/Zc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:B

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/inmobi/media/Zc;->a:B

    iput-object p2, p0, Lcom/inmobi/media/Zc;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "type"

    iget-byte v2, p0, Lcom/inmobi/media/Zc;->a:B
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "unknown"

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 5
    :try_start_1
    const-string v3, "static"

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 6
    const-string v3, "html"

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 7
    const-string v3, "iframe"

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "content"

    iget-object v2, p0, Lcom/inmobi/media/Zc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/inmobi/media/ad;->h:Ljava/util/List;

    const-string v1, "ad"

    const-string v2, "access$getTAG$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v1, Lcom/inmobi/media/d2;

    invoke-direct {v1, v0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 19
    const-string v0, "event"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 98
    const-string v0, ""

    return-object v0
.end method

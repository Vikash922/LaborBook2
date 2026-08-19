.class public final Lcom/inmobi/media/S2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/commons/core/configs/Config;

.field public final b:I

.field public c:Lcom/inmobi/media/N2;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/inmobi/commons/core/configs/Config;)V
    .locals 8

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/inmobi/media/S2;->b:I

    if-eqz p1, :cond_7

    const/4 v1, 0x2

    .line 5
    :try_start_0
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x130

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    const/16 v5, 0x194

    if-eq v2, v5, :cond_0

    const/16 v5, 0x1f4

    if-eq v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    iput v0, p0, Lcom/inmobi/media/S2;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "access$getTAG$cp(...)"

    const-string v5, "W2"

    if-ne v0, v4, :cond_4

    .line 8
    :try_start_1
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 9
    sget-object v0, Lcom/inmobi/commons/core/configs/Config;->Companion:Lcom/inmobi/media/C2;

    .line 10
    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p1, p2, v6, v7}, Lcom/inmobi/media/C2;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/inmobi/commons/core/configs/Config;

    move-result-object p1

    if-nez p1, :cond_3

    .line 21
    new-instance p1, Lcom/inmobi/media/N2;

    .line 23
    const-string p2, "The received config has failed backend contract."

    const/4 v0, 0x3

    .line 24
    invoke-direct {p1, v0, p2}, Lcom/inmobi/media/N2;-><init>(BLjava/lang/String;)V

    iput-object p1, p0, Lcom/inmobi/media/S2;->c:Lcom/inmobi/media/N2;

    goto :goto_1

    .line 29
    :cond_3
    iput-object p1, p0, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 32
    :goto_1
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    iget-object p1, p0, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->isValid()Z

    .line 33
    iget-object p1, p0, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->isValid()Z

    move-result p1

    if-nez p1, :cond_7

    .line 34
    new-instance p1, Lcom/inmobi/media/N2;

    .line 36
    const-string p2, "The received config has failed validation."

    .line 37
    invoke-direct {p1, v1, p2}, Lcom/inmobi/media/N2;-><init>(BLjava/lang/String;)V

    .line 42
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/inmobi/media/S2;->c:Lcom/inmobi/media/N2;

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    .line 55
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    goto :goto_2

    .line 57
    :cond_5
    new-instance p1, Lcom/inmobi/media/N2;

    .line 59
    const-string v0, "Internal error"

    const/4 v3, 0x1

    .line 60
    invoke-direct {p1, v3, v0}, Lcom/inmobi/media/N2;-><init>(BLjava/lang/String;)V

    .line 65
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/inmobi/media/S2;->c:Lcom/inmobi/media/N2;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 78
    new-instance p2, Lcom/inmobi/media/N2;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "Exception in config validation"

    .line 81
    :cond_6
    invoke-direct {p2, v1, p1}, Lcom/inmobi/media/N2;-><init>(BLjava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/inmobi/media/S2;->c:Lcom/inmobi/media/N2;

    :cond_7
    :goto_2
    return-void
.end method

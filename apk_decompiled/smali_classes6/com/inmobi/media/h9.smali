.class public abstract Lcom/inmobi/media/h9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "h9"

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/inmobi/media/mb;Ljava/net/HttpURLConnection;)Lcom/inmobi/media/qb;
    .locals 4

    .line 252
    new-instance v0, Lcom/inmobi/media/qb;

    invoke-direct {v0}, Lcom/inmobi/media/qb;-><init>()V

    .line 254
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 256
    iput-object v2, v0, Lcom/inmobi/media/qb;->d:Ljava/lang/Integer;

    .line 257
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 258
    iput-object v2, v0, Lcom/inmobi/media/qb;->b:Ljava/util/Map;

    .line 259
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    .line 260
    iput v2, v0, Lcom/inmobi/media/qb;->e:I

    .line 261
    iget-boolean p0, p0, Lcom/inmobi/media/mb;->k:Z

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/16 p0, 0xc8

    if-ne v1, p0, :cond_1

    .line 262
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string p1, "getInputStream(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/inmobi/media/h9;->a(Lcom/inmobi/media/qb;Ljava/io/InputStream;)V

    goto :goto_2

    .line 264
    :cond_1
    sget-object v2, Lcom/inmobi/media/c4;->b:Lcom/inmobi/media/b4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x190

    if-gt v2, v1, :cond_2

    const/16 v2, 0x1f4

    if-le v2, v1, :cond_2

    .line 265
    sget-object p0, Lcom/inmobi/media/c4;->i:Lcom/inmobi/media/c4;

    goto :goto_0

    :cond_2
    if-ge p0, v1, :cond_3

    const/16 p0, 0x12c

    if-le p0, v1, :cond_3

    .line 268
    sget-object p0, Lcom/inmobi/media/c4;->k:Lcom/inmobi/media/c4;

    goto :goto_0

    .line 269
    :cond_3
    sget-object p0, Lcom/inmobi/media/c4;->c:Landroid/util/SparseArray;

    .line 270
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/c4;

    if-nez p0, :cond_4

    sget-object p0, Lcom/inmobi/media/c4;->e:Lcom/inmobi/media/c4;

    .line 271
    :cond_4
    :goto_0
    sget-object v2, Lcom/inmobi/media/c4;->i:Lcom/inmobi/media/c4;

    if-ne p0, v2, :cond_6

    .line 272
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v1, "getErrorStream(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/inmobi/media/h9;->a(Lcom/inmobi/media/qb;Ljava/io/InputStream;)V

    .line 273
    iget-object p1, v0, Lcom/inmobi/media/qb;->c:[B

    invoke-static {p1}, Lcom/inmobi/media/j9;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 274
    const-string v1, "errorMessage"

    .line 276
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 278
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_5
    const/4 p1, 0x0

    .line 279
    :goto_1
    new-instance v1, Lcom/inmobi/media/i9;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 280
    iput-object v1, v0, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    goto :goto_2

    .line 281
    :cond_6
    new-instance p1, Lcom/inmobi/media/i9;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 282
    iput-object p1, v0, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    :goto_2
    return-object v0
.end method

.method public static a(Lcom/inmobi/media/mb;Lkotlin/jvm/functions/Function2;)Lcom/inmobi/media/qb;
    .locals 10

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REQUEST START, Attempt:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lcom/inmobi/media/mb;->m:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "msg"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/inmobi/media/mb;->toString()Ljava/lang/String;

    .line 65
    sget-boolean v0, Lcom/inmobi/media/p9;->a:Z

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Lcom/inmobi/media/p9;->a(Z)Lcom/inmobi/media/c4;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 67
    new-instance v6, Lcom/inmobi/media/qb;

    invoke-direct {v6}, Lcom/inmobi/media/qb;-><init>()V

    .line 69
    new-instance v7, Lcom/inmobi/media/i9;

    const-string v8, "Network not reachable currently. Please try again."

    invoke-direct {v7, v4, v8}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 70
    iput-object v7, v6, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    goto/16 :goto_8

    .line 71
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/inmobi/media/mb;->d:Ljava/util/HashMap;

    .line 72
    iget-object v6, p0, Lcom/inmobi/media/mb;->a:Ljava/lang/String;

    .line 73
    invoke-static {v6, v4}, Lcom/inmobi/media/j9;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {p0, v4}, Lcom/inmobi/media/h9;->a(Lcom/inmobi/media/mb;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    iget-boolean v6, p0, Lcom/inmobi/media/mb;->g:Z

    .line 76
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 77
    iget-object v6, p0, Lcom/inmobi/media/mb;->b:Lcom/inmobi/media/jb;

    .line 78
    sget-object v7, Lcom/inmobi/media/jb;->b:Lcom/inmobi/media/jb;

    if-ne v6, v7, :cond_1

    .line 79
    iget-object v6, p0, Lcom/inmobi/media/mb;->e:Ljava/lang/String;

    .line 80
    invoke-static {p0}, Lcom/inmobi/media/j9;->a(Lcom/inmobi/media/mb;)Z

    move-result v7

    invoke-static {v6, v4, v7}, Lcom/inmobi/media/h9;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Z)V

    .line 82
    :cond_1
    invoke-static {p0, v4}, Lcom/inmobi/media/h9;->a(Lcom/inmobi/media/mb;Ljava/net/HttpURLConnection;)Lcom/inmobi/media/qb;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    invoke-static {v4}, Lcom/inmobi/media/p9;->a(Ljava/net/HttpURLConnection;)V

    move v4, v0

    goto/16 :goto_7

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_3

    :catch_4
    move-exception v6

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_f

    :catch_5
    move-exception v6

    move-object v4, v5

    .line 105
    :goto_0
    :try_start_2
    new-instance v7, Lcom/inmobi/media/qb;

    invoke-direct {v7}, Lcom/inmobi/media/qb;-><init>()V

    .line 106
    new-instance v8, Lcom/inmobi/media/i9;

    sget-object v9, Lcom/inmobi/media/c4;->e:Lcom/inmobi/media/c4;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 107
    iput-object v8, v7, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    goto :goto_5

    :catch_6
    move-exception v6

    move-object v4, v5

    .line 109
    :goto_1
    new-instance v7, Lcom/inmobi/media/qb;

    invoke-direct {v7}, Lcom/inmobi/media/qb;-><init>()V

    .line 114
    new-instance v8, Lcom/inmobi/media/i9;

    sget-object v9, Lcom/inmobi/media/c4;->e:Lcom/inmobi/media/c4;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 115
    iput-object v8, v7, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    goto :goto_5

    :catch_7
    move-exception v6

    move-object v4, v5

    .line 116
    :goto_2
    new-instance v7, Lcom/inmobi/media/qb;

    invoke-direct {v7}, Lcom/inmobi/media/qb;-><init>()V

    .line 117
    new-instance v8, Lcom/inmobi/media/i9;

    sget-object v9, Lcom/inmobi/media/c4;->g:Lcom/inmobi/media/c4;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 118
    iput-object v8, v7, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    goto :goto_5

    :catch_8
    move-exception v6

    move-object v4, v5

    .line 119
    :goto_3
    new-instance v7, Lcom/inmobi/media/qb;

    invoke-direct {v7}, Lcom/inmobi/media/qb;-><init>()V

    .line 121
    new-instance v8, Lcom/inmobi/media/i9;

    sget-object v9, Lcom/inmobi/media/c4;->f:Lcom/inmobi/media/c4;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 122
    iput-object v8, v7, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    sget-boolean v6, Lcom/inmobi/media/p9;->a:Z

    invoke-static {v4}, Lcom/inmobi/media/p9;->a(Ljava/net/HttpURLConnection;)V

    move v4, v2

    goto :goto_6

    :catch_9
    move-exception v6

    move-object v4, v5

    .line 124
    :goto_4
    :try_start_3
    new-instance v7, Lcom/inmobi/media/qb;

    invoke-direct {v7}, Lcom/inmobi/media/qb;-><init>()V

    .line 125
    new-instance v8, Lcom/inmobi/media/i9;

    sget-object v9, Lcom/inmobi/media/c4;->z:Lcom/inmobi/media/c4;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 126
    iput-object v8, v7, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    :goto_5
    sget-boolean v6, Lcom/inmobi/media/p9;->a:Z

    invoke-static {v4}, Lcom/inmobi/media/p9;->a(Ljava/net/HttpURLConnection;)V

    move v4, v0

    :goto_6
    move-object v6, v7

    :goto_7
    if-eqz v4, :cond_2

    .line 127
    :try_start_4
    sget-boolean v4, Lcom/inmobi/media/p9;->a:Z

    .line 128
    sget-boolean v4, Lcom/inmobi/media/p9;->a:Z

    if-eqz v4, :cond_2

    .line 129
    invoke-static {v2}, Lcom/inmobi/media/p9;->a(Z)Lcom/inmobi/media/c4;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 130
    new-instance v7, Lcom/inmobi/media/i9;

    .line 132
    const-string v8, "Network request failed because of internet. Please try again"

    .line 133
    invoke-direct {v7, v4, v8}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 134
    iput-object v7, v6, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 136
    :catch_a
    :cond_2
    :goto_8
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "RESPONSE RECEIVED"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "response"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/inmobi/media/mb;->toString()Ljava/lang/String;

    invoke-virtual {v6}, Lcom/inmobi/media/qb;->toString()Ljava/lang/String;

    .line 201
    iget-object v1, v6, Lcom/inmobi/media/qb;->d:Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_9

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_4

    return-object v6

    .line 202
    :cond_4
    :goto_9
    iget-object v1, v6, Lcom/inmobi/media/qb;->d:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_a

    .line 203
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_6

    goto :goto_d

    :cond_6
    :goto_a
    if-nez v1, :cond_7

    goto :goto_b

    .line 204
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x193

    if-ne v3, v4, :cond_8

    goto :goto_d

    .line 205
    :cond_8
    :goto_b
    new-instance v3, Lkotlin/ranges/IntRange;

    const/16 v4, 0x1f4

    const/16 v7, 0x257

    invoke-direct {v3, v4, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_d

    .line 206
    :cond_9
    iget-object v1, v6, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    if-eqz v1, :cond_a

    .line 207
    iget-object v1, v1, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    goto :goto_c

    :cond_a
    move-object v1, v5

    .line 208
    :goto_c
    sget-object v3, Lcom/inmobi/media/c4;->z:Lcom/inmobi/media/c4;

    if-ne v1, v3, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x4

    .line 213
    new-array v1, v1, [Lcom/inmobi/media/c4;

    sget-object v3, Lcom/inmobi/media/c4;->f:Lcom/inmobi/media/c4;

    aput-object v3, v1, v0

    sget-object v0, Lcom/inmobi/media/c4;->x:Lcom/inmobi/media/c4;

    aput-object v0, v1, v2

    sget-object v0, Lcom/inmobi/media/c4;->y:Lcom/inmobi/media/c4;

    const/4 v3, 0x2

    aput-object v0, v1, v3

    sget-object v0, Lcom/inmobi/media/c4;->v:Lcom/inmobi/media/c4;

    const/4 v3, 0x3

    aput-object v0, v1, v3

    .line 214
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 215
    iget-object v1, v6, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    if-eqz v1, :cond_c

    .line 216
    iget-object v5, v1, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    .line 217
    :cond_c
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 218
    :goto_d
    iget v0, p0, Lcom/inmobi/media/mb;->m:I

    .line 219
    iget-object v1, p0, Lcom/inmobi/media/mb;->h:Lcom/inmobi/media/lb;

    if-nez v1, :cond_d

    goto :goto_e

    .line 220
    :cond_d
    iget v3, v1, Lcom/inmobi/media/lb;->a:I

    if-lt v0, v3, :cond_e

    :goto_e
    return-object v6

    :cond_e
    if-eqz p1, :cond_f

    .line 221
    iget v1, v1, Lcom/inmobi/media/lb;->b:I

    int-to-double v3, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v0

    .line 222
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-long v0, v0

    .line 223
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_f
    iget p1, p0, Lcom/inmobi/media/mb;->m:I

    add-int/2addr p1, v2

    .line 225
    iput p1, p0, Lcom/inmobi/media/mb;->m:I

    .line 226
    new-instance p0, Lcom/inmobi/media/i9;

    sget-object p1, Lcom/inmobi/media/c4;->m:Lcom/inmobi/media/c4;

    const-string v0, "Retry Attempted"

    invoke-direct {p0, p1, v0}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 227
    iput-object p0, v6, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    :cond_10
    return-object v6

    :catchall_1
    move-exception p0

    move-object v5, v4

    .line 228
    :goto_f
    sget-boolean p1, Lcom/inmobi/media/p9;->a:Z

    invoke-static {v5}, Lcom/inmobi/media/p9;->a(Ljava/net/HttpURLConnection;)V

    throw p0
.end method

.method public static a(Lcom/inmobi/media/mb;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 229
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 231
    iget v0, p0, Lcom/inmobi/media/mb;->i:I

    .line 232
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 233
    iget v0, p0, Lcom/inmobi/media/mb;->j:I

    .line 234
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 236
    iget-object v0, p0, Lcom/inmobi/media/mb;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/mb;->b:Lcom/inmobi/media/jb;

    .line 240
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/inmobi/media/jb;->a:Lcom/inmobi/media/jb;

    .line 242
    iget-object p0, p0, Lcom/inmobi/media/mb;->b:Lcom/inmobi/media/jb;

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    .line 243
    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 244
    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setDoInput(Z)V

    :cond_1
    return-object p1
.end method

.method public static a(Lcom/inmobi/media/qb;Ljava/io/InputStream;)V
    .locals 4

    .line 283
    sget-boolean v0, Lcom/inmobi/media/p9;->a:Z

    invoke-static {p1}, Lcom/inmobi/media/p9;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 284
    invoke-static {p1}, Lcom/inmobi/media/p9;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_4

    .line 286
    array-length p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    xor-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    .line 287
    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/inmobi/media/qb;->b:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 289
    const-string v3, "Content-Encoding"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 290
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    :cond_2
    const-string p1, "gzip"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 291
    invoke-static {v0}, Lcom/inmobi/media/p9;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_3

    .line 294
    new-instance p1, Lcom/inmobi/media/i9;

    sget-object v1, Lcom/inmobi/media/c4;->h:Lcom/inmobi/media/c4;

    const-string v2, "Failed to uncompress gzip response"

    invoke-direct {p1, v1, v2}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 295
    iput-object p1, p0, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    :cond_3
    if-eqz v0, :cond_4

    .line 296
    iput-object v0, p0, Lcom/inmobi/media/qb;->c:[B

    :cond_4
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/net/HttpURLConnection;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 245
    :try_start_0
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const/16 v1, 0x1000

    invoke-direct {p2, p1, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_0
    move-object v0, p2

    goto :goto_1

    .line 246
    :cond_0
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 248
    :goto_1
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    .line 249
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-static {v0}, Lcom/inmobi/media/p9;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/inmobi/media/p9;->a(Ljava/io/Closeable;)V

    throw p0
.end method

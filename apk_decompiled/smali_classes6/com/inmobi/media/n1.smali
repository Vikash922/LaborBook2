.class public final Lcom/inmobi/media/n1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lcom/inmobi/media/m1;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/inmobi/media/r1;)V
    .locals 1

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/inmobi/media/n1;->a:Ljava/lang/ref/WeakReference;

    .line 15
    new-instance p1, Lcom/inmobi/media/m1;

    invoke-direct {p1, p0}, Lcom/inmobi/media/m1;-><init>(Lcom/inmobi/media/n1;)V

    iput-object p1, p0, Lcom/inmobi/media/n1;->b:Lcom/inmobi/media/m1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    const-string v0, "r1"

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const-string v0, "access$getTAG$p(...)"

    const-string v1, "r1"

    const-string v2, "msg"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v2, Lcom/inmobi/media/r1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/n1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/r1;

    .line 6
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v7, :cond_e

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v3, v4, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v2, :cond_3

    .line 127
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, p1, Lcom/inmobi/media/j;

    if-eqz v2, :cond_2

    move-object v6, p1

    check-cast v6, Lcom/inmobi/media/j;

    :cond_2
    if-eqz v6, :cond_3

    .line 129
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    const-string v2, "asset"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget v2, v6, Lcom/inmobi/media/j;->a:I

    .line 132
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v5

    .line 133
    const-string v2, "id = ?"

    invoke-virtual {p1, v2, v3}, Lcom/inmobi/media/R1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/n1;->a()V

    goto/16 :goto_2

    .line 137
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/n1;->a()V

    goto/16 :goto_2

    :cond_5
    if-eqz v2, :cond_15

    .line 138
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    :cond_6
    if-nez v6, :cond_7

    return-void

    .line 139
    :cond_7
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/inmobi/media/k1;->b(Ljava/lang/String;)Lcom/inmobi/media/j;

    move-result-object p1

    if-nez p1, :cond_8

    .line 143
    invoke-virtual {p0}, Lcom/inmobi/media/n1;->a()V

    return-void

    .line 146
    :cond_8
    invoke-virtual {p1}, Lcom/inmobi/media/j;->a()Z

    move-result v3

    if-nez v3, :cond_d

    .line 147
    sget-object v3, Lcom/inmobi/media/r1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    if-eqz v3, :cond_9

    .line 148
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getMaxRetries()I

    .line 149
    :cond_9
    iget v3, p1, Lcom/inmobi/media/j;->d:I

    if-gtz v3, :cond_a

    const/4 v3, 0x6

    .line 150
    iput-byte v3, p1, Lcom/inmobi/media/j;->l:B

    .line 151
    invoke-virtual {v2, p1, v3}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 152
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 153
    iput v8, v2, Landroid/os/Message;->what:I

    .line 154
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    :try_start_2
    sget-object p1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 160
    :cond_a
    sget-boolean v3, Lcom/inmobi/media/p9;->a:Z

    .line 161
    invoke-static {v5}, Lcom/inmobi/media/p9;->a(Z)Lcom/inmobi/media/c4;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 162
    iget-byte v3, p1, Lcom/inmobi/media/j;->l:B

    .line 163
    invoke-virtual {v2, p1, v3}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;B)V

    .line 164
    invoke-static {}, Lcom/inmobi/media/r1;->d()V

    return-void

    .line 165
    :cond_b
    iget-object v2, p0, Lcom/inmobi/media/n1;->b:Lcom/inmobi/media/m1;

    .line 166
    invoke-static {p1, v2}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;Lcom/inmobi/media/l1;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 167
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 176
    :cond_c
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/inmobi/media/n1;->a()V

    goto/16 :goto_2

    .line 183
    :cond_d
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 184
    :try_start_3
    invoke-virtual {p0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 188
    :catch_1
    :try_start_4
    sget-object v3, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const/4 v3, -0x1

    .line 189
    invoke-virtual {v2, p1, v3}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;B)V

    goto/16 :goto_2

    :cond_e
    if-eqz v2, :cond_15

    .line 190
    sget-object p1, Lcom/inmobi/media/r1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    if-nez p1, :cond_f

    .line 191
    sget-object p1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 192
    const-string p1, "ads"

    .line 193
    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {p1, v2, v6}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 199
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getAssetCacheConfig()Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    move-result-object p1

    .line 201
    :cond_f
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/k1;->b()Ljava/util/ArrayList;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 203
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/inmobi/media/r1;->d()V

    goto/16 :goto_2

    .line 205
    :cond_10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/j;

    .line 207
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/j;

    .line 208
    sget-object v6, Lcom/inmobi/media/r1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 209
    iget-object v8, v3, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 210
    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    move-object v3, v5

    .line 211
    :cond_12
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 212
    iput v7, v2, Landroid/os/Message;->what:I

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 215
    iget-wide v7, v3, Lcom/inmobi/media/j;->e:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    sub-long/2addr v5, v7

    .line 216
    :try_start_5
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getRetryInterval()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_13

    .line 219
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getRetryInterval()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    sub-long/2addr v3, v5

    .line 220
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 221
    :cond_13
    sget-object v5, Lcom/inmobi/media/r1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    iget-object v6, v3, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 223
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 224
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getRetryInterval()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    .line 225
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 230
    :cond_14
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 232
    iput v4, p1, Landroid/os/Message;->what:I

    .line 233
    iget-object v2, v3, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 234
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 242
    :catch_2
    :try_start_6
    sget-object p1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 324
    sget-object v2, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 326
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 327
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_15
    :goto_2
    return-void
.end method

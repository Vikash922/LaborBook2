.class public final Lcom/inmobi/media/w6;
.super Lcom/inmobi/media/Ic;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:J

.field public final f:Lcom/inmobi/media/f5;

.field public final g:Ljava/lang/ref/WeakReference;

.field public h:S

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Q0;Lcom/inmobi/media/w9;[BJLcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oAManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/inmobi/media/Ic;-><init>(Lcom/inmobi/media/Q0;B)V

    .line 2
    iput-object p3, p0, Lcom/inmobi/media/w6;->d:[B

    .line 3
    iput-wide p4, p0, Lcom/inmobi/media/w6;->e:J

    iput-object p6, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/inmobi/media/w6;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    const-string v0, "Exception while parsing OAResponse"

    const-string v1, "<get-TAG>(...)"

    .line 25
    iget-object v2, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    const-string v3, "LoadWithResponseWorker"

    if-eqz v2, :cond_0

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "execute task start"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/w6;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/w9;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 28
    iget-object v0, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "OAManager null. failing."

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x85e

    .line 29
    iput-short v0, p0, Lcom/inmobi/media/w6;->h:S

    .line 30
    invoke-virtual {p0, v4}, Lcom/inmobi/media/Ic;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 32
    :cond_2
    iget-object v5, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz v5, :cond_3

    check-cast v5, Lcom/inmobi/media/g5;

    const-string v6, "getting network response from byte array"

    invoke-virtual {v5, v3, v6}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_3
    iget-object v5, p0, Lcom/inmobi/media/w6;->d:[B

    .line 34
    const-string v6, "response"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v6, Lcom/inmobi/media/m9;

    invoke-direct {v6}, Lcom/inmobi/media/m9;-><init>()V

    .line 49
    const-string v7, "value"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    array-length v7, v5

    const/4 v8, 0x0

    if-nez v7, :cond_4

    .line 83
    new-array v5, v8, [B

    iput-object v5, v6, Lcom/inmobi/media/m9;->b:[B

    goto :goto_0

    .line 86
    :cond_4
    array-length v7, v5

    new-array v7, v7, [B

    iput-object v7, v6, Lcom/inmobi/media/m9;->b:[B

    .line 87
    array-length v9, v5

    invoke-static {v5, v8, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :goto_0
    const-string v5, "mResponse"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v5, v6, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    if-eqz v5, :cond_6

    .line 90
    iget-object v5, v5, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    .line 91
    sget-object v7, Lcom/inmobi/media/T;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    packed-switch v5, :pswitch_data_0

    .line 118
    new-instance v5, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v7, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v5, v7}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    goto :goto_2

    .line 119
    :pswitch_0
    new-instance v5, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v7, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->GDPR_COMPLIANCE_ENFORCED:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v5, v7}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    goto :goto_2

    .line 120
    :pswitch_1
    new-instance v5, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v7, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v5, v7}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    goto :goto_2

    .line 121
    :pswitch_2
    new-instance v5, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v7, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v5, v7}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    goto :goto_2

    .line 122
    :pswitch_3
    new-instance v5, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v7, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v5, v7}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 123
    iget-object v7, v6, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    if-eqz v7, :cond_5

    .line 124
    iget-object v7, v7, Lcom/inmobi/media/i9;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v7, v4

    :goto_1
    if-eqz v7, :cond_6

    .line 125
    invoke-virtual {v5, v7}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    goto :goto_2

    .line 126
    :pswitch_4
    new-instance v5, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v7, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v5, v7}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 127
    :cond_6
    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz v5, :cond_7

    const-string v7, "start parsing response"

    check-cast v5, Lcom/inmobi/media/g5;

    invoke-virtual {v5, v3, v7}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_7
    new-instance v5, Lorg/json/JSONObject;

    .line 129
    invoke-virtual {v6}, Lcom/inmobi/media/m9;->a()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    const-string v6, "placementId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 132
    iget-wide v8, p0, Lcom/inmobi/media/w6;->e:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_a

    .line 133
    iget-object v8, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz v8, :cond_8

    const-string v9, "placementID"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    check-cast v8, Lcom/inmobi/media/g5;

    invoke-virtual {v8, v9, v6}, Lcom/inmobi/media/g5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_8
    iget-object v6, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz v6, :cond_9

    const-string v7, "placement id match - success"

    check-cast v6, Lcom/inmobi/media/g5;

    invoke-virtual {v6, v3, v7}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_9
    iget-object v2, v2, Lcom/inmobi/media/w9;->a:Lcom/inmobi/media/Q0;

    .line 136
    invoke-virtual {v2}, Lcom/inmobi/media/Q0;->p()Lcom/inmobi/media/A0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    const-string v3, "jsonResponse"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2, v5}, Lcom/inmobi/media/A0;->a(Lorg/json/JSONObject;)Lcom/inmobi/media/x0;

    move-result-object v2

    .line 407
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Ic;->b(Ljava/lang/Object;)V

    goto :goto_3

    .line 411
    :cond_a
    iget-object v2, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_b

    const-string v5, "Placement Id of Request and response doesn\'t match"

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v5}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 v2, 0x860

    .line 412
    iput-short v2, p0, Lcom/inmobi/media/w6;->h:S

    .line 413
    new-instance v2, Lcom/inmobi/media/K;

    .line 414
    new-instance v3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v5, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v3, v5}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 415
    iget-short v5, p0, Lcom/inmobi/media/w6;->h:S

    .line 416
    invoke-direct {v2, v3, v5}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw v2
    :try_end_0
    .catch Lcom/inmobi/media/K; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const/16 v3, 0x861

    .line 425
    iput-short v3, p0, Lcom/inmobi/media/w6;->h:S

    .line 426
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inmobi/media/w6;->i:Ljava/lang/String;

    .line 427
    iget-object v3, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_c

    .line 428
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v5

    .line 429
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v5, v0, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 430
    :cond_c
    invoke-virtual {p0, v4}, Lcom/inmobi/media/Ic;->b(Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v2

    .line 431
    iget-short v3, v2, Lcom/inmobi/media/K;->b:S

    .line 432
    iput-short v3, p0, Lcom/inmobi/media/w6;->h:S

    .line 433
    iget-object v3, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_d

    .line 434
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v5

    .line 435
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v5, v0, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 436
    :cond_d
    invoke-virtual {p0, v4}, Lcom/inmobi/media/Ic;->b(Ljava/lang/Object;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/inmobi/media/x0;

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    const-string v1, "LoadWithResponseWorker"

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "onComplete"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/w6;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/w9;

    if-eqz v0, :cond_5

    if-nez p1, :cond_3

    .line 6
    iget-short p1, p0, Lcom/inmobi/media/w6;->h:S

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 7
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    const-string v3, "errorCode"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    aput-object p1, v3, v2

    invoke-static {v3}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 8
    iget-object v3, p0, Lcom/inmobi/media/w6;->i:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "reason"

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    iget-object v3, v0, Lcom/inmobi/media/w9;->a:Lcom/inmobi/media/Q0;

    .line 10
    invoke-virtual {v3, p1}, Lcom/inmobi/media/Q0;->b(Ljava/util/Map;)V

    .line 11
    :cond_2
    iget-object p1, v0, Lcom/inmobi/media/w9;->a:Lcom/inmobi/media/Q0;

    .line 12
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 13
    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    .line 17
    iget-object p1, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adSet null. fail with error code - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/inmobi/media/w6;->h:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v2, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_4

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v3, "loading response"

    invoke-virtual {v2, v1, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_4
    iget-object v0, v0, Lcom/inmobi/media/w9;->a:Lcom/inmobi/media/Q0;

    .line 21
    invoke-virtual {v0, p1}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/media/x0;)V

    goto :goto_0

    .line 24
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "oAManager is null"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/E1;->c()V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/w6;->f:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "LoadWithResponseWorker"

    const-string v2, "Encountered OOM"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/w6;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/w9;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/inmobi/media/w9;->a:Lcom/inmobi/media/Q0;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->LOW_MEMORY:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v2, 0x862

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    :cond_1
    return-void
.end method

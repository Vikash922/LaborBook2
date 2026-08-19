.class public abstract Lcom/inmobi/media/Fc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    sget-object v0, Lcom/inmobi/media/Ea;->a:Lcom/inmobi/media/B6;

    .line 2
    const-string v0, "getToken"

    const-string v1, "AB"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/Ea;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/inmobi/media/g5;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz p0, :cond_0

    .line 5
    const-string v1, "tp"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/media/Lb;->a(Ljava/lang/String;)V

    .line 6
    const-string v1, "tp-v"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/media/Lb;->b(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Fc;->a()V

    .line 9
    invoke-static {}, Lcom/inmobi/media/Kb;->q()Z

    move-result v1

    const-string v5, "LOG_TAG"

    const/4 v6, 0x0

    const-string v7, "com.inmobi.media.Fc"

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 10
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "InMobi SDK is not initialised. Cannot fetch a token."

    invoke-virtual {v0, v7, p0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 p0, 0x5a

    .line 11
    invoke-static {p0, v3, v4, v0}, Lcom/inmobi/media/Fc;->a(IJLcom/inmobi/media/g5;)V

    return-object v6

    .line 14
    :cond_2
    sget-object v1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 15
    const-string v1, "root"

    const-string v8, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig"

    invoke-static {v1, v8, v6}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    .line 16
    check-cast v1, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 17
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/RootConfig;->isMonetizationDisabled()Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 p0, 0x7dc

    .line 18
    invoke-static {p0, v3, v4, v0}, Lcom/inmobi/media/Fc;->a(IJLcom/inmobi/media/g5;)V

    if-eqz v0, :cond_3

    .line 19
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Monetization disabled. cannot provide token"

    invoke-virtual {v0, v7, p0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v6

    .line 20
    :cond_4
    const-string v8, "ads"

    const-string v9, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    invoke-static {v8, v9, v6}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v8

    .line 21
    check-cast v8, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 22
    new-instance v9, Lcom/inmobi/media/Gc;

    new-instance v10, Lcom/inmobi/media/Kc;

    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/Config;->getIncludeIdParams()Lcom/inmobi/media/A5;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/inmobi/media/Kc;-><init>(Lcom/inmobi/media/A5;)V

    invoke-direct {v9, v10, v0, v1, v8}, Lcom/inmobi/media/Gc;-><init>(Lcom/inmobi/media/Kc;Lcom/inmobi/media/g5;Lcom/inmobi/commons/core/configs/RootConfig;Lcom/inmobi/commons/core/configs/AdConfig;)V

    .line 23
    iput-object p0, v9, Lcom/inmobi/media/Gc;->C:Ljava/util/Map;

    .line 24
    iput-object p1, v9, Lcom/inmobi/media/Gc;->B:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/inmobi/media/Kb;->k()Ljava/lang/String;

    move-result-object p0

    const-string p1, "h-user-agent"

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Lkotlin/Pair;

    aput-object p0, p1, v2

    .line 26
    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 27
    iget-object p1, v9, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 28
    :cond_5
    invoke-virtual {v9}, Lcom/inmobi/media/Gc;->f()V

    .line 29
    iget-boolean p0, v9, Lcom/inmobi/media/l9;->d:Z

    if-eqz p0, :cond_7

    .line 30
    invoke-static {v3, v4, v0}, Lcom/inmobi/media/Fc;->a(JLcom/inmobi/media/g5;)V

    if-eqz v0, :cond_6

    .line 31
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "get signals success"

    invoke-virtual {v0, v7, p0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_6
    invoke-virtual {v9}, Lcom/inmobi/media/l9;->c()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    const-string v0, "encode(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    .line 34
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "get Signals failed - GDPR Compliance"

    invoke-virtual {v0, v7, p0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 p0, 0x85d    # 3.0E-42f

    .line 35
    invoke-static {p0, v3, v4, v0}, Lcom/inmobi/media/Fc;->a(IJLcom/inmobi/media/g5;)V

    :goto_0
    return-object v6
.end method

.method public static a()V
    .locals 1

    new-instance v0, Lcom/inmobi/media/Fc$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/inmobi/media/Fc$$ExternalSyntheticLambda2;-><init>()V

    .line 91
    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(IJLcom/inmobi/media/g5;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 36
    const-string v0, "LOG_TAG"

    const-string v1, "com.inmobi.media.Fc"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "submitAdGetSignalsFailed - errorCode - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", startTime - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    new-instance v0, Lcom/inmobi/media/Fc$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p0}, Lcom/inmobi/media/Fc$$ExternalSyntheticLambda0;-><init>(JI)V

    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_1

    .line 49
    invoke-virtual {p3}, Lcom/inmobi/media/g5;->a()V

    :cond_1
    return-void
.end method

.method public static final a(J)V
    .locals 3

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "latency"

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 79
    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object p1

    const-string v0, "networkType"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 80
    const-string v0, "plType"

    const-string v1, "AB"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object v0, v1, p0

    .line 81
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p0

    .line 88
    sget-object p1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 89
    sget-object p1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 90
    const-string v0, "AdGetSignalsSucceeded"

    invoke-static {v0, p0, p1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method

.method public static final a(JI)V
    .locals 3

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "latency"

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 51
    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object p1

    const-string v0, "networkType"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "errorCode"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 53
    const-string v0, "plType"

    const-string v1, "AB"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object v0, v1, p0

    .line 54
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p0

    .line 62
    sget-object p1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 63
    sget-object p1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 64
    const-string p2, "AdGetSignalsFailed"

    invoke-static {p2, p0, p1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method

.method public static a(JLcom/inmobi/media/g5;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 65
    const-string v0, "LOG_TAG"

    const-string v1, "com.inmobi.media.Fc"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "submitAdGetSignalsSucceeded - startTime - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    new-instance v0, Lcom/inmobi/media/Fc$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/media/Fc$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_1

    .line 77
    invoke-virtual {p2}, Lcom/inmobi/media/g5;->a()V

    :cond_1
    return-void
.end method

.method public static final b()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "networkType"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 2
    const-string v1, "plType"

    const-string v2, "AB"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 3
    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 11
    sget-object v1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 12
    const-string v2, "AdGetSignalsCalled"

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method

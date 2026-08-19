.class public abstract Lcom/inmobi/media/y9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/commons/core/configs/CrashConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 2
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig"

    const/4 v1, 0x0

    const-string v2, "crashReporting"

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    .line 37
    check-cast v0, Lcom/inmobi/commons/core/configs/CrashConfig;

    sput-object v0, Lcom/inmobi/media/y9;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public static a(Lorg/json/JSONObject;ZZJ)V
    .locals 10

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/y9;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getReportOOMInfo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    sget-object p1, Lcom/inmobi/media/k3;->d:Lcom/inmobi/media/k3;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/inmobi/media/i3;->d:Lcom/inmobi/media/i3;

    .line 3
    :goto_0
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object v1

    const-string v2, "key"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    goto :goto_1

    .line 69
    :cond_3
    iget-object v5, p1, Lcom/inmobi/media/l3;->c:Ljava/lang/String;

    .line 70
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v6, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 122
    iget-object v6, p1, Lcom/inmobi/media/l3;->c:Ljava/lang/String;

    add-int/2addr v5, v3

    .line 123
    invoke-virtual {v1, v6, v5, v3}, Lcom/inmobi/media/e6;->a(Ljava/lang/String;IZ)V

    .line 124
    :goto_1
    const-string v1, "crashType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object v1

    const-wide/16 v5, 0x0

    if-nez v1, :cond_4

    goto :goto_2

    .line 160
    :cond_4
    iget-object v7, p1, Lcom/inmobi/media/l3;->a:Ljava/lang/String;

    .line 161
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v8, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v8, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 236
    iget-object p1, p1, Lcom/inmobi/media/l3;->b:Ljava/lang/String;

    cmp-long v9, v7, v5

    if-nez v9, :cond_5

    .line 237
    invoke-virtual {v1, p1, p3, p4, v3}, Lcom/inmobi/media/e6;->a(Ljava/lang/String;JZ)V

    goto :goto_2

    :cond_5
    sub-long/2addr p3, v7

    .line 239
    invoke-virtual {v1, p1, p3, p4, v3}, Lcom/inmobi/media/e6;->a(Ljava/lang/String;JZ)V

    :goto_2
    if-nez p2, :cond_6

    return-void

    .line 240
    :cond_6
    sget-object p1, Lcom/inmobi/media/k3;->d:Lcom/inmobi/media/k3;

    .line 241
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 313
    iget-object p3, p1, Lcom/inmobi/media/l3;->c:Ljava/lang/String;

    .line 314
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object p2, p2, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2, p3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_3

    :cond_7
    move p2, v4

    .line 366
    :goto_3
    sget-object p3, Lcom/inmobi/media/i3;->d:Lcom/inmobi/media/i3;

    .line 367
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object p4

    if-eqz p4, :cond_8

    .line 439
    iget-object v0, p3, Lcom/inmobi/media/l3;->c:Ljava/lang/String;

    .line 440
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    iget-object p4, p4, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {p4, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    goto :goto_4

    :cond_8
    move p4, v4

    :goto_4
    add-int v0, p2, p4

    if-lez v0, :cond_9

    int-to-float v1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 492
    :goto_5
    const-string v0, "inmobiOOMCount"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 493
    const-string p2, "appOOMCount"

    invoke-virtual {p0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 494
    invoke-static {p3}, Lcom/inmobi/media/z5;->a(Lcom/inmobi/media/l3;)J

    move-result-wide p2

    const-string p4, "appOomCrashInterval"

    invoke-virtual {p0, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 495
    invoke-static {p1}, Lcom/inmobi/media/z5;->a(Lcom/inmobi/media/l3;)J

    move-result-wide p1

    const-string p3, "inmOOMCrashInterval"

    invoke-virtual {p0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 496
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "oomRatioInMobiToApp"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    sget-object p1, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {p1}, Lcom/inmobi/media/E3;->H()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_7

    .line 500
    :cond_a
    invoke-static {}, Landroid/os/Debug;->getRuntimeStats()Ljava/util/Map;

    move-result-object p1

    .line 504
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide p2, v5

    move-wide v0, p2

    .line 505
    :cond_b
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_f

    .line 506
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 508
    const-string v7, "art.gc.blocking-gc-count"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_6

    :cond_c
    move-wide p2, v5

    goto :goto_6

    .line 509
    :cond_d
    const-string v7, "art.gc.gc-count"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p4

    if-eqz p4, :cond_e

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_6

    :cond_e
    move-wide v0, v5

    goto :goto_6

    :cond_f
    const/4 p1, 0x2

    .line 513
    new-array p1, p1, [J

    aput-wide p2, p1, v4

    aput-wide v0, p1, v3

    :goto_7
    if-eqz p1, :cond_10

    .line 514
    aget-wide p2, p1, v4

    const-string p4, "blockingGcCount"

    invoke-virtual {p0, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 515
    aget-wide p2, p1, v3

    const-string p1, "gcCount"

    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_10
    return-void
.end method

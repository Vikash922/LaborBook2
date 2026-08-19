.class public final Lcom/inmobi/media/a0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/c0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/a0;->a:Lcom/inmobi/media/c0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/a0;->a:Lcom/inmobi/media/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v1, "AdQualityBeaconExecutor"

    const-string v2, "tag"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "beacon handler execute"

    const-string v4, "message"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v1, v0, Lcom/inmobi/media/c0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    sget-object v1, Lcom/inmobi/media/e0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    sget-object v1, Lcom/inmobi/media/Db;->a:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/f0;

    .line 14
    invoke-static {v5}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;)I

    move-result v5

    .line 15
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/inmobi/media/f0;

    .line 16
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const-string v1, "AdQualityDao"

    const-string v7, "peek"

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v11, 0x0

    const/16 v13, 0x1f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v13}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 20
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/adquality/models/AdQualityResult;

    if-eqz v5, :cond_1

    .line 21
    iget-object v6, v0, Lcom/inmobi/media/c0;->a:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 22
    new-instance v7, Lcom/inmobi/media/a6;

    new-instance v8, Lcom/inmobi/media/Kc;

    invoke-virtual {v6}, Lcom/inmobi/commons/core/configs/Config;->getIncludeIdParams()Lcom/inmobi/media/A5;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/inmobi/media/Kc;-><init>(Lcom/inmobi/media/A5;)V

    invoke-virtual {v6}, Lcom/inmobi/commons/core/configs/AdConfig;->getAdQuality()Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    move-result-object v6

    invoke-direct {v7, v5, v8, v6}, Lcom/inmobi/media/a6;-><init>(Lcom/inmobi/adquality/models/AdQualityResult;Lcom/inmobi/media/Kc;Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;)V

    .line 23
    new-instance v6, Lcom/inmobi/media/b0;

    invoke-direct {v6, v0, v5}, Lcom/inmobi/media/b0;-><init>(Lcom/inmobi/media/c0;Lcom/inmobi/adquality/models/AdQualityResult;)V

    .line 24
    const-string v5, "onBeaconHit"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const-string v5, "JsonBeaconRequest"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "hitBeacon"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v7}, Lcom/inmobi/media/a6;->f()V

    .line 88
    new-instance v5, Lcom/inmobi/media/lb;

    iget-object v8, v7, Lcom/inmobi/media/a6;->z:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;->getMaxRetries()I

    move-result v8

    iget-object v9, v7, Lcom/inmobi/media/a6;->z:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    invoke-virtual {v9}, Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;->getRetryInterval()I

    move-result v9

    invoke-direct {v5, v8, v9}, Lcom/inmobi/media/lb;-><init>(II)V

    .line 89
    const-string v8, "retryPolicy"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iput-object v5, v7, Lcom/inmobi/media/l9;->w:Lcom/inmobi/media/lb;

    .line 266
    new-instance v5, Lcom/inmobi/media/Z5;

    invoke-direct {v5, v6}, Lcom/inmobi/media/Z5;-><init>(Lcom/inmobi/media/b0;)V

    invoke-virtual {v7, v5}, Lcom/inmobi/media/l9;->a(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, v0, Lcom/inmobi/media/c0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 268
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

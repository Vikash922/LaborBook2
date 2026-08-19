.class public final Lcom/inmobi/unifiedId/InMobiUnifiedIdService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/inmobi/unifiedId/InMobiUnifiedIdService;",
        "",
        "Lcom/inmobi/unifiedId/InMobiUserDataModel;",
        "inMobiUserDataModel",
        "",
        "push",
        "(Lcom/inmobi/unifiedId/InMobiUserDataModel;)V",
        "Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;",
        "inMobiUnifiedIdInterface",
        "fetchUnifiedIds",
        "(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V",
        "fetchUnifiedIdsInternal$media_release",
        "fetchUnifiedIdsInternal",
        "reset",
        "()V",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isPushCalled",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isPushCalled$annotations",
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
.field public static final INSTANCE:Lcom/inmobi/unifiedId/InMobiUnifiedIdService;

.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;

    invoke-direct {v0}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;-><init>()V

    sput-object v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->INSTANCE:Lcom/inmobi/unifiedId/InMobiUnifiedIdService;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 3

    .line 218
    const-string v0, "InMobiUnifiedIdService"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    const-class v0, Lcom/inmobi/media/y4;

    monitor-enter v0

    .line 221
    :try_start_0
    sget-object v2, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v2, 0x0

    .line 222
    sput-object v2, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 223
    invoke-static {}, Lcom/inmobi/media/Nc;->e()V

    .line 224
    invoke-static {v2}, Lcom/inmobi/media/u5;->b(Lorg/json/JSONObject;)V

    .line 225
    invoke-static {v2}, Lcom/inmobi/media/u5;->a(Lorg/json/JSONObject;)V

    .line 226
    sput-boolean v1, Lcom/inmobi/media/u5;->d:Z

    .line 227
    sput-boolean v1, Lcom/inmobi/media/u5;->c:Z

    return-void

    :catchall_0
    move-exception v1

    .line 228
    monitor-exit v0

    throw v1
.end method

.method public static final a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V
    .locals 14

    .line 1
    const-string v0, "InMobiUnifiedIdService"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/inmobi/media/u5;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ufids"

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_8

    .line 9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_5

    :cond_2
    if-eqz v0, :cond_8

    .line 10
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 43
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 44
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x0

    move v8, v3

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    .line 46
    :try_start_2
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v12, "expiry"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    move v9, v6

    :goto_2
    and-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move v3, v8

    goto :goto_3

    :cond_4
    move v3, v8

    goto :goto_4

    .line 51
    :catch_1
    :goto_3
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_5
    :goto_4
    if-nez v3, :cond_8

    .line 52
    sget-object v0, Lcom/inmobi/media/Nc;->a:Lorg/json/JSONObject;

    if-eqz p0, :cond_6

    .line 53
    sget-object v0, Lcom/inmobi/media/Nc;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_6
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_8

    .line 58
    :cond_7
    invoke-static {}, Lcom/inmobi/media/Nc;->d()V

    goto :goto_8

    :catch_2
    :cond_8
    :goto_5
    if-eqz p0, :cond_f

    if-nez v0, :cond_9

    goto :goto_7

    .line 59
    :cond_9
    :try_start_3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 60
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :cond_a
    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_c

    .line 65
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_7

    .line 80
    :cond_b
    invoke-static {p0, v0, v1}, Lcom/inmobi/media/Pc;->a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V

    goto :goto_8

    .line 66
    :catch_3
    :cond_c
    :goto_7
    sget-object v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 67
    sget-object v0, Lcom/inmobi/media/Nc;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_8

    .line 72
    :cond_d
    invoke-static {}, Lcom/inmobi/media/Nc;->d()V

    goto :goto_8

    .line 73
    :cond_e
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Push api needs to called prior to fetch"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {p0, v1, v0}, Lcom/inmobi/media/Pc;->a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V

    :cond_f
    :goto_8
    return-void
.end method

.method public static final a(Lcom/inmobi/unifiedId/InMobiUserDataModel;)V
    .locals 5

    .line 81
    const-string v0, "InMobiUnifiedIdService"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 83
    const-string v0, "signals"

    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    .line 84
    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 85
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getUnifiedIdServiceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->reset()V

    :cond_0
    if-nez v0, :cond_1

    .line 90
    const-string p0, "InMobiUnifiedIdService"

    const-string v0, "TAG"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 91
    :cond_1
    sget-object v0, Lcom/inmobi/media/Jc;->a:Lcom/inmobi/media/Jc;

    invoke-virtual {v0}, Lcom/inmobi/media/Jc;->c()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 94
    invoke-static {}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->reset()V

    :cond_3
    if-eqz v0, :cond_4

    .line 95
    const-string p0, "InMobiUnifiedIdService"

    const-string v0, "TAG"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 96
    :cond_4
    sget-object v0, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 98
    :cond_5
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 99
    sget-object v3, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "user_info_store"

    invoke-static {v0, v3}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v0

    .line 100
    const-string v3, "user_age_restricted"

    .line 101
    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, v0, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 189
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 190
    sput-object v0, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    .line 194
    :cond_6
    sget-object v0, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    .line 195
    const-string p0, "InMobiUnifiedIdService"

    const-string v0, "TAG"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 198
    :cond_8
    sget-object v0, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    if-nez p0, :cond_9

    .line 199
    sget-object v0, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    if-nez v0, :cond_9

    move v2, v1

    goto :goto_2

    :cond_9
    if-eqz p0, :cond_a

    .line 202
    sget-object v0, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    if-eqz v0, :cond_a

    .line 203
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :cond_a
    :goto_2
    if-eqz v2, :cond_b

    .line 204
    sget-object v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 205
    const-string p0, "InMobiUnifiedIdService"

    const-string v0, "TAG"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    const-string p0, "InMobiUnifiedIdService"

    const-string v0, "TAG"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 209
    :cond_b
    const-class v0, Lcom/inmobi/media/y4;

    monitor-enter v0

    .line 210
    :try_start_0
    sget-object v2, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    sput-object p0, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 212
    sget-object p0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    invoke-static {}, Lcom/inmobi/media/Nc;->c()V

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 214
    monitor-exit v0

    throw p0
.end method

.method public static final b(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->fetchUnifiedIdsInternal$media_release(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V

    return-void
.end method

.method public static final fetchUnifiedIds(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "InMobiUnifiedIdService"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/inmobi/media/Kb;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V

    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final fetchUnifiedIdsInternal$media_release(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "InMobiUnifiedIdService"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "FetchApiInvoked"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 3
    sget-object v2, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 4
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 5
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 6
    const-string v0, "signals"

    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 8
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getUnifiedIdServiceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->reset()V

    :cond_0
    if-nez v0, :cond_1

    .line 13
    const-string v0, "InMobiUnifiedIdService"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/Error;

    const-string v1, "UnifiedId Service not enabled, please connect with your respective partner manager"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {p0, v2, v0}, Lcom/inmobi/media/Pc;->a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V

    return-void

    .line 18
    :cond_1
    sget-object v0, Lcom/inmobi/media/Jc;->a:Lcom/inmobi/media/Jc;

    invoke-virtual {v0}, Lcom/inmobi/media/Jc;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 21
    invoke-static {}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->reset()V

    :cond_3
    if-eqz v0, :cond_4

    .line 22
    const-string v0, "InMobiUnifiedIdService"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/Error;

    const-string v1, "User has opted out for tracking"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {p0, v2, v0}, Lcom/inmobi/media/Pc;->a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V

    return-void

    .line 27
    :cond_4
    sget-object v0, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 29
    :cond_5
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 30
    sget-object v3, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "user_info_store"

    invoke-static {v0, v3}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v0

    .line 31
    const-string v3, "user_age_restricted"

    .line 32
    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, v0, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 121
    sput-object v0, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    .line 125
    :cond_6
    sget-object v0, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    if-eqz v0, :cond_8

    .line 126
    const-string v0, "InMobiUnifiedIdService"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/Error;

    const-string v1, "User has age restriction"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {p0, v2, v0}, Lcom/inmobi/media/Pc;->a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V

    return-void

    .line 134
    :cond_8
    const-class v0, Lcom/inmobi/media/Nc;

    .line 136
    monitor-enter v0

    .line 137
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz p0, :cond_9

    .line 138
    sget-object v1, Lcom/inmobi/media/Nc;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_9
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 141
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    .line 143
    :cond_a
    invoke-static {}, Lcom/inmobi/media/Nc;->d()V

    goto :goto_2

    .line 144
    :cond_b
    invoke-static {p0}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V

    .line 146
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 148
    monitor-exit v0

    throw p0
.end method

.method public static synthetic isPushCalled$annotations()V
    .locals 0

    return-void
.end method

.method public static final push(Lcom/inmobi/unifiedId/InMobiUserDataModel;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "InMobiUnifiedIdService"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/inmobi/media/Kb;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/unifiedId/InMobiUserDataModel;)V

    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final reset()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "InMobiUnifiedIdService"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/inmobi/media/Kb;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService$$ExternalSyntheticLambda0;-><init>()V

    .line 5
    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    new-instance v2, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final isPushCalled()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

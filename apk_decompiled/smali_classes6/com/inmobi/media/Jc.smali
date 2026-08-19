.class public final Lcom/inmobi/media/Jc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/Jc;

.field public static b:Lcom/inmobi/media/T0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/media/Jc;

    invoke-direct {v0}, Lcom/inmobi/media/Jc;-><init>()V

    sput-object v0, Lcom/inmobi/media/Jc;->a:Lcom/inmobi/media/Jc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()V
    .locals 6

    .line 1
    const-string v0, "TAG"

    const-string v1, "Jc"

    :try_start_0
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3
    new-instance v3, Lcom/inmobi/media/T0;

    invoke-direct {v3}, Lcom/inmobi/media/T0;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    const-class v4, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 5
    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :try_start_2
    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    const-string v4, "getAdvertisingIdInfo(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/media/T0;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/inmobi/media/T0;->a(Z)V

    .line 9
    sput-object v3, Lcom/inmobi/media/Jc;->b:Lcom/inmobi/media/T0;

    .line 10
    sget-object v2, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 13
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "user_info_store"

    invoke-static {v2, v4}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v2

    .line 14
    const-string v4, "user_age_restricted"

    .line 15
    const-string v5, "key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v2, v2, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 103
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 104
    sput-object v2, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    .line 108
    :cond_1
    sget-object v2, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    move v3, v2

    :cond_2
    if-eqz v3, :cond_4

    .line 109
    sget-object v2, Lcom/inmobi/media/Jc;->b:Lcom/inmobi/media/T0;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/inmobi/media/T0;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    :try_start_3
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 121
    :catch_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :catch_2
    :cond_4
    :goto_1
    return-void
.end method

.method public static final f()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/inmobi/media/Jc;->e()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/Jc;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/Jc;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    const-string v0, "Jc"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 6
    sget-object v0, Lcom/inmobi/media/Jc;->b:Lcom/inmobi/media/T0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Lcom/inmobi/media/T0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/T0;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/inmobi/media/Jc$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/inmobi/media/Jc$$ExternalSyntheticLambda0;-><init>()V

    .line 10
    invoke-static {p1}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()Lcom/inmobi/media/T0;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/Jc;->b:Lcom/inmobi/media/T0;

    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/Jc;->b:Lcom/inmobi/media/T0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/inmobi/media/T0;->c()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d()V
    .locals 4

    .line 1
    const-string v0, "TAG"

    const-string v1, "Jc"

    const-string v2, "Publisher device Id is "

    .line 3
    :try_start_0
    sget-object v3, Lcom/inmobi/media/Jc;->b:Lcom/inmobi/media/T0;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/inmobi/media/T0;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

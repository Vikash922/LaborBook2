.class public final Lcom/boilerplate/analytics/a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $eventName:Ljava/lang/String;

.field final synthetic $platform:Ljava/lang/String;

.field final synthetic $properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;


# direct methods
.method public constructor <init>(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/analytics/AnalyticsManagerImpl;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/analytics/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iput-object p2, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    iput-object p3, p0, Lcom/boilerplate/analytics/a;->$eventName:Ljava/lang/String;

    iput-object p4, p0, Lcom/boilerplate/analytics/a;->$properties:Ljava/util/HashMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/boilerplate/analytics/a;

    iget-object v1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v2, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    iget-object v3, p0, Lcom/boilerplate/analytics/a;->$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/boilerplate/analytics/a;->$properties:Ljava/util/HashMap;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/boilerplate/analytics/a;-><init>(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/analytics/a;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/analytics/a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/boilerplate/analytics/a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/boilerplate/analytics/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/boilerplate/analytics/a;->label:I

    if-nez v0, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    invoke-static {p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getEnabledPlatforms$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3bb99eb8

    if-eq v0, v1, :cond_10

    const v1, -0x1db9a9d9

    if-eq v0, v1, :cond_7

    const v1, 0x4e864ee

    if-eq v0, v1, :cond_4

    const v1, 0x4edd94fc

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "CleverTap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    invoke-static {p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getCleverTapAPI$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/clevertap/android/sdk/CleverTapAPI;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/boilerplate/analytics/a;->$eventName:Ljava/lang/String;

    iget-object v1, p0, Lcom/boilerplate/analytics/a;->$properties:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v3, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/clevertap/android/sdk/CleverTapAPI;->pushEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    invoke-static {v2, v3, v0, v1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logEventSuccess(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v0, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    iget-object v1, p0, Lcom/boilerplate/analytics/a;->$eventName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logEventFailure(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9
    :cond_4
    const-string v0, "AppsFlyer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    invoke-static {p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getAppsFlyerLib$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v1, p0, Lcom/boilerplate/analytics/a;->$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/boilerplate/analytics/a;->$properties:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getContext$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    invoke-static {v0, v3, v1, v2}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logEventSuccess(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v0, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    iget-object v1, p0, Lcom/boilerplate/analytics/a;->$eventName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logEventFailure(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 23
    :cond_7
    const-string v0, "Firebase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_1

    .line 37
    :cond_8
    iget-object p1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    invoke-static {p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getFirebaseAnalytics$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/boilerplate/analytics/a;->$eventName:Ljava/lang/String;

    iget-object v1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v2, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    iget-object v3, p0, Lcom/boilerplate/analytics/a;->$properties:Ljava/util/HashMap;

    .line 38
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 39
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 41
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_a

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_a
    instance-of v8, v6, Ljava/lang/Integer;

    if-eqz v8, :cond_b

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 43
    :cond_b
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_c

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 44
    :cond_c
    instance-of v8, v6, Ljava/lang/Boolean;

    if-eqz v8, :cond_d

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 45
    :cond_d
    instance-of v8, v6, Landroid/os/Bundle;

    if-eqz v8, :cond_9

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 49
    :cond_e
    invoke-virtual {p1, v0, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    invoke-static {v1, v2, v0, v3}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logEventSuccess(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 51
    :cond_f
    iget-object p1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v0, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    iget-object v1, p0, Lcom/boilerplate/analytics/a;->$eventName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logEventFailure(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_10
    const-string v0, "Mixpanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_1

    .line 57
    :cond_11
    iget-object p1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    invoke-static {p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getMixpanelAPI$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/boilerplate/analytics/a;->$properties:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/boilerplate/analytics/a;->$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v3, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    .line 58
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 59
    invoke-virtual {p1, v1, v4}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 60
    invoke-static {v2, v3, v1, v0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logEventSuccess(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 61
    :cond_12
    iget-object p1, p0, Lcom/boilerplate/analytics/a;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v0, p0, Lcom/boilerplate/analytics/a;->$platform:Ljava/lang/String;

    iget-object v1, p0, Lcom/boilerplate/analytics/a;->$eventName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logEventFailure(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 83
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

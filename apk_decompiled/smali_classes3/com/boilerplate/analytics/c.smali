.class public final Lcom/boilerplate/analytics/c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $platform:Ljava/lang/String;

.field final synthetic $userProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;


# direct methods
.method public constructor <init>(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/analytics/AnalyticsManagerImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/analytics/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iput-object p2, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    iput-object p3, p0, Lcom/boilerplate/analytics/c;->$userProperties:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/boilerplate/analytics/c;

    iget-object v0, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v1, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    iget-object v2, p0, Lcom/boilerplate/analytics/c;->$userProperties:Ljava/util/Map;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/boilerplate/analytics/c;-><init>(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/analytics/c;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/analytics/c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/boilerplate/analytics/c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/boilerplate/analytics/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/boilerplate/analytics/c;->label:I

    if-nez v0, :cond_e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    invoke-static {p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getEnabledPlatforms$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3bb99eb8

    if-eq v0, v1, :cond_b

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
    iget-object p1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    invoke-static {p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getCleverTapAPI$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/clevertap/android/sdk/CleverTapAPI;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/boilerplate/analytics/c;->$userProperties:Ljava/util/Map;

    iget-object v1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v2, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Lcom/clevertap/android/sdk/CleverTapAPI;->pushProfile(Ljava/util/Map;)V

    .line 7
    invoke-static {v1, v2, v0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logUserPropertiesSuccess(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v0, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logUserPropertiesFailure(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    invoke-static {p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getAppsFlyerLib$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/boilerplate/analytics/c;->$userProperties:Ljava/util/Map;

    iget-object v1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v2, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerLib;->setAdditionalData(Ljava/util/Map;)V

    .line 21
    invoke-static {v1, v2, v0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logUserPropertiesSuccess(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v0, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logUserPropertiesFailure(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    invoke-static {p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getFirebaseAnalytics$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/boilerplate/analytics/c;->$userProperties:Ljava/util/Map;

    iget-object v1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v2, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    .line 65
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_9
    invoke-static {v1, v2, v0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logUserPropertiesSuccess(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 70
    :cond_a
    iget-object p1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v0, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logUserPropertiesFailure(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_b
    const-string v0, "Mixpanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_1

    .line 76
    :cond_c
    iget-object p1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    invoke-static {p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$getMixpanelAPI$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/boilerplate/analytics/c;->$userProperties:Ljava/util/Map;

    iget-object v1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v2, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    .line 77
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 78
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->set(Lorg/json/JSONObject;)V

    .line 79
    invoke-static {v1, v2, v0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logUserPropertiesSuccess(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 80
    :cond_d
    iget-object p1, p0, Lcom/boilerplate/analytics/c;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v0, p0, Lcom/boilerplate/analytics/c;->$platform:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->access$logUserPropertiesFailure(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;)V

    .line 92
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 93
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

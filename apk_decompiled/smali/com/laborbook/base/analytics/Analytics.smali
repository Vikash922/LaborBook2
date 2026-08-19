.class public final Lcom/laborbook/base/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/base/analytics/Analytics$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007JS\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00122(\u0008\u0002\u0010\u0013\u001a\"\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015j\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0014\u00a2\u0006\u0002\u0010\u0016JZ\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0015j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u00142\u0006\u0010\u0010\u001a\u00020\u000f2&\u0010\u0018\u001a\"\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015j\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0014H\u0082@\u00a2\u0006\u0002\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/laborbook/base/analytics/Analytics;",
        "",
        "analyticsManager",
        "Lcom/boilerplate/analytics/AnalyticsManager;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "<init>",
        "(Lcom/boilerplate/analytics/AnalyticsManager;Lcom/laborbook/base/datastore/DataStoreManager;)V",
        "getAnalyticsManager",
        "()Lcom/boilerplate/analytics/AnalyticsManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "logEvent",
        "",
        "eventName",
        "",
        "eventType",
        "eventPlatforms",
        "",
        "properties",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V",
        "mergeSuperProperties",
        "hashMap",
        "(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final AMPLITUDE_EVENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLICK:Ljava/lang/String; = "click"

.field public static final Companion:Lcom/laborbook/base/analytics/Analytics$Companion;

.field public static final IMPRESSION:Ljava/lang/String; = "impression"

.field public static final SYSTEM:Ljava/lang/String; = "system"


# instance fields
.field private final analyticsManager:Lcom/boilerplate/analytics/AnalyticsManager;

.field private final dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/laborbook/base/analytics/Analytics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/base/analytics/Analytics$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/base/analytics/Analytics;->Companion:Lcom/laborbook/base/analytics/Analytics$Companion;

    const/16 v0, 0xb

    .line 26
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "login_success"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    const-string v1, "add_labor_manual"

    const-string v2, "added_labor"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 29
    const-string v1, "add_labor_from_contacts"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 31
    const-string v1, "labor_reports_tap"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 33
    const-string v1, "premium_offer_dialog"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 34
    const-string v1, "start_trial_click"

    const-string v2, "trial"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 35
    const-string v1, "select_upi_app"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 36
    const-string v1, "payment_success"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 37
    const-string v1, "payment_cancelled"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 38
    const-string v1, "subscription_activated"

    const-string v2, "subscribe"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const/16 v3, 0xa

    .line 39
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    .line 24
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/analytics/Analytics;->AMPLITUDE_EVENTS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/boilerplate/analytics/AnalyticsManager;Lcom/laborbook/base/datastore/DataStoreManager;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataStoreManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/base/analytics/Analytics;->analyticsManager:Lcom/boilerplate/analytics/AnalyticsManager;

    iput-object p2, p0, Lcom/laborbook/base/analytics/Analytics;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    return-void
.end method

.method public static final synthetic access$getAMPLITUDE_EVENTS$cp()Ljava/util/Map;
    .locals 1

    .line 12
    sget-object v0, Lcom/laborbook/base/analytics/Analytics;->AMPLITUDE_EVENTS:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$mergeSuperProperties(Lcom/laborbook/base/analytics/Analytics;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/base/analytics/Analytics;->mergeSuperProperties(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic logEvent$default(Lcom/laborbook/base/analytics/Analytics;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method private final mergeSuperProperties(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;

    iget v3, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;

    invoke-direct {v2, v0, v1}, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;-><init>(Lcom/laborbook/base/analytics/Analytics;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 72
    iget v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, ""

    packed-switch v4, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget v3, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iget-object v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    check-cast v5, [Lkotlin/Pair;

    iget-object v6, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    check-cast v6, [Lkotlin/Pair;

    iget-object v2, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget v6, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iget-object v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    check-cast v7, [Lkotlin/Pair;

    iget-object v8, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    check-cast v8, [Lkotlin/Pair;

    iget-object v9, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashMap;

    iget-object v10, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/base/analytics/Analytics;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v7

    move-object v5, v8

    move-object v12, v9

    move v7, v6

    const/4 v6, 0x6

    goto/16 :goto_6

    :pswitch_2
    iget v7, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iget-object v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v8, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    check-cast v8, [Lkotlin/Pair;

    iget-object v9, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    check-cast v9, [Lkotlin/Pair;

    iget-object v10, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    iget-object v11, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/laborbook/base/analytics/Analytics;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v9

    move-object/from16 v16, v12

    move-object v12, v10

    move-object v10, v11

    move-object/from16 v11, v16

    goto/16 :goto_5

    :pswitch_3
    iget v8, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iget-object v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v9, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    check-cast v9, [Lkotlin/Pair;

    iget-object v11, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    check-cast v11, [Lkotlin/Pair;

    iget-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/util/HashMap;

    iget-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/laborbook/base/analytics/Analytics;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v13

    move-object v13, v11

    goto/16 :goto_4

    :pswitch_4
    iget v9, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iget-object v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    check-cast v12, [Lkotlin/Pair;

    iget-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    check-cast v13, [Lkotlin/Pair;

    iget-object v14, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/util/HashMap;

    iget-object v15, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/laborbook/base/analytics/Analytics;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v14

    move-object v14, v5

    move-object/from16 v5, v16

    goto/16 :goto_3

    :pswitch_5
    iget v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iget-object v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    check-cast v12, [Lkotlin/Pair;

    iget-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    check-cast v13, [Lkotlin/Pair;

    iget-object v14, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/util/HashMap;

    iget-object v15, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v6, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/laborbook/base/analytics/Analytics;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_6
    iget v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iget-object v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    check-cast v6, [Lkotlin/Pair;

    iget-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    check-cast v12, [Lkotlin/Pair;

    iget-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/util/HashMap;

    iget-object v14, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/laborbook/base/analytics/Analytics;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 v1, 0x9

    .line 75
    new-array v6, v1, [Lkotlin/Pair;

    iget-object v1, v0, Lcom/laborbook/base/analytics/Analytics;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v11}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v0, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    const-string v12, "user_id"

    iput-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    const/4 v13, 0x0

    iput v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iput v10, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1

    return-object v3

    :cond_1
    move-object v15, v0

    move-object v14, v4

    move v4, v13

    move-object v13, v5

    move-object v5, v12

    move-object v12, v6

    :goto_1
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v6, v4

    .line 76
    iget-object v1, v15, Lcom/laborbook/base/analytics/Analytics;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_NAME()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v11}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v15, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    const-string v5, "user_name"

    iput-object v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    iput v10, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iput v9, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2

    return-object v3

    :cond_2
    move v4, v10

    move-object v6, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    :goto_2
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v12, v4

    .line 77
    iget-object v1, v6, Lcom/laborbook/base/analytics/Analytics;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getMOBILE_NUMBER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v11}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v6, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    iput-object v15, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    iput-object v14, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    const-string v4, "user_mobile_number"

    iput-object v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    iput v9, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iput v8, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    move-object v12, v13

    move-object v5, v14

    move-object v14, v6

    :goto_3
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v12, v9

    .line 78
    iget-object v1, v14, Lcom/laborbook/base/analytics/Analytics;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_TYPE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v11}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v14, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    iput-object v15, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    const-string v4, "user_type"

    iput-object v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    iput v8, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iput v7, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v12, v5

    move-object v9, v13

    :goto_4
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v8

    .line 79
    iget-object v1, v14, Lcom/laborbook/base/analytics/Analytics;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getAPP_OPEN_COUNT()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v14, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    iput-object v15, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    const-string v4, "app_open_count"

    iput-object v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    iput v7, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    const/4 v5, 0x5

    iput v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v8, v13

    move-object v11, v14

    move-object v10, v15

    :goto_5
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v8, v7

    .line 80
    iget-object v1, v11, Lcom/laborbook/base/analytics/Analytics;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getLANGUAGE_KEY()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    const-string v5, "en"

    invoke-virtual {v1, v4, v5}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v11, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    const-string v4, "selected_language"

    iput-object v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    const/4 v6, 0x6

    iput v6, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    move v7, v5

    move-object v5, v13

    :goto_6
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v13, v7

    .line 81
    const-string v1, "app_version"

    const-string v4, "1.6.0"

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v5, v6

    .line 82
    const-string v1, "event_type"

    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v5, v4

    .line 83
    iget-object v1, v11, Lcom/laborbook/base/analytics/Analytics;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v6, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v6}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getINSTALL_SOURCE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    const-string v7, "organic"

    invoke-virtual {v1, v6, v7}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v12, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$2:Ljava/lang/Object;

    const-string v6, "install_source"

    iput-object v6, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$3:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$4:Ljava/lang/Object;

    iput-object v7, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->L$5:Ljava/lang/Object;

    const/16 v7, 0x8

    iput v7, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->I$0:I

    iput v4, v2, Lcom/laborbook/base/analytics/Analytics$mergeSuperProperties$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v4, v6

    move v3, v7

    move-object v2, v12

    move-object v6, v5

    :goto_7
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v5, v3

    .line 74
    invoke-static {v6}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v2, :cond_8

    .line 88
    check-cast v1, Ljava/util/Map;

    check-cast v2, Ljava/util/Map;

    invoke-static {v1, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_8

    .line 90
    :cond_8
    check-cast v1, Ljava/util/Map;

    .line 87
    :goto_8
    const-string v2, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.Any>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/HashMap;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getAnalyticsManager()Lcom/boilerplate/analytics/AnalyticsManager;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/laborbook/base/analytics/Analytics;->analyticsManager:Lcom/boilerplate/analytics/AnalyticsManager;

    return-object v0
.end method

.method public final getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/laborbook/base/analytics/Analytics;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method public final logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPlatforms"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/base/analytics/Analytics$logEvent$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/laborbook/base/analytics/Analytics$logEvent$1;-><init>(Lcom/laborbook/base/analytics/Analytics;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

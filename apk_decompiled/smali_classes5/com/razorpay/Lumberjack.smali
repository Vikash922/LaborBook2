.class final Lcom/razorpay/Lumberjack;
.super Ljava/lang/Object;
.source "Lumberjack.java"


# static fields
.field private static $$II__1$l_:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static $$_$I1l1_:I = 0x0

.field private static $I__I:Ljava/lang/String; = null

.field private static $l$I1I11I1:Ljava/lang/String; = null

.field private static final $lIII_$$:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static $l_I$1:F = 0.0f

.field private static $lll$_lIl:Z = false

.field private static I1I_l1:Ljava/lang/String; = null

.field private static I1lII:I = 0x0

.field private static II1$II$_1:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static IIII$1$_I:Ljava/lang/String; = null

.field private static I__1l:Ljava/util/concurrent/ScheduledFuture; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static final Il__I1Il:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _$_l_$1l$:Ljava/lang/String; = null

.field private static final _1__:Ljava/lang/Object;

.field private static __II$$:Z = false

.field private static __Il11I1l:Z = false

.field private static ___I1$lI:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static ___Il$:Lorg/json/JSONObject; = null

.field private static final __l1_:I = 0xa

.field private static _l_1l__:Ljava/util/concurrent/ScheduledExecutorService; = null

.field private static _l_l_1IlI:Ljava/lang/String; = null

.field private static final _llI:I = 0xa

.field private static l$$$11Il1:Lorg/json/JSONObject; = null

.field private static final l$1_I$l$:Ljava/lang/String; = "SavedEventsData"

.field private static l$Illl:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final lI$$I1$l:Ljava/lang/String; = "default"

.field private static lI_l1Il_:Ljava/lang/String;

.field private static final l_lIl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static llIl:Z

.field private static ll_$$111:Ljava/lang/String;


# direct methods
.method private static $$_$I1l1_()V
    .locals 4

    .line 1130
    const-string v0, "Lumberjack: Time-based flush triggered ("

    sget-boolean v1, Lcom/razorpay/Lumberjack;->llIl:Z

    if-nez v1, :cond_0

    .line 1131
    invoke-static {}, Lcom/razorpay/Lumberjack;->$l_I$1()V

    return-void

    .line 1137
    :cond_0
    :try_start_0
    sget-object v1, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :try_start_1
    sget-object v2, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    const-string v3, "events"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1139
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1140
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v2, :cond_2

    .line 1143
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " events)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1144
    invoke-static {}, Lcom/razorpay/Lumberjack;->postData()V

    .line 1148
    :cond_2
    sget-object v0, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1149
    :try_start_3
    sget-object v1, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    const-string v2, "events"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1150
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1151
    :cond_3
    invoke-static {}, Lcom/razorpay/Lumberjack;->$l_I$1()V

    .line 1153
    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v0

    .line 1140
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 1155
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S2"

    const-string v2, "Error in timed flush"

    invoke-static {v0, v1, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static $I__I()Ljava/lang/String;
    .locals 2

    .line 346
    sget-object v0, Lcom/razorpay/Lumberjack;->II1$II$_1:Ljava/util/Map;

    const-string v1, "merchant_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private static $l$I1I11I1()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 390
    const-string v1, "version"

    sget-object v2, Lcom/razorpay/Lumberjack;->ll_$$111:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string v1, "type"

    sget-object v2, Lcom/razorpay/Lumberjack;->I1I_l1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v1, "framework"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getFramework()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/razorpay/Lumberjack;->I1I_l1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getFramework()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static $l_I$1()V
    .locals 3

    .line 1099
    sget-object v0, Lcom/razorpay/Lumberjack;->_1__:Ljava/lang/Object;

    monitor-enter v0

    .line 1100
    :try_start_0
    sget-object v1, Lcom/razorpay/Lumberjack;->I__1l:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1101
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v1, 0x0

    .line 1102
    sput-object v1, Lcom/razorpay/Lumberjack;->I__1l:Ljava/util/concurrent/ScheduledFuture;

    .line 1103
    const-string v1, "Lumberjack: Stopped time-based flush timer"

    invoke-static {v1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1105
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static $lll$_lIl()V
    .locals 1

    .line 936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/razorpay/Lumberjack;->___I1$lI:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic $r8$lambda$HiHV2v1ZIzQ9SwsI9mpcjdHg7nY(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Integer;->sum(II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iqHM3yuoHGQVZ0uCkFbbqB1sEZ0()V
    .locals 0

    invoke-static {}, Lcom/razorpay/Lumberjack;->$$_$I1l1_()V

    return-void
.end method

.method public static synthetic $r8$lambda$llz7j14zSdS4T6BeIU2pdaAg4fc(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/razorpay/Lumberjack;->_1__:Ljava/lang/Object;

    .line 70
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/razorpay/Lumberjack;->$I__I:Ljava/lang/String;

    .line 71
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/razorpay/Lumberjack;->$l$I1I11I1:Ljava/lang/String;

    .line 72
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/razorpay/Lumberjack;->lI_l1Il_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 88
    sput-boolean v0, Lcom/razorpay/Lumberjack;->llIl:Z

    .line 90
    const-string v1, "standalone"

    sput-object v1, Lcom/razorpay/Lumberjack;->I1I_l1:Ljava/lang/String;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/razorpay/Lumberjack;->___I1$lI:Ljava/util/ArrayList;

    .line 105
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/razorpay/Lumberjack;->$$II__1$l_:Ljava/util/Map;

    .line 110
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/razorpay/Lumberjack;->II1$II$_1:Ljava/util/Map;

    .line 118
    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->DEVICE_UPI_APPS_DISCOVERY_START:Lcom/razorpay/AnalyticsEvent;

    .line 119
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->DEVICE_UPI_APPS_DISCOVERY_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    .line 120
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_GET_APPS_SUPPORTING_UPI:Lcom/razorpay/AnalyticsEvent;

    .line 121
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APPS_DISCOVERY_START:Lcom/razorpay/AnalyticsEvent;

    .line 122
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APPS_DISCOVERY_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    .line 123
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v2, v5

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_RECEIVED_SMS:Lcom/razorpay/AnalyticsEvent;

    .line 125
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v2, v5

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_SHOWED_ONE_TIME_CONSENT:Lcom/razorpay/AnalyticsEvent;

    .line 126
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v2, v5

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_TIMEOUT:Lcom/razorpay/AnalyticsEvent;

    .line 127
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    aput-object v3, v2, v5

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->PHONE_NUMBER_HINT_INTENT_LAUNCH_FAILED:Lcom/razorpay/AnalyticsEvent;

    .line 129
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    aput-object v3, v2, v5

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->WEB_VIEW_PRIMARY_TO_SECONDARY_SWITCH:Lcom/razorpay/AnalyticsEvent;

    .line 131
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x9

    aput-object v3, v2, v5

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->WEB_VIEW_SECONDARY_TO_PRIMARY_SWITCH:Lcom/razorpay/AnalyticsEvent;

    .line 132
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    aput-object v3, v2, v5

    sget-object v3, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_HARD_BACK_PRESSED:Lcom/razorpay/AnalyticsEvent;

    .line 134
    invoke-virtual {v3}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb

    aput-object v3, v2, v5

    .line 118
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/razorpay/Lumberjack;->Il__I1Il:Ljava/util/Set;

    .line 141
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/razorpay/Lumberjack;->l$Illl:Ljava/util/Map;

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/razorpay/Lumberjack;->l_lIl:Ljava/util/Map;

    .line 152
    sget-object v2, Lcom/razorpay/AnalyticsEvent;->DEVICE_UPI_APPS_DISCOVERY_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    .line 153
    invoke-virtual {v2}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "deviceApps"

    aput-object v6, v5, v0

    .line 154
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v2, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APPS_DISCOVERY_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    .line 157
    invoke-virtual {v2}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "allUpiDeviceApps"

    aput-object v5, v4, v0

    .line 158
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 156
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->DEVICE_UPI_APPS_DISCOVERY_START:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APPS_DISCOVERY_START:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_GET_APPS_SUPPORTING_UPI:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_HARD_BACK_PRESSED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_RECEIVED_SMS:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_SHOWED_ONE_TIME_CONSENT:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_TIMEOUT:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->PHONE_NUMBER_HINT_INTENT_LAUNCH_FAILED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->WEB_VIEW_PRIMARY_TO_SECONDARY_SWITCH:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->WEB_VIEW_SECONDARY_TO_PRIMARY_SWITCH:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/razorpay/Lumberjack;->$lIII_$$:Ljava/util/Set;

    .line 191
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_INIT_END:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->FETCH_PREFERENCES_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->FETCH_PREFERENCES_CALL_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->FETCH_PREFERENCES_METHODS_CALL_FAIL:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_SUBMIT_START:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_PAYLOAD_PASSED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_TLS_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_NATIVE_INTENT_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APP_LAUNCHED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_NATIVE_INTENT_ONACTIVITY_RESULT:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_PAYMENT_COMPLETE:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_BACK_PRESSED_HARD:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_BACK_PRESSED_SOFT:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APPS_DISCOVERY_START:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APPS_DISCOVERY_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_INIT:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->ACTIVITY_ONCREATE_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_LOADED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_RENDERED_COMPLETE:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_SUBMIT:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->NATIVE_INTENT_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->NATIVE_INTENT_ONACTIVITY_RESULT:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PAYMENT_COMPLETE:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CALLING_ON_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CALLING_ON_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->HANDOVER_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_SOFT_BACK_PRESSED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_HARD_BACK_PRESSED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_JS_DISMISSED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->ACTIVITY_ONDESTROY_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_TLS_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->WEBVIEW_CREATION_FAILED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->WEBVIEW_RENDERER_CRASHED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->WEB_VIEW_NETWORK_ERROR_RETRY:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->WEB_VIEW_NETWORK_RETRY_EXHAUSTED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->WEB_VIEW_NETWORK_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->WEB_VIEW_SECONDARY_NETWORK_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->SDK_CRASH_LOGGED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->SDK_PROCESS_EXIT_LOGGED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CRITICAL_DEPENDENCY_FAILED:Lcom/razorpay/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static I1lII()V
    .locals 3

    .line 1112
    sget-object v0, Lcom/razorpay/Lumberjack;->_1__:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_0
    sget-object v1, Lcom/razorpay/Lumberjack;->_l_1l__:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1115
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1117
    :try_start_2
    const-string v2, "Error shutting down flush scheduler"

    invoke-static {v2, v1}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x0

    .line 1119
    sput-object v1, Lcom/razorpay/Lumberjack;->_l_1l__:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1121
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static IIII$1$_I()V
    .locals 2

    .line 929
    sget-object v0, Lcom/razorpay/Lumberjack;->___I1$lI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 930
    invoke-static {v1}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 932
    :cond_0
    invoke-static {}, Lcom/razorpay/Lumberjack;->$lll$_lIl()V

    return-void
.end method

.method private static I__1l()Ljava/lang/String;
    .locals 2

    .line 328
    const-string v0, "custom"

    sget-object v1, Lcom/razorpay/Lumberjack;->I1I_l1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const-string v0, "customui_android"

    return-object v0

    .line 331
    :cond_0
    const-string v0, "checkout_android"

    return-object v0
.end method

.method private static I__1l(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 426
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 427
    const-string v1, "mode"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v1, "device"

    invoke-static {p0}, Lcom/razorpay/Lumberjack;->_llI(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string v1, "sdk"

    invoke-static {}, Lcom/razorpay/Lumberjack;->$l$I1I11I1()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string v1, "network"

    invoke-static {p0}, Lcom/razorpay/Lumberjack;->_l_1l__(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    const-string v1, "screen"

    invoke-static {}, Lcom/razorpay/Lumberjack;->lI_l1Il_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v1, "locale"

    invoke-static {}, Lcom/razorpay/BaseUtils;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string v1, "timezone"

    invoke-static {}, Lcom/razorpay/Lumberjack;->__l1_()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/razorpay/Lumberjack;->I1I_l1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getFramework()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "framework"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    const-string v1, "user_agent"

    invoke-static {}, Lcom/razorpay/Lumberjack;->l$1_I$l$()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string v1, "checkout_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    const-string v1, "local_order_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    const-string v1, "webview_user_agent"

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getWebViewUserAgent(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static _$_l_$1l$()V
    .locals 4

    .line 882
    :try_start_0
    sget-object v0, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    .line 885
    :cond_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :try_start_1
    sget-object v1, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    const-string v2, "events"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 889
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S0"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static _1__()Ljava/lang/String;
    .locals 3

    .line 338
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 339
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static __II$$()V
    .locals 0

    .line 1057
    invoke-static {}, Lcom/razorpay/Lumberjack;->_$_l_$1l$()V

    .line 1058
    invoke-static {}, Lcom/razorpay/Lumberjack;->$lll$_lIl()V

    return-void
.end method

.method private static __Il11I1l()V
    .locals 9

    .line 1066
    sget-boolean v0, Lcom/razorpay/Lumberjack;->llIl:Z

    if-nez v0, :cond_0

    return-void

    .line 1070
    :cond_0
    sget-object v0, Lcom/razorpay/Lumberjack;->_1__:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_0
    sget-object v1, Lcom/razorpay/Lumberjack;->I__1l:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/razorpay/Lumberjack;->I__1l:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1073
    monitor-exit v0

    return-void

    .line 1076
    :cond_1
    sget-object v1, Lcom/razorpay/Lumberjack;->_l_1l__:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1077
    :cond_2
    new-instance v1, Lcom/razorpay/Lumberjack$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/razorpay/Lumberjack$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/razorpay/Lumberjack;->_l_1l__:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1084
    :cond_3
    sget-object v2, Lcom/razorpay/Lumberjack;->_l_1l__:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/razorpay/Lumberjack$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/razorpay/Lumberjack$$ExternalSyntheticLambda2;-><init>()V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    const-wide/16 v6, 0xa

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lcom/razorpay/Lumberjack;->I__1l:Ljava/util/concurrent/ScheduledFuture;

    .line 1091
    const-string v1, "Lumberjack: Started time-based flush timer (10s interval)"

    invoke-static {v1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1092
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static __l1_()Ljava/lang/CharSequence;
    .locals 1

    .line 276
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static __l1_(Landroid/content/Context;)V
    .locals 1

    .line 297
    const-string v0, "window"

    invoke-static {p0, v0}, Lcom/razorpay/BaseUtils;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 298
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 299
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 300
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 301
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/razorpay/Lumberjack;->$l_I$1:F

    .line 302
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/razorpay/Lumberjack;->$$_$I1l1_:I

    .line 303
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/razorpay/Lumberjack;->I1lII:I

    return-void
.end method

.method private static __l1_(Lorg/json/JSONObject;)V
    .locals 4

    .line 836
    :try_start_0
    const-string v0, "events"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 837
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/BaseConfig;->isLumberjackEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v1

    sget-object v2, Lcom/razorpay/Lumberjack;->ll_$$111:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/razorpay/BaseConfig;->isVersionBlocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 839
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 841
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 842
    const-string v2, "x-identifier"

    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/BaseConfig;->getLumberjackSdkIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v2, "Sending data to lumberjack"

    invoke-static {v2}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 845
    invoke-static {p0, v0}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 846
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 847
    invoke-static {}, Lcom/razorpay/Lumberjack;->$I__I()Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/GlobalUrlConfig;->getTrackUrl()Ljava/lang/String;

    move-result-object v2

    .line 849
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?key_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 852
    :cond_0
    new-instance v0, Lcom/razorpay/Lumberjack$1;

    invoke-direct {v0}, Lcom/razorpay/Lumberjack$1;-><init>()V

    invoke-static {v2, p0, v1, v0}, Lcom/razorpay/Owl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 859
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "S0"

    const-string v1, "makePostRequest: failed to read events array"

    invoke-static {p0, v0, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static _l_1l__()Ljava/lang/String;
    .locals 2

    .line 316
    const-string v0, "custom"

    sget-object v1, Lcom/razorpay/Lumberjack;->I1I_l1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "checkout-custom"

    return-object v0

    .line 319
    :cond_0
    const-string v0, "checkout"

    return-object v0
.end method

.method private static _l_1l__(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 400
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 401
    const-string v1, "bluetooth"

    sget-boolean v2, Lcom/razorpay/Lumberjack;->__II$$:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 402
    const-string v1, "carrier"

    sget-object v2, Lcom/razorpay/Lumberjack;->IIII$1$_I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string v1, "cellular"

    sget-boolean v2, Lcom/razorpay/Lumberjack;->$lll$_lIl:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 404
    const-string v1, "cellular_network_type"

    sget-object v2, Lcom/razorpay/Lumberjack;->_$_l_$1l$:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v1, "wifi"

    sget-boolean v2, Lcom/razorpay/Lumberjack;->__Il11I1l:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 406
    const-string v1, "carrier_network"

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getCarrierOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v1, "network_type"

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    const-string v1, "ip_address"

    sget-object v2, Lcom/razorpay/BaseUtils;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v1, "is_roming"

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 410
    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getDeviceAttributes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 411
    const-string v1, "device_Id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    sget-object v1, Lcom/razorpay/Lumberjack;->$I__I:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    sget-object v1, Lcom/razorpay/Lumberjack;->$l$I1I11I1:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static _llI()Ljava/lang/String;
    .locals 4

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _llI(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 352
    const-string v1, "id"

    invoke-static {p0}, Lcom/razorpay/BaseConfig;->getAdvertisingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v1, "manufacturer"

    sget-object v2, Lcom/razorpay/Lumberjack;->$I__I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v1, "model"

    sget-object v2, Lcom/razorpay/Lumberjack;->$l$I1I11I1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v1, "name"

    sget-object v2, Lcom/razorpay/Lumberjack;->lI_l1Il_:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v1, "type"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    sget-object v1, Lcom/razorpay/Lumberjack;->$I__I:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    sget-object v1, Lcom/razorpay/Lumberjack;->$l$I1I11I1:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "w X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_size"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v1, "device_resolution"

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getDisplayResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getTotalRamMB(Landroid/content/Context;)J

    move-result-wide v1

    .line 365
    const-string v3, "total_ram_mb"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 366
    const-string v3, "free_ram_mb"

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getFreeRamMB(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 367
    const-string v3, "cpu_cores"

    invoke-static {}, Lcom/razorpay/BaseUtils;->getCpuCores()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    const-string v3, "performance_class"

    invoke-static {p0}, Lcom/razorpay/PerformanceUtil;->getPerformanceClass(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    const-string v3, "is_low_end_device"

    invoke-static {p0}, Lcom/razorpay/PerformanceUtil;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 374
    const-string v3, "power_save_mode"

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->isPowerSaveMode(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 375
    const-string v3, "battery_level"

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getBatteryLevel(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    const-string v3, "is_charging"

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->isCharging(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide/16 v3, 0x1000

    cmp-long p0, v1, v3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 379
    :goto_0
    const-string v1, "is_low_ram_device"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 382
    const-string p0, "gpu_renderer"

    invoke-static {}, Lcom/razorpay/GpuInfoUtil;->getGpuRenderer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string p0, "gpu_vendor"

    invoke-static {}, Lcom/razorpay/GpuInfoUtil;->getGpuVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static _llI(Lorg/json/JSONObject;)V
    .locals 3

    .line 1343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1344
    const-string v1, "accept"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    const-string v1, "content-type"

    const-string v2, "applications/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1347
    new-instance v1, Lcom/razorpay/Lumberjack$2;

    invoke-direct {v1}, Lcom/razorpay/Lumberjack$2;-><init>()V

    const-string v2, "https://lumberjack-metrics.razorpay.com/v1/frontend-metrics"

    invoke-static {v2, p0, v0, v1}, Lcom/razorpay/Owl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    return-void
.end method

.method static addAmountToProperties(Lorg/json/JSONObject;)V
    .locals 3

    .line 983
    const-string v0, "amount"

    :try_start_0
    invoke-static {p0, v0}, Lcom/razorpay/Lumberjack;->getStringFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 984
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 985
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/razorpay/Lumberjack;->addOrderProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static addFilteredPropertiesFromPayload(Lorg/json/JSONObject;)V
    .locals 6

    .line 999
    const-string v0, "wallet"

    const-string v1, "method"

    :try_start_0
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->addAmountToProperties(Lorg/json/JSONObject;)V

    .line 1000
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->addFrameworkToProperties(Lorg/json/JSONObject;)V

    .line 1001
    const-string v2, "contact"

    sget-object v3, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-static {p0, v2, v3}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Lorg/json/JSONObject;Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    .line 1002
    const-string v2, "email"

    sget-object v3, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-static {p0, v2, v3}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Lorg/json/JSONObject;Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    .line 1003
    const-string v2, "order_id"

    sget-object v3, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-static {p0, v2, v3}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Lorg/json/JSONObject;Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    .line 1005
    invoke-static {p0, v1}, Lcom/razorpay/Lumberjack;->getStringFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 1009
    :cond_0
    const-string v3, "token"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "saved card"

    if-eqz v3, :cond_1

    move-object v2, v4

    .line 1013
    :cond_1
    :try_start_1
    invoke-static {v1, v2}, Lcom/razorpay/Lumberjack;->addPaymentProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1014
    const-string v1, "card"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 1015
    const-string v0, "card[number]"

    invoke-static {p0, v0}, Lcom/razorpay/Lumberjack;->getStringFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1016
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_6

    .line 1017
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1018
    const-string v0, "card_number"

    invoke-static {v0, p0}, Lcom/razorpay/Lumberjack;->addPaymentProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1020
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1021
    const-string v0, "razorpay_otp"

    invoke-static {p0, v0}, Lcom/razorpay/Lumberjack;->getBooleanFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    .line 1022
    const-string v0, "Checkout Login"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    xor-int/2addr p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/razorpay/Lumberjack;->addOrderProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1023
    :cond_3
    const-string v1, "netbanking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1024
    const-string v0, "bank"

    sget-object v1, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-static {p0, v0, v1}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Lorg/json/JSONObject;Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    goto :goto_0

    .line 1025
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1026
    sget-object v1, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-static {p0, v0, v1}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Lorg/json/JSONObject;Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    goto :goto_0

    .line 1027
    :cond_5
    const-string v0, "upi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1028
    const-string v0, "flow"

    const-string v1, "_[flow]"

    invoke-static {p0, v1}, Lcom/razorpay/Lumberjack;->getStringFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/razorpay/Lumberjack;->addPaymentProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to add props to lumberjack: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S2"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method static addFrameworkToProperties(Lorg/json/JSONObject;)V
    .locals 2

    .line 992
    const-string v0, "framework"

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/razorpay/Lumberjack;->getStringFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "native"

    :goto_0
    invoke-static {v0, p0}, Lcom/razorpay/Lumberjack;->addOrderProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static addGlobalProperties(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 14

    .line 748
    const-string v0, "method"

    const-string v1, "order_id"

    const-string v2, "merchant_key"

    const-string v3, "os_version"

    const-string v4, "platform"

    const-string v5, "properties"

    .line 749
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 750
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_1

    .line 754
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 756
    :cond_1
    const-string v7, "merchant_app_name"

    sget-object v8, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_NAME:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 757
    const-string v7, "merchant_app_version"

    sget-object v8, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_VERSION:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    const-string v7, "merchant_app_package"

    sget-object v8, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_NAMESPACE:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    const-string v7, "merchant_app_target_sdk"

    sget v8, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_TARGET_SDK:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 760
    const-string v7, "merchant_app_build"

    sget v8, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_BUILD:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 761
    const-string v7, "mobile_sdk"

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    const-string v7, "platform_version"

    sget-object v8, Lcom/razorpay/Lumberjack;->ll_$$111:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 763
    const-string v7, "os"

    const-string v8, "android"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 764
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    const-string v7, "library"

    sget-object v8, Lcom/razorpay/AnalyticsUtil;->libraryType:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    sget-object v7, Lcom/razorpay/Lumberjack;->$$II__1$l_:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v9, " to JSONObject"

    const-string v10, "Error adding analytics property "

    const-string v11, "S0"

    if-eqz v8, :cond_2

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 769
    :try_start_2
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v12

    .line 771
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 772
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 771
    invoke-static {v12, v11, v8}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 776
    :cond_2
    sget-object v7, Lcom/razorpay/Lumberjack;->II1$II$_1:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 778
    :try_start_4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v12

    .line 780
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 781
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 780
    invoke-static {v12, v11, v8}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 786
    :cond_3
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/razorpay/BaseConfig;->isLumberjackV2Enabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 789
    const-string v5, "event_type"

    invoke-static {}, Lcom/razorpay/Lumberjack;->_l_1l__()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 790
    const-string v5, "event_version"

    const-string v6, "v2"

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    const-string v5, "origin"

    invoke-static {}, Lcom/razorpay/Lumberjack;->I__1l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v5, "uuid"

    sget-object v6, Lcom/razorpay/Lumberjack;->_l_l_1IlI:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    const-string v5, "checkout_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v5, "build_id"

    sget-object v6, Lcom/razorpay/Lumberjack;->ll_$$111:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v5, 0x2

    .line 796
    invoke-virtual {p0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 797
    const-string v4, "env"

    const-wide/16 v5, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 798
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string v3, "device_manufacturer"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    sget-object v3, Lcom/razorpay/Lumberjack;->II1$II$_1:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 802
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    :cond_4
    const-string v2, "merchant_id"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    sget-object v2, Lcom/razorpay/Lumberjack;->II1$II$_1:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 807
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 809
    :cond_5
    sget-object v1, Lcom/razorpay/Lumberjack;->$$II__1$l_:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 811
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_6
    return-object p0
.end method

.method static addOrderProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 590
    sget-object v0, Lcom/razorpay/Lumberjack;->II1$II$_1:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static addPaymentProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 586
    sget-object v0, Lcom/razorpay/Lumberjack;->$$II__1$l_:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static clearOrderProperties()V
    .locals 1

    .line 1053
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/razorpay/Lumberjack;->II1$II$_1:Ljava/util/Map;

    return-void
.end method

.method static clearPaymentProperties()V
    .locals 1

    .line 1049
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/razorpay/Lumberjack;->$$II__1$l_:Ljava/util/Map;

    return-void
.end method

.method static createBaseTrackEvent(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 595
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 596
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 597
    const-string v3, "event"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    const-string p0, "timestamp"

    invoke-virtual {v2, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 602
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "S0"

    const-string v1, "Error in creating base for trackEvent"

    invoke-static {p0, v0, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static destroy()V
    .locals 1

    .line 1038
    invoke-static {}, Lcom/razorpay/Lumberjack;->$l_I$1()V

    .line 1039
    invoke-static {}, Lcom/razorpay/Lumberjack;->I1lII()V

    .line 1041
    invoke-static {}, Lcom/razorpay/Lumberjack;->clearOrderProperties()V

    .line 1042
    invoke-static {}, Lcom/razorpay/Lumberjack;->clearPaymentProperties()V

    .line 1043
    invoke-static {}, Lcom/razorpay/Lumberjack;->__II$$()V

    .line 1044
    sget-object v0, Lcom/razorpay/Lumberjack;->l$Illl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 1045
    sput-boolean v0, Lcom/razorpay/Lumberjack;->llIl:Z

    return-void
.end method

.method static filterEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1246
    const-string v0, "properties"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1247
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1248
    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1249
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1250
    invoke-static {v2}, Lcom/razorpay/Lumberjack;->filterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1252
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object p0
.end method

.method static filterPayload(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 13

    .line 1175
    const-string v0, ""

    const-string v1, "event"

    const-string v2, "events"

    .line 0
    const-string v3, "Lumberjack event verification: allowed_events_regex="

    .line 1175
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1176
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/razorpay/BaseConfig;->getLumberjackAllowedEventsRegex()Ljava/lang/String;

    move-result-object v5

    .line 1177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1179
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 1181
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_4

    .line 1187
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    .line 1189
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1190
    const-string v12, "default"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1191
    sget-object v11, Lcom/razorpay/Lumberjack;->$lIII_$$:Ljava/util/Set;

    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1192
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1193
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1196
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 1197
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/razorpay/Lumberjack;->filterEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1198
    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1199
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 1201
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Lumberjack event verification: dropped event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1202
    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", allowed_events_regex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", properties="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "properties"

    .line 1204
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1201
    invoke-static {v8}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1183
    :cond_5
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 1184
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Lumberjack;->filterEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1209
    :cond_6
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1211
    const-string v1, "Error in filtering payload"

    invoke-static {v1, v0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-object p0
.end method

.method static filterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1258
    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    const-string p0, "Data present in url"

    :cond_0
    return-object p0
.end method

.method static getBooleanFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    .line 974
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 976
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S2"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method static getContextPayload()Lorg/json/JSONObject;
    .locals 1

    .line 1269
    sget-object v0, Lcom/razorpay/Lumberjack;->___Il$:Lorg/json/JSONObject;

    return-object v0
.end method

.method static getLumberjackPayload()Lorg/json/JSONObject;
    .locals 1

    .line 1265
    sget-object v0, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    return-object v0
.end method

.method static getOrderProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1281
    sget-object v0, Lcom/razorpay/Lumberjack;->II1$II$_1:Ljava/util/Map;

    return-object v0
.end method

.method static getPaymentProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1277
    sget-object v0, Lcom/razorpay/Lumberjack;->$$II__1$l_:Ljava/util/Map;

    return-object v0
.end method

.method static getPreInitBatch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1273
    sget-object v0, Lcom/razorpay/Lumberjack;->___I1$lI:Ljava/util/ArrayList;

    return-object v0
.end method

.method static getSessionCreatedJson()Lorg/json/JSONObject;
    .locals 8

    .line 1294
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1296
    :try_start_0
    const-string v1, "key"

    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/BaseConfig;->getLumberjackKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1297
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1298
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1299
    const-string v3, "name"

    const-string v4, "checkout.mobile.sessionCreated.metrics"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1300
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1301
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1302
    const-string v5, "type"

    const-string v6, "session_created"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1303
    const-string v5, "platform"

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1304
    const-string v5, "framework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/razorpay/Lumberjack;->I1I_l1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_android_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getFramework()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1305
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1306
    const-string v4, "labels"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1307
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1308
    const-string v2, "metrics"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1310
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S0"

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method static getSessionErroredJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 1316
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1318
    :try_start_0
    const-string v1, "key"

    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/BaseConfig;->getLumberjackKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1319
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1320
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1321
    const-string v3, "name"

    const-string v4, "checkout.mobile.sessionErrored.metrics"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1322
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1323
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1324
    const-string v5, "type"

    const-string v6, "session_errored"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1325
    const-string v5, "platform"

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1326
    const-string v5, "framework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/razorpay/Lumberjack;->I1I_l1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_android_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getFramework()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1327
    const-string v5, "severity"

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1328
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1329
    const-string p0, "labels"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1330
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1331
    const-string p0, "metrics"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1333
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S0"

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method static getStringFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 965
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 967
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S2"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 956
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 958
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S2"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 895
    invoke-static {}, Lcom/razorpay/Lumberjack;->$l_I$1()V

    .line 897
    sput-object p1, Lcom/razorpay/Lumberjack;->I1I_l1:Ljava/lang/String;

    .line 898
    sput-object p2, Lcom/razorpay/Lumberjack;->ll_$$111:Ljava/lang/String;

    .line 901
    invoke-static {p0}, Lcom/razorpay/BaseConfig;->getAdvertisingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/razorpay/Lumberjack;->_l_l_1IlI:Ljava/lang/String;

    .line 903
    sget-object p1, Lcom/razorpay/Lumberjack;->l$Illl:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 905
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->setBaseImportJSON(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 906
    sput-boolean p1, Lcom/razorpay/Lumberjack;->llIl:Z

    .line 907
    invoke-static {}, Lcom/razorpay/Lumberjack;->IIII$1$_I()V

    .line 908
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->transmitSavedEvents(Landroid/content/Context;)V

    return-void
.end method

.method private static l$1_I$l$()Ljava/lang/CharSequence;
    .locals 1

    .line 272
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic l$1_I$l$(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1078
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Lumberjack-FlushTimer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 1079
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static l$1_I$l$(Landroid/content/Context;)V
    .locals 2

    .line 280
    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getCellularNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/Lumberjack;->_$_l_$1l$:Ljava/lang/String;

    .line 281
    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getCellularNetworkProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/Lumberjack;->IIII$1$_I:Ljava/lang/String;

    .line 283
    sget-object v0, Lcom/razorpay/Lumberjack$3;->$SwitchMap$com$razorpay$NetworkType:[I

    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getDataNetworkType(Landroid/content/Context;)Lcom/razorpay/NetworkType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/NetworkType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    sput-boolean v0, Lcom/razorpay/Lumberjack;->__II$$:Z

    goto :goto_0

    .line 288
    :cond_1
    sput-boolean v0, Lcom/razorpay/Lumberjack;->$lll$_lIl:Z

    goto :goto_0

    .line 285
    :cond_2
    sput-boolean v0, Lcom/razorpay/Lumberjack;->__Il11I1l:Z

    :goto_0
    return-void
.end method

.method private static l$1_I$l$(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 678
    :try_start_0
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->createBaseTrackEvent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    .line 680
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    .line 684
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 687
    :cond_1
    const-string v0, "local_order_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    const-string v0, "checkout_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    const-string v0, "local_payment_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalPaymentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    const-string v0, "properties"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    .line 693
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 694
    const-string p1, "value"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    :cond_2
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 700
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S0"

    const-string p2, "Error in tracking event with value/content"

    invoke-static {p0, p1, p2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static l$1_I$l$(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, " events exceeded threshold of 10)"

    const-string v1, "Lumberjack: Auto-flushing batch ("

    .line 486
    sget-boolean v2, Lcom/razorpay/Lumberjack;->llIl:Z

    if-nez v2, :cond_0

    .line 487
    sget-object v0, Lcom/razorpay/Lumberjack;->___I1$lI:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 492
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->addGlobalProperties(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 494
    const-string v2, "event"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    sget-object v3, Lcom/razorpay/Lumberjack;->Il__I1Il:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 498
    sget-object v3, Lcom/razorpay/Lumberjack;->l$Illl:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/razorpay/Lumberjack$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/razorpay/Lumberjack$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v2, v5, v6}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v4, :cond_2

    .line 500
    invoke-static {v2, p0, v3}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Ljava/lang/String;Lorg/json/JSONObject;I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 503
    :cond_1
    const-string v2, "attempt"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 526
    :cond_2
    sget-object v2, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :try_start_1
    sget-object v3, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    const-string v5, "events"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 528
    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 529
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p0

    .line 530
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v4, :cond_3

    .line 534
    :try_start_2
    invoke-static {}, Lcom/razorpay/Lumberjack;->__Il11I1l()V

    :cond_3
    const/16 v2, 0xa

    if-lt p0, v2, :cond_4

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 541
    invoke-static {}, Lcom/razorpay/Lumberjack;->postData()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 530
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 544
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S0"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static l$1_I$l$(Lorg/json/JSONObject;Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V
    .locals 1

    .line 941
    :try_start_0
    invoke-static {p0, p1}, Lcom/razorpay/Lumberjack;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 943
    sget-object v0, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    if-ne p2, v0, :cond_0

    .line 944
    invoke-static {p1, p0}, Lcom/razorpay/Lumberjack;->addPaymentProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 945
    :cond_0
    sget-object v0, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    if-ne p2, v0, :cond_1

    .line 946
    invoke-static {p1, p0}, Lcom/razorpay/Lumberjack;->addOrderProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 950
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S2"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static l$1_I$l$(Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 4

    .line 865
    const-string v0, "context"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    .line 866
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 867
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 868
    const-string v2, "Lumberjack event verification: index="

    if-nez v1, :cond_0

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event=<non-json>, properties={}, context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 872
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event"

    .line 873
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", properties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "properties"

    .line 874
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-static {v1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static l$1_I$l$(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 268
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static l$1_I$l$(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1229
    :try_start_0
    const-string v1, ")+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ")*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ")?"

    .line 1230
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "}+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "}*"

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1235
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1232
    :cond_2
    :goto_1
    const-string v0, "Lumberjack: skipping potentially unsafe regex pattern"

    invoke-static {v0}, Lcom/razorpay/Logger;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static l$1_I$l$(Ljava/lang/String;Lorg/json/JSONObject;I)Z
    .locals 6

    .line 558
    sget-object v0, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    monitor-enter v0

    const/4 v1, 0x0

    .line 560
    :try_start_0
    sget-object v2, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    const-string v3, "events"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v1

    .line 561
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 562
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 563
    const-string v5, "event"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 564
    sget-object v2, Lcom/razorpay/Lumberjack;->l_lIl:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 565
    const-string v2, "properties"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 566
    const-string v3, "properties"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "_"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 569
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 570
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 575
    :cond_1
    :try_start_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 579
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S0"

    const-string p2, "Error merging dedup event properties"

    invoke-static {p0, p1, p2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_3
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static lI_l1Il_()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 418
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 419
    sget v1, Lcom/razorpay/Lumberjack;->$l_I$1:F

    float-to-double v1, v1

    const-string v3, "density"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 420
    const-string v1, "width"

    sget v2, Lcom/razorpay/Lumberjack;->I1lII:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 421
    const-string v1, "height"

    sget v2, Lcom/razorpay/Lumberjack;->$$_$I1l1_:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method static logVajraCritialError(Ljava/lang/String;)V
    .locals 0

    .line 1339
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->getSessionErroredJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/razorpay/Lumberjack;->_llI(Lorg/json/JSONObject;)V

    return-void
.end method

.method static postData()V
    .locals 2

    .line 826
    sget-object v0, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    monitor-enter v0

    .line 827
    :try_start_0
    sget-object v1, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/razorpay/Lumberjack;->filterPayload(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    sput-object v1, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    .line 828
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 829
    sget-object v1, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/razorpay/Lumberjack;->__l1_(Lorg/json/JSONObject;)V

    .line 830
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    invoke-static {}, Lcom/razorpay/Lumberjack;->_$_l_$1l$()V

    return-void

    :catchall_0
    move-exception v1

    .line 830
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static saveEventsToPreferences(Landroid/content/Context;)V
    .locals 4

    .line 1286
    sget-object v0, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    monitor-enter v0

    .line 1287
    :try_start_0
    sget-object v1, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/razorpay/Lumberjack;->filterPayload(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1288
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1289
    const-string v2, "SavedEventsData"

    sget-object v3, Lcom/razorpay/Lumberjack;->ll_$$111:Ljava/lang/String;

    invoke-static {p0, v2, v1, v3}, Lcom/razorpay/SharedPreferenceUtil;->setProtectedValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static setBaseImportJSON(Landroid/content/Context;)V
    .locals 3

    .line 445
    :try_start_0
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Landroid/content/Context;)V

    .line 446
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->__l1_(Landroid/content/Context;)V

    .line 449
    invoke-static {p0}, Lcom/razorpay/GpuInfoUtil;->loadFromCache(Landroid/content/Context;)V

    .line 451
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 452
    const-string v1, "key"

    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/BaseConfig;->getLumberjackKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v1, "events"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->I__1l(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    sput-object p0, Lcom/razorpay/Lumberjack;->___Il$:Lorg/json/JSONObject;

    .line 455
    const-string v1, "context"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    const-string p0, "mode"

    const-string v1, "live"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    sput-object v0, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    .line 458
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/razorpay/Lumberjack;->getSessionCreatedJson()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/razorpay/Lumberjack;->_llI(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 461
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "S0"

    const-string v1, "Error in creating BaseImportJSON"

    invoke-static {p0, v0, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    sput-object p0, Lcom/razorpay/Lumberjack;->l$$$11Il1:Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method static trackErrorEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 659
    invoke-static {p0, p1, p2}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static trackEvent(Ljava/lang/String;)V
    .locals 1

    .line 648
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/razorpay/Lumberjack;->trackEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 610
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 612
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 614
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 616
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error adding analytics property "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to JSONObject"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    const-string v3, "S0"

    invoke-static {v2, v3, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_0
    invoke-static {p0, v0}, Lcom/razorpay/Lumberjack;->trackEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static trackEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 626
    :try_start_0
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->createBaseTrackEvent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    .line 628
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    .line 632
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 635
    :cond_1
    const-string v0, "local_order_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string v0, "checkout_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    const-string v0, "local_payment_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalPaymentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    const-string v0, "properties"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 643
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S0"

    const-string v0, "Error in adding properties to base json for event tracking"

    invoke-static {p0, p1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static trackEventWithMetric(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 2

    .line 714
    :try_start_0
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->createBaseTrackEvent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    .line 716
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    .line 720
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 723
    :cond_1
    const-string v0, "local_order_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string v0, "checkout_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    const-string v0, "local_payment_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalPaymentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v0, "properties"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    const-string p1, "metric"

    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 731
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 734
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S0"

    const-string p2, "Error in tracking event with metric"

    invoke-static {p0, p1, p2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static trackExceptionEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 670
    invoke-static {p0, p1, p2}, Lcom/razorpay/Lumberjack;->l$1_I$l$(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static trackPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Viewed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " Page"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 740
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 741
    const-string v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-static {p0, v0}, Lcom/razorpay/Lumberjack;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static transmitSavedEvents(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 917
    const-string v1, "SavedEventsData"

    invoke-static {p0, v1, v0}, Lcom/razorpay/SharedPreferenceUtil;->getProtectedValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 920
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/razorpay/Lumberjack;->__l1_(Lorg/json/JSONObject;)V

    .line 921
    invoke-static {p0, v1}, Lcom/razorpay/SharedPreferenceUtil;->removeValue(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 923
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static updateGpuInfo()V
    .locals 4

    .line 472
    const-string v0, "GPU info updated: "

    :try_start_0
    sget-object v1, Lcom/razorpay/Lumberjack;->___Il$:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/razorpay/GpuInfoUtil;->isGpuInfoAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    sget-object v1, Lcom/razorpay/Lumberjack;->___Il$:Lorg/json/JSONObject;

    const-string v2, "device"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 475
    const-string v2, "gpu_renderer"

    invoke-static {}, Lcom/razorpay/GpuInfoUtil;->getGpuRenderer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    const-string v2, "gpu_vendor"

    invoke-static {}, Lcom/razorpay/GpuInfoUtil;->getGpuVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/razorpay/GpuInfoUtil;->getGpuRenderer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S2"

    const-string v2, "Error updating GPU info in context"

    invoke-static {v0, v1, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

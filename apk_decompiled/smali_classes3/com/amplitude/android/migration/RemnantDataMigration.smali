.class public final Lcom/amplitude/android/migration/RemnantDataMigration;
.super Ljava/lang/Object;
.source "RemnantDataMigration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/android/migration/RemnantDataMigration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemnantDataMigration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemnantDataMigration.kt\ncom/amplitude/android/migration/RemnantDataMigration\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,201:1\n1#2:202\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \"2\u00020\u0001:\u0001\"B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0011\u0010\u0011\u001a\u00020\u0012H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0012H\u0002JD\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172!\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u00120\u0019H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u0011\u0010\u001e\u001a\u00020\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u0011\u0010\u001f\u001a\u00020\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u0011\u0010 \u001a\u00020\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u0011\u0010!\u001a\u00020\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcom/amplitude/android/migration/RemnantDataMigration;",
        "",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "(Lcom/amplitude/core/Amplitude;)V",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "databaseStorage",
        "Lcom/amplitude/android/migration/DatabaseStorage;",
        "getDatabaseStorage",
        "()Lcom/amplitude/android/migration/DatabaseStorage;",
        "setDatabaseStorage",
        "(Lcom/amplitude/android/migration/DatabaseStorage;)V",
        "convertLegacyEvent",
        "",
        "event",
        "Lorg/json/JSONObject;",
        "execute",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "moveDeviceAndUserId",
        "moveEvent",
        "destinationStorage",
        "Lcom/amplitude/core/Storage;",
        "removeFromSource",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "rowId",
        "(Lorg/json/JSONObject;Lcom/amplitude/core/Storage;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "moveEvents",
        "moveIdentifies",
        "moveInterceptedIdentifies",
        "moveSessionData",
        "Companion",
        "android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/amplitude/android/migration/RemnantDataMigration$Companion;

.field public static final DEVICE_ID_KEY:Ljava/lang/String; = "device_id"

.field public static final LAST_EVENT_ID_KEY:Ljava/lang/String; = "last_event_id"

.field public static final LAST_EVENT_TIME_KEY:Ljava/lang/String; = "last_event_time"

.field public static final PREVIOUS_SESSION_ID_KEY:Ljava/lang/String; = "previous_session_id"

.field public static final USER_ID_KEY:Ljava/lang/String; = "user_id"


# instance fields
.field private final amplitude:Lcom/amplitude/core/Amplitude;

.field public databaseStorage:Lcom/amplitude/android/migration/DatabaseStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/android/migration/RemnantDataMigration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/android/migration/RemnantDataMigration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/android/migration/RemnantDataMigration;->Companion:Lcom/amplitude/android/migration/RemnantDataMigration$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amplitude/android/migration/RemnantDataMigration;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public static final synthetic access$moveEvent(Lcom/amplitude/android/migration/RemnantDataMigration;Lorg/json/JSONObject;Lcom/amplitude/core/Storage;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveEvent(Lorg/json/JSONObject;Lcom/amplitude/core/Storage;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$moveEvents(Lcom/amplitude/android/migration/RemnantDataMigration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveEvents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$moveIdentifies(Lcom/amplitude/android/migration/RemnantDataMigration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveIdentifies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$moveInterceptedIdentifies(Lcom/amplitude/android/migration/RemnantDataMigration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveInterceptedIdentifies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$moveSessionData(Lcom/amplitude/android/migration/RemnantDataMigration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveSessionData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final convertLegacyEvent(Lorg/json/JSONObject;)J
    .locals 8

    .line 156
    const-string v0, "$rowId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 157
    const-string v2, "event_id"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 159
    const-string v2, "library"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :goto_0
    const-string/jumbo v2, "timestamp"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 164
    :cond_1
    const-string/jumbo v3, "time"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :goto_1
    const-string/jumbo v2, "uuid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 168
    :cond_2
    const-string v3, "insert_id"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :goto_2
    const-string v2, "api_properties"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "price"

    const-string v4, "quantity"

    const-string v5, "productId"

    if-nez v2, :cond_3

    goto :goto_9

    .line 172
    :cond_3
    const-string v6, "androidADID"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    const-string v7, "adid"

    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    :goto_3
    const-string v6, "android_app_set_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :goto_4
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :goto_5
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :goto_6
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :goto_7
    const-string v6, "location"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_9

    .line 180
    :cond_9
    const-string v6, "lat"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    const-string v7, "location_lat"

    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    :goto_8
    const-string v6, "lng"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_9

    :cond_b
    const-string v6, "location_lng"

    invoke-virtual {p1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :goto_9
    const-string v2, "$productId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_a

    .line 186
    :cond_c
    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    :goto_a
    const-string v2, "$quantity"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_b

    .line 189
    :cond_d
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :goto_b
    const-string v2, "$price"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_c

    .line 192
    :cond_e
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :goto_c
    const-string v2, "$revenueType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_d

    .line 195
    :cond_f
    const-string v3, "revenueType"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_d
    return-wide v0
.end method

.method private final moveDeviceAndUserId()V
    .locals 4

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v0

    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lcom/amplitude/android/migration/DatabaseStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2}, Lcom/amplitude/android/migration/DatabaseStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/amplitude/android/migration/RemnantDataMigration;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v2}, Lcom/amplitude/core/Amplitude;->getIdentityStorage()Lcom/amplitude/id/IdentityStorage;

    move-result-object v2

    invoke-interface {v2}, Lcom/amplitude/id/IdentityStorage;->load()Lcom/amplitude/id/Identity;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/amplitude/id/Identity;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 57
    iget-object v3, p0, Lcom/amplitude/android/migration/RemnantDataMigration;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v3}, Lcom/amplitude/core/Amplitude;->getIdentityStorage()Lcom/amplitude/id/IdentityStorage;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/amplitude/id/IdentityStorage;->saveDeviceId(Ljava/lang/String;)V

    .line 60
    :cond_1
    invoke-virtual {v2}, Lcom/amplitude/id/Identity;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 61
    iget-object v0, p0, Lcom/amplitude/android/migration/RemnantDataMigration;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getIdentityStorage()Lcom/amplitude/id/IdentityStorage;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amplitude/id/IdentityStorage;->saveUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    sget-object v1, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v1}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v1

    .line 65
    const-string v2, "device/user id migration failed: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final moveEvent(Lorg/json/JSONObject;Lcom/amplitude/core/Storage;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/amplitude/core/Storage;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;

    iget v1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;

    invoke-direct {v0, p0, p4}, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;-><init>(Lcom/amplitude/android/migration/RemnantDataMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 143
    iget v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;->J$0:J

    iget-object p3, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/RemnantDataMigration;->convertLegacyEvent(Lorg/json/JSONObject;)J

    move-result-wide v4

    .line 146
    invoke-static {p1}, Lcom/amplitude/core/utilities/JSONUtilKt;->toBaseEvent(Lorg/json/JSONObject;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    iput-object p3, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;->L$0:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;->J$0:J

    iput v3, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvent$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/amplitude/core/Storage;->writeEvent(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-wide p1, v4

    .line 147
    :goto_1
    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 149
    sget-object p2, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {p2}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object p2

    .line 150
    const-string p3, "event migration failed: "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p2, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 153
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final moveEvents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;

    iget v1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;-><init>(Lcom/amplitude/android/migration/RemnantDataMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 101
    iget v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/migration/RemnantDataMigration;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/android/migration/DatabaseStorage;->readEventsContent()Ljava/util/List;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p0

    move-object v2, p1

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 106
    invoke-virtual {v4}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v5

    new-instance v6, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$2;

    invoke-virtual {v4}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$2;-><init>(Ljava/lang/Object;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iput-object v4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveEvents$1;->label:I

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveEvent(Lorg/json/JSONObject;Lcom/amplitude/core/Storage;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :catch_0
    move-exception p1

    .line 109
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    .line 110
    const-string v1, "events migration failed: "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {v0, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 113
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final moveIdentifies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;

    iget v1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;-><init>(Lcom/amplitude/android/migration/RemnantDataMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 115
    iget v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/migration/RemnantDataMigration;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/android/migration/DatabaseStorage;->readIdentifiesContent()Ljava/util/List;

    move-result-object p1

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p0

    move-object v2, p1

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 120
    invoke-virtual {v4}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v5

    new-instance v6, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$2;

    invoke-virtual {v4}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$2;-><init>(Ljava/lang/Object;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iput-object v4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveIdentifies$1;->label:I

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveEvent(Lorg/json/JSONObject;Lcom/amplitude/core/Storage;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :catch_0
    move-exception p1

    .line 123
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    .line 124
    const-string v1, "identifies migration failed: "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 127
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final moveInterceptedIdentifies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;

    iget v1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;-><init>(Lcom/amplitude/android/migration/RemnantDataMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 129
    iget v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/migration/RemnantDataMigration;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 131
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/android/migration/DatabaseStorage;->readInterceptedIdentifiesContent()Ljava/util/List;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p0

    move-object v2, p1

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 134
    invoke-virtual {v4}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amplitude/core/Amplitude;->getIdentifyInterceptStorage()Lcom/amplitude/core/Storage;

    move-result-object v5

    new-instance v6, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$2;

    invoke-virtual {v4}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$2;-><init>(Ljava/lang/Object;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iput-object v4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveInterceptedIdentifies$1;->label:I

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveEvent(Lorg/json/JSONObject;Lcom/amplitude/core/Storage;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :catch_0
    move-exception p1

    .line 137
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    .line 138
    const-string v1, "intercepted identifies migration failed: "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {v0, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 141
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final moveSessionData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;

    iget v3, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;

    invoke-direct {v2, v1, v0}, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;-><init>(Lcom/amplitude/android/migration/RemnantDataMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 70
    iget v4, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->label:I

    const-string v5, "last_event_id"

    const-string v6, "last_event_time"

    const-string v7, "previous_session_id"

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v9, :cond_2

    if-ne v4, v8, :cond_1

    iget-object v2, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/migration/RemnantDataMigration;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    iget-object v4, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iget-object v7, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    iget-object v9, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/amplitude/android/migration/RemnantDataMigration;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_3
    iget-object v4, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iget-object v10, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    iget-object v12, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    iget-object v13, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    iget-object v14, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/amplitude/android/migration/RemnantDataMigration;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v0

    sget-object v4, Lcom/amplitude/core/Storage$Constants;->PREVIOUS_SESSION_ID:Lcom/amplitude/core/Storage$Constants;

    invoke-interface {v0, v4}, Lcom/amplitude/core/Storage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v11

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 73
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v4

    sget-object v12, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_TIME:Lcom/amplitude/core/Storage$Constants;

    invoke-interface {v4, v12}, Lcom/amplitude/core/Storage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v13, v11

    goto :goto_2

    :cond_6
    invoke-static {v4}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    move-object v13, v4

    .line 74
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v4

    sget-object v12, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_ID:Lcom/amplitude/core/Storage$Constants;

    invoke-interface {v4, v12}, Lcom/amplitude/core/Storage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move-object v12, v11

    goto :goto_3

    :cond_7
    invoke-static {v4}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    move-object v12, v4

    .line 76
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/amplitude/android/migration/DatabaseStorage;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/amplitude/android/migration/DatabaseStorage;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/amplitude/android/migration/DatabaseStorage;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    if-nez v0, :cond_9

    if-eqz v4, :cond_9

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v0

    sget-object v8, Lcom/amplitude/core/Storage$Constants;->PREVIOUS_SESSION_ID:Lcom/amplitude/core/Storage$Constants;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v1, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$2:Ljava/lang/Object;

    iput-object v14, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$3:Ljava/lang/Object;

    iput-object v15, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$4:Ljava/lang/Object;

    iput v10, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->label:I

    invoke-interface {v0, v8, v4, v2}, Lcom/amplitude/core/Storage;->write(Lcom/amplitude/core/Storage$Constants;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    move-object v10, v14

    move-object v4, v15

    move-object v14, v1

    .line 82
    :goto_4
    invoke-virtual {v14}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/amplitude/android/migration/DatabaseStorage;->removeLongValue(Ljava/lang/String;)V

    move-object v7, v12

    goto :goto_5

    :cond_9
    move-object v7, v12

    move-object v10, v14

    move-object v4, v15

    move-object v14, v1

    :goto_5
    if-nez v13, :cond_b

    if-eqz v10, :cond_b

    .line 86
    invoke-virtual {v14}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v0

    sget-object v8, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_TIME:Lcom/amplitude/core/Storage$Constants;

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v14, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$4:Ljava/lang/Object;

    iput v9, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->label:I

    invoke-interface {v0, v8, v10, v2}, Lcom/amplitude/core/Storage;->write(Lcom/amplitude/core/Storage$Constants;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    return-object v3

    :cond_a
    move-object v9, v14

    .line 87
    :goto_6
    invoke-virtual {v9}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amplitude/android/migration/DatabaseStorage;->removeLongValue(Ljava/lang/String;)V

    move-object v14, v9

    :cond_b
    if-nez v7, :cond_d

    if-eqz v4, :cond_d

    .line 91
    invoke-virtual {v14}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v0

    sget-object v6, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_ID:Lcom/amplitude/core/Storage$Constants;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v14, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->L$4:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v2, Lcom/amplitude/android/migration/RemnantDataMigration$moveSessionData$1;->label:I

    invoke-interface {v0, v6, v4, v2}, Lcom/amplitude/core/Storage;->write(Lcom/amplitude/core/Storage$Constants;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    return-object v3

    :cond_c
    move-object v2, v14

    .line 92
    :goto_7
    invoke-virtual {v2}, Lcom/amplitude/android/migration/RemnantDataMigration;->getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/amplitude/android/migration/DatabaseStorage;->removeLongValue(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 95
    sget-object v2, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v2}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v2

    .line 96
    const-string v3, "session data migration failed: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 99
    :cond_d
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;

    iget v1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;-><init>(Lcom/amplitude/android/migration/RemnantDataMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    iget-object v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/migration/RemnantDataMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-object v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/migration/RemnantDataMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->I$0:I

    iget-object v7, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/amplitude/android/migration/RemnantDataMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    sget-object p1, Lcom/amplitude/android/migration/DatabaseStorageProvider;->INSTANCE:Lcom/amplitude/android/migration/DatabaseStorageProvider;

    invoke-virtual {p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amplitude/android/migration/DatabaseStorageProvider;->getStorage(Lcom/amplitude/core/Amplitude;)Lcom/amplitude/android/migration/DatabaseStorage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amplitude/android/migration/RemnantDataMigration;->setDatabaseStorage(Lcom/amplitude/android/migration/DatabaseStorage;)V

    .line 34
    invoke-virtual {p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object p1

    sget-object v2, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_TIME:Lcom/amplitude/core/Storage$Constants;

    invoke-interface {p1, v2}, Lcom/amplitude/core/Storage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    move-object p1, v3

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_7

    move v2, v7

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    move v2, p1

    .line 36
    :goto_2
    invoke-direct {p0}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveDeviceAndUserId()V

    .line 37
    iput-object p0, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->I$0:I

    iput v7, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->label:I

    invoke-direct {p0, v0}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveSessionData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object v7, p0

    :goto_3
    if-eqz v2, :cond_b

    .line 40
    iput-object v7, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->label:I

    invoke-direct {v7, v0}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveInterceptedIdentifies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object v2, v7

    .line 41
    :goto_4
    iput-object v2, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->label:I

    invoke-direct {v2, v0}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveIdentifies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_5
    move-object v7, v2

    .line 43
    :cond_b
    iput-object v3, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/amplitude/android/migration/RemnantDataMigration$execute$1;->label:I

    invoke-direct {v7, v0}, Lcom/amplitude/android/migration/RemnantDataMigration;->moveEvents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    .line 44
    :cond_c
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amplitude/android/migration/RemnantDataMigration;->amplitude:Lcom/amplitude/core/Amplitude;

    return-object v0
.end method

.method public final getDatabaseStorage()Lcom/amplitude/android/migration/DatabaseStorage;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amplitude/android/migration/RemnantDataMigration;->databaseStorage:Lcom/amplitude/android/migration/DatabaseStorage;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "databaseStorage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setDatabaseStorage(Lcom/amplitude/android/migration/DatabaseStorage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/amplitude/android/migration/RemnantDataMigration;->databaseStorage:Lcom/amplitude/android/migration/DatabaseStorage;

    return-void
.end method

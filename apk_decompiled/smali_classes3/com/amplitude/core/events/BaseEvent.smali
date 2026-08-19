.class public Lcom/amplitude/core/events/BaseEvent;
.super Lcom/amplitude/core/events/EventOptions;
.source "BaseEvent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseEvent.kt\ncom/amplitude/core/events/BaseEvent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0001R*\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0008\"\u0004\u0008\u0012\u0010\nR*\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008\"\u0004\u0008\u0015\u0010\nR*\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0008\"\u0004\u0008\u0018\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/amplitude/core/events/BaseEvent;",
        "Lcom/amplitude/core/events/EventOptions;",
        "()V",
        "eventProperties",
        "",
        "",
        "",
        "getEventProperties",
        "()Ljava/util/Map;",
        "setEventProperties",
        "(Ljava/util/Map;)V",
        "eventType",
        "getEventType",
        "()Ljava/lang/String;",
        "setEventType",
        "(Ljava/lang/String;)V",
        "groupProperties",
        "getGroupProperties",
        "setGroupProperties",
        "groups",
        "getGroups",
        "setGroups",
        "userProperties",
        "getUserProperties",
        "setUserProperties",
        "isValid",
        "",
        "mergeEventOptions",
        "",
        "options",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private eventProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public eventType:Ljava/lang/String;

.field private groupProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private userProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/amplitude/core/events/EventOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEventProperties()Ljava/util/Map;
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

    .line 8
    iget-object v0, p0, Lcom/amplitude/core/events/BaseEvent;->eventProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amplitude/core/events/BaseEvent;->eventType:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "eventType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGroupProperties()Ljava/util/Map;
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

    .line 11
    iget-object v0, p0, Lcom/amplitude/core/events/BaseEvent;->groupProperties:Ljava/util/Map;

    return-object v0
.end method

.method public final getGroups()Ljava/util/Map;
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

    .line 10
    iget-object v0, p0, Lcom/amplitude/core/events/BaseEvent;->groups:Ljava/util/Map;

    return-object v0
.end method

.method public final getUserProperties()Ljava/util/Map;
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

    .line 9
    iget-object v0, p0, Lcom/amplitude/core/events/BaseEvent;->userProperties:Ljava/util/Map;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/amplitude/core/events/BaseEvent;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amplitude/core/events/BaseEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final mergeEventOptions(Lcom/amplitude/core/events/EventOptions;)V
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setUserId(Ljava/lang/String;)V

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setDeviceId(Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setTimestamp(Ljava/lang/Long;)V

    .line 17
    :goto_2
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getEventId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setEventId(Ljava/lang/Long;)V

    .line 18
    :goto_3
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getInsertId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setInsertId(Ljava/lang/String;)V

    .line 19
    :goto_4
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getLocationLat()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setLocationLat(Ljava/lang/Double;)V

    .line 20
    :goto_5
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getLocationLng()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setLocationLng(Ljava/lang/Double;)V

    .line 21
    :goto_6
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setAppVersion(Ljava/lang/String;)V

    .line 22
    :goto_7
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getVersionName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setVersionName(Ljava/lang/String;)V

    .line 23
    :goto_8
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setPlatform(Ljava/lang/String;)V

    .line 24
    :goto_9
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getOsName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setOsName(Ljava/lang/String;)V

    .line 25
    :goto_a
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setOsVersion(Ljava/lang/String;)V

    .line 26
    :goto_b
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getDeviceBrand()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setDeviceBrand(Ljava/lang/String;)V

    .line 27
    :goto_c
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setDeviceManufacturer(Ljava/lang/String;)V

    .line 28
    :goto_d
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setDeviceModel(Ljava/lang/String;)V

    .line 29
    :goto_e
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getCarrier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_f

    :cond_f
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setCarrier(Ljava/lang/String;)V

    .line 30
    :goto_f
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setCountry(Ljava/lang/String;)V

    .line 31
    :goto_10
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getRegion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_11

    :cond_11
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setRegion(Ljava/lang/String;)V

    .line 32
    :goto_11
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getCity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_12

    :cond_12
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setCity(Ljava/lang/String;)V

    .line 33
    :goto_12
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getDma()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_13

    :cond_13
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setDma(Ljava/lang/String;)V

    .line 34
    :goto_13
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getIdfa()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_14

    :cond_14
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setIdfa(Ljava/lang/String;)V

    .line 35
    :goto_14
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getIdfv()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_15

    :cond_15
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setIdfv(Ljava/lang/String;)V

    .line 36
    :goto_15
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getAdid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_16

    :cond_16
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setAdid(Ljava/lang/String;)V

    .line 37
    :goto_16
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getAppSetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_17

    :cond_17
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setAppSetId(Ljava/lang/String;)V

    .line 38
    :goto_17
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_18

    :cond_18
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setAndroidId(Ljava/lang/String;)V

    .line 39
    :goto_18
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_19

    :cond_19
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setLanguage(Ljava/lang/String;)V

    .line 40
    :goto_19
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getLibrary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_1a

    :cond_1a
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setLibrary(Ljava/lang/String;)V

    .line 41
    :goto_1a
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getIp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_1b

    :cond_1b
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setIp(Ljava/lang/String;)V

    .line 42
    :goto_1b
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getPlan()Lcom/amplitude/core/events/Plan;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_1c

    :cond_1c
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setPlan(Lcom/amplitude/core/events/Plan;)V

    .line 43
    :goto_1c
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getIngestionMetadata()Lcom/amplitude/core/events/IngestionMetadata;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_1d

    :cond_1d
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setIngestionMetadata(Lcom/amplitude/core/events/IngestionMetadata;)V

    .line 44
    :goto_1d
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getRevenue()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_1e

    :cond_1e
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setRevenue(Ljava/lang/Double;)V

    .line 45
    :goto_1e
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getPrice()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_1f

    :cond_1f
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setPrice(Ljava/lang/Double;)V

    .line 46
    :goto_1f
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getQuantity()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_20

    :cond_20
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setQuantity(Ljava/lang/Integer;)V

    .line 47
    :goto_20
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getProductId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_21

    :cond_21
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setProductId(Ljava/lang/String;)V

    .line 48
    :goto_21
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getRevenueType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_22

    :cond_22
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setRevenueType(Ljava/lang/String;)V

    .line 49
    :goto_22
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getExtra()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_23

    :cond_23
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setExtra(Ljava/util/Map;)V

    .line 50
    :goto_23
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_24

    :cond_24
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setCallback(Lkotlin/jvm/functions/Function3;)V

    .line 51
    :goto_24
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_25

    :cond_25
    invoke-virtual {p0, v0}, Lcom/amplitude/core/events/BaseEvent;->setPartnerId(Ljava/lang/String;)V

    .line 52
    :goto_25
    invoke-virtual {p1}, Lcom/amplitude/core/events/EventOptions;->getSessionId()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_26

    :cond_26
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amplitude/core/events/BaseEvent;->setSessionId(Ljava/lang/Long;)V

    :goto_26
    return-void
.end method

.method public final setEventProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/amplitude/core/events/BaseEvent;->eventProperties:Ljava/util/Map;

    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/amplitude/core/events/BaseEvent;->eventType:Ljava/lang/String;

    return-void
.end method

.method public final setGroupProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/amplitude/core/events/BaseEvent;->groupProperties:Ljava/util/Map;

    return-void
.end method

.method public final setGroups(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/amplitude/core/events/BaseEvent;->groups:Ljava/util/Map;

    return-void
.end method

.method public final setUserProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/amplitude/core/events/BaseEvent;->userProperties:Ljava/util/Map;

    return-void
.end method

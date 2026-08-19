.class public Lcom/amplitude/android/plugins/AndroidContextPlugin;
.super Ljava/lang/Object;
.source "AndroidContextPlugin.kt"

# interfaces
.implements Lcom/amplitude/core/platform/Plugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/amplitude/android/plugins/AndroidContextPlugin;",
        "Lcom/amplitude/core/platform/Plugin;",
        "()V",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "setAmplitude",
        "(Lcom/amplitude/core/Amplitude;)V",
        "contextProvider",
        "Lcom/amplitude/common/android/AndroidContextProvider;",
        "type",
        "Lcom/amplitude/core/platform/Plugin$Type;",
        "getType",
        "()Lcom/amplitude/core/platform/Plugin$Type;",
        "applyContextData",
        "",
        "event",
        "Lcom/amplitude/core/events/BaseEvent;",
        "execute",
        "initializeDeviceId",
        "configuration",
        "Lcom/amplitude/android/Configuration;",
        "setDeviceId",
        "deviceId",
        "",
        "setup",
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
.field public static final Companion:Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;

.field private static final INVALID_DEVICE_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM:Ljava/lang/String; = "Android"

.field public static final SDK_LIBRARY:Ljava/lang/String; = "amplitude-analytics-android"

.field public static final SDK_VERSION:Ljava/lang/String; = "1.16.8"


# instance fields
.field public amplitude:Lcom/amplitude/core/Amplitude;

.field private contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

.field private final type:Lcom/amplitude/core/platform/Plugin$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->Companion:Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;

    const/4 v0, 0x7

    .line 169
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "9774d56d682e549c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "000000000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Android"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DEFACE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00000000-0000-0000-0000-000000000000"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->INVALID_DEVICE_IDS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Before:Lcom/amplitude/core/platform/Plugin$Type;

    iput-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-void
.end method

.method public static final synthetic access$getINVALID_DEVICE_IDS$cp()Ljava/util/Set;
    .locals 1

    .line 12
    sget-object v0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->INVALID_DEVICE_IDS:Ljava/util/Set;

    return-object v0
.end method

.method private final applyContextData(Lcom/amplitude/core/events/BaseEvent;)V
    .locals 6

    .line 71
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    check-cast v0, Lcom/amplitude/android/Configuration;

    .line 72
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/amplitude/android/plugins/AndroidContextPlugin;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amplitude/core/events/BaseEvent;->setTimestamp(Ljava/lang/Long;)V

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getInsertId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/amplitude/android/plugins/AndroidContextPlugin;

    .line 77
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amplitude/core/events/BaseEvent;->setInsertId(Ljava/lang/String;)V

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getLibrary()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/amplitude/android/plugins/AndroidContextPlugin;

    .line 80
    const-string v1, "amplitude-analytics-android/1.16.8"

    invoke-virtual {p1, v1}, Lcom/amplitude/core/events/BaseEvent;->setLibrary(Ljava/lang/String;)V

    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/amplitude/android/plugins/AndroidContextPlugin;

    .line 83
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/core/Amplitude;->getStore()Lcom/amplitude/core/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/core/State;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amplitude/core/events/BaseEvent;->setUserId(Ljava/lang/String;)V

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/amplitude/android/plugins/AndroidContextPlugin;

    .line 86
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/core/Amplitude;->getStore()Lcom/amplitude/core/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/core/State;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amplitude/core/events/BaseEvent;->setDeviceId(Ljava/lang/String;)V

    .line 88
    :cond_4
    invoke-virtual {v0}, Lcom/amplitude/android/Configuration;->getTrackingOptions()Lcom/amplitude/android/TrackingOptions;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Lcom/amplitude/android/Configuration;->getEnableCoppaControl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    sget-object v0, Lcom/amplitude/android/TrackingOptions;->Companion:Lcom/amplitude/android/TrackingOptions$Companion;

    invoke-virtual {v0}, Lcom/amplitude/android/TrackingOptions$Companion;->forCoppaControl()Lcom/amplitude/android/TrackingOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amplitude/android/TrackingOptions;->mergeIn(Lcom/amplitude/android/TrackingOptions;)Lcom/amplitude/android/TrackingOptions;

    .line 92
    :cond_5
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackVersionName()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "contextProvider"

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setVersionName(Ljava/lang/String;)V

    .line 95
    :cond_7
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackOsName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getOsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setOsName(Ljava/lang/String;)V

    .line 98
    :cond_9
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackOsVersion()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 99
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setOsVersion(Ljava/lang/String;)V

    .line 101
    :cond_b
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackDeviceBrand()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 102
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_c
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setDeviceBrand(Ljava/lang/String;)V

    .line 104
    :cond_d
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackDeviceManufacturer()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 105
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setDeviceManufacturer(Ljava/lang/String;)V

    .line 107
    :cond_f
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackDeviceModel()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 108
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_10
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setDeviceModel(Ljava/lang/String;)V

    .line 110
    :cond_11
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackCarrier()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 111
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_12

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setCarrier(Ljava/lang/String;)V

    .line 113
    :cond_13
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackIpAddress()Z

    move-result v0

    const-string v4, "$remote"

    if-eqz v0, :cond_14

    .line 114
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getIp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move-object v0, p0

    check-cast v0, Lcom/amplitude/android/plugins/AndroidContextPlugin;

    .line 116
    invoke-virtual {p1, v4}, Lcom/amplitude/core/events/BaseEvent;->setIp(Ljava/lang/String;)V

    .line 119
    :cond_14
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackCountry()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getIp()Ljava/lang/String;

    move-result-object v0

    if-eq v0, v4, :cond_16

    .line 120
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_15

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_15
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setCountry(Ljava/lang/String;)V

    .line 122
    :cond_16
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackLanguage()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 123
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_17

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_17
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setLanguage(Ljava/lang/String;)V

    .line 125
    :cond_18
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackPlatform()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 126
    const-string v0, "Android"

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setPlatform(Ljava/lang/String;)V

    .line 128
    :cond_19
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackLatLng()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 129
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_1a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1a
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getMostRecentLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_0

    .line 130
    :cond_1b
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amplitude/core/events/BaseEvent;->setLocationLat(Ljava/lang/Double;)V

    .line 131
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setLocationLng(Ljava/lang/Double;)V

    .line 134
    :cond_1c
    :goto_0
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackAdid()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 135
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_1d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1d
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_1

    .line 136
    :cond_1e
    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setAdid(Ljava/lang/String;)V

    .line 139
    :cond_1f
    :goto_1
    invoke-virtual {v1}, Lcom/amplitude/android/TrackingOptions;->shouldTrackAppSetId()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 140
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_20

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_20
    move-object v2, v0

    :goto_2
    invoke-virtual {v2}, Lcom/amplitude/common/android/AndroidContextProvider;->getAppSetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_3

    .line 141
    :cond_21
    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setAppSetId(Ljava/lang/String;)V

    .line 144
    :cond_22
    :goto_3
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    move-object v0, p0

    check-cast v0, Lcom/amplitude/android/plugins/AndroidContextPlugin;

    .line 145
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_4

    .line 146
    :cond_23
    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setPartnerId(Ljava/lang/String;)V

    .line 149
    :cond_24
    :goto_4
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getPlan()Lcom/amplitude/core/events/Plan;

    move-result-object v0

    if-nez v0, :cond_26

    move-object v0, p0

    check-cast v0, Lcom/amplitude/android/plugins/AndroidContextPlugin;

    .line 150
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getPlan()Lcom/amplitude/core/events/Plan;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_5

    .line 151
    :cond_25
    invoke-virtual {v0}, Lcom/amplitude/core/events/Plan;->clone()Lcom/amplitude/core/events/Plan;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setPlan(Lcom/amplitude/core/events/Plan;)V

    .line 154
    :cond_26
    :goto_5
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getIngestionMetadata()Lcom/amplitude/core/events/IngestionMetadata;

    move-result-object v0

    if-nez v0, :cond_28

    move-object v0, p0

    check-cast v0, Lcom/amplitude/android/plugins/AndroidContextPlugin;

    .line 155
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getIngestionMetadata()Lcom/amplitude/core/events/IngestionMetadata;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_6

    .line 156
    :cond_27
    invoke-virtual {v0}, Lcom/amplitude/core/events/IngestionMetadata;->clone()Lcom/amplitude/core/events/IngestionMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setIngestionMetadata(Lcom/amplitude/core/events/IngestionMetadata;)V

    :cond_28
    :goto_6
    return-void
.end method


# virtual methods
.method public execute(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->applyContextData(Lcom/amplitude/core/events/BaseEvent;)V

    return-object p1
.end method

.method public getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "amplitude"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/amplitude/core/platform/Plugin$Type;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-object v0
.end method

.method public final initializeDeviceId(Lcom/amplitude/android/Configuration;)V
    .locals 5

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, v0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->setDeviceId(Ljava/lang/String;)V

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStore()Lcom/amplitude/core/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/State;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "S"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/amplitude/android/plugins/AndroidContextPlugin;->Companion:Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;

    invoke-virtual {v3, v0}, Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;->validDeviceId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getNewDeviceIdPerInstall()Z

    move-result v0

    const-string v3, "contextProvider"

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getUseAdvertisingIdForDeviceId()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 49
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 50
    sget-object v4, Lcom/amplitude/android/plugins/AndroidContextPlugin;->Companion:Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;

    invoke-virtual {v4, v0}, Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;->validDeviceId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 51
    invoke-virtual {p0, v0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->setDeviceId(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_4
    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getUseAppSetIdForDeviceId()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 58
    iget-object p1, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Lcom/amplitude/common/android/AndroidContextProvider;->getAppSetId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 59
    sget-object v0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->Companion:Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;

    invoke-virtual {v0, p1}, Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;->validDeviceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->setDeviceId(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_6
    sget-object p1, Lcom/amplitude/common/android/AndroidContextProvider;->Companion:Lcom/amplitude/common/android/AndroidContextProvider$Companion;

    invoke-virtual {p1}, Lcom/amplitude/common/android/AndroidContextProvider$Companion;->generateUUID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "R"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->setDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method public setAmplitude(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method protected setDeviceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amplitude/core/Amplitude;->setDeviceId(Ljava/lang/String;)Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public setup(Lcom/amplitude/core/Amplitude;)V
    .locals 4

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-super {p0, p1}, Lcom/amplitude/core/platform/Plugin;->setup(Lcom/amplitude/core/Amplitude;)V

    .line 19
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object p1

    check-cast p1, Lcom/amplitude/android/Configuration;

    .line 20
    new-instance v0, Lcom/amplitude/common/android/AndroidContextProvider;

    .line 21
    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getLocationListening()Z

    move-result v2

    .line 23
    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getTrackingOptions()Lcom/amplitude/android/TrackingOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amplitude/android/TrackingOptions;->shouldTrackAdid()Z

    move-result v3

    .line 20
    invoke-direct {v0, v1, v2, v3}, Lcom/amplitude/common/android/AndroidContextProvider;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/amplitude/android/plugins/AndroidContextPlugin;->contextProvider:Lcom/amplitude/common/android/AndroidContextProvider;

    .line 25
    invoke-virtual {p0, p1}, Lcom/amplitude/android/plugins/AndroidContextPlugin;->initializeDeviceId(Lcom/amplitude/android/Configuration;)V

    return-void
.end method

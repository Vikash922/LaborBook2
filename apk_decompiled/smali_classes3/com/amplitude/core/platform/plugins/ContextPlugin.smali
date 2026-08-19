.class public Lcom/amplitude/core/platform/plugins/ContextPlugin;
.super Ljava/lang/Object;
.source "ContextPlugin.kt"

# interfaces
.implements Lcom/amplitude/core/platform/Plugin;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0014J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/amplitude/core/platform/plugins/ContextPlugin;",
        "Lcom/amplitude/core/platform/Plugin;",
        "()V",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "setAmplitude",
        "(Lcom/amplitude/core/Amplitude;)V",
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
        "Lcom/amplitude/core/Configuration;",
        "setDeviceId",
        "deviceId",
        "",
        "setup",
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
.field public amplitude:Lcom/amplitude/core/Amplitude;

.field private final type:Lcom/amplitude/core/platform/Plugin$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Before:Lcom/amplitude/core/platform/Plugin$Type;

    iput-object v0, p0, Lcom/amplitude/core/platform/plugins/ContextPlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-void
.end method

.method private final applyContextData(Lcom/amplitude/core/events/BaseEvent;)V
    .locals 2

    .line 33
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/amplitude/core/platform/plugins/ContextPlugin;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setTimestamp(Ljava/lang/Long;)V

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getInsertId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/amplitude/core/platform/plugins/ContextPlugin;

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setInsertId(Ljava/lang/String;)V

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getLibrary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/amplitude/core/platform/plugins/ContextPlugin;

    .line 40
    const-string v0, "amplitude-kotlin/0.0.1"

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setLibrary(Ljava/lang/String;)V

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/amplitude/core/platform/plugins/ContextPlugin;

    .line 43
    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/ContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStore()Lcom/amplitude/core/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/State;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setUserId(Ljava/lang/String;)V

    .line 45
    :cond_3
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/amplitude/core/platform/plugins/ContextPlugin;

    .line 46
    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/ContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStore()Lcom/amplitude/core/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/State;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setDeviceId(Ljava/lang/String;)V

    .line 48
    :cond_4
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, p0

    check-cast v0, Lcom/amplitude/core/platform/plugins/ContextPlugin;

    .line 49
    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/ContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 50
    :cond_5
    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setPartnerId(Ljava/lang/String;)V

    .line 53
    :cond_6
    :goto_0
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getIp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, p0

    check-cast v0, Lcom/amplitude/core/platform/plugins/ContextPlugin;

    .line 55
    const-string v0, "$remote"

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setIp(Ljava/lang/String;)V

    .line 57
    :cond_7
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getPlan()Lcom/amplitude/core/events/Plan;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v0, p0

    check-cast v0, Lcom/amplitude/core/platform/plugins/ContextPlugin;

    .line 58
    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/ContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getPlan()Lcom/amplitude/core/events/Plan;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 59
    :cond_8
    invoke-virtual {v0}, Lcom/amplitude/core/events/Plan;->clone()Lcom/amplitude/core/events/Plan;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setPlan(Lcom/amplitude/core/events/Plan;)V

    .line 62
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getIngestionMetadata()Lcom/amplitude/core/events/IngestionMetadata;

    move-result-object v0

    if-nez v0, :cond_b

    move-object v0, p0

    check-cast v0, Lcom/amplitude/core/platform/plugins/ContextPlugin;

    .line 63
    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/ContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getIngestionMetadata()Lcom/amplitude/core/events/IngestionMetadata;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_2

    .line 64
    :cond_a
    invoke-virtual {v0}, Lcom/amplitude/core/events/IngestionMetadata;->clone()Lcom/amplitude/core/events/IngestionMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setIngestionMetadata(Lcom/amplitude/core/events/IngestionMetadata;)V

    :cond_b
    :goto_2
    return-void
.end method

.method private final initializeDeviceId(Lcom/amplitude/core/Configuration;)V
    .locals 0

    .line 25
    invoke-virtual {p1}, Lcom/amplitude/core/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/amplitude/core/platform/plugins/ContextPlugin;->setDeviceId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/amplitude/core/platform/plugins/ContextPlugin;->applyContextData(Lcom/amplitude/core/events/BaseEvent;)V

    return-object p1
.end method

.method public getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amplitude/core/platform/plugins/ContextPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

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

    .line 11
    iget-object v0, p0, Lcom/amplitude/core/platform/plugins/ContextPlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-object v0
.end method

.method public setAmplitude(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/amplitude/core/platform/plugins/ContextPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method protected setDeviceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/ContextPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amplitude/core/Amplitude;->setDeviceId(Ljava/lang/String;)Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public setup(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-super {p0, p1}, Lcom/amplitude/core/platform/Plugin;->setup(Lcom/amplitude/core/Amplitude;)V

    .line 16
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amplitude/core/platform/plugins/ContextPlugin;->initializeDeviceId(Lcom/amplitude/core/Configuration;)V

    return-void
.end method

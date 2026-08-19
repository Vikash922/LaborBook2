.class public final Lcom/amplitude/android/plugins/AnalyticsConnectorIdentityPlugin;
.super Lcom/amplitude/core/platform/ObservePlugin;
.source "AnalyticsConnectorIdentityPlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/amplitude/android/plugins/AnalyticsConnectorIdentityPlugin;",
        "Lcom/amplitude/core/platform/ObservePlugin;",
        "()V",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "setAmplitude",
        "(Lcom/amplitude/core/Amplitude;)V",
        "connector",
        "Lcom/amplitude/analytics/connector/AnalyticsConnector;",
        "onDeviceIdChanged",
        "",
        "deviceId",
        "",
        "onUserIdChanged",
        "userId",
        "setup",
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


# instance fields
.field public amplitude:Lcom/amplitude/core/Amplitude;

.field private connector:Lcom/amplitude/analytics/connector/AnalyticsConnector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amplitude/core/platform/ObservePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amplitude/android/plugins/AnalyticsConnectorIdentityPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "amplitude"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeviceIdChanged(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amplitude/android/plugins/AnalyticsConnectorIdentityPlugin;->connector:Lcom/amplitude/analytics/connector/AnalyticsConnector;

    if-nez v0, :cond_0

    const-string v0, "connector"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/amplitude/analytics/connector/AnalyticsConnector;->getIdentityStore()Lcom/amplitude/analytics/connector/IdentityStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/amplitude/analytics/connector/IdentityStore;->editIdentity()Lcom/amplitude/analytics/connector/IdentityStore$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amplitude/analytics/connector/IdentityStore$Editor;->setDeviceId(Ljava/lang/String;)Lcom/amplitude/analytics/connector/IdentityStore$Editor;

    move-result-object p1

    invoke-interface {p1}, Lcom/amplitude/analytics/connector/IdentityStore$Editor;->commit()V

    return-void
.end method

.method public onUserIdChanged(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amplitude/android/plugins/AnalyticsConnectorIdentityPlugin;->connector:Lcom/amplitude/analytics/connector/AnalyticsConnector;

    if-nez v0, :cond_0

    const-string v0, "connector"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/amplitude/analytics/connector/AnalyticsConnector;->getIdentityStore()Lcom/amplitude/analytics/connector/IdentityStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/amplitude/analytics/connector/IdentityStore;->editIdentity()Lcom/amplitude/analytics/connector/IdentityStore$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amplitude/analytics/connector/IdentityStore$Editor;->setUserId(Ljava/lang/String;)Lcom/amplitude/analytics/connector/IdentityStore$Editor;

    move-result-object p1

    invoke-interface {p1}, Lcom/amplitude/analytics/connector/IdentityStore$Editor;->commit()V

    return-void
.end method

.method public setAmplitude(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/amplitude/android/plugins/AnalyticsConnectorIdentityPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public setup(Lcom/amplitude/core/Amplitude;)V
    .locals 8

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-super {p0, p1}, Lcom/amplitude/core/platform/ObservePlugin;->setup(Lcom/amplitude/core/Amplitude;)V

    .line 15
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/amplitude/analytics/connector/AnalyticsConnector;->Companion:Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;

    invoke-virtual {v1, v0}, Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;->getInstance(Ljava/lang/String;)Lcom/amplitude/analytics/connector/AnalyticsConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/android/plugins/AnalyticsConnectorIdentityPlugin;->connector:Lcom/amplitude/analytics/connector/AnalyticsConnector;

    if-nez v0, :cond_0

    .line 18
    const-string v0, "connector"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/amplitude/analytics/connector/AnalyticsConnector;->getIdentityStore()Lcom/amplitude/analytics/connector/IdentityStore;

    move-result-object v0

    new-instance v7, Lcom/amplitude/analytics/connector/Identity;

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getStore()Lcom/amplitude/core/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/core/State;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getStore()Lcom/amplitude/core/State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/core/State;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amplitude/analytics/connector/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v7}, Lcom/amplitude/analytics/connector/IdentityStore;->setIdentity(Lcom/amplitude/analytics/connector/Identity;)V

    return-void
.end method

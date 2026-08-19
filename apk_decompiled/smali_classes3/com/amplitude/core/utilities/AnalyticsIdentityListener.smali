.class public final Lcom/amplitude/core/utilities/AnalyticsIdentityListener;
.super Ljava/lang/Object;
.source "AnalyticsIdentityListener.kt"

# interfaces
.implements Lcom/amplitude/id/IdentityListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/AnalyticsIdentityListener;",
        "Lcom/amplitude/id/IdentityListener;",
        "state",
        "Lcom/amplitude/core/State;",
        "(Lcom/amplitude/core/State;)V",
        "onDeviceIdChange",
        "",
        "deviceId",
        "",
        "onIdentityChanged",
        "identity",
        "Lcom/amplitude/id/Identity;",
        "updateType",
        "Lcom/amplitude/id/IdentityUpdateType;",
        "onUserIdChange",
        "userId",
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
.field private final state:Lcom/amplitude/core/State;


# direct methods
.method public constructor <init>(Lcom/amplitude/core/State;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/core/utilities/AnalyticsIdentityListener;->state:Lcom/amplitude/core/State;

    return-void
.end method


# virtual methods
.method public onDeviceIdChange(Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amplitude/core/utilities/AnalyticsIdentityListener;->state:Lcom/amplitude/core/State;

    invoke-virtual {v0, p1}, Lcom/amplitude/core/State;->setDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method public onIdentityChanged(Lcom/amplitude/id/Identity;Lcom/amplitude/id/IdentityUpdateType;)V
    .locals 1

    const-string v0, "identity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/amplitude/id/IdentityUpdateType;->Initialized:Lcom/amplitude/id/IdentityUpdateType;

    if-ne p2, v0, :cond_0

    .line 20
    iget-object p2, p0, Lcom/amplitude/core/utilities/AnalyticsIdentityListener;->state:Lcom/amplitude/core/State;

    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amplitude/core/State;->setUserId(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/amplitude/core/utilities/AnalyticsIdentityListener;->state:Lcom/amplitude/core/State;

    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amplitude/core/State;->setDeviceId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amplitude/core/utilities/AnalyticsIdentityListener;->state:Lcom/amplitude/core/State;

    invoke-virtual {v0, p1}, Lcom/amplitude/core/State;->setUserId(Ljava/lang/String;)V

    return-void
.end method

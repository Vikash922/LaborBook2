.class public abstract Lcom/amplitude/core/platform/ObservePlugin;
.super Ljava/lang/Object;
.source "Plugin.kt"

# interfaces
.implements Lcom/amplitude/core/platform/Plugin;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u0008J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&J\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\rH&R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/amplitude/core/platform/ObservePlugin;",
        "Lcom/amplitude/core/platform/Plugin;",
        "()V",
        "type",
        "Lcom/amplitude/core/platform/Plugin$Type;",
        "getType",
        "()Lcom/amplitude/core/platform/Plugin$Type;",
        "execute",
        "Lcom/amplitude/core/events/BaseEvent;",
        "event",
        "onDeviceIdChanged",
        "",
        "deviceId",
        "",
        "onUserIdChanged",
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
.field private final type:Lcom/amplitude/core/platform/Plugin$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Observe:Lcom/amplitude/core/platform/Plugin$Type;

    iput-object v0, p0, Lcom/amplitude/core/platform/ObservePlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getType()Lcom/amplitude/core/platform/Plugin$Type;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amplitude/core/platform/ObservePlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-object v0
.end method

.method public abstract onDeviceIdChanged(Ljava/lang/String;)V
.end method

.method public abstract onUserIdChanged(Ljava/lang/String;)V
.end method

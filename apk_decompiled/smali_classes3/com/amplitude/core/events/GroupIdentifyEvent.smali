.class public Lcom/amplitude/core/events/GroupIdentifyEvent;
.super Lcom/amplitude/core/events/BaseEvent;
.source "GroupIdentifyEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/amplitude/core/events/GroupIdentifyEvent;",
        "Lcom/amplitude/core/events/BaseEvent;",
        "()V",
        "eventType",
        "",
        "getEventType",
        "()Ljava/lang/String;",
        "setEventType",
        "(Ljava/lang/String;)V",
        "isValid",
        "",
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
.field private eventType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/amplitude/core/events/BaseEvent;-><init>()V

    .line 6
    const-string v0, "$groupidentify"

    iput-object v0, p0, Lcom/amplitude/core/events/GroupIdentifyEvent;->eventType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amplitude/core/events/GroupIdentifyEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/amplitude/core/events/GroupIdentifyEvent;->getGroups()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amplitude/core/events/GroupIdentifyEvent;->getGroupProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/amplitude/core/events/GroupIdentifyEvent;->eventType:Ljava/lang/String;

    return-void
.end method

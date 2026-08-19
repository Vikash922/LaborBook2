.class public final Lcom/amplitude/core/utilities/AnalyticsEventReceiver;
.super Ljava/lang/Object;
.source "AnalyticsEventReceiver.kt"

# interfaces
.implements Lcom/amplitude/eventbridge/EventReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/AnalyticsEventReceiver;",
        "Lcom/amplitude/eventbridge/EventReceiver;",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "(Lcom/amplitude/core/Amplitude;)V",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "receive",
        "",
        "channel",
        "Lcom/amplitude/eventbridge/EventChannel;",
        "event",
        "Lcom/amplitude/eventbridge/Event;",
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
.field private final amplitude:Lcom/amplitude/core/Amplitude;


# direct methods
.method public constructor <init>(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/core/utilities/AnalyticsEventReceiver;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method


# virtual methods
.method public final getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amplitude/core/utilities/AnalyticsEventReceiver;->amplitude:Lcom/amplitude/core/Amplitude;

    return-object v0
.end method

.method public receive(Lcom/amplitude/eventbridge/EventChannel;Lcom/amplitude/eventbridge/Event;)V
    .locals 7

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/amplitude/core/utilities/AnalyticsEventReceiver;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object p1

    const-string v0, "Receive event from event bridge "

    invoke-virtual {p2}, Lcom/amplitude/eventbridge/Event;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/amplitude/core/utilities/AnalyticsEventReceiver;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-static {p2}, Lcom/amplitude/core/utilities/AnalyticsEventReceiverKt;->toBaseEvent(Lcom/amplitude/eventbridge/Event;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amplitude/core/Amplitude;->track$default(Lcom/amplitude/core/Amplitude;Lcom/amplitude/core/events/BaseEvent;Lcom/amplitude/core/events/EventOptions;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/amplitude/core/Amplitude;

    return-void
.end method

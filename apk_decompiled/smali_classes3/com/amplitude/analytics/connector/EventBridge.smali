.class public interface abstract Lcom/amplitude/analytics/connector/EventBridge;
.super Ljava/lang/Object;
.source "EventBridge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J$\u0010\u0006\u001a\u00020\u00032\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\u0004\u0018\u0001`\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/amplitude/analytics/connector/EventBridge;",
        "",
        "logEvent",
        "",
        "event",
        "Lcom/amplitude/analytics/connector/AnalyticsEvent;",
        "setEventReceiver",
        "receiver",
        "Lkotlin/Function1;",
        "Lcom/amplitude/analytics/connector/AnalyticsEventReceiver;",
        "analytics-connector_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract logEvent(Lcom/amplitude/analytics/connector/AnalyticsEvent;)V
.end method

.method public abstract setEventReceiver(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amplitude/analytics/connector/AnalyticsEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

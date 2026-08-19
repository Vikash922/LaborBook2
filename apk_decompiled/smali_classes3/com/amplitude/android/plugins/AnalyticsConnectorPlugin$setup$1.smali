.class final Lcom/amplitude/android/plugins/AnalyticsConnectorPlugin$setup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnalyticsConnectorPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/android/plugins/AnalyticsConnectorPlugin;->setup(Lcom/amplitude/core/Amplitude;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amplitude/analytics/connector/AnalyticsEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "<name for destructuring parameter 0>",
        "Lcom/amplitude/analytics/connector/AnalyticsEvent;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $amplitude:Lcom/amplitude/core/Amplitude;


# direct methods
.method constructor <init>(Lcom/amplitude/core/Amplitude;)V
    .locals 0

    iput-object p1, p0, Lcom/amplitude/android/plugins/AnalyticsConnectorPlugin$setup$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/amplitude/analytics/connector/AnalyticsEvent;

    invoke-virtual {p0, p1}, Lcom/amplitude/android/plugins/AnalyticsConnectorPlugin$setup$1;->invoke(Lcom/amplitude/analytics/connector/AnalyticsEvent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amplitude/analytics/connector/AnalyticsEvent;)V
    .locals 8

    const-string v0, "$dstr$eventType$eventProperties$userProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/amplitude/analytics/connector/AnalyticsEvent;->component1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amplitude/analytics/connector/AnalyticsEvent;->component2()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amplitude/analytics/connector/AnalyticsEvent;->component3()Ljava/util/Map;

    move-result-object p1

    .line 21
    new-instance v3, Lcom/amplitude/core/events/BaseEvent;

    invoke-direct {v3}, Lcom/amplitude/core/events/BaseEvent;-><init>()V

    .line 22
    invoke-virtual {v3, v0}, Lcom/amplitude/core/events/BaseEvent;->setEventType(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/amplitude/core/events/BaseEvent;->setEventProperties(Ljava/util/Map;)V

    if-nez p1, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/amplitude/core/events/BaseEvent;->setUserProperties(Ljava/util/Map;)V

    .line 25
    iget-object v2, p0, Lcom/amplitude/android/plugins/AnalyticsConnectorPlugin$setup$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amplitude/core/Amplitude;->track$default(Lcom/amplitude/core/Amplitude;Lcom/amplitude/core/events/BaseEvent;Lcom/amplitude/core/events/EventOptions;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/amplitude/core/Amplitude;

    return-void
.end method

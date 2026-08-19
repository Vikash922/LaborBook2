.class public interface abstract Lcom/boilerplate/analytics/AnalyticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H&JG\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00062\"\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u000bj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001`\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H&\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0012H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0014H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0016H&J*\u0010\u0017\u001a\u00020\u00032\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H&\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/boilerplate/analytics/AnalyticsManager;",
        "",
        "configurePlatforms",
        "",
        "enabledPlatforms",
        "",
        "",
        "logEvent",
        "eventName",
        "properties",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "eventPlatforms",
        "(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V",
        "setCleverTapInstance",
        "instance",
        "Lcom/clevertap/android/sdk/CleverTapAPI;",
        "setMixpanelInstance",
        "Lcom/mixpanel/android/mpmetrics/MixpanelAPI;",
        "setAppsFlyerInstance",
        "Lcom/appsflyer/AppsFlyerLib;",
        "setFirebaseAnalyticsInstance",
        "Lcom/google/firebase/analytics/FirebaseAnalytics;",
        "setUserProperties",
        "userProperties",
        "",
        "userPropertyPlatforms",
        "analytics_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract configurePlatforms(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAppsFlyerInstance(Lcom/appsflyer/AppsFlyerLib;)V
.end method

.method public abstract setCleverTapInstance(Lcom/clevertap/android/sdk/CleverTapAPI;)V
.end method

.method public abstract setFirebaseAnalyticsInstance(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
.end method

.method public abstract setMixpanelInstance(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
.end method

.method public abstract setUserProperties(Ljava/util/Map;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

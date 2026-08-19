.class public final Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;
.super Ljava/lang/Object;
.source "AndroidLifecyclePlugin.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/amplitude/core/platform/Plugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/android/plugins/AndroidLifecyclePlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 &2\u00020\u00012\u00020\u0002:\u0001&B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010#\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010$\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010%\u001a\u00020\u001a2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "Lcom/amplitude/core/platform/Plugin;",
        "()V",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "setAmplitude",
        "(Lcom/amplitude/core/Amplitude;)V",
        "androidAmplitude",
        "Lcom/amplitude/android/Amplitude;",
        "androidConfiguration",
        "Lcom/amplitude/android/Configuration;",
        "hasTrackedApplicationLifecycleEvents",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isFirstLaunch",
        "numberOfActivities",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "packageInfo",
        "Landroid/content/pm/PackageInfo;",
        "type",
        "Lcom/amplitude/core/platform/Plugin$Type;",
        "getType",
        "()Lcom/amplitude/core/platform/Plugin$Type;",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "bundle",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "onActivityStarted",
        "onActivityStopped",
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
.field public static final Companion:Lcom/amplitude/android/plugins/AndroidLifecyclePlugin$Companion;


# instance fields
.field public amplitude:Lcom/amplitude/core/Amplitude;

.field private androidAmplitude:Lcom/amplitude/android/Amplitude;

.field private androidConfiguration:Lcom/amplitude/android/Configuration;

.field private final hasTrackedApplicationLifecycleEvents:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isFirstLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final numberOfActivities:Ljava/util/concurrent/atomic/AtomicInteger;

.field private packageInfo:Landroid/content/pm/PackageInfo;

.field private final type:Lcom/amplitude/core/platform/Plugin$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->Companion:Lcom/amplitude/android/plugins/AndroidLifecyclePlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Utility:Lcom/amplitude/core/platform/Plugin$Type;

    iput-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->hasTrackedApplicationLifecycleEvents:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->numberOfActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->isFirstLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->amplitude:Lcom/amplitude/core/Amplitude;

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

    .line 16
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->hasTrackedApplicationLifecycleEvents:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    const-string v1, "androidAmplitude"

    const-string v2, "androidConfiguration"

    const/4 v3, 0x0

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidConfiguration:Lcom/amplitude/android/Configuration;

    if-nez p2, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v3

    :cond_0
    invoke-virtual {p2}, Lcom/amplitude/android/Configuration;->getDefaultTracking()Lcom/amplitude/android/DefaultTrackingOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amplitude/android/DefaultTrackingOptions;->getAppLifecycles()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 45
    iget-object p2, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->numberOfActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 46
    iget-object p2, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->isFirstLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    new-instance p2, Lcom/amplitude/android/utilities/DefaultEventUtils;

    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidAmplitude:Lcom/amplitude/android/Amplitude;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-direct {p2, v0}, Lcom/amplitude/android/utilities/DefaultEventUtils;-><init>(Lcom/amplitude/android/Amplitude;)V

    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_2

    const-string v0, "packageInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {p2, v0}, Lcom/amplitude/android/utilities/DefaultEventUtils;->trackAppUpdatedInstalledEvent(Landroid/content/pm/PackageInfo;)V

    .line 49
    :cond_3
    iget-object p2, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidConfiguration:Lcom/amplitude/android/Configuration;

    if-nez p2, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v3

    :cond_4
    invoke-virtual {p2}, Lcom/amplitude/android/Configuration;->getDefaultTracking()Lcom/amplitude/android/DefaultTrackingOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amplitude/android/DefaultTrackingOptions;->getDeepLinks()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 50
    new-instance p2, Lcom/amplitude/android/utilities/DefaultEventUtils;

    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidAmplitude:Lcom/amplitude/android/Amplitude;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v3, v0

    :goto_0
    invoke-direct {p2, v3}, Lcom/amplitude/android/utilities/DefaultEventUtils;-><init>(Lcom/amplitude/android/Amplitude;)V

    invoke-virtual {p2, p1}, Lcom/amplitude/android/utilities/DefaultEventUtils;->trackDeepLinkOpenedEvent(Landroid/app/Activity;)V

    :cond_6
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidAmplitude:Lcom/amplitude/android/Amplitude;

    if-nez p1, :cond_0

    const-string p1, "androidAmplitude"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    sget-object v0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->Companion:Lcom/amplitude/android/plugins/AndroidLifecyclePlugin$Companion;

    invoke-virtual {v0}, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin$Companion;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amplitude/android/Amplitude;->onExitForeground(J)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidAmplitude:Lcom/amplitude/android/Amplitude;

    const-string v0, "androidAmplitude"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    sget-object v2, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->Companion:Lcom/amplitude/android/plugins/AndroidLifecyclePlugin$Companion;

    invoke-virtual {v2}, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin$Companion;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/amplitude/android/Amplitude;->onEnterForeground(J)V

    .line 64
    iget-object p1, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidConfiguration:Lcom/amplitude/android/Configuration;

    if-nez p1, :cond_1

    const-string p1, "androidConfiguration"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getDefaultTracking()Lcom/amplitude/android/DefaultTrackingOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/android/DefaultTrackingOptions;->getAppLifecycles()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->numberOfActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 65
    iget-object p1, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->isFirstLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    xor-int/2addr p1, v2

    .line 66
    new-instance v2, Lcom/amplitude/android/utilities/DefaultEventUtils;

    iget-object v3, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidAmplitude:Lcom/amplitude/android/Amplitude;

    if-nez v3, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-direct {v2, v3}, Lcom/amplitude/android/utilities/DefaultEventUtils;-><init>(Lcom/amplitude/android/Amplitude;)V

    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_3

    const-string v0, "packageInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {v2, v1, p1}, Lcom/amplitude/android/utilities/DefaultEventUtils;->trackAppOpenedEvent(Landroid/content/pm/PackageInfo;Z)V

    :cond_4
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidConfiguration:Lcom/amplitude/android/Configuration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "androidConfiguration"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/amplitude/android/Configuration;->getDefaultTracking()Lcom/amplitude/android/DefaultTrackingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/android/DefaultTrackingOptions;->getScreenViews()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Lcom/amplitude/android/utilities/DefaultEventUtils;

    iget-object v2, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidAmplitude:Lcom/amplitude/android/Amplitude;

    if-nez v2, :cond_1

    const-string v2, "androidAmplitude"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-direct {v0, v1}, Lcom/amplitude/android/utilities/DefaultEventUtils;-><init>(Lcom/amplitude/android/Amplitude;)V

    invoke-virtual {v0, p1}, Lcom/amplitude/android/utilities/DefaultEventUtils;->trackScreenViewedEvent(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidConfiguration:Lcom/amplitude/android/Configuration;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "androidConfiguration"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getDefaultTracking()Lcom/amplitude/android/DefaultTrackingOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/android/DefaultTrackingOptions;->getAppLifecycles()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->numberOfActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 77
    new-instance p1, Lcom/amplitude/android/utilities/DefaultEventUtils;

    iget-object v1, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidAmplitude:Lcom/amplitude/android/Amplitude;

    if-nez v1, :cond_1

    const-string v1, "androidAmplitude"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-direct {p1, v0}, Lcom/amplitude/android/utilities/DefaultEventUtils;-><init>(Lcom/amplitude/android/Amplitude;)V

    invoke-virtual {p1}, Lcom/amplitude/android/utilities/DefaultEventUtils;->trackAppBackgroundedEvent()V

    :cond_2
    return-void
.end method

.method public setAmplitude(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public setup(Lcom/amplitude/core/Amplitude;)V
    .locals 4

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1}, Lcom/amplitude/core/platform/Plugin;->setup(Lcom/amplitude/core/Amplitude;)V

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/amplitude/android/Amplitude;

    iput-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidAmplitude:Lcom/amplitude/android/Amplitude;

    .line 29
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    check-cast v0, Lcom/amplitude/android/Configuration;

    iput-object v0, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->androidConfiguration:Lcom/amplitude/android/Configuration;

    if-nez v0, :cond_0

    .line 31
    const-string v0, "androidConfiguration"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/amplitude/android/Configuration;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 32
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "application.packageManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 33
    const-string/jumbo v2, "{\n            packageMan\u2026packageName, 0)\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object p1

    const-string v1, "Cannot find package with application.packageName: "

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 33
    :goto_0
    iput-object v1, p0, Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 40
    move-object p1, p0

    check-cast p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

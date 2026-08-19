.class public final Lcom/amplitude/android/utilities/DefaultEventUtils;
.super Ljava/lang/Object;
.source "DefaultEventUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/android/utilities/DefaultEventUtils$EventTypes;,
        Lcom/amplitude/android/utilities/DefaultEventUtils$EventProperties;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u0013\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/amplitude/android/utilities/DefaultEventUtils;",
        "",
        "amplitude",
        "Lcom/amplitude/android/Amplitude;",
        "(Lcom/amplitude/android/Amplitude;)V",
        "getReferrer",
        "Landroid/net/Uri;",
        "activity",
        "Landroid/app/Activity;",
        "trackAppBackgroundedEvent",
        "",
        "trackAppOpenedEvent",
        "packageInfo",
        "Landroid/content/pm/PackageInfo;",
        "isFromBackground",
        "",
        "trackAppUpdatedInstalledEvent",
        "trackDeepLinkOpenedEvent",
        "trackScreenViewedEvent",
        "EventProperties",
        "EventTypes",
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
.field private final amplitude:Lcom/amplitude/android/Amplitude;


# direct methods
.method public constructor <init>(Lcom/amplitude/android/Amplitude;)V
    .locals 1

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    return-void
.end method

.method private final getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 0

    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final trackAppBackgroundedEvent()V
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    move-object v1, v0

    check-cast v1, Lcom/amplitude/core/Amplitude;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "[Amplitude] Application Backgrounded"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amplitude/core/Amplitude;->track$default(Lcom/amplitude/core/Amplitude;Ljava/lang/String;Ljava/util/Map;Lcom/amplitude/core/events/EventOptions;ILjava/lang/Object;)Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public final trackAppOpenedEvent(Landroid/content/pm/PackageInfo;Z)V
    .locals 8

    const-string v0, "packageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/amplitude/android/utilities/DefaultEventUtilsKt;->access$getVersionCode(Landroid/content/pm/PackageInfo;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v1, p0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    move-object v2, v1

    check-cast v2, Lcom/amplitude/core/Amplitude;

    const/4 v1, 0x3

    .line 79
    new-array v1, v1, [Lkotlin/Pair;

    const-string v3, "[Amplitude] From Background"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v1, v3

    .line 80
    const-string p2, "[Amplitude] Version"

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    .line 81
    const-string p2, "[Amplitude] Build"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 78
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 76
    const-string v3, "[Amplitude] Application Opened"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amplitude/core/Amplitude;->track$default(Lcom/amplitude/core/Amplitude;Ljava/lang/String;Ljava/util/Map;Lcom/amplitude/core/events/EventOptions;ILjava/lang/Object;)Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public final trackAppUpdatedInstalledEvent(Landroid/content/pm/PackageInfo;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "packageInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 38
    invoke-static/range {p1 .. p1}, Lcom/amplitude/android/utilities/DefaultEventUtilsKt;->access$getVersionCode(Landroid/content/pm/PackageInfo;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    iget-object v3, v0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {v3}, Lcom/amplitude/android/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v3

    .line 40
    sget-object v4, Lcom/amplitude/core/Storage$Constants;->APP_VERSION:Lcom/amplitude/core/Storage$Constants;

    invoke-interface {v3, v4}, Lcom/amplitude/core/Storage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object v4

    .line 41
    sget-object v5, Lcom/amplitude/core/Storage$Constants;->APP_BUILD:Lcom/amplitude/core/Storage$Constants;

    invoke-interface {v3, v5}, Lcom/amplitude/core/Storage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object v5

    .line 43
    const-string v6, "[Amplitude] Build"

    const/4 v7, 0x1

    const-string v8, "[Amplitude] Version"

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-nez v5, :cond_0

    .line 45
    iget-object v4, v0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    move-object v11, v4

    check-cast v11, Lcom/amplitude/core/Amplitude;

    .line 48
    new-array v4, v10, [Lkotlin/Pair;

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v4, v9

    .line 49
    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v4, v7

    .line 47
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 45
    const-string v12, "[Amplitude] Application Installed"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/amplitude/core/Amplitude;->track$default(Lcom/amplitude/core/Amplitude;Ljava/lang/String;Ljava/util/Map;Lcom/amplitude/core/events/EventOptions;ILjava/lang/Object;)Lcom/amplitude/core/Amplitude;

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 54
    iget-object v11, v0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    move-object v12, v11

    check-cast v12, Lcom/amplitude/core/Amplitude;

    const/4 v11, 0x4

    .line 57
    new-array v11, v11, [Lkotlin/Pair;

    const-string v13, "[Amplitude] Previous Version"

    invoke-static {v13, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v11, v9

    .line 58
    const-string v4, "[Amplitude] Previous Build"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v11, v7

    .line 59
    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v11, v10

    const/4 v4, 0x3

    .line 60
    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v11, v4

    .line 56
    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    .line 54
    const-string v13, "[Amplitude] Application Updated"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/amplitude/core/Amplitude;->track$default(Lcom/amplitude/core/Amplitude;Ljava/lang/String;Ljava/util/Map;Lcom/amplitude/core/events/EventOptions;ILjava/lang/Object;)Lcom/amplitude/core/Amplitude;

    .line 66
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {v4}, Lcom/amplitude/android/Amplitude;->getAmplitudeScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    iget-object v4, v0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {v4}, Lcom/amplitude/android/Amplitude;->getStorageIODispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/amplitude/android/utilities/DefaultEventUtils$trackAppUpdatedInstalledEvent$1;

    const/4 v7, 0x0

    invoke-direct {v4, v3, v2, v1, v7}, Lcom/amplitude/android/utilities/DefaultEventUtils$trackAppUpdatedInstalledEvent$1;-><init>(Lcom/amplitude/core/Storage;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final trackDeepLinkOpenedEvent(Landroid/app/Activity;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/amplitude/android/utilities/DefaultEventUtils;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uri.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    move-object v2, v1

    check-cast v2, Lcom/amplitude/core/Amplitude;

    const/4 v1, 0x2

    .line 99
    new-array v1, v1, [Lkotlin/Pair;

    const-string v3, "[Amplitude] Link URL"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 100
    const-string v0, "[Amplitude] Link Referrer"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 98
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 96
    const-string v3, "[Amplitude] Deep Link Opened"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amplitude/core/Amplitude;->track$default(Lcom/amplitude/core/Amplitude;Ljava/lang/String;Ljava/util/Map;Lcom/amplitude/core/events/EventOptions;ILjava/lang/Object;)Lcom/amplitude/core/Amplitude;

    :goto_1
    return-void
.end method

.method public final trackScreenViewedEvent(Landroid/app/Activity;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    const/16 v2, 0x80

    .line 110
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 119
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v1, v0

    .line 120
    :goto_3
    iget-object p1, p0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    move-object v2, p1

    check-cast v2, Lcom/amplitude/core/Amplitude;

    const-string v3, "[Amplitude] Screen Viewed"

    const-string p1, "[Amplitude] Screen Name"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amplitude/core/Amplitude;->track$default(Lcom/amplitude/core/Amplitude;Ljava/lang/String;Ljava/util/Map;Lcom/amplitude/core/events/EventOptions;ILjava/lang/Object;)Lcom/amplitude/core/Amplitude;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 124
    iget-object v0, p0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/android/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v0

    const-string v1, "Failed to track screen viewed event: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 122
    iget-object v0, p0, Lcom/amplitude/android/utilities/DefaultEventUtils;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/android/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v0

    const-string v1, "Failed to get activity info: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

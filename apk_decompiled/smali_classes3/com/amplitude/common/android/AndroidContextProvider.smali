.class public final Lcom/amplitude/common/android/AndroidContextProvider;
.super Ljava/lang/Object;
.source "AndroidContextProvider.kt"

# interfaces
.implements Lcom/amplitude/common/ContextProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;,
        Lcom/amplitude/common/android/AndroidContextProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 72\u00020\u0001:\u000267B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0006\u00102\u001a\u00020\u0005J\u0006\u00103\u001a\u00020\u0005J\u0006\u00104\u001a\u000205R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000bR\u001c\u0010\u0010\u001a\u0008\u0018\u00010\u0011R\u00020\u00008BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000bR\u0014\u0010\u0018\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u000bR\u0011\u0010\"\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u000bR\u0011\u0010$\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u000bR\u0013\u0010&\u001a\u0004\u0018\u00010\'8F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u000bR\u0011\u0010,\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u001d\"\u0004\u0008/\u0010\u001fR\u0013\u00100\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u000b\u00a8\u00068"
    }
    d2 = {
        "Lcom/amplitude/common/android/AndroidContextProvider;",
        "Lcom/amplitude/common/ContextProvider;",
        "context",
        "Landroid/content/Context;",
        "locationListening",
        "",
        "shouldTrackAdid",
        "(Landroid/content/Context;ZZ)V",
        "advertisingId",
        "",
        "getAdvertisingId",
        "()Ljava/lang/String;",
        "appSetId",
        "getAppSetId",
        "brand",
        "getBrand",
        "cachedInfo",
        "Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;",
        "getCachedInfo",
        "()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;",
        "carrier",
        "getCarrier",
        "country",
        "getCountry",
        "geocoder",
        "Landroid/location/Geocoder;",
        "getGeocoder",
        "()Landroid/location/Geocoder;",
        "isLocationListening",
        "()Z",
        "setLocationListening",
        "(Z)V",
        "language",
        "getLanguage",
        "manufacturer",
        "getManufacturer",
        "model",
        "getModel",
        "mostRecentLocation",
        "Landroid/location/Location;",
        "getMostRecentLocation",
        "()Landroid/location/Location;",
        "osName",
        "getOsName",
        "osVersion",
        "getOsVersion",
        "getShouldTrackAdid",
        "setShouldTrackAdid",
        "versionName",
        "getVersionName",
        "isGooglePlayServicesEnabled",
        "isLimitAdTrackingEnabled",
        "prefetch",
        "",
        "CachedInfo",
        "Companion",
        "common-android_release"
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
.field public static final Companion:Lcom/amplitude/common/android/AndroidContextProvider$Companion;

.field public static final OS_NAME:Ljava/lang/String; = "android"

.field public static final SETTING_ADVERTISING_ID:Ljava/lang/String; = "advertising_id"

.field public static final SETTING_LIMIT_AD_TRACKING:Ljava/lang/String; = "limit_ad_tracking"


# instance fields
.field private cachedInfo:Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

.field private final context:Landroid/content/Context;

.field private isLocationListening:Z

.field private shouldTrackAdid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/common/android/AndroidContextProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/common/android/AndroidContextProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/common/android/AndroidContextProvider;->Companion:Lcom/amplitude/common/android/AndroidContextProvider$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider;->context:Landroid/content/Context;

    .line 431
    iput-boolean p2, p0, Lcom/amplitude/common/android/AndroidContextProvider;->isLocationListening:Z

    .line 432
    iput-boolean p3, p0, Lcom/amplitude/common/android/AndroidContextProvider;->shouldTrackAdid:Z

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amplitude/common/android/AndroidContextProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getGeocoder(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/location/Geocoder;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getGeocoder()Landroid/location/Geocoder;

    move-result-object p0

    return-object p0
.end method

.method private final getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider;->cachedInfo:Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    invoke-direct {v0, p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;-><init>(Lcom/amplitude/common/android/AndroidContextProvider;)V

    iput-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider;->cachedInfo:Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider;->cachedInfo:Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    return-object v0
.end method

.method private final getGeocoder()Landroid/location/Geocoder;
    .locals 3

    .line 419
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/amplitude/common/android/AndroidContextProvider;->context:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public final getAdvertisingId()Ljava/lang/String;
    .locals 1

    .line 349
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppSetId()Ljava/lang/String;
    .locals 1

    .line 351
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getAppSetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBrand()Ljava/lang/String;
    .locals 1

    .line 337
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 1

    .line 343
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getCarrier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 345
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 347
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 1

    .line 339
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .line 341
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMostRecentLocation()Landroid/location/Location;
    .locals 7

    .line 358
    const-string v0, "Failed to get most recent location"

    iget-boolean v1, p0, Lcom/amplitude/common/android/AndroidContextProvider;->isLocationListening:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/amplitude/common/android/AndroidContextProvider;->context:Landroid/content/Context;

    .line 364
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 362
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/amplitude/common/android/AndroidContextProvider;->context:Landroid/content/Context;

    .line 368
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 366
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/amplitude/common/android/AndroidContextProvider;->context:Landroid/content/Context;

    .line 375
    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 374
    instance-of v3, v1, Landroid/location/LocationManager;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/location/LocationManager;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    return-object v2

    :cond_3
    const/4 v3, 0x1

    .line 384
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_4

    return-object v2

    .line 393
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 394
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 397
    :try_start_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 401
    :catch_1
    sget-object v5, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v5}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    goto :goto_3

    .line 399
    :catch_2
    sget-object v5, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v5}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    :goto_3
    move-object v5, v2

    :goto_4
    if-eqz v5, :cond_5

    .line 404
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 409
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v3, -0x1

    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 410
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_7

    .line 411
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    move-object v2, v1

    goto :goto_5

    :cond_8
    return-object v2
.end method

.method public final getOsName()Ljava/lang/String;
    .locals 1

    .line 333
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getOsName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .locals 1

    .line 335
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getShouldTrackAdid()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/amplitude/common/android/AndroidContextProvider;->shouldTrackAdid:Z

    return v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 331
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isGooglePlayServicesEnabled()Z
    .locals 1

    .line 323
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getGpsEnabled()Z

    move-result v0

    return v0
.end method

.method public final isLimitAdTrackingEnabled()Z
    .locals 1

    .line 327
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getLimitAdTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method public final isLocationListening()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/amplitude/common/android/AndroidContextProvider;->isLocationListening:Z

    return v0
.end method

.method public final prefetch()V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider;->getCachedInfo()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;

    return-void
.end method

.method public final setLocationListening(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/amplitude/common/android/AndroidContextProvider;->isLocationListening:Z

    return-void
.end method

.method public final setShouldTrackAdid(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/amplitude/common/android/AndroidContextProvider;->shouldTrackAdid:Z

    return-void
.end method

.class public final Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;
.super Ljava/lang/Object;
.source "AndroidContextProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amplitude/common/android/AndroidContextProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CachedInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u00104\u001a\u00020\u001dH\u0002J\n\u00105\u001a\u0004\u0018\u00010\u0004H\u0002J\n\u00106\u001a\u0004\u0018\u00010\u0004H\u0002J\u0008\u00107\u001a\u00020\u0004H\u0002J\n\u00108\u001a\u0004\u0018\u00010\u0004H\u0002J\n\u00109\u001a\u0004\u0018\u00010\u0004H\u0002J\u0008\u0010:\u001a\u00020\u0004H\u0002J\u0008\u0010;\u001a\u00020\u0004H\u0002J\u0008\u0010<\u001a\u00020\u0004H\u0002J\u0008\u0010=\u001a\u00020\u0004H\u0002J\n\u0010>\u001a\u0004\u0018\u00010\u0004H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u0011\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0006R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0006R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0006R\u0014\u0010\u0012\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0006R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0006R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0006R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0006R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0006R\u0011\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0006R\u001a\u0010\"\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001f\"\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u00020\'8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0006R\u0011\u0010,\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u0006R\u0011\u0010.\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u0006R\u0011\u00100\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u0006R\u0013\u00102\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\u0006\u00a8\u0006?"
    }
    d2 = {
        "Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;",
        "",
        "(Lcom/amplitude/common/android/AndroidContextProvider;)V",
        "advertisingId",
        "",
        "getAdvertisingId",
        "()Ljava/lang/String;",
        "setAdvertisingId",
        "(Ljava/lang/String;)V",
        "appSetId",
        "getAppSetId",
        "setAppSetId",
        "brand",
        "getBrand",
        "carrier",
        "getCarrier",
        "country",
        "getCountry",
        "countryFromLocale",
        "getCountryFromLocale",
        "countryFromLocation",
        "getCountryFromLocation",
        "countryFromNetwork",
        "getCountryFromNetwork",
        "fetchAndCacheAmazonAdvertisingId",
        "getFetchAndCacheAmazonAdvertisingId",
        "fetchAndCacheGoogleAdvertisingId",
        "getFetchAndCacheGoogleAdvertisingId",
        "gpsEnabled",
        "",
        "getGpsEnabled",
        "()Z",
        "language",
        "getLanguage",
        "limitAdTrackingEnabled",
        "getLimitAdTrackingEnabled",
        "setLimitAdTrackingEnabled",
        "(Z)V",
        "locale",
        "Ljava/util/Locale;",
        "getLocale",
        "()Ljava/util/Locale;",
        "manufacturer",
        "getManufacturer",
        "model",
        "getModel",
        "osName",
        "getOsName",
        "osVersion",
        "getOsVersion",
        "versionName",
        "getVersionName",
        "checkGPSEnabled",
        "fetchAdvertisingId",
        "fetchAppSetId",
        "fetchBrand",
        "fetchCarrier",
        "fetchCountry",
        "fetchLanguage",
        "fetchManufacturer",
        "fetchModel",
        "fetchOsVersion",
        "fetchVersionName",
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


# instance fields
.field private advertisingId:Ljava/lang/String;

.field private appSetId:Ljava/lang/String;

.field private final brand:Ljava/lang/String;

.field private final carrier:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final gpsEnabled:Z

.field private final language:Ljava/lang/String;

.field private limitAdTrackingEnabled:Z

.field private final manufacturer:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final osName:Ljava/lang/String;

.field private final osVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/amplitude/common/android/AndroidContextProvider;

.field private final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amplitude/common/android/AndroidContextProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->limitAdTrackingEnabled:Z

    .line 57
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchAdvertisingId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->advertisingId:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchVersionName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->versionName:Ljava/lang/String;

    .line 59
    const-string p1, "android"

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->osName:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchOsVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->osVersion:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchBrand()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->brand:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchManufacturer()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->manufacturer:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchModel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->model:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchCarrier()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->carrier:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->country:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->language:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->checkGPSEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->gpsEnabled:Z

    .line 68
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchAppSetId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->appSetId:Ljava/lang/String;

    return-void
.end method

.method private final checkGPSEnabled()Z
    .locals 8

    .line 289
    const-string v0, "Google Play Services Util not found!"

    const-string v1, "Google Play Services not available"

    const/4 v2, 0x0

    .line 291
    :try_start_0
    const-string v3, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 293
    const-string v4, "isGooglePlayServicesAvailable"

    const/4 v5, 0x1

    .line 294
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    .line 292
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 296
    iget-object v4, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-static {v4}, Lcom/amplitude/common/android/AndroidContextProvider;->access$getContext$p(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/content/Context;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    move-object v6, v3

    check-cast v6, Ljava/lang/Integer;

    :cond_0
    if-eqz v6, :cond_1

    .line 298
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    move v2, v5

    :cond_1
    return v2

    :catch_0
    move-exception v0

    .line 310
    sget-object v1, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v1}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v1

    .line 311
    const-string v3, "Error when checking for Google Play Services: "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {v1, v0}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :catch_1
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :catch_2
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :catch_3
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :catch_4
    sget-object v1, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v1}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :catch_5
    sget-object v1, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v1}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method private final fetchAdvertisingId()Ljava/lang/String;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getShouldTrackAdid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    const-string v0, "Amazon"

    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->fetchManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getFetchAndCacheAmazonAdvertisingId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getFetchAndCacheGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final fetchAppSetId()Ljava/lang/String;
    .locals 7

    .line 223
    :try_start_0
    const-string v0, "com.google.android.gms.appset.AppSet"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 224
    const-string v1, "getClient"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-static {v1}, Lcom/amplitude/common/android/AndroidContextProvider;->access$getContext$p(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/content/Context;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getAppSetIdInfo"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 227
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    const-string v1, "com.google.android.gms.tasks.Tasks"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 230
    const-string v4, "await"

    new-array v2, v2, [Ljava/lang/Class;

    const-string v6, "com.google.android.gms.tasks.Task"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 231
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 233
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->appSetId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :catch_0
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    .line 241
    const-string v1, "Encountered an error connecting to Google Play Services for app set id"

    .line 240
    invoke-virtual {v0, v1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :catch_1
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    const-string v1, "Google Play Services not available for app set id"

    invoke-virtual {v0, v1}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :catch_2
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    .line 236
    const-string v1, "Google Play Services SDK not found for app set id!"

    invoke-virtual {v0, v1}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method private final fetchBrand()Ljava/lang/String;
    .locals 2

    .line 90
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "BRAND"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final fetchCarrier()Ljava/lang/String;
    .locals 2

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-static {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->access$getContext$p(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/content/Context;

    move-result-object v0

    .line 104
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 105
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final fetchCountry()Ljava/lang/String;
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getCountryFromLocation()Ljava/lang/String;

    move-result-object v0

    .line 118
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 121
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getCountryFromNetwork()Ljava/lang/String;

    move-result-object v0

    .line 122
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getCountryFromLocale()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private final fetchLanguage()Ljava/lang/String;
    .locals 2

    .line 204
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale.language"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final fetchManufacturer()Ljava/lang/String;
    .locals 2

    .line 94
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "MANUFACTURER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final fetchModel()Ljava/lang/String;
    .locals 2

    .line 98
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final fetchOsVersion()Ljava/lang/String;
    .locals 2

    .line 86
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "RELEASE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final fetchVersionName()Ljava/lang/String;
    .locals 3

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-static {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->access$getContext$p(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-static {v1}, Lcom/amplitude/common/android/AndroidContextProvider;->access$getContext$p(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "context.packageManager.g\u2026o(context.packageName, 0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getCountryFromLocale()Ljava/lang/String;
    .locals 2

    .line 201
    invoke-direct {p0}, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale.country"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCountryFromLocation()Ljava/lang/String;
    .locals 9

    .line 130
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->isLocationListening()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-virtual {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->getMostRecentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    :try_start_0
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-static {v2}, Lcom/amplitude/common/android/AndroidContextProvider;->access$getGeocoder(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/location/Geocoder;

    move-result-object v3

    .line 139
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 140
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x1

    .line 138
    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    return-object v1
.end method

.method private final getCountryFromNetwork()Ljava/lang/String;
    .locals 3

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-static {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->access$getContext$p(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/content/Context;

    move-result-object v0

    .line 172
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 173
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getFetchAndCacheAmazonAdvertisingId()Ljava/lang/String;
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-static {v0}, Lcom/amplitude/common/android/AndroidContextProvider;->access$getContext$p(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 250
    const-string v1, "limit_ad_tracking"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->limitAdTrackingEnabled:Z

    .line 251
    const-string v1, "advertising_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method private final getFetchAndCacheGoogleAdvertisingId()Ljava/lang/String;
    .locals 7

    .line 258
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 260
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    .line 261
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 259
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->this$0:Lcom/amplitude/common/android/AndroidContextProvider;

    invoke-static {v1}, Lcom/amplitude/common/android/AndroidContextProvider;->access$getContext$p(Lcom/amplitude/common/android/AndroidContextProvider;)Landroid/content/Context;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 265
    const-string v4, "isLimitAdTrackingEnabled"

    new-array v6, v5, [Ljava/lang/Class;

    .line 264
    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 268
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 267
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    :cond_0
    if-eqz v3, :cond_1

    .line 270
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    .line 269
    :goto_0
    iput-boolean v2, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->limitAdTrackingEnabled:Z

    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 272
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->advertisingId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :catch_0
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    .line 281
    const-string v1, "Encountered an error connecting to Google Play Services for advertising id"

    .line 280
    invoke-virtual {v0, v1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :catch_1
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    .line 278
    const-string v1, "Google Play Services not available for advertising id"

    invoke-virtual {v0, v1}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :catch_2
    sget-object v0, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v0}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v0

    .line 275
    const-string v1, "Google Play Services SDK not found for advertising id!"

    invoke-virtual {v0, v1}, Lcom/amplitude/common/android/LogcatLogger;->warn(Ljava/lang/String;)V

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method private final getLocale()Ljava/util/Locale;
    .locals 2

    .line 187
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const-string v1, "configuration.locales"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    const-string v1, "localeList.get(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getAdvertisingId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSetId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrand()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getGpsEnabled()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->gpsEnabled:Z

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimitAdTrackingEnabled()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->limitAdTrackingEnabled:Z

    return v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final setAdvertisingId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->advertisingId:Ljava/lang/String;

    return-void
.end method

.method public final setAppSetId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->appSetId:Ljava/lang/String;

    return-void
.end method

.method public final setLimitAdTrackingEnabled(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;->limitAdTrackingEnabled:Z

    return-void
.end method

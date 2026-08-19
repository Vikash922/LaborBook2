.class public final Lcom/amplitude/android/migration/DatabaseStorageProvider;
.super Ljava/lang/Object;
.source "DatabaseStorage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/amplitude/android/migration/DatabaseStorageProvider;",
        "",
        "()V",
        "instances",
        "",
        "",
        "Lcom/amplitude/android/migration/DatabaseStorage;",
        "getDatabaseName",
        "instanceName",
        "getStorage",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
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
.field public static final INSTANCE:Lcom/amplitude/android/migration/DatabaseStorageProvider;

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amplitude/android/migration/DatabaseStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amplitude/android/migration/DatabaseStorageProvider;

    invoke-direct {v0}, Lcom/amplitude/android/migration/DatabaseStorageProvider;-><init>()V

    sput-object v0, Lcom/amplitude/android/migration/DatabaseStorageProvider;->INSTANCE:Lcom/amplitude/android/migration/DatabaseStorageProvider;

    .line 316
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/amplitude/android/migration/DatabaseStorageProvider;->instances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDatabaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 331
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "$default_instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "com.amplitude.api_"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "com.amplitude.api"

    :goto_2
    return-object p1
.end method


# virtual methods
.method public final getStorage(Lcom/amplitude/core/Amplitude;)Lcom/amplitude/android/migration/DatabaseStorage;
    .locals 5

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    check-cast v0, Lcom/amplitude/android/Configuration;

    .line 320
    invoke-virtual {v0}, Lcom/amplitude/android/Configuration;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amplitude/android/migration/DatabaseStorageProvider;->getDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    sget-object v2, Lcom/amplitude/android/migration/DatabaseStorageProvider;->instances:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amplitude/android/migration/DatabaseStorage;

    if-nez v3, :cond_0

    .line 323
    new-instance v3, Lcom/amplitude/android/migration/DatabaseStorage;

    invoke-virtual {v0}, Lcom/amplitude/android/Configuration;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amplitude/android/Configuration;->getLoggerProvider()Lcom/amplitude/core/LoggerProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amplitude/core/LoggerProvider;->getLogger(Lcom/amplitude/core/Amplitude;)Lcom/amplitude/common/Logger;

    move-result-object p1

    invoke-direct {v3, v4, v1, p1}, Lcom/amplitude/android/migration/DatabaseStorage;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/common/Logger;)V

    .line 324
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v3
.end method

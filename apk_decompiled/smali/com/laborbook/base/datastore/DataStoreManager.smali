.class public final Lcom/laborbook/base/datastore/DataStoreManager;
.super Ljava/lang/Object;
.source "DataStoreManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/base/datastore/DataStoreManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataStoreManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStoreManager.kt\ncom/laborbook/base/datastore/DataStoreManager\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,94:1\n53#2:95\n55#2:99\n50#3:96\n55#3:98\n107#4:97\n*S KotlinDebug\n*F\n+ 1 DataStoreManager.kt\ncom/laborbook/base/datastore/DataStoreManager\n*L\n40#1:95\n40#1:99\n40#1:96\n40#1:98\n40#1:97\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J*\u0010\u000e\u001a\u00020\u000f\"\u0004\u0008\u0000\u0010\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u00122\u0006\u0010\u0013\u001a\u0002H\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u0016\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0002\u0010\u0018J-\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u001a\"\u0004\u0008\u0000\u0010\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u00122\u0006\u0010\u001b\u001a\u0002H\u0010\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010\u001d\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u001eR%\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007*\u00020\u00038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "userPreferencesDataStore",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "getUserPreferencesDataStore",
        "(Landroid/content/Context;)Landroidx/datastore/core/DataStore;",
        "userPreferencesDataStore$delegate",
        "Lkotlin/properties/ReadOnlyProperty;",
        "dataStore",
        "write",
        "",
        "T",
        "key",
        "Landroidx/datastore/preferences/core/Preferences$Key;",
        "value",
        "(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "recordInterstitialShown",
        "todayEpochDay",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "read",
        "Lkotlinx/coroutines/flow/Flow;",
        "defaultValue",
        "(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;",
        "clearAllPreferences",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACCESS_TOKEN:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APP_LOCK_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final APP_OPEN_COUNT:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPANY_ID:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

.field private static final FCM_TOKEN:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIRST_TIME_APP_OPEN:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final GOOGLE_ADS_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_SEEN_HOME_SCREEN:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOME_PAGE_ADS_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTALL_REFERRER_RAW:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTALL_SOURCE:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERACTED_WITH_APP_FEATURES:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERSTITIAL_COUNT_TODAY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INT_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_EXISTING_USER:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_LOGGED_IN:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LANGUAGE_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_AUTH_TIME:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_INTERSTITIAL_EPOCH_DAY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOBILE_NUMBER:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREMIUM_END_DATE:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREMIUM_OFFER_LAST_SHOWN:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREMIUM_OFFER_LOCAL_END_EPOCH_MS:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREMIUM_OFFER_SHOW_COUNT:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREMIUM_PLAN_NAME:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREMIUM_SUBSCRIPTION_ID:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREMIUM_SUBSCRIPTION_STATUS:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVACY_MODE_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRO_STATUS:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFER_FRIEND_BOTTOM_SHEET_SHOWN:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_ID:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_NAME:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_TYPE:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataStore:Landroidx/datastore/core/DataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation
.end field

.field private final userPreferencesDataStore$delegate:Lkotlin/properties/ReadOnlyProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 16
    new-instance v1, Lkotlin/jvm/internal/PropertyReference2Impl;

    const-string v2, "userPreferencesDataStore"

    const-string v3, "getUserPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const-class v4, Lcom/laborbook/base/datastore/DataStoreManager;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference2Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference2;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property2(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    .line 52
    const-string v0, "access_token"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->ACCESS_TOKEN:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 53
    const-string v0, "user_id"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->USER_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 54
    const-string v0, "user_name"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->USER_NAME:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 55
    const-string v0, "user_type"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->USER_TYPE:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 56
    const-string v0, "mobile_number"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->MOBILE_NUMBER:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 57
    const-string v0, "company_id"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->COMPANY_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 58
    const-string v0, "is_logged_in"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->IS_LOGGED_IN:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 59
    const-string v0, "int_key"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->intKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->INT_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 60
    const-string v0, "language_key"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->LANGUAGE_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 61
    const-string v0, "first_time_app_open"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->FIRST_TIME_APP_OPEN:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 62
    const-string v0, "interacted_with_app_features"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->INTERACTED_WITH_APP_FEATURES:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 64
    const-string v0, "premium_offer_local_end_epoch_ms"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_OFFER_LOCAL_END_EPOCH_MS:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 65
    const-string v0, "app_open_count"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->intKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->APP_OPEN_COUNT:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 66
    const-string v0, "fcm_token"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->FCM_TOKEN:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 67
    const-string v0, "google_ads_enabled"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->GOOGLE_ADS_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 68
    const-string v0, "home_page_ads_enabled"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->HOME_PAGE_ADS_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 69
    const-string v0, "privacy_mode_enabled"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PRIVACY_MODE_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 70
    const-string v0, "app_lock_enabled"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->APP_LOCK_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 71
    const-string v0, "last_auth_time"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->LAST_AUTH_TIME:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 73
    const-string v0, "last_interstitial_epoch_day"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->intKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->LAST_INTERSTITIAL_EPOCH_DAY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 74
    const-string v0, "interstitial_count_today"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->intKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->INTERSTITIAL_COUNT_TODAY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 75
    const-string v0, "refer_friend_bottom_sheet_shown"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->REFER_FRIEND_BOTTOM_SHEET_SHOWN:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 77
    const-string v0, "has_seen_home_screen"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->HAS_SEEN_HOME_SCREEN:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 79
    const-string v0, "install_source"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->INSTALL_SOURCE:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 81
    const-string v0, "install_referrer_raw"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->INSTALL_REFERRER_RAW:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 84
    const-string v0, "pro_status"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PRO_STATUS:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 85
    const-string v0, "premium_offer_last_shown"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_OFFER_LAST_SHOWN:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 86
    const-string v0, "premium_offer_show_count"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->intKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_OFFER_SHOW_COUNT:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 87
    const-string v0, "premium_subscription_id"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_SUBSCRIPTION_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 88
    const-string v0, "premium_plan_name"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_PLAN_NAME:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 89
    const-string v0, "premium_subscription_status"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_SUBSCRIPTION_STATUS:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 90
    const-string v0, "premium_end_date"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_END_DATE:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 92
    const-string v0, "is_existing_user"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->IS_EXISTING_USER:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v5, 0xe

    const/4 v6, 0x0

    .line 16
    const-string v1, "app_datastore"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->preferencesDataStore$default(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlin/properties/ReadOnlyProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/base/datastore/DataStoreManager;->userPreferencesDataStore$delegate:Lkotlin/properties/ReadOnlyProperty;

    .line 18
    invoke-direct {p0, p1}, Lcom/laborbook/base/datastore/DataStoreManager;->getUserPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/base/datastore/DataStoreManager;->dataStore:Landroidx/datastore/core/DataStore;

    return-void
.end method

.method public static final synthetic access$getACCESS_TOKEN$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->ACCESS_TOKEN:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getAPP_LOCK_ENABLED$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->APP_LOCK_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getAPP_OPEN_COUNT$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->APP_OPEN_COUNT:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getCOMPANY_ID$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->COMPANY_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getFCM_TOKEN$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->FCM_TOKEN:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getFIRST_TIME_APP_OPEN$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->FIRST_TIME_APP_OPEN:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getGOOGLE_ADS_ENABLED$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->GOOGLE_ADS_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getHAS_SEEN_HOME_SCREEN$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->HAS_SEEN_HOME_SCREEN:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getHOME_PAGE_ADS_ENABLED$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->HOME_PAGE_ADS_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getINSTALL_REFERRER_RAW$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->INSTALL_REFERRER_RAW:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getINSTALL_SOURCE$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->INSTALL_SOURCE:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getINTERACTED_WITH_APP_FEATURES$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->INTERACTED_WITH_APP_FEATURES:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getINTERSTITIAL_COUNT_TODAY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->INTERSTITIAL_COUNT_TODAY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getINT_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->INT_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getIS_EXISTING_USER$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->IS_EXISTING_USER:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getIS_LOGGED_IN$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->IS_LOGGED_IN:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getLANGUAGE_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->LANGUAGE_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getLAST_AUTH_TIME$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->LAST_AUTH_TIME:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getLAST_INTERSTITIAL_EPOCH_DAY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->LAST_INTERSTITIAL_EPOCH_DAY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getMOBILE_NUMBER$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->MOBILE_NUMBER:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getPREMIUM_END_DATE$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_END_DATE:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getPREMIUM_OFFER_LAST_SHOWN$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_OFFER_LAST_SHOWN:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getPREMIUM_OFFER_LOCAL_END_EPOCH_MS$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_OFFER_LOCAL_END_EPOCH_MS:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getPREMIUM_OFFER_SHOW_COUNT$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_OFFER_SHOW_COUNT:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getPREMIUM_PLAN_NAME$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_PLAN_NAME:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getPREMIUM_SUBSCRIPTION_ID$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_SUBSCRIPTION_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getPREMIUM_SUBSCRIPTION_STATUS$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PREMIUM_SUBSCRIPTION_STATUS:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getPRIVACY_MODE_ENABLED$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PRIVACY_MODE_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getPRO_STATUS$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->PRO_STATUS:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getREFER_FRIEND_BOTTOM_SHEET_SHOWN$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->REFER_FRIEND_BOTTOM_SHEET_SHOWN:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getUSER_ID$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->USER_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getUSER_NAME$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->USER_NAME:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getUSER_TYPE$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/base/datastore/DataStoreManager;->USER_TYPE:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method private final getUserPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/laborbook/base/datastore/DataStoreManager;->userPreferencesDataStore$delegate:Lkotlin/properties/ReadOnlyProperty;

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p1, v1}, Lkotlin/properties/ReadOnlyProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    return-object p1
.end method


# virtual methods
.method public final clearAllPreferences(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/laborbook/base/datastore/DataStoreManager;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/laborbook/base/datastore/DataStoreManager$clearAllPreferences$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager$clearAllPreferences$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "TT;>;TT;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/laborbook/base/datastore/DataStoreManager;->dataStore:Landroidx/datastore/core/DataStore;

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/laborbook/base/datastore/DataStoreManager$read$$inlined$map$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/laborbook/base/datastore/DataStoreManager$read$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    return-object v1
.end method

.method public final recordInterstitialShown(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/laborbook/base/datastore/DataStoreManager;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/laborbook/base/datastore/DataStoreManager$recordInterstitialShown$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/laborbook/base/datastore/DataStoreManager$recordInterstitialShown$2;-><init>(ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "TT;>;TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/laborbook/base/datastore/DataStoreManager;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/laborbook/base/datastore/DataStoreManager$write$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/laborbook/base/datastore/DataStoreManager$write$2;-><init>(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

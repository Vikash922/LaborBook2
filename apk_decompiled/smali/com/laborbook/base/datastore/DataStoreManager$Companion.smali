.class public final Lcom/laborbook/base/datastore/DataStoreManager$Companion;
.super Ljava/lang/Object;
.source "DataStoreManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/base/datastore/DataStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008,\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0008R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0008R\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0008R\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0008R\u0017\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0008R\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0008R\u0017\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0008R\u0017\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0008R\u0017\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0008R\u0017\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0008R\u0017\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u0008R\u0017\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u0008R\u0017\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u0008R\u0017\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\u0008R\u0017\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010\u0008R\u0017\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010\u0008R\u0017\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\u0008R\u0017\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010\u0008R\u0017\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010\u0008R\u0017\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010\u0008R\u0017\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010\u0008R\u0017\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010\u0008R\u0017\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010\u0008R\u0017\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010\u0008R\u0017\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010\u0008R\u0017\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010\u0008\u00a8\u0006L"
    }
    d2 = {
        "Lcom/laborbook/base/datastore/DataStoreManager$Companion;",
        "",
        "<init>",
        "()V",
        "ACCESS_TOKEN",
        "Landroidx/datastore/preferences/core/Preferences$Key;",
        "",
        "getACCESS_TOKEN",
        "()Landroidx/datastore/preferences/core/Preferences$Key;",
        "USER_ID",
        "getUSER_ID",
        "USER_NAME",
        "getUSER_NAME",
        "USER_TYPE",
        "getUSER_TYPE",
        "MOBILE_NUMBER",
        "getMOBILE_NUMBER",
        "COMPANY_ID",
        "getCOMPANY_ID",
        "IS_LOGGED_IN",
        "",
        "getIS_LOGGED_IN",
        "INT_KEY",
        "",
        "getINT_KEY",
        "LANGUAGE_KEY",
        "getLANGUAGE_KEY",
        "FIRST_TIME_APP_OPEN",
        "getFIRST_TIME_APP_OPEN",
        "INTERACTED_WITH_APP_FEATURES",
        "getINTERACTED_WITH_APP_FEATURES",
        "PREMIUM_OFFER_LOCAL_END_EPOCH_MS",
        "",
        "getPREMIUM_OFFER_LOCAL_END_EPOCH_MS",
        "APP_OPEN_COUNT",
        "getAPP_OPEN_COUNT",
        "FCM_TOKEN",
        "getFCM_TOKEN",
        "GOOGLE_ADS_ENABLED",
        "getGOOGLE_ADS_ENABLED",
        "HOME_PAGE_ADS_ENABLED",
        "getHOME_PAGE_ADS_ENABLED",
        "PRIVACY_MODE_ENABLED",
        "getPRIVACY_MODE_ENABLED",
        "APP_LOCK_ENABLED",
        "getAPP_LOCK_ENABLED",
        "LAST_AUTH_TIME",
        "getLAST_AUTH_TIME",
        "LAST_INTERSTITIAL_EPOCH_DAY",
        "getLAST_INTERSTITIAL_EPOCH_DAY",
        "INTERSTITIAL_COUNT_TODAY",
        "getINTERSTITIAL_COUNT_TODAY",
        "REFER_FRIEND_BOTTOM_SHEET_SHOWN",
        "getREFER_FRIEND_BOTTOM_SHEET_SHOWN",
        "HAS_SEEN_HOME_SCREEN",
        "getHAS_SEEN_HOME_SCREEN",
        "INSTALL_SOURCE",
        "getINSTALL_SOURCE",
        "INSTALL_REFERRER_RAW",
        "getINSTALL_REFERRER_RAW",
        "PRO_STATUS",
        "getPRO_STATUS",
        "PREMIUM_OFFER_LAST_SHOWN",
        "getPREMIUM_OFFER_LAST_SHOWN",
        "PREMIUM_OFFER_SHOW_COUNT",
        "getPREMIUM_OFFER_SHOW_COUNT",
        "PREMIUM_SUBSCRIPTION_ID",
        "getPREMIUM_SUBSCRIPTION_ID",
        "PREMIUM_PLAN_NAME",
        "getPREMIUM_PLAN_NAME",
        "PREMIUM_SUBSCRIPTION_STATUS",
        "getPREMIUM_SUBSCRIPTION_STATUS",
        "PREMIUM_END_DATE",
        "getPREMIUM_END_DATE",
        "IS_EXISTING_USER",
        "getIS_EXISTING_USER",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getACCESS_TOKEN()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getACCESS_TOKEN$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getAPP_LOCK_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getAPP_LOCK_ENABLED$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getAPP_OPEN_COUNT()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getAPP_OPEN_COUNT$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getCOMPANY_ID()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getCOMPANY_ID$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getFCM_TOKEN()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getFCM_TOKEN$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getFIRST_TIME_APP_OPEN()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getFIRST_TIME_APP_OPEN$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getGOOGLE_ADS_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getGOOGLE_ADS_ENABLED$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getHAS_SEEN_HOME_SCREEN()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getHAS_SEEN_HOME_SCREEN$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getHOME_PAGE_ADS_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getHOME_PAGE_ADS_ENABLED$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getINSTALL_REFERRER_RAW()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getINSTALL_REFERRER_RAW$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getINSTALL_SOURCE()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getINSTALL_SOURCE$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getINTERACTED_WITH_APP_FEATURES()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getINTERACTED_WITH_APP_FEATURES$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getINTERSTITIAL_COUNT_TODAY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getINTERSTITIAL_COUNT_TODAY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getINT_KEY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getINT_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getIS_EXISTING_USER()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getIS_EXISTING_USER$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getIS_LOGGED_IN()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getIS_LOGGED_IN$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getLANGUAGE_KEY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getLANGUAGE_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getLAST_AUTH_TIME()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getLAST_AUTH_TIME$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getLAST_INTERSTITIAL_EPOCH_DAY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getLAST_INTERSTITIAL_EPOCH_DAY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getMOBILE_NUMBER()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getMOBILE_NUMBER$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getPREMIUM_END_DATE()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getPREMIUM_END_DATE$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getPREMIUM_OFFER_LAST_SHOWN()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getPREMIUM_OFFER_LAST_SHOWN$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getPREMIUM_OFFER_LOCAL_END_EPOCH_MS()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getPREMIUM_OFFER_LOCAL_END_EPOCH_MS$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getPREMIUM_OFFER_SHOW_COUNT()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getPREMIUM_OFFER_SHOW_COUNT$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getPREMIUM_PLAN_NAME()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getPREMIUM_PLAN_NAME$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getPREMIUM_SUBSCRIPTION_ID()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getPREMIUM_SUBSCRIPTION_ID$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getPREMIUM_SUBSCRIPTION_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getPREMIUM_SUBSCRIPTION_STATUS$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getPRIVACY_MODE_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getPRIVACY_MODE_ENABLED$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getPRO_STATUS$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getREFER_FRIEND_BOTTOM_SHEET_SHOWN()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getREFER_FRIEND_BOTTOM_SHEET_SHOWN$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getUSER_ID$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getUSER_NAME()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getUSER_NAME$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getUSER_TYPE()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/laborbook/base/datastore/DataStoreManager;->access$getUSER_TYPE$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

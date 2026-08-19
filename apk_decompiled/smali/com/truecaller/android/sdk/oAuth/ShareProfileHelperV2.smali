.class public Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;
.super Ljava/lang/Object;
.source "ShareProfileHelperV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TrueAppInfo;,
        Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerAppInfo;,
        Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerDappInfo;
    }
.end annotation


# static fields
.field private static final HAS_OAUTH:I = 0x1

.field private static final INTENT_ACTION_BOTTOMSHEET_OAUTH:Ljava/lang/String; = "com.truecaller.android.sdk.intent.action.v1.oAuth"

.field public static final INTENT_EXTRA_PARTNER_INFO:Ljava/lang/String; = "truesdk_partner_info"

.field public static final INTENT_EXTRA_SDK_FLAGS:Ljava/lang/String; = "truesdk_flags"

.field public static final INTENT_EXTRA_SIGN_IN_OPTIONS:Ljava/lang/String; = "truesdk_options_info"

.field private static final IS_NOT_BLACKLISTED:I = 0x1

.field private static final VALID_TC_ACCOUNT_STATE:I = 0x1

.field public static final sTrueAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TrueAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;->sTrueAppInfoList:Ljava/util/List;

    .line 68
    new-instance v1, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerAppInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerAppInfo;-><init>(Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerAppInfo-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerDappInfo;

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerDappInfo;-><init>(Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerDappInfo-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResolvedIntentForAction(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 149
    sget-object v0, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;->sTrueAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TrueAppInfo;

    .line 150
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.truecaller.android.sdk.intent.action.v1.oAuth"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TrueAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.DEFAULT"

    .line 152
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 153
    invoke-static {p0, v2, v1}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;->isTrueAppIntentResolved(Landroid/content/Context;Landroid/content/Intent;Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TrueAppInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareProfileIntent(Landroid/content/Context;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;)Landroid/content/Intent;
    .locals 1

    .line 132
    invoke-static {p0}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;->getResolvedIntentForAction(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_0
    const-string v0, "truesdk_partner_info"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    const-string p1, "truesdk_flags"

    invoke-virtual {p2}, Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;->getSdkFlag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p2}, Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;->getSdkOptionsDataBundle()Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    const-string p1, "truesdk_options_info"

    invoke-virtual {p2}, Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;->getSdkOptionsDataBundle()Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    return-object p0
.end method

.method private static hasOAuthEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "content://"

    const/4 v1, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".TcInfoContentProvider/tcOAuth"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 97
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-eqz p0, :cond_3

    .line 103
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 106
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 97
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    if-eqz p0, :cond_4

    .line 106
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return p1

    :catch_0
    return v1
.end method

.method private static hasValidAccountState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "content://"

    const/4 v1, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".TcInfoContentProvider/tcAccountState"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 81
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-eqz p0, :cond_3

    .line 87
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 90
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 81
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    if-eqz p0, :cond_4

    .line 90
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return p1

    :catch_0
    return v1
.end method

.method private static isNotBlacklisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "content://"

    const/4 v1, 0x0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".TcInfoContentProvider/tcOAuthBlacklistedDevice"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 113
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-eqz p0, :cond_3

    .line 119
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 122
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 113
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    if-eqz p0, :cond_4

    .line 122
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return p1

    :catch_0
    return v1
.end method

.method private static isTrueAppIntentResolved(Landroid/content/Context;Landroid/content/Intent;Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TrueAppInfo;)Z
    .locals 2

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TrueAppInfo;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static isValidOAuthTcClientAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 73
    invoke-static {p0}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;->getResolvedIntentForAction(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;->hasValidAccountState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;->hasOAuthEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;->isNotBlacklisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

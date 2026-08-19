.class public Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;
.super Ljava/lang/Object;
.source "ShareProfileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;,
        Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerAppInfo;,
        Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerAppInfo;,
        Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerDappInfo;,
        Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerDappInfo;
    }
.end annotation


# static fields
.field private static final HAS_1TAP:I = 0x1

.field public static final INTENT_ACTION_SHARE_PROFILE:Ljava/lang/String; = "com.truecaller.android.sdk.intent.action.v1.SHARE_PROFILE"

.field private static final INTENT_ACTION_SHARE_PROFILE_BOTTOMSHEET:Ljava/lang/String; = "com.truecaller.android.sdk.intent.action.v3.SHARE_PROFILE"

.field private static final INTENT_ACTION_SHARE_PROFILE_FULLSCREEN:Ljava/lang/String; = "com.truecaller.android.sdk.intent.action.v2.SHARE_PROFILE"

.field public static final INTENT_EXTRA_CONSENT_TITLE_OPTION:Ljava/lang/String; = "truesdk_consent_title"

.field public static final INTENT_EXTRA_OTHER_NUMBER_AVAILABLE:Ljava/lang/String; = "PARTNERINFO_OTHER_NUMBER"

.field public static final INTENT_EXTRA_SDK_FLAGS:Ljava/lang/String; = "truesdk flags"

.field private static final SHOW_BOTTOM_SHEET:I = 0x1

.field private static final VALID_TC_ACCOUNT_STATE:I = 0x1

.field public static final sTrueAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->sTrueAppInfoList:Ljava/util/List;

    .line 79
    new-instance v1, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerAppInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerAppInfo;-><init>(Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerAppInfo-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerAppInfo;

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerAppInfo;-><init>(Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerAppInfo-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerDappInfo;

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerDappInfo;-><init>(Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerDappInfo-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerDappInfo;

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerDappInfo;-><init>(Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerDappInfo-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResolvedIntentForAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .line 201
    sget-object v0, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->sTrueAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;

    .line 202
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.DEFAULT"

    .line 204
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 205
    invoke-static {p0, v2, v1}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->isTrueAppIntentResolved(Landroid/content/Context;Landroid/content/Intent;Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    const-string v0, "com.truecaller.android.sdk.intent.action.v3.SHARE_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {v1}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->hasBottomSheetEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 209
    const-string p0, "com.truecaller.android.sdk.intent.action.v1.SHARE_PROFILE"

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareProfileIntent(Landroid/content/Context;Lcom/truecaller/android/sdk/PartnerInformation;Lcom/truecaller/android/sdk/legacy/clients/SdkScopeEvaluator;)Landroid/content/Intent;
    .locals 2

    .line 159
    invoke-static {p0, p2}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->getTrueAppIntent(Landroid/content/Context;Lcom/truecaller/android/sdk/legacy/clients/SdkScopeEvaluator;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 164
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    invoke-virtual {p1, v0}, Lcom/truecaller/android/sdk/PartnerInformation;->writeToBundle(Landroid/os/Bundle;)V

    .line 167
    const-string v1, "PARTNER_INFO_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    const-string p1, "PARTNERINFO_OTHER_NUMBER"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string p1, "truesdk flags"

    invoke-virtual {p2}, Lcom/truecaller/android/sdk/legacy/clients/SdkScopeEvaluator;->getSdkFlag()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string p1, "truesdk_consent_title"

    invoke-virtual {p2}, Lcom/truecaller/android/sdk/legacy/clients/SdkScopeEvaluator;->getConsentTitleIndex()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p2}, Lcom/truecaller/android/sdk/legacy/clients/SdkScopeEvaluator;->getCustomDataBundle()Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p2}, Lcom/truecaller/android/sdk/legacy/clients/SdkScopeEvaluator;->getCustomDataBundle()Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->writeToBundle(Landroid/os/Bundle;)V

    .line 177
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p0
.end method

.method private static getTrueAppIntent(Landroid/content/Context;Lcom/truecaller/android/sdk/legacy/clients/SdkScopeEvaluator;)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p1}, Lcom/truecaller/android/sdk/legacy/clients/SdkScopeEvaluator;->isFullScreenConsentRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string p1, "com.truecaller.android.sdk.intent.action.v2.SHARE_PROFILE"

    invoke-static {p0, p1}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->getResolvedIntentForAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/android/sdk/legacy/clients/SdkScopeEvaluator;->isBottomSheetConsentRequested()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    const-string p1, "com.truecaller.android.sdk.intent.action.v3.SHARE_PROFILE"

    invoke-static {p0, p1}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->getResolvedIntentForAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    return-object p1

    .line 196
    :cond_2
    const-string p1, "com.truecaller.android.sdk.intent.action.v1.SHARE_PROFILE"

    invoke-static {p0, p1}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->getResolvedIntentForAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static has1TapEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "content://"

    const/4 v1, 0x1

    .line 140
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".TcInfoContentProvider/tc1Tap"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 140
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 146
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 147
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v1, :cond_0

    move p1, v1

    :cond_0
    if-eqz p0, :cond_1

    .line 149
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 140
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    :cond_3
    if-eqz p0, :cond_4

    .line 149
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_4
    return v1
.end method

.method private static hasBottomSheetEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "content://"

    const/4 v1, 0x1

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".TcInfoContentProvider/tcBottomSheet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 124
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 130
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 131
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v1, :cond_0

    move p1, v1

    :cond_0
    if-eqz p0, :cond_1

    .line 133
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 124
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    :cond_3
    if-eqz p0, :cond_4

    .line 133
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_4
    return v1
.end method

.method private static hasValidAccountState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "content://"

    const/4 v1, 0x1

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".TcInfoContentProvider/tcAccountState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 97
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".TcAccountStateProvider/tcAccountState"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 105
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    .line 112
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 113
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    move p0, v1

    .line 114
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    return v1
.end method

.method private static isTrueAppIntentResolved(Landroid/content/Context;Landroid/content/Intent;Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;)Z
    .locals 2

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static isValidTcClientAvailable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->getTrueAppIntent(Landroid/content/Context;Lcom/truecaller/android/sdk/legacy/clients/SdkScopeEvaluator;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->hasValidAccountState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;->has1TapEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

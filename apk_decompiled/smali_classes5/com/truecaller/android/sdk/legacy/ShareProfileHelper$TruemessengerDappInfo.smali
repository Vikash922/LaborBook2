.class Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerDappInfo;
.super Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;
.source "ShareProfileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TruemessengerDappInfo"
.end annotation


# static fields
.field private static final TRUEMESSENGER_DAPP_PACKAGE:Ljava/lang/String; = "com.truecaller.messenger.debug"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerDappInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruemessengerDappInfo;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPackage()Ljava/lang/String;
    .locals 1

    .line 295
    const-string v0, "com.truecaller.messenger.debug"

    return-object v0
.end method

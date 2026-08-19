.class Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerDappInfo;
.super Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TrueAppInfo;
.source "ShareProfileHelperV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TruecallerDappInfo"
.end annotation


# static fields
.field private static final TRUECALLER_DAPP_PACKAGE:Ljava/lang/String; = "com.truecaller.debug"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TrueAppInfo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerDappInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2$TruecallerDappInfo;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPackage()Ljava/lang/String;
    .locals 1

    .line 218
    const-string v0, "com.truecaller.debug"

    return-object v0
.end method

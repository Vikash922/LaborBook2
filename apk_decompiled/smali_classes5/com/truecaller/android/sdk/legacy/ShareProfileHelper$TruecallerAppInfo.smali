.class Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerAppInfo;
.super Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;
.source "ShareProfileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/legacy/ShareProfileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TruecallerAppInfo"
.end annotation


# static fields
.field private static final TRUECALLER_APP_PACKAGE:Ljava/lang/String; = "com.truecaller"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TrueAppInfo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerAppInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/truecaller/android/sdk/legacy/ShareProfileHelper$TruecallerAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPackage()Ljava/lang/String;
    .locals 1

    .line 268
    const-string v0, "com.truecaller"

    return-object v0
.end method

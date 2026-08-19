.class public Lcom/truecaller/android/sdk/common/callVerification/CallRejectorCompat;
.super Ljava/lang/Object;
.source "CallRejectorCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallRejectorInstance(Landroid/content/Context;)Lcom/truecaller/android/sdk/common/callVerification/CallRejector;
    .locals 2

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 45
    new-instance v0, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorPieImpl;

    invoke-direct {v0, p0}, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorPieImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;

    invoke-direct {v0, p0}, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

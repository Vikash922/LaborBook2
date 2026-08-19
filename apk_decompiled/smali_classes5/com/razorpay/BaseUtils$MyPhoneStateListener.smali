.class public Lcom/razorpay/BaseUtils$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "BaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/BaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field public signalStrengthValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1710
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 1714
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 1715
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1716
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    .line 1717
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x71

    iput p1, p0, Lcom/razorpay/BaseUtils$MyPhoneStateListener;->signalStrengthValue:I

    goto :goto_0

    .line 1719
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    iput p1, p0, Lcom/razorpay/BaseUtils$MyPhoneStateListener;->signalStrengthValue:I

    goto :goto_0

    .line 1721
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p1

    iput p1, p0, Lcom/razorpay/BaseUtils$MyPhoneStateListener;->signalStrengthValue:I

    :goto_0
    return-void
.end method

.class Lcom/razorpay/SmsAgent;
.super Ljava/lang/Object;
.source "SmsAgent.java"


# static fields
.field static final READ_SMS_PERMISSION_CODE:I = 0x1

.field static sSmsAgent:Lcom/razorpay/SmsAgent;


# instance fields
.field interfaceArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/razorpay/SmsAgentInterface;",
            ">;"
        }
    .end annotation
.end field

.field private l$1_I$l$:Lcom/razorpay/SmsReceiver;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/razorpay/SmsAgent;->interfaceArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method static getSmsAgentInstance()Lcom/razorpay/SmsAgent;
    .locals 1

    .line 25
    sget-object v0, Lcom/razorpay/SmsAgent;->sSmsAgent:Lcom/razorpay/SmsAgent;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/razorpay/SmsAgent;

    invoke-direct {v0}, Lcom/razorpay/SmsAgent;-><init>()V

    sput-object v0, Lcom/razorpay/SmsAgent;->sSmsAgent:Lcom/razorpay/SmsAgent;

    .line 28
    :cond_0
    sget-object v0, Lcom/razorpay/SmsAgent;->sSmsAgent:Lcom/razorpay/SmsAgent;

    return-object v0
.end method


# virtual methods
.method addSMSBroadcastReceiver(Landroid/app/Activity;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/razorpay/SmsAgent;->l$1_I$l$:Lcom/razorpay/SmsReceiver;

    if-eqz p1, :cond_0

    return-void

    .line 67
    :cond_0
    const-string p1, "Adding SMS Broadcast receiver"

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 68
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const/16 v0, 0x3e8

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 70
    new-instance v0, Lcom/razorpay/SmsReceiver;

    invoke-direct {v0, p0}, Lcom/razorpay/SmsReceiver;-><init>(Lcom/razorpay/SmsAgent;)V

    iput-object v0, p0, Lcom/razorpay/SmsAgent;->l$1_I$l$:Lcom/razorpay/SmsReceiver;

    .line 71
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string p1, "Added SMS Broadcast receiver"

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method deregisterForCallbacks(Lcom/razorpay/SmsAgentInterface;)V
    .locals 0

    return-void
.end method

.method handleRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    array-length p2, p4

    const/4 v0, 0x0

    if-lez p2, :cond_1

    aget p2, p4, v0

    if-nez p2, :cond_1

    .line 98
    invoke-virtual {p0, p3}, Lcom/razorpay/SmsAgent;->sendSmsPermissionCallBack(Z)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/razorpay/SmsAgent;->addSMSBroadcastReceiver(Landroid/app/Activity;)V

    .line 100
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->SMS_PERMISSION_NOW_GRANTED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, v0}, Lcom/razorpay/SmsAgent;->sendSmsPermissionCallBack(Z)V

    .line 104
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->SMS_PERMISSION_NOW_DENIED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    :goto_0
    return-void
.end method

.method postSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method registerForCallbacks(Lcom/razorpay/SmsAgentInterface;)V
    .locals 0

    return-void
.end method

.method removeSMSBroadcastReceiver(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Lcom/razorpay/SmsAgent;->sendSmsPermissionCallBack(Z)V

    .line 78
    iget-object v0, p0, Lcom/razorpay/SmsAgent;->l$1_I$l$:Lcom/razorpay/SmsReceiver;

    if-nez v0, :cond_0

    .line 79
    const-string p1, "removeSMSBroadcastReceiver called but it was not registered"

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    const-string v0, "S0"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SmsAgent"

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/razorpay/SmsAgent;->l$1_I$l$:Lcom/razorpay/SmsReceiver;

    .line 90
    const-string p1, "SMS Broadcast receiver removed"

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method sendSmsPermissionCallBack(Z)V
    .locals 0

    return-void
.end method

.method takeActionsIfPermissionsAreGranted(Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

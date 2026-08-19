.class public final Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AuthOTPBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
        "auth_release"
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
.field public static final Companion:Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver$Companion;

.field private static smsListener:Lcom/laborbook/auth/common/sms/SMSListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver;->Companion:Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$setSmsListener$cp(Lcom/laborbook/auth/common/sms/SMSListener;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver;->smsListener:Lcom/laborbook/auth/common/sms/SMSListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-string p1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p2

    if-eqz p2, :cond_2

    const/16 p1, 0xf

    if-eq p2, p1, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    sget-object p1, Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver;->smsListener:Lcom/laborbook/auth/common/sms/SMSListener;

    if-eqz p1, :cond_3

    const-string p2, "Failed to extract from Broadcast Receiver"

    invoke-interface {p1, p2}, Lcom/laborbook/auth/common/sms/SMSListener;->onError(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 31
    sget-object p2, Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver;->smsListener:Lcom/laborbook/auth/common/sms/SMSListener;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcom/laborbook/auth/common/sms/SMSListener;->onSuccess(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

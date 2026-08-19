.class public final Lcom/amplitude/android/utilities/AndroidNetworkListener$setupBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidNetworkListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/android/utilities/AndroidNetworkListener;->setupBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0017\u00a8\u0006\u0008"
    }
    d2 = {
        "com/amplitude/android/utilities/AndroidNetworkListener$setupBroadcastReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/android/utilities/AndroidNetworkListener;


# direct methods
.method constructor <init>(Lcom/amplitude/android/utilities/AndroidNetworkListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener$setupBroadcastReceiver$1;->this$0:Lcom/amplitude/android/utilities/AndroidNetworkListener;

    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 71
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 72
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 76
    iget-object p1, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener$setupBroadcastReceiver$1;->this$0:Lcom/amplitude/android/utilities/AndroidNetworkListener;

    invoke-static {p1}, Lcom/amplitude/android/utilities/AndroidNetworkListener;->access$getNetworkCallback$p(Lcom/amplitude/android/utilities/AndroidNetworkListener;)Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;->onNetworkAvailable()V

    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener$setupBroadcastReceiver$1;->this$0:Lcom/amplitude/android/utilities/AndroidNetworkListener;

    invoke-static {p1}, Lcom/amplitude/android/utilities/AndroidNetworkListener;->access$getNetworkCallback$p(Lcom/amplitude/android/utilities/AndroidNetworkListener;)Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;->onNetworkUnavailable()V

    goto :goto_1

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

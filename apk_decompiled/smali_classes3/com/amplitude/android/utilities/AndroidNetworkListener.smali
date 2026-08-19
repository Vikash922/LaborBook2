.class public final Lcom/amplitude/android/utilities/AndroidNetworkListener;
.super Ljava/lang/Object;
.source "AndroidNetworkListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidNetworkListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidNetworkListener.kt\ncom/amplitude/android/utilities/AndroidNetworkListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006J\u0008\u0010\u000e\u001a\u00020\u000cH\u0002J\u0008\u0010\u000f\u001a\u00020\u000cH\u0003J\u0006\u0010\u0010\u001a\u00020\u000cJ\u0006\u0010\u0011\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/amplitude/android/utilities/AndroidNetworkListener;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "networkCallback",
        "Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;",
        "networkCallbackForHigherApiLevels",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "networkCallbackForLowerApiLevels",
        "Landroid/content/BroadcastReceiver;",
        "setNetworkChangeCallback",
        "",
        "callback",
        "setupBroadcastReceiver",
        "setupNetworkCallback",
        "startListening",
        "stopListening",
        "NetworkChangeCallback",
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
.field private final context:Landroid/content/Context;

.field private networkCallback:Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;

.field private networkCallbackForHigherApiLevels:Landroid/net/ConnectivityManager$NetworkCallback;

.field private networkCallbackForLowerApiLevels:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getNetworkCallback$p(Lcom/amplitude/android/utilities/AndroidNetworkListener;)Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener;->networkCallback:Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;

    return-object p0
.end method

.method private final setupBroadcastReceiver()V
    .locals 3

    .line 64
    new-instance v0, Lcom/amplitude/android/utilities/AndroidNetworkListener$setupBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/amplitude/android/utilities/AndroidNetworkListener$setupBroadcastReceiver$1;-><init>(Lcom/amplitude/android/utilities/AndroidNetworkListener;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 63
    iput-object v0, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener;->networkCallbackForLowerApiLevels:Landroid/content/BroadcastReceiver;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener;->networkCallbackForLowerApiLevels:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final setupNetworkCallback()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 44
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 45
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/amplitude/android/utilities/AndroidNetworkListener$setupNetworkCallback$1;

    invoke-direct {v2, p0}, Lcom/amplitude/android/utilities/AndroidNetworkListener$setupNetworkCallback$1;-><init>(Lcom/amplitude/android/utilities/AndroidNetworkListener;)V

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 48
    iput-object v2, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener;->networkCallbackForHigherApiLevels:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 59
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final setNetworkChangeCallback(Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener;->networkCallback:Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;

    return-void
.end method

.method public final startListening()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amplitude/android/utilities/AndroidNetworkListener;->setupNetworkCallback()V

    return-void
.end method

.method public final stopListening()V
    .locals 2

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 92
    iget-object v1, p0, Lcom/amplitude/android/utilities/AndroidNetworkListener;->networkCallbackForHigherApiLevels:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

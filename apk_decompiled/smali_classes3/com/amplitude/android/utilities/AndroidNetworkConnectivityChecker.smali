.class public final Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;
.super Ljava/lang/Object;
.source "AndroidNetworkConnectivityChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u0008H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;",
        "",
        "context",
        "Landroid/content/Context;",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "(Landroid/content/Context;Lcom/amplitude/common/Logger;)V",
        "hasPermission",
        "",
        "isMarshmallowAndAbove",
        "isMarshmallowAndAbove$android_release",
        "()Z",
        "setMarshmallowAndAbove$android_release",
        "(Z)V",
        "permission",
        "",
        "isConnected",
        "Companion",
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


# static fields
.field private static final ACCESS_NETWORK_STATE:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field public static final Companion:Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final hasPermission:Z

.field private isMarshmallowAndAbove:Z

.field private final logger:Lcom/amplitude/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->Companion:Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amplitude/common/Logger;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->logger:Lcom/amplitude/common/Logger;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->isMarshmallowAndAbove:Z

    .line 20
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, p1, v0}, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->hasPermission:Z

    if-nez p1, :cond_0

    .line 24
    const-string p1, "No ACCESS_NETWORK_STATE permission, offline mode is not supported. To enable, add <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" /> to your AndroidManifest.xml. Learn more at https://www.docs.developers.amplitude.com/data/sdks/android-kotlin/#offline-mode"

    .line 22
    invoke-interface {p2, p1}, Lcom/amplitude/common/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final isConnected()Z
    .locals 4

    .line 34
    iget-boolean v0, p0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->hasPermission:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_7

    .line 40
    iget-boolean v2, p0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->isMarshmallowAndAbove:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 41
    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_1

    return v3

    .line 42
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    .line 44
    :cond_2
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 45
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    :goto_0
    return v1

    .line 48
    :cond_5
    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 49
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    return v1

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->logger:Lcom/amplitude/common/Logger;

    const-string v2, "Service is not an instance of ConnectivityManager. Offline mode is not supported"

    invoke-interface {v0, v2}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    return v1
.end method

.method public final isMarshmallowAndAbove$android_release()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->isMarshmallowAndAbove:Z

    return v0
.end method

.method public final setMarshmallowAndAbove$android_release(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->isMarshmallowAndAbove:Z

    return-void
.end method

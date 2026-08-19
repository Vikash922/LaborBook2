.class public final Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1;
.super Ljava/lang/Object;
.source "AndroidNetworkConnectivityCheckerPlugin.kt"

# interfaces
.implements Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->setup(Lcom/amplitude/core/Amplitude;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1",
        "Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;",
        "onNetworkAvailable",
        "",
        "onNetworkUnavailable",
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
.field final synthetic $amplitude:Lcom/amplitude/core/Amplitude;


# direct methods
.method constructor <init>(Lcom/amplitude/core/Amplitude;)V
    .locals 0

    iput-object p1, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkAvailable()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v0

    const-string v1, "AndroidNetworkListener, onNetworkAvailable."

    invoke-interface {v0, v1}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/Configuration;->setOffline(Ljava/lang/Boolean;)V

    .line 32
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->flush()V

    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v0

    const-string v1, "AndroidNetworkListener, onNetworkUnavailable."

    invoke-interface {v0, v1}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/Configuration;->setOffline(Ljava/lang/Boolean;)V

    return-void
.end method

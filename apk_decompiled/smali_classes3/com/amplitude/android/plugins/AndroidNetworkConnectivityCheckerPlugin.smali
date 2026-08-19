.class public final Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;
.super Ljava/lang/Object;
.source "AndroidNetworkConnectivityCheckerPlugin.kt"

# interfaces
.implements Lcom/amplitude/core/platform/Plugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;",
        "Lcom/amplitude/core/platform/Plugin;",
        "()V",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "setAmplitude",
        "(Lcom/amplitude/core/Amplitude;)V",
        "networkConnectivityChecker",
        "Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;",
        "getNetworkConnectivityChecker$android_release",
        "()Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;",
        "setNetworkConnectivityChecker$android_release",
        "(Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;)V",
        "networkListener",
        "Lcom/amplitude/android/utilities/AndroidNetworkListener;",
        "getNetworkListener$android_release",
        "()Lcom/amplitude/android/utilities/AndroidNetworkListener;",
        "setNetworkListener$android_release",
        "(Lcom/amplitude/android/utilities/AndroidNetworkListener;)V",
        "type",
        "Lcom/amplitude/core/platform/Plugin$Type;",
        "getType",
        "()Lcom/amplitude/core/platform/Plugin$Type;",
        "setup",
        "",
        "teardown",
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
.field public static final Companion:Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$Companion;

.field private static final Disabled:Ljava/lang/Void;


# instance fields
.field public amplitude:Lcom/amplitude/core/Amplitude;

.field public networkConnectivityChecker:Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;

.field public networkListener:Lcom/amplitude/android/utilities/AndroidNetworkListener;

.field private final type:Lcom/amplitude/core/platform/Plugin$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->Companion:Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Before:Lcom/amplitude/core/platform/Plugin$Type;

    iput-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-void
.end method

.method public static final synthetic access$getDisabled$cp()Ljava/lang/Void;
    .locals 1

    .line 10
    sget-object v0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->Disabled:Ljava/lang/Void;

    return-object v0
.end method


# virtual methods
.method public getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "amplitude"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNetworkConnectivityChecker$android_release()Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->networkConnectivityChecker:Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "networkConnectivityChecker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNetworkListener$android_release()Lcom/amplitude/android/utilities/AndroidNetworkListener;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->networkListener:Lcom/amplitude/android/utilities/AndroidNetworkListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "networkListener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/amplitude/core/platform/Plugin$Type;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-object v0
.end method

.method public setAmplitude(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public final setNetworkConnectivityChecker$android_release(Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->networkConnectivityChecker:Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;

    return-void
.end method

.method public final setNetworkListener$android_release(Lcom/amplitude/android/utilities/AndroidNetworkListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->networkListener:Lcom/amplitude/android/utilities/AndroidNetworkListener;

    return-void
.end method

.method public setup(Lcom/amplitude/core/Amplitude;)V
    .locals 9

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-super {p0, p1}, Lcom/amplitude/core/platform/Plugin;->setup(Lcom/amplitude/core/Amplitude;)V

    .line 22
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v0

    const-string v1, "Installing AndroidNetworkConnectivityPlugin, offline feature should be supported."

    invoke-interface {v0, v1}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v1

    check-cast v1, Lcom/amplitude/android/Configuration;

    invoke-virtual {v1}, Lcom/amplitude/android/Configuration;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;-><init>(Landroid/content/Context;Lcom/amplitude/common/Logger;)V

    invoke-virtual {p0, v0}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->setNetworkConnectivityChecker$android_release(Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;)V

    .line 24
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getAmplitudeScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getStorageIODispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;-><init>(Lcom/amplitude/core/Amplitude;Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 28
    new-instance v0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1;

    invoke-direct {v0, p1}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1;-><init>(Lcom/amplitude/core/Amplitude;)V

    .line 40
    new-instance v1, Lcom/amplitude/android/utilities/AndroidNetworkListener;

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object p1

    check-cast p1, Lcom/amplitude/android/Configuration;

    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amplitude/android/utilities/AndroidNetworkListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->setNetworkListener$android_release(Lcom/amplitude/android/utilities/AndroidNetworkListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->getNetworkListener$android_release()Lcom/amplitude/android/utilities/AndroidNetworkListener;

    move-result-object p1

    check-cast v0, Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;

    invoke-virtual {p1, v0}, Lcom/amplitude/android/utilities/AndroidNetworkListener;->setNetworkChangeCallback(Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;)V

    .line 42
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->getNetworkListener$android_release()Lcom/amplitude/android/utilities/AndroidNetworkListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/android/utilities/AndroidNetworkListener;->startListening()V

    return-void
.end method

.method public teardown()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->getNetworkListener$android_release()Lcom/amplitude/android/utilities/AndroidNetworkListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/android/utilities/AndroidNetworkListener;->stopListening()V

    return-void
.end method

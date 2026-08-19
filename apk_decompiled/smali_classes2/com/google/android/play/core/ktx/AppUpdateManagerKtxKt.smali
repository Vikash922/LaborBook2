.class public final Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update-ktx@@2.1.0"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a5\u0010 \u001a\u0002H!\"\u0004\u0008\u0000\u0010!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H!0#2\u000e\u0008\u0002\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\'\u001a\u0015\u0010(\u001a\u00020\u0002*\u00020)H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010*\u001a\u0015\u0010+\u001a\u00020&*\u00020)H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010*\u001a\u0010\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-*\u00020)\u001a*\u0010/\u001a\u00020\u000c*\u00020)2\u0006\u00100\u001a\u00020\u00022\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0008\u001a%\u00106\u001a\u00020\u000c\"\u0004\u0008\u0000\u00107*\u0008\u0012\u0004\u0012\u0002H7082\u0006\u00109\u001a\u0002H7H\u0000\u00a2\u0006\u0002\u0010:\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00058\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0006\"\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u0008*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\"\u0016\u0010\u000b\u001a\u00020\u000c*\u00020\u00058\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\"\u0016\u0010\u000f\u001a\u00020\u0008*\u00020\u00058\u00c7\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\"\u0016\u0010\u0012\u001a\u00020\u0008*\u00020\u00028\u00c7\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\"\u0016\u0010\u0012\u001a\u00020\u0008*\u00020\u00058\u00c7\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011\"\u0016\u0010\u0015\u001a\u00020\u000c*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\"\u0016\u0010\u0017\u001a\u00020\u000c*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0016\"\u0016\u0010\u0018\u001a\u00020\u0019*\u00020\u00058\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\"\u0016\u0010\u001c\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0004\"\u0016\u0010\u001c\u001a\u00020\u0001*\u00020\u00058\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0006\"\u0016\u0010\u001e\u001a\u00020\u0008*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0014\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006;"
    }
    d2 = {
        "bytesDownloaded",
        "",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "getBytesDownloaded",
        "(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)J",
        "Lcom/google/android/play/core/install/InstallState;",
        "(Lcom/google/android/play/core/install/InstallState;)J",
        "clientVersionStalenessDays",
        "",
        "getClientVersionStalenessDays",
        "(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Ljava/lang/Integer;",
        "hasTerminalStatus",
        "",
        "getHasTerminalStatus",
        "(Lcom/google/android/play/core/install/InstallState;)Z",
        "installErrorCode",
        "getInstallErrorCode",
        "(Lcom/google/android/play/core/install/InstallState;)I",
        "installStatus",
        "getInstallStatus",
        "(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)I",
        "isFlexibleUpdateAllowed",
        "(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Z",
        "isImmediateUpdateAllowed",
        "packageName",
        "",
        "getPackageName",
        "(Lcom/google/android/play/core/install/InstallState;)Ljava/lang/String;",
        "totalBytesToDownload",
        "getTotalBytesToDownload",
        "updatePriority",
        "getUpdatePriority",
        "runTask",
        "T",
        "task",
        "Lcom/google/android/gms/tasks/Task;",
        "onCanceled",
        "Lkotlin/Function0;",
        "",
        "(Lcom/google/android/gms/tasks/Task;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestAppUpdateInfo",
        "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
        "(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestCompleteUpdate",
        "requestUpdateFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/google/android/play/core/ktx/AppUpdateResult;",
        "startUpdateFlowForResult",
        "appUpdateInfo",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "options",
        "Lcom/google/android/play/core/appupdate/AppUpdateOptions;",
        "requestCode",
        "tryOffer",
        "E",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "element",
        "(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Z",
        "java.com.google.android.apps.play.store.sdk.playcore.ktx_playcore_app_update_ktx"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getBytesDownloaded(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->bytesDownloaded()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getBytesDownloaded(Lcom/google/android/play/core/install/InstallState;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/play/core/install/InstallState;->bytesDownloaded()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getClientVersionStalenessDays(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->clientVersionStalenessDays()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final getHasTerminalStatus(Lcom/google/android/play/core/install/InstallState;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result p0

    if-eqz p0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final getInstallErrorCode(Lcom/google/android/play/core/install/InstallState;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/install/InstallState;->installErrorCode()I

    move-result p0

    return p0
.end method

.method public static final getInstallStatus(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result p0

    return p0
.end method

.method public static final getInstallStatus(Lcom/google/android/play/core/install/InstallState;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result p0

    return p0
.end method

.method public static final getPackageName(Lcom/google/android/play/core/install/InstallState;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/play/core/install/InstallState;->packageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "packageName()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getTotalBytesToDownload(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->totalBytesToDownload()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getTotalBytesToDownload(Lcom/google/android/play/core/install/InstallState;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/play/core/install/InstallState;->totalBytesToDownload()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getUpdatePriority(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updatePriority()I

    move-result p0

    return p0
.end method

.method public static final isFlexibleUpdateAllowed(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result p0

    return p0
.end method

.method public static final isImmediateUpdateAllowed(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result p0

    return p0
.end method

.method public static final requestAppUpdateInfo(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestAppUpdateInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestAppUpdateInfo$1;

    iget v1, v0, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestAppUpdateInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestAppUpdateInfo$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestAppUpdateInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestAppUpdateInfo$1;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestAppUpdateInfo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestAppUpdateInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 10
    iget v2, v0, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestAppUpdateInfo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    const-string p1, "appUpdateInfo"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, v0, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestAppUpdateInfo$1;->label:I

    const/4 p1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v2, p1}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt;->runTask$default(Lcom/google/android/gms/tasks/Task;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 13
    :cond_3
    :goto_1
    const-string p0, "runTask(appUpdateInfo)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final requestCompleteUpdate(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 15
    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    const-string v0, "completeUpdate()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1, v0}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt;->runTask$default(Lcom/google/android/gms/tasks/Task;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final requestUpdateFlow(Lcom/google/android/play/core/appupdate/AppUpdateManager;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/google/android/play/core/ktx/AppUpdateResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/play/core/install/InstallException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestUpdateFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$requestUpdateFlow$1;-><init>(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->conflate(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final runTask(Lcom/google/android/gms/tasks/Task;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 18
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 19
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 20
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 21
    new-instance v2, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$runTask$3$1;

    invoke-direct {v2, p1}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$runTask$3$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_0
    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$runTask$3$2;

    invoke-direct {p1, v1}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$runTask$3$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast p1, Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 27
    new-instance p1, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$runTask$3$3;

    invoke-direct {p1, v1}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$runTask$3$3;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast p1, Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 28
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-object p0
.end method

.method public static synthetic runTask$default(Lcom/google/android/gms/tasks/Task;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 31
    sget-object p1, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$runTask$2;->INSTANCE:Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$runTask$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt;->runTask(Lcom/google/android/gms/tasks/Task;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroidx/fragment/app/Fragment;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appUpdateInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$startUpdateFlowForResult$1;

    invoke-direct {v0, p2}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt$startUpdateFlowForResult$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lcom/google/android/play/core/common/IntentSenderForResultStarter;

    .line 48
    invoke-interface {p0, p1, v0, p3, p4}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Lcom/google/android/play/core/common/IntentSenderForResultStarter;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z

    move-result p0

    return p0
.end method

.method public static final tryOffer(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TE;>;TE;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.class public final Lcom/google/android/play/core/ktx/AppUpdateResult$Available;
.super Lcom/google/android/play/core/ktx/AppUpdateResult;
.source "com.google.android.play:app-update-ktx@@2.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/ktx/AppUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Available"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eJ\u0014\u0010\t\u001a\u00020\n2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012J\u0016\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eJ\u0014\u0010\u0014\u001a\u00020\n2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/google/android/play/core/ktx/AppUpdateResult$Available;",
        "Lcom/google/android/play/core/ktx/AppUpdateResult;",
        "appUpdateManager",
        "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
        "updateInfo",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V",
        "getUpdateInfo",
        "()Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "startFlexibleUpdate",
        "",
        "activity",
        "Landroid/app/Activity;",
        "requestCode",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "activityResultLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroidx/activity/result/IntentSenderRequest;",
        "startImmediateUpdate",
        "java.com.google.android.apps.play.store.sdk.playcore.ktx_playcore_app_update_ktx"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field private final updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 1

    const-string v0, "appUpdateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/play/core/ktx/AppUpdateResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    iput-object p2, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    return-void
.end method


# virtual methods
.method public final getUpdateInfo()Lcom/google/android/play/core/appupdate/AppUpdateInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    return-object v0
.end method

.method public final startFlexibleUpdate(Landroid/app/Activity;I)Z
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 10
    iget-object v1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v2, 0x0

    .line 12
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v2

    .line 14
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z

    move-result p1

    return p1
.end method

.method public final startFlexibleUpdate(Landroidx/activity/result/ActivityResultLauncher;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "activityResultLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 5
    iget-object v1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v2, 0x0

    .line 7
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v2

    .line 8
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroidx/activity/result/ActivityResultLauncher;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Z

    move-result p1

    return p1
.end method

.method public final startFlexibleUpdate(Landroidx/fragment/app/Fragment;I)Z
    .locals 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 16
    iget-object v1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v2

    const-string v3, "newBuilder(AppUpdateType.FLEXIBLE).build()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v0, v1, p1, v2, p2}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroidx/fragment/app/Fragment;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z

    move-result p1

    return p1
.end method

.method public final startImmediateUpdate(Landroid/app/Activity;I)Z
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 27
    iget-object v1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v2, 0x1

    .line 29
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v2

    .line 31
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z

    move-result p1

    return p1
.end method

.method public final startImmediateUpdate(Landroidx/activity/result/ActivityResultLauncher;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "activityResultLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 22
    iget-object v1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v2, 0x1

    .line 24
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v2

    .line 25
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroidx/activity/result/ActivityResultLauncher;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Z

    move-result p1

    return p1
.end method

.method public final startImmediateUpdate(Landroidx/fragment/app/Fragment;I)Z
    .locals 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 33
    iget-object v1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v2, 0x1

    .line 35
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v2

    const-string v3, "newBuilder(AppUpdateType.IMMEDIATE).build()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {v0, v1, p1, v2, p2}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroidx/fragment/app/Fragment;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z

    move-result p1

    return p1
.end method

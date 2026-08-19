.class public final Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "PermissionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionsFragment.kt\ncom/truecaller/android/sdk/common/callVerification/PermissionsFragment\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,65:1\n37#2,2:66\n*S KotlinDebug\n*F\n+ 1 PermissionsFragment.kt\ncom/truecaller/android/sdk/common/callVerification/PermissionsFragment\n*L\n55#1:66,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J+\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\nH\u0016J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008R\u0018\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "preRequestPermissions",
        "",
        "",
        "[Ljava/lang/String;",
        "requestPermissionHandler",
        "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "setRequestPermissionHandler",
        "sdk-external_googlePlayOAuthReleasePartner"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private preRequestPermissions:[Ljava/lang/String;

.field private requestPermissionHandler:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->requestPermissionHandler:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "requestPermissionHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 50
    iput-object v1, p0, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->preRequestPermissions:[Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->preRequestPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->preRequestPermissions:[Ljava/lang/String;

    return-void
.end method

.method public final setRequestPermissionHandler(Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;)V
    .locals 1

    const-string v0, "requestPermissionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->requestPermissionHandler:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;

    .line 55
    invoke-virtual {p1}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->getPermissions()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 67
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->preRequestPermissions:[Ljava/lang/String;

    return-void
.end method

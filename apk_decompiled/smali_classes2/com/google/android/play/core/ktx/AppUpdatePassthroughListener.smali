.class final Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update-ktx@@2.1.0"

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B&\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016R\"\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;",
        "Lcom/google/android/play/core/install/InstallStateUpdatedListener;",
        "listener",
        "disposeAction",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lcom/google/android/play/core/install/InstallStateUpdatedListener;Lkotlin/jvm/functions/Function1;)V",
        "getDisposeAction",
        "()Lkotlin/jvm/functions/Function1;",
        "getListener",
        "()Lcom/google/android/play/core/install/InstallStateUpdatedListener;",
        "onStateUpdate",
        "state",
        "Lcom/google/android/play/core/install/InstallState;",
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
.field private final disposeAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/install/InstallStateUpdatedListener;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/install/InstallStateUpdatedListener;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disposeAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;->listener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    .line 5
    iput-object p2, p0, Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;->disposeAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getDisposeAction()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;->disposeAction:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getListener()Lcom/google/android/play/core/install/InstallStateUpdatedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;->listener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    return-object v0
.end method

.method public final onStateUpdate(Lcom/google/android/play/core/install/InstallState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;->listener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/install/InstallStateUpdatedListener;->onStateUpdate(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;->disposeAction:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/ktx/AppUpdatePassthroughListener;->onStateUpdate(Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method

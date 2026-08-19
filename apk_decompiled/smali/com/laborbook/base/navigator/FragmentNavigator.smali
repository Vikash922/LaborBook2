.class public final Lcom/laborbook/base/navigator/FragmentNavigator;
.super Ljava/lang/Object;
.source "FragmentNavigator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0016\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015J\r\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u000bJ\u000e\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000eJ\u000e\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/laborbook/base/navigator/FragmentNavigator;",
        "",
        "<init>",
        "()V",
        "multipleStackNavigator",
        "Lcom/boilerplate/navigator/MultipleStackNavigator;",
        "getMultipleStackNavigator",
        "()Lcom/boilerplate/navigator/MultipleStackNavigator;",
        "setMultipleStackNavigator",
        "(Lcom/boilerplate/navigator/MultipleStackNavigator;)V",
        "initialize",
        "",
        "iMultipleStackNavigator",
        "savedState",
        "Landroid/os/Bundle;",
        "start",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "groupName",
        "",
        "bottomSheetFragment",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "canGoBack",
        "",
        "()Ljava/lang/Boolean;",
        "goBack",
        "onSaveInstanceState",
        "outState",
        "switchTab",
        "tabPosition",
        "",
        "base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public multipleStackNavigator:Lcom/boilerplate/navigator/MultipleStackNavigator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canGoBack()Ljava/lang/Boolean;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->getMultipleStackNavigator()Lcom/boilerplate/navigator/MultipleStackNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->canGoBack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMultipleStackNavigator()Lcom/boilerplate/navigator/MultipleStackNavigator;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/laborbook/base/navigator/FragmentNavigator;->multipleStackNavigator:Lcom/boilerplate/navigator/MultipleStackNavigator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "multipleStackNavigator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final goBack()V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->getMultipleStackNavigator()Lcom/boilerplate/navigator/MultipleStackNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/boilerplate/navigator/MultipleStackNavigator;->goBack()V

    :cond_0
    return-void
.end method

.method public final initialize(Lcom/boilerplate/navigator/MultipleStackNavigator;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "iMultipleStackNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->setMultipleStackNavigator(Lcom/boilerplate/navigator/MultipleStackNavigator;)V

    .line 14
    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->getMultipleStackNavigator()Lcom/boilerplate/navigator/MultipleStackNavigator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->initialize(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->getMultipleStackNavigator()Lcom/boilerplate/navigator/MultipleStackNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final setMultipleStackNavigator(Lcom/boilerplate/navigator/MultipleStackNavigator;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/laborbook/base/navigator/FragmentNavigator;->multipleStackNavigator:Lcom/boilerplate/navigator/MultipleStackNavigator;

    return-void
.end method

.method public final start(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->getMultipleStackNavigator()Lcom/boilerplate/navigator/MultipleStackNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->start(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public final start(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->getMultipleStackNavigator()Lcom/boilerplate/navigator/MultipleStackNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->start(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .locals 1

    const-string v0, "bottomSheetFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->getMultipleStackNavigator()Lcom/boilerplate/navigator/MultipleStackNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    :cond_0
    return-void
.end method

.method public final switchTab(I)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->getMultipleStackNavigator()Lcom/boilerplate/navigator/MultipleStackNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->switchTab(I)V

    :cond_0
    return-void
.end method

.class public final Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SharedViewModelExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedViewModelExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedViewModelExt.kt\norg/koin/androidx/viewmodel/ext/android/SharedViewModelExtKt$sharedViewModel$1\n+ 2 SharedViewModelExt.kt\norg/koin/androidx/viewmodel/ext/android/SharedViewModelExtKt\n*L\n1#1,62:1\n53#2:63\n*S KotlinDebug\n*F\n+ 1 SharedViewModelExt.kt\norg/koin/androidx/viewmodel/ext/android/SharedViewModelExtKt$sharedViewModel$1\n*L\n37#1:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "org/koin/androidx/viewmodel/ext/android/SharedViewModelExtKt$sharedViewModel$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $parameters:Lkotlin/jvm/functions/Function0;

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $this_sharedViewModel:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1;->$this_sharedViewModel:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1;->$this_sharedViewModel:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v2, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1;->$parameters:Lkotlin/jvm/functions/Function0;

    .line 63
    const-class v3, Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lorg/koin/androidx/viewmodel/ext/android/SharedViewModelExtKt;->getSharedViewModel(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1;->invoke()Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

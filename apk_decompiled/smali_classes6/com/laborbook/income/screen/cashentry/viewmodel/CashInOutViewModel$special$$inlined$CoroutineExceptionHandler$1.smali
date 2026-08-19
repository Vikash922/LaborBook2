.class public final Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$special$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;-><init>(Lcom/laborbook/base/datastore/DataStoreManager;Lcom/laborbook/income/usecase/CreateTransactionUseCase;Lcom/laborbook/income/usecase/UpdateTransactionUseCase;Lcom/laborbook/income/usecase/DeleteTransactionUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 CashInOutViewModel.kt\ncom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n28#2,2:107\n30#2:110\n1#3:109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "handleException",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "exception",
        "",
        "kotlinx-coroutines-core"
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
.field final synthetic this$0:Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    .line 44
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 2

    .line 107
    sget-object p1, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caught exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/laborbook/base/Logger;->e(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    invoke-static {p1}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->access$getUiState(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$ERROR;

    invoke-direct {v0, p2}, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$ERROR;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

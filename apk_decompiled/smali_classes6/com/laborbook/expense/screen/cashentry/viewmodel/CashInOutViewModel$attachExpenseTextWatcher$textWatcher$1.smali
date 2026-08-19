.class public final Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel$attachExpenseTextWatcher$textWatcher$1;
.super Ljava/lang/Object;
.source "CashInOutViewModel.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel;->attachExpenseTextWatcher(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J*\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0012\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel$attachExpenseTextWatcher$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "beforeTextChanged",
        "",
        "s",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "afterTextChanged",
        "Landroid/text/Editable;",
        "expense_release"
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
.field final synthetic this$0:Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel;


# direct methods
.method constructor <init>(Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel$attachExpenseTextWatcher$textWatcher$1;->this$0:Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel$attachExpenseTextWatcher$textWatcher$1;->this$0:Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel;

    invoke-static {v0}, Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel;->access$getUiState(Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    invoke-direct {v1, p1}, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

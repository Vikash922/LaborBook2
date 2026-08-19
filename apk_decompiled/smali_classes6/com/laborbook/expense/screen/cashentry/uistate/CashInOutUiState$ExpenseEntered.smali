.class public final Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;
.super Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;
.source "CashInOutUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExpenseEntered"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\t\u001a\u00020\u0004H\u00c6\u0003J\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;",
        "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;",
        "",
        "expenseEntered",
        "",
        "<init>",
        "(Z)V",
        "getExpenseEntered",
        "()Z",
        "component1",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final expenseEntered:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;->expenseEntered:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;ZILjava/lang/Object;)Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;->expenseEntered:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;->copy(Z)Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;->expenseEntered:Z

    return v0
.end method

.method public final copy(Z)Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;
    .locals 1

    new-instance v0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;

    invoke-direct {v0, p1}, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;

    iget-boolean v1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;->expenseEntered:Z

    iget-boolean p1, p1, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;->expenseEntered:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getExpenseEntered()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;->expenseEntered:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;->expenseEntered:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExpenseEntered(expenseEntered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;->expenseEntered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

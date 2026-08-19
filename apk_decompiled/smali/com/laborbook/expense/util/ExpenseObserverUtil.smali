.class public final Lcom/laborbook/expense/util/ExpenseObserverUtil;
.super Ljava/lang/Object;
.source "ExpenseObserverUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R.\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR(\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R7\u0010\u0014\u001a\u001f\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/laborbook/expense/util/ExpenseObserverUtil;",
        "",
        "<init>",
        "()V",
        "onExpenseAddedOrUpdated",
        "Lkotlin/Function2;",
        "Lcom/laborbook/expense/model/Transaction;",
        "",
        "",
        "getOnExpenseAddedOrUpdated",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnExpenseAddedOrUpdated",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onExpenseDeleted",
        "Lkotlin/Function1;",
        "Lcom/laborbook/expense/model/DeleteTransactionResponseModel;",
        "getOnExpenseDeleted",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnExpenseDeleted",
        "(Lkotlin/jvm/functions/Function1;)V",
        "clearExpenseSearchText",
        "Lkotlin/ParameterName;",
        "name",
        "shouldClear",
        "getClearExpenseSearchText",
        "setClearExpenseSearchText",
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
.field private clearExpenseSearchText:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onExpenseAddedOrUpdated:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/laborbook/expense/model/Transaction;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onExpenseDeleted:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/laborbook/expense/model/DeleteTransactionResponseModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClearExpenseSearchText()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/laborbook/expense/util/ExpenseObserverUtil;->clearExpenseSearchText:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnExpenseAddedOrUpdated()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/laborbook/expense/model/Transaction;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/laborbook/expense/util/ExpenseObserverUtil;->onExpenseAddedOrUpdated:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getOnExpenseDeleted()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/laborbook/expense/model/DeleteTransactionResponseModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/laborbook/expense/util/ExpenseObserverUtil;->onExpenseDeleted:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setClearExpenseSearchText(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/laborbook/expense/util/ExpenseObserverUtil;->clearExpenseSearchText:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnExpenseAddedOrUpdated(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/laborbook/expense/model/Transaction;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/laborbook/expense/util/ExpenseObserverUtil;->onExpenseAddedOrUpdated:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnExpenseDeleted(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/laborbook/expense/model/DeleteTransactionResponseModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/laborbook/expense/util/ExpenseObserverUtil;->onExpenseDeleted:Lkotlin/jvm/functions/Function1;

    return-void
.end method

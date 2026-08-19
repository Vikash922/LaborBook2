package com.laborbook.expense.util;

import com.laborbook.expense.model.DeleteTransactionResponseModel;
import com.laborbook.expense.model.Transaction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ExpenseObserverUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R.\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR(\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R7\u0010\u0014\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\b\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013¨\u0006\u001a"}, m2722d2 = {"Lcom/laborbook/expense/util/ExpenseObserverUtil;", "", "<init>", "()V", "onExpenseAddedOrUpdated", "Lkotlin/Function2;", "Lcom/laborbook/expense/model/Transaction;", "", "", "getOnExpenseAddedOrUpdated", "()Lkotlin/jvm/functions/Function2;", "setOnExpenseAddedOrUpdated", "(Lkotlin/jvm/functions/Function2;)V", "onExpenseDeleted", "Lkotlin/Function1;", "Lcom/laborbook/expense/model/DeleteTransactionResponseModel;", "getOnExpenseDeleted", "()Lkotlin/jvm/functions/Function1;", "setOnExpenseDeleted", "(Lkotlin/jvm/functions/Function1;)V", "clearExpenseSearchText", "Lkotlin/ParameterName;", "name", "shouldClear", "getClearExpenseSearchText", "setClearExpenseSearchText", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ExpenseObserverUtil {
    private Function1<? super Boolean, Unit> clearExpenseSearchText;
    private Function2<? super Transaction, ? super Boolean, Unit> onExpenseAddedOrUpdated;
    private Function1<? super DeleteTransactionResponseModel, Unit> onExpenseDeleted;

    public final Function2<Transaction, Boolean, Unit> getOnExpenseAddedOrUpdated() {
        return this.onExpenseAddedOrUpdated;
    }

    public final void setOnExpenseAddedOrUpdated(Function2<? super Transaction, ? super Boolean, Unit> function2) {
        this.onExpenseAddedOrUpdated = function2;
    }

    public final Function1<DeleteTransactionResponseModel, Unit> getOnExpenseDeleted() {
        return this.onExpenseDeleted;
    }

    public final void setOnExpenseDeleted(Function1<? super DeleteTransactionResponseModel, Unit> function1) {
        this.onExpenseDeleted = function1;
    }

    public final Function1<Boolean, Unit> getClearExpenseSearchText() {
        return this.clearExpenseSearchText;
    }

    public final void setClearExpenseSearchText(Function1<? super Boolean, Unit> function1) {
        this.clearExpenseSearchText = function1;
    }
}

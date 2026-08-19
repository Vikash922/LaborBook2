package com.rebuilt.app.income.util;

import com.rebuilt.app.income.model.DeleteTransactionResponseModel;
import com.rebuilt.app.income.model.Transaction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: IncomeObserverUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R.\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR(\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R7\u0010\u0014\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\b\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013¨\u0006\u001a"}, m2722d2 = {"Lcom/laborbook/income/util/IncomeObserverUtil;", "", "<init>", "()V", "onIncomeAddedOrUpdated", "Lkotlin/Function2;", "Lcom/laborbook/income/model/Transaction;", "", "", "getOnIncomeAddedOrUpdated", "()Lkotlin/jvm/functions/Function2;", "setOnIncomeAddedOrUpdated", "(Lkotlin/jvm/functions/Function2;)V", "onIncomeDeleted", "Lkotlin/Function1;", "Lcom/laborbook/income/model/DeleteTransactionResponseModel;", "getOnIncomeDeleted", "()Lkotlin/jvm/functions/Function1;", "setOnIncomeDeleted", "(Lkotlin/jvm/functions/Function1;)V", "clearIncomeSearchText", "Lkotlin/ParameterName;", "name", "shouldClear", "getClearIncomeSearchText", "setClearIncomeSearchText", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class IncomeObserverUtil {
    private Function1<? super Boolean, Unit> clearIncomeSearchText;
    private Function2<? super Transaction, ? super Boolean, Unit> onIncomeAddedOrUpdated;
    private Function1<? super DeleteTransactionResponseModel, Unit> onIncomeDeleted;

    public final Function2<Transaction, Boolean, Unit> getOnIncomeAddedOrUpdated() {
        return this.onIncomeAddedOrUpdated;
    }

    public final void setOnIncomeAddedOrUpdated(Function2<? super Transaction, ? super Boolean, Unit> function2) {
        this.onIncomeAddedOrUpdated = function2;
    }

    public final Function1<DeleteTransactionResponseModel, Unit> getOnIncomeDeleted() {
        return this.onIncomeDeleted;
    }

    public final void setOnIncomeDeleted(Function1<? super DeleteTransactionResponseModel, Unit> function1) {
        this.onIncomeDeleted = function1;
    }

    public final Function1<Boolean, Unit> getClearIncomeSearchText() {
        return this.clearIncomeSearchText;
    }

    public final void setClearIncomeSearchText(Function1<? super Boolean, Unit> function1) {
        this.clearIncomeSearchText = function1;
    }
}

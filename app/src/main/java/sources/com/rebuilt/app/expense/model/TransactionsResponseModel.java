package com.rebuilt.app.expense.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionsResponseModel.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0006HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u000b¨\u0006\u0015"}, m2722d2 = {"Lcom/laborbook/expense/model/TransactionsResponseModel;", "", "transactions", "", "Lcom/laborbook/expense/model/Transaction;", "isLastPage", "", "<init>", "(Ljava/util/List;Z)V", "getTransactions", "()Ljava/util/List;", "()Z", "component1", "component2", "copy", "equals", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class TransactionsResponseModel {

    @SerializedName("is_last_page")
    private final boolean isLastPage;
    private final List<Transaction> transactions;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TransactionsResponseModel copy$default(TransactionsResponseModel transactionsResponseModel, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            list = transactionsResponseModel.transactions;
        }
        if ((i & 2) != 0) {
            z = transactionsResponseModel.isLastPage;
        }
        return transactionsResponseModel.copy(list, z);
    }

    public final List<Transaction> component1() {
        return this.transactions;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsLastPage() {
        return this.isLastPage;
    }

    public final TransactionsResponseModel copy(List<Transaction> transactions, boolean isLastPage) {
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        return new TransactionsResponseModel(transactions, isLastPage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransactionsResponseModel)) {
            return false;
        }
        TransactionsResponseModel transactionsResponseModel = (TransactionsResponseModel) other;
        return Intrinsics.areEqual(this.transactions, transactionsResponseModel.transactions) && this.isLastPage == transactionsResponseModel.isLastPage;
    }

    public int hashCode() {
        return (this.transactions.hashCode() * 31) + Boolean.hashCode(this.isLastPage);
    }

    public String toString() {
        return "TransactionsResponseModel(transactions=" + this.transactions + ", isLastPage=" + this.isLastPage + ')';
    }

    public TransactionsResponseModel(List<Transaction> transactions, boolean z) {
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        this.transactions = transactions;
        this.isLastPage = z;
    }

    public final List<Transaction> getTransactions() {
        return this.transactions;
    }

    public final boolean isLastPage() {
        return this.isLastPage;
    }
}

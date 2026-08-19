package com.rebuilt.app.income.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;

/* JADX INFO: compiled from: TransactionSummaryResponseModel.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, m2722d2 = {"Lcom/laborbook/income/model/TransactionSummaryResponseModel;", "", "totalDebit", "", "totalCredit", "totalEntriesCount", "", "<init>", "(DDI)V", "getTotalDebit", "()D", "getTotalCredit", "getTotalEntriesCount", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class TransactionSummaryResponseModel {

    @SerializedName("total_credit")
    private final double totalCredit;

    @SerializedName("total_debit")
    private final double totalDebit;

    @SerializedName("total_entries_count")
    private final int totalEntriesCount;

    public static /* synthetic */ TransactionSummaryResponseModel copy$default(TransactionSummaryResponseModel transactionSummaryResponseModel, double d, double d2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            d = transactionSummaryResponseModel.totalDebit;
        }
        double d3 = d;
        if ((i2 & 2) != 0) {
            d2 = transactionSummaryResponseModel.totalCredit;
        }
        double d4 = d2;
        if ((i2 & 4) != 0) {
            i = transactionSummaryResponseModel.totalEntriesCount;
        }
        return transactionSummaryResponseModel.copy(d3, d4, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final double getTotalDebit() {
        return this.totalDebit;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final double getTotalCredit() {
        return this.totalCredit;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getTotalEntriesCount() {
        return this.totalEntriesCount;
    }

    public final TransactionSummaryResponseModel copy(double totalDebit, double totalCredit, int totalEntriesCount) {
        return new TransactionSummaryResponseModel(totalDebit, totalCredit, totalEntriesCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransactionSummaryResponseModel)) {
            return false;
        }
        TransactionSummaryResponseModel transactionSummaryResponseModel = (TransactionSummaryResponseModel) other;
        return Double.compare(this.totalDebit, transactionSummaryResponseModel.totalDebit) == 0 && Double.compare(this.totalCredit, transactionSummaryResponseModel.totalCredit) == 0 && this.totalEntriesCount == transactionSummaryResponseModel.totalEntriesCount;
    }

    public int hashCode() {
        return (((Double.hashCode(this.totalDebit) * 31) + Double.hashCode(this.totalCredit)) * 31) + Integer.hashCode(this.totalEntriesCount);
    }

    public String toString() {
        return "TransactionSummaryResponseModel(totalDebit=" + this.totalDebit + ", totalCredit=" + this.totalCredit + ", totalEntriesCount=" + this.totalEntriesCount + ')';
    }

    public TransactionSummaryResponseModel(double d, double d2, int i) {
        this.totalDebit = d;
        this.totalCredit = d2;
        this.totalEntriesCount = i;
    }

    public final double getTotalDebit() {
        return this.totalDebit;
    }

    public final double getTotalCredit() {
        return this.totalCredit;
    }

    public final int getTotalEntriesCount() {
        return this.totalEntriesCount;
    }
}

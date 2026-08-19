package com.rebuilt.app.income.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, m2722d2 = {"Lcom/laborbook/income/model/TransactionItem;", "", "<init>", "()V", "TableHeader", "TransactionItemView", "DateHeader", "AdItem", "Lcom/laborbook/income/model/TransactionItem$AdItem;", "Lcom/laborbook/income/model/TransactionItem$DateHeader;", "Lcom/laborbook/income/model/TransactionItem$TableHeader;", "Lcom/laborbook/income/model/TransactionItem$TransactionItemView;", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class TransactionItem {
    public /* synthetic */ TransactionItem(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: TransactionItem.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, m2722d2 = {"Lcom/laborbook/income/model/TransactionItem$TableHeader;", "Lcom/laborbook/income/model/TransactionItem;", "<init>", "()V", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class TableHeader extends TransactionItem {
        public static final TableHeader INSTANCE = new TableHeader();

        private TableHeader() {
            super(null);
        }
    }

    private TransactionItem() {
    }

    /* JADX INFO: compiled from: TransactionItem.kt */
    @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/income/model/TransactionItem$TransactionItemView;", "Lcom/laborbook/income/model/TransactionItem;", "transaction", "Lcom/laborbook/income/model/Transaction;", "<init>", "(Lcom/laborbook/income/model/Transaction;)V", "getTransaction", "()Lcom/laborbook/income/model/Transaction;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class TransactionItemView extends TransactionItem {
        private final Transaction transaction;

        public static /* synthetic */ TransactionItemView copy$default(TransactionItemView transactionItemView, Transaction transaction, int i, Object obj) {
            if ((i & 1) != 0) {
                transaction = transactionItemView.transaction;
            }
            return transactionItemView.copy(transaction);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Transaction getTransaction() {
            return this.transaction;
        }

        public final TransactionItemView copy(Transaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return new TransactionItemView(transaction);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof TransactionItemView) && Intrinsics.areEqual(this.transaction, ((TransactionItemView) other).transaction);
        }

        public int hashCode() {
            return this.transaction.hashCode();
        }

        public String toString() {
            return "TransactionItemView(transaction=" + this.transaction + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionItemView(Transaction transaction) {
            super(null);
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            this.transaction = transaction;
        }

        public final Transaction getTransaction() {
            return this.transaction;
        }
    }

    /* JADX INFO: compiled from: TransactionItem.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, m2722d2 = {"Lcom/laborbook/income/model/TransactionItem$DateHeader;", "Lcom/laborbook/income/model/TransactionItem;", "date", "", "entryCount", "", "<init>", "(Ljava/lang/String;I)V", "getDate", "()Ljava/lang/String;", "getEntryCount", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class DateHeader extends TransactionItem {
        private final String date;
        private final int entryCount;

        public static /* synthetic */ DateHeader copy$default(DateHeader dateHeader, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = dateHeader.date;
            }
            if ((i2 & 2) != 0) {
                i = dateHeader.entryCount;
            }
            return dateHeader.copy(str, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDate() {
            return this.date;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getEntryCount() {
            return this.entryCount;
        }

        public final DateHeader copy(String date, int entryCount) {
            Intrinsics.checkNotNullParameter(date, "date");
            return new DateHeader(date, entryCount);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DateHeader)) {
                return false;
            }
            DateHeader dateHeader = (DateHeader) other;
            return Intrinsics.areEqual(this.date, dateHeader.date) && this.entryCount == dateHeader.entryCount;
        }

        public int hashCode() {
            return (this.date.hashCode() * 31) + Integer.hashCode(this.entryCount);
        }

        public String toString() {
            return "DateHeader(date=" + this.date + ", entryCount=" + this.entryCount + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DateHeader(String date, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(date, "date");
            this.date = date;
            this.entryCount = i;
        }

        public final String getDate() {
            return this.date;
        }

        public final int getEntryCount() {
            return this.entryCount;
        }
    }

    /* JADX INFO: compiled from: TransactionItem.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/income/model/TransactionItem$AdItem;", "Lcom/laborbook/income/model/TransactionItem;", "adPosition", "", "<init>", "(I)V", "getAdPosition", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class AdItem extends TransactionItem {
        private final int adPosition;

        public static /* synthetic */ AdItem copy$default(AdItem adItem, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = adItem.adPosition;
            }
            return adItem.copy(i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getAdPosition() {
            return this.adPosition;
        }

        public final AdItem copy(int adPosition) {
            return new AdItem(adPosition);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof AdItem) && this.adPosition == ((AdItem) other).adPosition;
        }

        public int hashCode() {
            return Integer.hashCode(this.adPosition);
        }

        public String toString() {
            return "AdItem(adPosition=" + this.adPosition + ')';
        }

        public AdItem(int i) {
            super(null);
            this.adPosition = i;
        }

        public final int getAdPosition() {
            return this.adPosition;
        }
    }
}

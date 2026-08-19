package com.boilerplate.navigator.transaction;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/boilerplate/navigator/transaction/NavigatorTransaction;", "", "transactionType", "Lcom/boilerplate/navigator/transaction/TransactionType;", "<init>", "(Lcom/boilerplate/navigator/transaction/TransactionType;)V", "getTransactionType", "()Lcom/boilerplate/navigator/transaction/TransactionType;", "component1", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "Companion", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class NavigatorTransaction {
    private final TransactionType transactionType;
    public static final NavigatorTransaction ATTACH_DETACH = new NavigatorTransaction(TransactionType.ATTACH_DETACH);
    public static final NavigatorTransaction SHOW_HIDE = new NavigatorTransaction(TransactionType.SHOW_HIDE);

    public NavigatorTransaction(TransactionType transactionType) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        this.transactionType = transactionType;
    }

    public static /* synthetic */ NavigatorTransaction copy$default(NavigatorTransaction navigatorTransaction, TransactionType transactionType, int i, Object obj) {
        if ((i & 1) != 0) {
            transactionType = navigatorTransaction.transactionType;
        }
        return navigatorTransaction.copy(transactionType);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final NavigatorTransaction copy(TransactionType transactionType) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        return new NavigatorTransaction(transactionType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof NavigatorTransaction) && this.transactionType == ((NavigatorTransaction) other).transactionType;
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public int hashCode() {
        return this.transactionType.hashCode();
    }

    public String toString() {
        return "NavigatorTransaction(transactionType=" + this.transactionType + ')';
    }
}

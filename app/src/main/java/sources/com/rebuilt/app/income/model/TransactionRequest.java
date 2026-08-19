package com.rebuilt.app.income.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionRequest.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003JE\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\r¨\u0006!"}, m2722d2 = {"Lcom/laborbook/income/model/TransactionRequest;", "", "reason", "", "date", ConstantEventAttributes.AMOUNT, "", "type", "transactionMode", "paymentMethod", "<init>", "(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getReason", "()Ljava/lang/String;", "getDate", "getAmount", "()D", "getType", "getTransactionMode", "getPaymentMethod", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class TransactionRequest {
    private final double amount;

    @SerializedName("date_time")
    private final String date;

    @SerializedName("payment_method")
    private final String paymentMethod;
    private final String reason;

    @SerializedName("transaction_mode")
    private final String transactionMode;
    private final String type;

    public static /* synthetic */ TransactionRequest copy$default(TransactionRequest transactionRequest, String str, String str2, double d, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = transactionRequest.reason;
        }
        if ((i & 2) != 0) {
            str2 = transactionRequest.date;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            d = transactionRequest.amount;
        }
        double d2 = d;
        if ((i & 8) != 0) {
            str3 = transactionRequest.type;
        }
        String str7 = str3;
        if ((i & 16) != 0) {
            str4 = transactionRequest.transactionMode;
        }
        String str8 = str4;
        if ((i & 32) != 0) {
            str5 = transactionRequest.paymentMethod;
        }
        return transactionRequest.copy(str, str6, d2, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getReason() {
        return this.reason;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final double getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTransactionMode() {
        return this.transactionMode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPaymentMethod() {
        return this.paymentMethod;
    }

    public final TransactionRequest copy(String reason, String date, double amount, String type, String transactionMode, String paymentMethod) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(transactionMode, "transactionMode");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        return new TransactionRequest(reason, date, amount, type, transactionMode, paymentMethod);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransactionRequest)) {
            return false;
        }
        TransactionRequest transactionRequest = (TransactionRequest) other;
        return Intrinsics.areEqual(this.reason, transactionRequest.reason) && Intrinsics.areEqual(this.date, transactionRequest.date) && Double.compare(this.amount, transactionRequest.amount) == 0 && Intrinsics.areEqual(this.type, transactionRequest.type) && Intrinsics.areEqual(this.transactionMode, transactionRequest.transactionMode) && Intrinsics.areEqual(this.paymentMethod, transactionRequest.paymentMethod);
    }

    public int hashCode() {
        return (((((((((this.reason.hashCode() * 31) + this.date.hashCode()) * 31) + Double.hashCode(this.amount)) * 31) + this.type.hashCode()) * 31) + this.transactionMode.hashCode()) * 31) + this.paymentMethod.hashCode();
    }

    public String toString() {
        return "TransactionRequest(reason=" + this.reason + ", date=" + this.date + ", amount=" + this.amount + ", type=" + this.type + ", transactionMode=" + this.transactionMode + ", paymentMethod=" + this.paymentMethod + ')';
    }

    public TransactionRequest(String reason, String date, double d, String type, String transactionMode, String paymentMethod) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(transactionMode, "transactionMode");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        this.reason = reason;
        this.date = date;
        this.amount = d;
        this.type = type;
        this.transactionMode = transactionMode;
        this.paymentMethod = paymentMethod;
    }

    public final String getReason() {
        return this.reason;
    }

    public final String getDate() {
        return this.date;
    }

    public final double getAmount() {
        return this.amount;
    }

    public final String getType() {
        return this.type;
    }

    public final String getTransactionMode() {
        return this.transactionMode;
    }

    public final String getPaymentMethod() {
        return this.paymentMethod;
    }
}

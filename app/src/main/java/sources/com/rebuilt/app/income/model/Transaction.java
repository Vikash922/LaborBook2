package com.rebuilt.app.income.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionsResponseModel.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u001b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\bHÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J[\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001J\u0006\u0010#\u001a\u00020$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020$HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020$R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\u0018\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000f¨\u00060"}, m2722d2 = {"Lcom/laborbook/income/model/Transaction;", "Landroid/os/Parcelable;", "id", "", "reason", "date", "dateStr", ConstantEventAttributes.AMOUNT, "", "transactionMode", "paymentMethod", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getReason", "getDate", "getDateStr", "getAmount", "()D", "getTransactionMode", "getPaymentMethod", "getType", "formattedDate", "getFormattedDate", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "writeToParcel", "", "dest", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class Transaction implements Parcelable {
    public static final Parcelable.Creator<Transaction> CREATOR = new Creator();

    @SerializedName(ConstantEventAttributes.AMOUNT)
    private final double amount;
    private final String date;

    @SerializedName("date_str")
    private final String dateStr;
    private final String id;

    @SerializedName("payment_method")
    private final String paymentMethod;
    private final String reason;

    @SerializedName("transaction_mode")
    private final String transactionMode;

    @SerializedName("type")
    private final String type;

    /* JADX INFO: compiled from: TransactionsResponseModel.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Creator implements Parcelable.Creator<Transaction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Transaction createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new Transaction(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readDouble(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Transaction[] newArray(int i) {
            return new Transaction[i];
        }
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getReason() {
        return this.reason;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDateStr() {
        return this.dateStr;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final double getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTransactionMode() {
        return this.transactionMode;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getPaymentMethod() {
        return this.paymentMethod;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getType() {
        return this.type;
    }

    public final Transaction copy(String id, String reason, String date, String dateStr, double amount, String transactionMode, String paymentMethod, String type) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(dateStr, "dateStr");
        Intrinsics.checkNotNullParameter(transactionMode, "transactionMode");
        Intrinsics.checkNotNullParameter(type, "type");
        return new Transaction(id, reason, date, dateStr, amount, transactionMode, paymentMethod, type);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Transaction)) {
            return false;
        }
        Transaction transaction = (Transaction) other;
        return Intrinsics.areEqual(this.id, transaction.id) && Intrinsics.areEqual(this.reason, transaction.reason) && Intrinsics.areEqual(this.date, transaction.date) && Intrinsics.areEqual(this.dateStr, transaction.dateStr) && Double.compare(this.amount, transaction.amount) == 0 && Intrinsics.areEqual(this.transactionMode, transaction.transactionMode) && Intrinsics.areEqual(this.paymentMethod, transaction.paymentMethod) && Intrinsics.areEqual(this.type, transaction.type);
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.id.hashCode() * 31) + this.reason.hashCode()) * 31) + this.date.hashCode()) * 31) + this.dateStr.hashCode()) * 31) + Double.hashCode(this.amount)) * 31) + this.transactionMode.hashCode()) * 31;
        String str = this.paymentMethod;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.type.hashCode();
    }

    public String toString() {
        return "Transaction(id=" + this.id + ", reason=" + this.reason + ", date=" + this.date + ", dateStr=" + this.dateStr + ", amount=" + this.amount + ", transactionMode=" + this.transactionMode + ", paymentMethod=" + this.paymentMethod + ", type=" + this.type + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.reason);
        dest.writeString(this.date);
        dest.writeString(this.dateStr);
        dest.writeDouble(this.amount);
        dest.writeString(this.transactionMode);
        dest.writeString(this.paymentMethod);
        dest.writeString(this.type);
    }

    public Transaction(String id, String reason, String date, String dateStr, double d, String transactionMode, String str, String type) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(dateStr, "dateStr");
        Intrinsics.checkNotNullParameter(transactionMode, "transactionMode");
        Intrinsics.checkNotNullParameter(type, "type");
        this.id = id;
        this.reason = reason;
        this.date = date;
        this.dateStr = dateStr;
        this.amount = d;
        this.transactionMode = transactionMode;
        this.paymentMethod = str;
        this.type = type;
    }

    public /* synthetic */ Transaction(String str, String str2, String str3, String str4, double d, String str5, String str6, String str7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, d, str5, (i & 64) != 0 ? null : str6, str7);
    }

    public final String getId() {
        return this.id;
    }

    public final String getReason() {
        return this.reason;
    }

    public final String getDate() {
        return this.date;
    }

    public final String getDateStr() {
        return this.dateStr;
    }

    public final double getAmount() {
        return this.amount;
    }

    public final String getTransactionMode() {
        return this.transactionMode;
    }

    public final String getPaymentMethod() {
        return this.paymentMethod;
    }

    public final String getType() {
        return this.type;
    }

    public final String getFormattedDate() {
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault()).parse(this.date);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.getDefault());
            if (date == null) {
                date = new Date();
            }
            return simpleDateFormat.format(date);
        } catch (Exception unused) {
            return this.dateStr;
        }
    }
}

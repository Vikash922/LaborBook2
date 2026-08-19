package com.laborbook.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AddAdvanceRequestBody.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J3\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001a"}, m2722d2 = {"Lcom/laborbook/keep/model/Advance;", "", "advanceDate", "", "advanceAmount", "", "advanceReason", "advancePaymentMethod", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getAdvanceDate", "()Ljava/lang/String;", "getAdvanceAmount", "()I", "getAdvanceReason", "getAdvancePaymentMethod", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class Advance {

    @SerializedName("advance_amount")
    private final int advanceAmount;

    @SerializedName("advance_date")
    private final String advanceDate;

    @SerializedName("advance_payment_method")
    private final String advancePaymentMethod;

    @SerializedName("advance_reason")
    private final String advanceReason;

    public static /* synthetic */ Advance copy$default(Advance advance, String str, int i, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = advance.advanceDate;
        }
        if ((i2 & 2) != 0) {
            i = advance.advanceAmount;
        }
        if ((i2 & 4) != 0) {
            str2 = advance.advanceReason;
        }
        if ((i2 & 8) != 0) {
            str3 = advance.advancePaymentMethod;
        }
        return advance.copy(str, i, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAdvanceDate() {
        return this.advanceDate;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getAdvanceAmount() {
        return this.advanceAmount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAdvanceReason() {
        return this.advanceReason;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getAdvancePaymentMethod() {
        return this.advancePaymentMethod;
    }

    public final Advance copy(String advanceDate, int advanceAmount, String advanceReason, String advancePaymentMethod) {
        Intrinsics.checkNotNullParameter(advanceDate, "advanceDate");
        Intrinsics.checkNotNullParameter(advanceReason, "advanceReason");
        return new Advance(advanceDate, advanceAmount, advanceReason, advancePaymentMethod);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Advance)) {
            return false;
        }
        Advance advance = (Advance) other;
        return Intrinsics.areEqual(this.advanceDate, advance.advanceDate) && this.advanceAmount == advance.advanceAmount && Intrinsics.areEqual(this.advanceReason, advance.advanceReason) && Intrinsics.areEqual(this.advancePaymentMethod, advance.advancePaymentMethod);
    }

    public int hashCode() {
        int iHashCode = ((((this.advanceDate.hashCode() * 31) + Integer.hashCode(this.advanceAmount)) * 31) + this.advanceReason.hashCode()) * 31;
        String str = this.advancePaymentMethod;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "Advance(advanceDate=" + this.advanceDate + ", advanceAmount=" + this.advanceAmount + ", advanceReason=" + this.advanceReason + ", advancePaymentMethod=" + this.advancePaymentMethod + ')';
    }

    public Advance(String advanceDate, int i, String advanceReason, String str) {
        Intrinsics.checkNotNullParameter(advanceDate, "advanceDate");
        Intrinsics.checkNotNullParameter(advanceReason, "advanceReason");
        this.advanceDate = advanceDate;
        this.advanceAmount = i;
        this.advanceReason = advanceReason;
        this.advancePaymentMethod = str;
    }

    public /* synthetic */ Advance(String str, int i, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, (i2 & 8) != 0 ? null : str3);
    }

    public final String getAdvanceDate() {
        return this.advanceDate;
    }

    public final int getAdvanceAmount() {
        return this.advanceAmount;
    }

    public final String getAdvanceReason() {
        return this.advanceReason;
    }

    public final String getAdvancePaymentMethod() {
        return this.advancePaymentMethod;
    }
}

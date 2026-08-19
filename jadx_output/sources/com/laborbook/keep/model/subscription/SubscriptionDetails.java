package com.laborbook.keep.model.subscription;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import com.laborbook.base.analytics.ConstantEventAttributes;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserSubscription.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jv\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020\fHÖ\u0001J\t\u0010-\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011¨\u0006."}, m2722d2 = {"Lcom/laborbook/keep/model/subscription/SubscriptionDetails;", "", "id", "", "planId", "planName", "pgSubscriptionId", "status", "startAt", "endAt", "paymentMethod", ConstantEventAttributes.AMOUNT, "", "interval", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getPlanId", "getPlanName", "getPgSubscriptionId", "getStatus", "getStartAt", "getEndAt", "getPaymentMethod", "getAmount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getInterval", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/laborbook/keep/model/subscription/SubscriptionDetails;", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class SubscriptionDetails {

    @SerializedName("amount_paid")
    private final Integer amount;

    @SerializedName("end_at")
    private final String endAt;

    @SerializedName("id")
    private final String id;

    @SerializedName("interval")
    private final String interval;

    @SerializedName("payment_method")
    private final String paymentMethod;

    @SerializedName("pg_subscription_id")
    private final String pgSubscriptionId;

    @SerializedName("plan_id")
    private final String planId;

    @SerializedName("plan_name")
    private final String planName;

    @SerializedName("start_at")
    private final String startAt;

    @SerializedName("status")
    private final String status;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getInterval() {
        return this.interval;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPlanId() {
        return this.planId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPlanName() {
        return this.planName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPgSubscriptionId() {
        return this.pgSubscriptionId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getStartAt() {
        return this.startAt;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getEndAt() {
        return this.endAt;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPaymentMethod() {
        return this.paymentMethod;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getAmount() {
        return this.amount;
    }

    public final SubscriptionDetails copy(String id, String planId, String planName, String pgSubscriptionId, String status, String startAt, String endAt, String paymentMethod, Integer amount, String interval) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(planId, "planId");
        Intrinsics.checkNotNullParameter(planName, "planName");
        Intrinsics.checkNotNullParameter(pgSubscriptionId, "pgSubscriptionId");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(startAt, "startAt");
        Intrinsics.checkNotNullParameter(endAt, "endAt");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        return new SubscriptionDetails(id, planId, planName, pgSubscriptionId, status, startAt, endAt, paymentMethod, amount, interval);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubscriptionDetails)) {
            return false;
        }
        SubscriptionDetails subscriptionDetails = (SubscriptionDetails) other;
        return Intrinsics.areEqual(this.id, subscriptionDetails.id) && Intrinsics.areEqual(this.planId, subscriptionDetails.planId) && Intrinsics.areEqual(this.planName, subscriptionDetails.planName) && Intrinsics.areEqual(this.pgSubscriptionId, subscriptionDetails.pgSubscriptionId) && Intrinsics.areEqual(this.status, subscriptionDetails.status) && Intrinsics.areEqual(this.startAt, subscriptionDetails.startAt) && Intrinsics.areEqual(this.endAt, subscriptionDetails.endAt) && Intrinsics.areEqual(this.paymentMethod, subscriptionDetails.paymentMethod) && Intrinsics.areEqual(this.amount, subscriptionDetails.amount) && Intrinsics.areEqual(this.interval, subscriptionDetails.interval);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((this.id.hashCode() * 31) + this.planId.hashCode()) * 31) + this.planName.hashCode()) * 31) + this.pgSubscriptionId.hashCode()) * 31) + this.status.hashCode()) * 31) + this.startAt.hashCode()) * 31) + this.endAt.hashCode()) * 31) + this.paymentMethod.hashCode()) * 31;
        Integer num = this.amount;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.interval;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "SubscriptionDetails(id=" + this.id + ", planId=" + this.planId + ", planName=" + this.planName + ", pgSubscriptionId=" + this.pgSubscriptionId + ", status=" + this.status + ", startAt=" + this.startAt + ", endAt=" + this.endAt + ", paymentMethod=" + this.paymentMethod + ", amount=" + this.amount + ", interval=" + this.interval + ')';
    }

    public SubscriptionDetails(String id, String planId, String planName, String pgSubscriptionId, String status, String startAt, String endAt, String paymentMethod, Integer num, String str) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(planId, "planId");
        Intrinsics.checkNotNullParameter(planName, "planName");
        Intrinsics.checkNotNullParameter(pgSubscriptionId, "pgSubscriptionId");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(startAt, "startAt");
        Intrinsics.checkNotNullParameter(endAt, "endAt");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        this.id = id;
        this.planId = planId;
        this.planName = planName;
        this.pgSubscriptionId = pgSubscriptionId;
        this.status = status;
        this.startAt = startAt;
        this.endAt = endAt;
        this.paymentMethod = paymentMethod;
        this.amount = num;
        this.interval = str;
    }

    public /* synthetic */ SubscriptionDetails(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Integer num, String str9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, str6, str7, str8, (i & 256) != 0 ? null : num, (i & 512) != 0 ? null : str9);
    }

    public final String getId() {
        return this.id;
    }

    public final String getPlanId() {
        return this.planId;
    }

    public final String getPlanName() {
        return this.planName;
    }

    public final String getPgSubscriptionId() {
        return this.pgSubscriptionId;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getStartAt() {
        return this.startAt;
    }

    public final String getEndAt() {
        return this.endAt;
    }

    public final String getPaymentMethod() {
        return this.paymentMethod;
    }

    public final Integer getAmount() {
        return this.amount;
    }

    public final String getInterval() {
        return this.interval;
    }
}

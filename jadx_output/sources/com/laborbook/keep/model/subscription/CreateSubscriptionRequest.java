package com.laborbook.keep.model.subscription;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CreateSubscriptionRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;", "", "planId", "", "paymentMethod", "upiId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPlanId", "()Ljava/lang/String;", "getPaymentMethod", "getUpiId", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class CreateSubscriptionRequest {

    @SerializedName("payment_method")
    private final String paymentMethod;

    @SerializedName("plan_id")
    private final String planId;

    @SerializedName("upi_id")
    private final String upiId;

    public static /* synthetic */ CreateSubscriptionRequest copy$default(CreateSubscriptionRequest createSubscriptionRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = createSubscriptionRequest.planId;
        }
        if ((i & 2) != 0) {
            str2 = createSubscriptionRequest.paymentMethod;
        }
        if ((i & 4) != 0) {
            str3 = createSubscriptionRequest.upiId;
        }
        return createSubscriptionRequest.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPlanId() {
        return this.planId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPaymentMethod() {
        return this.paymentMethod;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUpiId() {
        return this.upiId;
    }

    public final CreateSubscriptionRequest copy(String planId, String paymentMethod, String upiId) {
        Intrinsics.checkNotNullParameter(planId, "planId");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        Intrinsics.checkNotNullParameter(upiId, "upiId");
        return new CreateSubscriptionRequest(planId, paymentMethod, upiId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreateSubscriptionRequest)) {
            return false;
        }
        CreateSubscriptionRequest createSubscriptionRequest = (CreateSubscriptionRequest) other;
        return Intrinsics.areEqual(this.planId, createSubscriptionRequest.planId) && Intrinsics.areEqual(this.paymentMethod, createSubscriptionRequest.paymentMethod) && Intrinsics.areEqual(this.upiId, createSubscriptionRequest.upiId);
    }

    public int hashCode() {
        return (((this.planId.hashCode() * 31) + this.paymentMethod.hashCode()) * 31) + this.upiId.hashCode();
    }

    public String toString() {
        return "CreateSubscriptionRequest(planId=" + this.planId + ", paymentMethod=" + this.paymentMethod + ", upiId=" + this.upiId + ')';
    }

    public CreateSubscriptionRequest(String planId, String paymentMethod, String upiId) {
        Intrinsics.checkNotNullParameter(planId, "planId");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        Intrinsics.checkNotNullParameter(upiId, "upiId");
        this.planId = planId;
        this.paymentMethod = paymentMethod;
        this.upiId = upiId;
    }

    public final String getPlanId() {
        return this.planId;
    }

    public final String getPaymentMethod() {
        return this.paymentMethod;
    }

    public final String getUpiId() {
        return this.upiId;
    }
}

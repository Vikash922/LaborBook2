package com.laborbook.keep.model.subscription;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VerifySubscriptionRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;", "", "razorpaySubscriptionId", "", "razorpayPaymentId", "razorpaySignature", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getRazorpaySubscriptionId", "()Ljava/lang/String;", "getRazorpayPaymentId", "getRazorpaySignature", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class VerifySubscriptionRequest {

    @SerializedName("razorpay_payment_id")
    private final String razorpayPaymentId;

    @SerializedName("razorpay_signature")
    private final String razorpaySignature;

    @SerializedName("razorpay_subscription_id")
    private final String razorpaySubscriptionId;

    public static /* synthetic */ VerifySubscriptionRequest copy$default(VerifySubscriptionRequest verifySubscriptionRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = verifySubscriptionRequest.razorpaySubscriptionId;
        }
        if ((i & 2) != 0) {
            str2 = verifySubscriptionRequest.razorpayPaymentId;
        }
        if ((i & 4) != 0) {
            str3 = verifySubscriptionRequest.razorpaySignature;
        }
        return verifySubscriptionRequest.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getRazorpaySubscriptionId() {
        return this.razorpaySubscriptionId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getRazorpayPaymentId() {
        return this.razorpayPaymentId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getRazorpaySignature() {
        return this.razorpaySignature;
    }

    public final VerifySubscriptionRequest copy(String razorpaySubscriptionId, String razorpayPaymentId, String razorpaySignature) {
        Intrinsics.checkNotNullParameter(razorpaySubscriptionId, "razorpaySubscriptionId");
        Intrinsics.checkNotNullParameter(razorpayPaymentId, "razorpayPaymentId");
        Intrinsics.checkNotNullParameter(razorpaySignature, "razorpaySignature");
        return new VerifySubscriptionRequest(razorpaySubscriptionId, razorpayPaymentId, razorpaySignature);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VerifySubscriptionRequest)) {
            return false;
        }
        VerifySubscriptionRequest verifySubscriptionRequest = (VerifySubscriptionRequest) other;
        return Intrinsics.areEqual(this.razorpaySubscriptionId, verifySubscriptionRequest.razorpaySubscriptionId) && Intrinsics.areEqual(this.razorpayPaymentId, verifySubscriptionRequest.razorpayPaymentId) && Intrinsics.areEqual(this.razorpaySignature, verifySubscriptionRequest.razorpaySignature);
    }

    public int hashCode() {
        return (((this.razorpaySubscriptionId.hashCode() * 31) + this.razorpayPaymentId.hashCode()) * 31) + this.razorpaySignature.hashCode();
    }

    public String toString() {
        return "VerifySubscriptionRequest(razorpaySubscriptionId=" + this.razorpaySubscriptionId + ", razorpayPaymentId=" + this.razorpayPaymentId + ", razorpaySignature=" + this.razorpaySignature + ')';
    }

    public VerifySubscriptionRequest(String razorpaySubscriptionId, String razorpayPaymentId, String razorpaySignature) {
        Intrinsics.checkNotNullParameter(razorpaySubscriptionId, "razorpaySubscriptionId");
        Intrinsics.checkNotNullParameter(razorpayPaymentId, "razorpayPaymentId");
        Intrinsics.checkNotNullParameter(razorpaySignature, "razorpaySignature");
        this.razorpaySubscriptionId = razorpaySubscriptionId;
        this.razorpayPaymentId = razorpayPaymentId;
        this.razorpaySignature = razorpaySignature;
    }

    public final String getRazorpaySubscriptionId() {
        return this.razorpaySubscriptionId;
    }

    public final String getRazorpayPaymentId() {
        return this.razorpayPaymentId;
    }

    public final String getRazorpaySignature() {
        return this.razorpaySignature;
    }
}

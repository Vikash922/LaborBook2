package com.rebuilt.app.keep.model.subscription;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VerifySubscriptionRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001a"}, m2722d2 = {"Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;", "", "subscriptionId", "", "status", "verified", "", "message", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "getSubscriptionId", "()Ljava/lang/String;", "getStatus", "getVerified", "()Z", "getMessage", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class VerifySubscriptionResponse {

    @SerializedName("message")
    private final String message;

    @SerializedName("status")
    private final String status;

    @SerializedName("subscription_id")
    private final String subscriptionId;

    @SerializedName("verified")
    private final boolean verified;

    public static /* synthetic */ VerifySubscriptionResponse copy$default(VerifySubscriptionResponse verifySubscriptionResponse, String str, String str2, boolean z, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = verifySubscriptionResponse.subscriptionId;
        }
        if ((i & 2) != 0) {
            str2 = verifySubscriptionResponse.status;
        }
        if ((i & 4) != 0) {
            z = verifySubscriptionResponse.verified;
        }
        if ((i & 8) != 0) {
            str3 = verifySubscriptionResponse.message;
        }
        return verifySubscriptionResponse.copy(str, str2, z, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getVerified() {
        return this.verified;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    public final VerifySubscriptionResponse copy(String subscriptionId, String status, boolean verified, String message) {
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(message, "message");
        return new VerifySubscriptionResponse(subscriptionId, status, verified, message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VerifySubscriptionResponse)) {
            return false;
        }
        VerifySubscriptionResponse verifySubscriptionResponse = (VerifySubscriptionResponse) other;
        return Intrinsics.areEqual(this.subscriptionId, verifySubscriptionResponse.subscriptionId) && Intrinsics.areEqual(this.status, verifySubscriptionResponse.status) && this.verified == verifySubscriptionResponse.verified && Intrinsics.areEqual(this.message, verifySubscriptionResponse.message);
    }

    public int hashCode() {
        return (((((this.subscriptionId.hashCode() * 31) + this.status.hashCode()) * 31) + Boolean.hashCode(this.verified)) * 31) + this.message.hashCode();
    }

    public String toString() {
        return "VerifySubscriptionResponse(subscriptionId=" + this.subscriptionId + ", status=" + this.status + ", verified=" + this.verified + ", message=" + this.message + ')';
    }

    public VerifySubscriptionResponse(String subscriptionId, String status, boolean z, String message) {
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(message, "message");
        this.subscriptionId = subscriptionId;
        this.status = status;
        this.verified = z;
        this.message = message;
    }

    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    public final String getStatus() {
        return this.status;
    }

    public final boolean getVerified() {
        return this.verified;
    }

    public final String getMessage() {
        return this.message;
    }
}

package com.laborbook.keep.model.subscription;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CancelSubscriptionResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, m2722d2 = {"Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;", "", "subscriptionId", "", "pgSubscriptionId", "status", "message", "cancelAtCycleEnd", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getSubscriptionId", "()Ljava/lang/String;", "getPgSubscriptionId", "getStatus", "getMessage", "getCancelAtCycleEnd", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class CancelSubscriptionResponse {

    @SerializedName("cancel_at_cycle_end")
    private final boolean cancelAtCycleEnd;

    @SerializedName("message")
    private final String message;

    @SerializedName("pg_subscription_id")
    private final String pgSubscriptionId;

    @SerializedName("status")
    private final String status;

    @SerializedName("subscription_id")
    private final String subscriptionId;

    public static /* synthetic */ CancelSubscriptionResponse copy$default(CancelSubscriptionResponse cancelSubscriptionResponse, String str, String str2, String str3, String str4, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cancelSubscriptionResponse.subscriptionId;
        }
        if ((i & 2) != 0) {
            str2 = cancelSubscriptionResponse.pgSubscriptionId;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = cancelSubscriptionResponse.status;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            str4 = cancelSubscriptionResponse.message;
        }
        String str7 = str4;
        if ((i & 16) != 0) {
            z = cancelSubscriptionResponse.cancelAtCycleEnd;
        }
        return cancelSubscriptionResponse.copy(str, str5, str6, str7, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPgSubscriptionId() {
        return this.pgSubscriptionId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getCancelAtCycleEnd() {
        return this.cancelAtCycleEnd;
    }

    public final CancelSubscriptionResponse copy(String subscriptionId, String pgSubscriptionId, String status, String message, boolean cancelAtCycleEnd) {
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        Intrinsics.checkNotNullParameter(pgSubscriptionId, "pgSubscriptionId");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(message, "message");
        return new CancelSubscriptionResponse(subscriptionId, pgSubscriptionId, status, message, cancelAtCycleEnd);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CancelSubscriptionResponse)) {
            return false;
        }
        CancelSubscriptionResponse cancelSubscriptionResponse = (CancelSubscriptionResponse) other;
        return Intrinsics.areEqual(this.subscriptionId, cancelSubscriptionResponse.subscriptionId) && Intrinsics.areEqual(this.pgSubscriptionId, cancelSubscriptionResponse.pgSubscriptionId) && Intrinsics.areEqual(this.status, cancelSubscriptionResponse.status) && Intrinsics.areEqual(this.message, cancelSubscriptionResponse.message) && this.cancelAtCycleEnd == cancelSubscriptionResponse.cancelAtCycleEnd;
    }

    public int hashCode() {
        return (((((((this.subscriptionId.hashCode() * 31) + this.pgSubscriptionId.hashCode()) * 31) + this.status.hashCode()) * 31) + this.message.hashCode()) * 31) + Boolean.hashCode(this.cancelAtCycleEnd);
    }

    public String toString() {
        return "CancelSubscriptionResponse(subscriptionId=" + this.subscriptionId + ", pgSubscriptionId=" + this.pgSubscriptionId + ", status=" + this.status + ", message=" + this.message + ", cancelAtCycleEnd=" + this.cancelAtCycleEnd + ')';
    }

    public CancelSubscriptionResponse(String subscriptionId, String pgSubscriptionId, String status, String message, boolean z) {
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        Intrinsics.checkNotNullParameter(pgSubscriptionId, "pgSubscriptionId");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(message, "message");
        this.subscriptionId = subscriptionId;
        this.pgSubscriptionId = pgSubscriptionId;
        this.status = status;
        this.message = message;
        this.cancelAtCycleEnd = z;
    }

    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    public final String getPgSubscriptionId() {
        return this.pgSubscriptionId;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getMessage() {
        return this.message;
    }

    public final boolean getCancelAtCycleEnd() {
        return this.cancelAtCycleEnd;
    }
}

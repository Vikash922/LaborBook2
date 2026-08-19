package com.rebuilt.app.keep.model.subscription;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SubscriptionPlan.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/model/subscription/SubscriptionPlansResponse;", "", "plans", "", "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "<init>", "(Ljava/util/List;)V", "getPlans", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class SubscriptionPlansResponse {

    @SerializedName("plans")
    private final List<SubscriptionPlan> plans;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SubscriptionPlansResponse copy$default(SubscriptionPlansResponse subscriptionPlansResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = subscriptionPlansResponse.plans;
        }
        return subscriptionPlansResponse.copy(list);
    }

    public final List<SubscriptionPlan> component1() {
        return this.plans;
    }

    public final SubscriptionPlansResponse copy(List<SubscriptionPlan> plans) {
        Intrinsics.checkNotNullParameter(plans, "plans");
        return new SubscriptionPlansResponse(plans);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SubscriptionPlansResponse) && Intrinsics.areEqual(this.plans, ((SubscriptionPlansResponse) other).plans);
    }

    public int hashCode() {
        return this.plans.hashCode();
    }

    public String toString() {
        return "SubscriptionPlansResponse(plans=" + this.plans + ')';
    }

    public SubscriptionPlansResponse(List<SubscriptionPlan> plans) {
        Intrinsics.checkNotNullParameter(plans, "plans");
        this.plans = plans;
    }

    public final List<SubscriptionPlan> getPlans() {
        return this.plans;
    }
}

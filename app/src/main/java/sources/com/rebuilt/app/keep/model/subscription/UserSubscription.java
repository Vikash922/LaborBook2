package com.rebuilt.app.keep.model.subscription;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserSubscription.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J/\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, m2722d2 = {"Lcom/laborbook/keep/model/subscription/UserSubscription;", "", "subscriptionTier", "", "subscription", "Lcom/laborbook/keep/model/subscription/SubscriptionDetails;", "features", "", "Lcom/laborbook/keep/model/subscription/Feature;", "<init>", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Ljava/util/List;)V", "getSubscriptionTier", "()Ljava/lang/String;", "getSubscription", "()Lcom/laborbook/keep/model/subscription/SubscriptionDetails;", "getFeatures", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class UserSubscription {

    @SerializedName("features")
    private final List<Feature> features;

    @SerializedName("subscription")
    private final SubscriptionDetails subscription;

    @SerializedName("subscription_tier")
    private final String subscriptionTier;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UserSubscription copy$default(UserSubscription userSubscription, String str, SubscriptionDetails subscriptionDetails, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = userSubscription.subscriptionTier;
        }
        if ((i & 2) != 0) {
            subscriptionDetails = userSubscription.subscription;
        }
        if ((i & 4) != 0) {
            list = userSubscription.features;
        }
        return userSubscription.copy(str, subscriptionDetails, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubscriptionTier() {
        return this.subscriptionTier;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final SubscriptionDetails getSubscription() {
        return this.subscription;
    }

    public final List<Feature> component3() {
        return this.features;
    }

    public final UserSubscription copy(String subscriptionTier, SubscriptionDetails subscription, List<Feature> features) {
        Intrinsics.checkNotNullParameter(subscriptionTier, "subscriptionTier");
        Intrinsics.checkNotNullParameter(features, "features");
        return new UserSubscription(subscriptionTier, subscription, features);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserSubscription)) {
            return false;
        }
        UserSubscription userSubscription = (UserSubscription) other;
        return Intrinsics.areEqual(this.subscriptionTier, userSubscription.subscriptionTier) && Intrinsics.areEqual(this.subscription, userSubscription.subscription) && Intrinsics.areEqual(this.features, userSubscription.features);
    }

    public int hashCode() {
        int iHashCode = this.subscriptionTier.hashCode() * 31;
        SubscriptionDetails subscriptionDetails = this.subscription;
        return ((iHashCode + (subscriptionDetails == null ? 0 : subscriptionDetails.hashCode())) * 31) + this.features.hashCode();
    }

    public String toString() {
        return "UserSubscription(subscriptionTier=" + this.subscriptionTier + ", subscription=" + this.subscription + ", features=" + this.features + ')';
    }

    public UserSubscription(String subscriptionTier, SubscriptionDetails subscriptionDetails, List<Feature> features) {
        Intrinsics.checkNotNullParameter(subscriptionTier, "subscriptionTier");
        Intrinsics.checkNotNullParameter(features, "features");
        this.subscriptionTier = subscriptionTier;
        this.subscription = subscriptionDetails;
        this.features = features;
    }

    public final String getSubscriptionTier() {
        return this.subscriptionTier;
    }

    public final SubscriptionDetails getSubscription() {
        return this.subscription;
    }

    public final List<Feature> getFeatures() {
        return this.features;
    }
}

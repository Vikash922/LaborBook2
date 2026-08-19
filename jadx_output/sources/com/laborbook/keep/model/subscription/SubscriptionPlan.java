package com.laborbook.keep.model.subscription;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SubscriptionPlan.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b)\b\u0086\b\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\bHÆ\u0003J\t\u0010.\u001a\u00020\bHÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\t\u00101\u001a\u00020\bHÆ\u0003J\t\u00102\u001a\u00020\bHÆ\u0003J\t\u00103\u001a\u00020\u000fHÆ\u0003J\t\u00104\u001a\u00020\u0011HÆ\u0003J\u0081\u0001\u00105\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u0011HÆ\u0001J\u0013\u00106\u001a\u00020\u00112\b\u00107\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00108\u001a\u00020\bHÖ\u0001J\t\u00109\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0015R\u0016\u0010\f\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u0016\u0010\r\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001aR\u0016\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0016\u0010\u0010\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\"R\u0011\u0010#\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b$\u0010\u001aR\u0011\u0010%\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b&\u0010\"R\u0011\u0010'\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b(\u0010\"¨\u0006:"}, m2722d2 = {"Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "", "id", "", "pgPlanId", "name", "description", "price", "", "discountedPrice", FirebaseAnalytics.Param.CURRENCY, "interval", "intervalCount", "trialDays", "metaData", "Lcom/laborbook/keep/model/subscription/MetaData;", "isActive", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILcom/laborbook/keep/model/subscription/MetaData;Z)V", "getId", "()Ljava/lang/String;", "getPgPlanId", "getName", "getDescription", "getPrice", "()I", "getDiscountedPrice", "getCurrency", "getInterval", "getIntervalCount", "getTrialDays", "getMetaData", "()Lcom/laborbook/keep/model/subscription/MetaData;", "()Z", "discountPercent", "getDiscountPercent", "hasDiscount", "getHasDiscount", "hasTrial", "getHasTrial", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "equals", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class SubscriptionPlan {

    @SerializedName(FirebaseAnalytics.Param.CURRENCY)
    private final String currency;

    @SerializedName("description")
    private final String description;

    @SerializedName("discounted_price")
    private final int discountedPrice;

    @SerializedName("id")
    private final String id;

    @SerializedName("interval")
    private final String interval;

    @SerializedName("interval_count")
    private final int intervalCount;

    @SerializedName("is_active")
    private final boolean isActive;

    @SerializedName("meta_data")
    private final MetaData metaData;

    @SerializedName("name")
    private final String name;

    @SerializedName("pg_plan_id")
    private final String pgPlanId;

    @SerializedName("price")
    private final int price;

    @SerializedName("trial_days")
    private final int trialDays;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final int getTrialDays() {
        return this.trialDays;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final MetaData getMetaData() {
        return this.metaData;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getIsActive() {
        return this.isActive;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPgPlanId() {
        return this.pgPlanId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getDiscountedPrice() {
        return this.discountedPrice;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getInterval() {
        return this.interval;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final int getIntervalCount() {
        return this.intervalCount;
    }

    public final SubscriptionPlan copy(String id, String pgPlanId, String name, String description, int price, int discountedPrice, String currency, String interval, int intervalCount, int trialDays, MetaData metaData, boolean isActive) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(pgPlanId, "pgPlanId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(interval, "interval");
        Intrinsics.checkNotNullParameter(metaData, "metaData");
        return new SubscriptionPlan(id, pgPlanId, name, description, price, discountedPrice, currency, interval, intervalCount, trialDays, metaData, isActive);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubscriptionPlan)) {
            return false;
        }
        SubscriptionPlan subscriptionPlan = (SubscriptionPlan) other;
        return Intrinsics.areEqual(this.id, subscriptionPlan.id) && Intrinsics.areEqual(this.pgPlanId, subscriptionPlan.pgPlanId) && Intrinsics.areEqual(this.name, subscriptionPlan.name) && Intrinsics.areEqual(this.description, subscriptionPlan.description) && this.price == subscriptionPlan.price && this.discountedPrice == subscriptionPlan.discountedPrice && Intrinsics.areEqual(this.currency, subscriptionPlan.currency) && Intrinsics.areEqual(this.interval, subscriptionPlan.interval) && this.intervalCount == subscriptionPlan.intervalCount && this.trialDays == subscriptionPlan.trialDays && Intrinsics.areEqual(this.metaData, subscriptionPlan.metaData) && this.isActive == subscriptionPlan.isActive;
    }

    public int hashCode() {
        return (((((((((((((((((((((this.id.hashCode() * 31) + this.pgPlanId.hashCode()) * 31) + this.name.hashCode()) * 31) + this.description.hashCode()) * 31) + Integer.hashCode(this.price)) * 31) + Integer.hashCode(this.discountedPrice)) * 31) + this.currency.hashCode()) * 31) + this.interval.hashCode()) * 31) + Integer.hashCode(this.intervalCount)) * 31) + Integer.hashCode(this.trialDays)) * 31) + this.metaData.hashCode()) * 31) + Boolean.hashCode(this.isActive);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SubscriptionPlan(id=");
        sb.append(this.id).append(", pgPlanId=").append(this.pgPlanId).append(", name=").append(this.name).append(", description=").append(this.description).append(", price=").append(this.price).append(", discountedPrice=").append(this.discountedPrice).append(", currency=").append(this.currency).append(", interval=").append(this.interval).append(", intervalCount=").append(this.intervalCount).append(", trialDays=").append(this.trialDays).append(", metaData=").append(this.metaData).append(", isActive=");
        sb.append(this.isActive).append(')');
        return sb.toString();
    }

    public SubscriptionPlan(String id, String pgPlanId, String name, String description, int i, int i2, String currency, String interval, int i3, int i4, MetaData metaData, boolean z) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(pgPlanId, "pgPlanId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(interval, "interval");
        Intrinsics.checkNotNullParameter(metaData, "metaData");
        this.id = id;
        this.pgPlanId = pgPlanId;
        this.name = name;
        this.description = description;
        this.price = i;
        this.discountedPrice = i2;
        this.currency = currency;
        this.interval = interval;
        this.intervalCount = i3;
        this.trialDays = i4;
        this.metaData = metaData;
        this.isActive = z;
    }

    public final String getId() {
        return this.id;
    }

    public final String getPgPlanId() {
        return this.pgPlanId;
    }

    public final String getName() {
        return this.name;
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getPrice() {
        return this.price;
    }

    public final int getDiscountedPrice() {
        return this.discountedPrice;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getInterval() {
        return this.interval;
    }

    public final int getIntervalCount() {
        return this.intervalCount;
    }

    public final int getTrialDays() {
        return this.trialDays;
    }

    public final MetaData getMetaData() {
        return this.metaData;
    }

    public final boolean isActive() {
        return this.isActive;
    }

    public final int getDiscountPercent() {
        int i;
        int i2 = this.price;
        if (i2 <= 0 || (i = this.discountedPrice) >= i2) {
            return 0;
        }
        return ((i2 - i) * 100) / i2;
    }

    public final boolean getHasDiscount() {
        return this.discountedPrice < this.price;
    }

    public final boolean getHasTrial() {
        return this.trialDays > 0;
    }
}

package com.rebuilt.app.keep.screen.premium;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallReviewAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0010J8\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001d"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PaywallReviewItem;", "", "name", "", "reviewText", "ratingStars", "", "avatarResId", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V", "getName", "()Ljava/lang/String;", "getReviewText", "getRatingStars", "()I", "getAvatarResId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Lcom/laborbook/keep/screen/premium/PaywallReviewItem;", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class PaywallReviewItem {
    private final Integer avatarResId;
    private final String name;
    private final int ratingStars;
    private final String reviewText;

    public static /* synthetic */ PaywallReviewItem copy$default(PaywallReviewItem paywallReviewItem, String str, String str2, int i, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = paywallReviewItem.name;
        }
        if ((i2 & 2) != 0) {
            str2 = paywallReviewItem.reviewText;
        }
        if ((i2 & 4) != 0) {
            i = paywallReviewItem.ratingStars;
        }
        if ((i2 & 8) != 0) {
            num = paywallReviewItem.avatarResId;
        }
        return paywallReviewItem.copy(str, str2, i, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getReviewText() {
        return this.reviewText;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getRatingStars() {
        return this.ratingStars;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getAvatarResId() {
        return this.avatarResId;
    }

    public final PaywallReviewItem copy(String name, String reviewText, int ratingStars, Integer avatarResId) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(reviewText, "reviewText");
        return new PaywallReviewItem(name, reviewText, ratingStars, avatarResId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaywallReviewItem)) {
            return false;
        }
        PaywallReviewItem paywallReviewItem = (PaywallReviewItem) other;
        return Intrinsics.areEqual(this.name, paywallReviewItem.name) && Intrinsics.areEqual(this.reviewText, paywallReviewItem.reviewText) && this.ratingStars == paywallReviewItem.ratingStars && Intrinsics.areEqual(this.avatarResId, paywallReviewItem.avatarResId);
    }

    public int hashCode() {
        int iHashCode = ((((this.name.hashCode() * 31) + this.reviewText.hashCode()) * 31) + Integer.hashCode(this.ratingStars)) * 31;
        Integer num = this.avatarResId;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "PaywallReviewItem(name=" + this.name + ", reviewText=" + this.reviewText + ", ratingStars=" + this.ratingStars + ", avatarResId=" + this.avatarResId + ')';
    }

    public PaywallReviewItem(String name, String reviewText, int i, Integer num) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(reviewText, "reviewText");
        this.name = name;
        this.reviewText = reviewText;
        this.ratingStars = i;
        this.avatarResId = num;
    }

    public /* synthetic */ PaywallReviewItem(String str, String str2, int i, Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? 5 : i, (i2 & 8) != 0 ? null : num);
    }

    public final String getName() {
        return this.name;
    }

    public final String getReviewText() {
        return this.reviewText;
    }

    public final int getRatingStars() {
        return this.ratingStars;
    }

    public final Integer getAvatarResId() {
        return this.avatarResId;
    }
}

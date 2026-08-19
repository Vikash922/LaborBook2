package com.rebuilt.app.keep.model.subscription;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CreateSubscriptionRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003JU\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\r¨\u0006\""}, m2722d2 = {"Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;", "", "subscriptionId", "", "pgSubscriptionId", "shortUrl", "paymentLink", "upiIntentUri", "status", "message", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSubscriptionId", "()Ljava/lang/String;", "getPgSubscriptionId", "getShortUrl", "getPaymentLink", "getUpiIntentUri", "getStatus", "getMessage", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class CreateSubscriptionResponse {

    @SerializedName("message")
    private final String message;

    @SerializedName("payment_link")
    private final String paymentLink;

    @SerializedName("pg_subscription_id")
    private final String pgSubscriptionId;

    @SerializedName("short_url")
    private final String shortUrl;

    @SerializedName("status")
    private final String status;

    @SerializedName("subscription_id")
    private final String subscriptionId;

    @SerializedName("upi_intent_uri")
    private final String upiIntentUri;

    public static /* synthetic */ CreateSubscriptionResponse copy$default(CreateSubscriptionResponse createSubscriptionResponse, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
        if ((i & 1) != 0) {
            str = createSubscriptionResponse.subscriptionId;
        }
        if ((i & 2) != 0) {
            str2 = createSubscriptionResponse.pgSubscriptionId;
        }
        String str8 = str2;
        if ((i & 4) != 0) {
            str3 = createSubscriptionResponse.shortUrl;
        }
        String str9 = str3;
        if ((i & 8) != 0) {
            str4 = createSubscriptionResponse.paymentLink;
        }
        String str10 = str4;
        if ((i & 16) != 0) {
            str5 = createSubscriptionResponse.upiIntentUri;
        }
        String str11 = str5;
        if ((i & 32) != 0) {
            str6 = createSubscriptionResponse.status;
        }
        String str12 = str6;
        if ((i & 64) != 0) {
            str7 = createSubscriptionResponse.message;
        }
        return createSubscriptionResponse.copy(str, str8, str9, str10, str11, str12, str7);
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
    public final String getShortUrl() {
        return this.shortUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPaymentLink() {
        return this.paymentLink;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUpiIntentUri() {
        return this.upiIntentUri;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    public final CreateSubscriptionResponse copy(String subscriptionId, String pgSubscriptionId, String shortUrl, String paymentLink, String upiIntentUri, String status, String message) {
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        Intrinsics.checkNotNullParameter(pgSubscriptionId, "pgSubscriptionId");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(message, "message");
        return new CreateSubscriptionResponse(subscriptionId, pgSubscriptionId, shortUrl, paymentLink, upiIntentUri, status, message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreateSubscriptionResponse)) {
            return false;
        }
        CreateSubscriptionResponse createSubscriptionResponse = (CreateSubscriptionResponse) other;
        return Intrinsics.areEqual(this.subscriptionId, createSubscriptionResponse.subscriptionId) && Intrinsics.areEqual(this.pgSubscriptionId, createSubscriptionResponse.pgSubscriptionId) && Intrinsics.areEqual(this.shortUrl, createSubscriptionResponse.shortUrl) && Intrinsics.areEqual(this.paymentLink, createSubscriptionResponse.paymentLink) && Intrinsics.areEqual(this.upiIntentUri, createSubscriptionResponse.upiIntentUri) && Intrinsics.areEqual(this.status, createSubscriptionResponse.status) && Intrinsics.areEqual(this.message, createSubscriptionResponse.message);
    }

    public int hashCode() {
        int iHashCode = ((this.subscriptionId.hashCode() * 31) + this.pgSubscriptionId.hashCode()) * 31;
        String str = this.shortUrl;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.paymentLink;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.upiIntentUri;
        return ((((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.status.hashCode()) * 31) + this.message.hashCode();
    }

    public String toString() {
        return "CreateSubscriptionResponse(subscriptionId=" + this.subscriptionId + ", pgSubscriptionId=" + this.pgSubscriptionId + ", shortUrl=" + this.shortUrl + ", paymentLink=" + this.paymentLink + ", upiIntentUri=" + this.upiIntentUri + ", status=" + this.status + ", message=" + this.message + ')';
    }

    public CreateSubscriptionResponse(String subscriptionId, String pgSubscriptionId, String str, String str2, String str3, String status, String message) {
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        Intrinsics.checkNotNullParameter(pgSubscriptionId, "pgSubscriptionId");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(message, "message");
        this.subscriptionId = subscriptionId;
        this.pgSubscriptionId = pgSubscriptionId;
        this.shortUrl = str;
        this.paymentLink = str2;
        this.upiIntentUri = str3;
        this.status = status;
        this.message = message;
    }

    public /* synthetic */ CreateSubscriptionResponse(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, str6, str7);
    }

    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    public final String getPgSubscriptionId() {
        return this.pgSubscriptionId;
    }

    public final String getShortUrl() {
        return this.shortUrl;
    }

    public final String getPaymentLink() {
        return this.paymentLink;
    }

    public final String getUpiIntentUri() {
        return this.upiIntentUri;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getMessage() {
        return this.message;
    }
}

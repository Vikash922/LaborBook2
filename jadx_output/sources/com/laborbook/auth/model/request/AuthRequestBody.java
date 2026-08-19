package com.laborbook.auth.model.request;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.google.gson.annotations.SerializedName;
import com.laborbook.base.analytics.ConstantEventAttributes;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AuthRequestBody.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001c"}, m2722d2 = {"Lcom/laborbook/auth/model/request/AuthRequestBody;", "", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "", "mobileNumber", "otp", "installSource", "installReferrerPayload", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCountryCode", "()Ljava/lang/String;", "getMobileNumber", "getOtp", "getInstallSource", "getInstallReferrerPayload", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class AuthRequestBody {

    @SerializedName("country_code")
    private final String countryCode;

    @SerializedName("install_referrer_payload")
    private final String installReferrerPayload;

    @SerializedName(ConstantEventAttributes.INSTALL_SOURCE)
    private final String installSource;

    @SerializedName("mobile_number")
    private final String mobileNumber;

    @SerializedName("otp")
    private final String otp;

    public AuthRequestBody() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ AuthRequestBody copy$default(AuthRequestBody authRequestBody, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = authRequestBody.countryCode;
        }
        if ((i & 2) != 0) {
            str2 = authRequestBody.mobileNumber;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = authRequestBody.otp;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = authRequestBody.installSource;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = authRequestBody.installReferrerPayload;
        }
        return authRequestBody.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMobileNumber() {
        return this.mobileNumber;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOtp() {
        return this.otp;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getInstallSource() {
        return this.installSource;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getInstallReferrerPayload() {
        return this.installReferrerPayload;
    }

    public final AuthRequestBody copy(String countryCode, String mobileNumber, String otp, String installSource, String installReferrerPayload) {
        return new AuthRequestBody(countryCode, mobileNumber, otp, installSource, installReferrerPayload);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AuthRequestBody)) {
            return false;
        }
        AuthRequestBody authRequestBody = (AuthRequestBody) other;
        return Intrinsics.areEqual(this.countryCode, authRequestBody.countryCode) && Intrinsics.areEqual(this.mobileNumber, authRequestBody.mobileNumber) && Intrinsics.areEqual(this.otp, authRequestBody.otp) && Intrinsics.areEqual(this.installSource, authRequestBody.installSource) && Intrinsics.areEqual(this.installReferrerPayload, authRequestBody.installReferrerPayload);
    }

    public int hashCode() {
        String str = this.countryCode;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.mobileNumber;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.otp;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.installSource;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.installReferrerPayload;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "AuthRequestBody(countryCode=" + this.countryCode + ", mobileNumber=" + this.mobileNumber + ", otp=" + this.otp + ", installSource=" + this.installSource + ", installReferrerPayload=" + this.installReferrerPayload + ')';
    }

    public AuthRequestBody(String str, String str2, String str3, String str4, String str5) {
        this.countryCode = str;
        this.mobileNumber = str2;
        this.otp = str3;
        this.installSource = str4;
        this.installReferrerPayload = str5;
    }

    public /* synthetic */ AuthRequestBody(String str, String str2, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5);
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getMobileNumber() {
        return this.mobileNumber;
    }

    public final String getOtp() {
        return this.otp;
    }

    public final String getInstallSource() {
        return this.installSource;
    }

    public final String getInstallReferrerPayload() {
        return this.installReferrerPayload;
    }
}

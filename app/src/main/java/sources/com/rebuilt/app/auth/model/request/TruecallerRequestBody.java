package com.rebuilt.app.auth.model.request;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AuthRequestBody.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J5\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0019"}, m2722d2 = {"Lcom/laborbook/auth/model/request/TruecallerRequestBody;", "", "authorizationCode", "", "codeVerifier", "installSource", "installReferrerPayload", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAuthorizationCode", "()Ljava/lang/String;", "getCodeVerifier", "getInstallSource", "getInstallReferrerPayload", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class TruecallerRequestBody {

    @SerializedName("authorization_code")
    private final String authorizationCode;

    @SerializedName("code_verifier")
    private final String codeVerifier;

    @SerializedName("install_referrer_payload")
    private final String installReferrerPayload;

    @SerializedName(ConstantEventAttributes.INSTALL_SOURCE)
    private final String installSource;

    public static /* synthetic */ TruecallerRequestBody copy$default(TruecallerRequestBody truecallerRequestBody, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = truecallerRequestBody.authorizationCode;
        }
        if ((i & 2) != 0) {
            str2 = truecallerRequestBody.codeVerifier;
        }
        if ((i & 4) != 0) {
            str3 = truecallerRequestBody.installSource;
        }
        if ((i & 8) != 0) {
            str4 = truecallerRequestBody.installReferrerPayload;
        }
        return truecallerRequestBody.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAuthorizationCode() {
        return this.authorizationCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCodeVerifier() {
        return this.codeVerifier;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getInstallSource() {
        return this.installSource;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getInstallReferrerPayload() {
        return this.installReferrerPayload;
    }

    public final TruecallerRequestBody copy(String authorizationCode, String codeVerifier, String installSource, String installReferrerPayload) {
        Intrinsics.checkNotNullParameter(authorizationCode, "authorizationCode");
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        return new TruecallerRequestBody(authorizationCode, codeVerifier, installSource, installReferrerPayload);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TruecallerRequestBody)) {
            return false;
        }
        TruecallerRequestBody truecallerRequestBody = (TruecallerRequestBody) other;
        return Intrinsics.areEqual(this.authorizationCode, truecallerRequestBody.authorizationCode) && Intrinsics.areEqual(this.codeVerifier, truecallerRequestBody.codeVerifier) && Intrinsics.areEqual(this.installSource, truecallerRequestBody.installSource) && Intrinsics.areEqual(this.installReferrerPayload, truecallerRequestBody.installReferrerPayload);
    }

    public int hashCode() {
        int iHashCode = ((this.authorizationCode.hashCode() * 31) + this.codeVerifier.hashCode()) * 31;
        String str = this.installSource;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.installReferrerPayload;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "TruecallerRequestBody(authorizationCode=" + this.authorizationCode + ", codeVerifier=" + this.codeVerifier + ", installSource=" + this.installSource + ", installReferrerPayload=" + this.installReferrerPayload + ')';
    }

    public TruecallerRequestBody(String authorizationCode, String codeVerifier, String str, String str2) {
        Intrinsics.checkNotNullParameter(authorizationCode, "authorizationCode");
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        this.authorizationCode = authorizationCode;
        this.codeVerifier = codeVerifier;
        this.installSource = str;
        this.installReferrerPayload = str2;
    }

    public /* synthetic */ TruecallerRequestBody(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4);
    }

    public final String getAuthorizationCode() {
        return this.authorizationCode;
    }

    public final String getCodeVerifier() {
        return this.codeVerifier;
    }

    public final String getInstallSource() {
        return this.installSource;
    }

    public final String getInstallReferrerPayload() {
        return this.installReferrerPayload;
    }
}

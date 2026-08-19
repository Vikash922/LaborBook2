package com.laborbook.auth.model.request;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AuthRequestBody.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J-\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, m2722d2 = {"Lcom/laborbook/auth/model/request/AuthResponse;", "", "authToken", "", "tokenType", "user", "Lcom/laborbook/auth/model/request/User;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/auth/model/request/User;)V", "getAuthToken", "()Ljava/lang/String;", "getTokenType", "getUser", "()Lcom/laborbook/auth/model/request/User;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class AuthResponse {

    @SerializedName("auth_token")
    private final String authToken;

    @SerializedName("token_type")
    private final String tokenType;

    @SerializedName("user")
    private final User user;

    public static /* synthetic */ AuthResponse copy$default(AuthResponse authResponse, String str, String str2, User user, int i, Object obj) {
        if ((i & 1) != 0) {
            str = authResponse.authToken;
        }
        if ((i & 2) != 0) {
            str2 = authResponse.tokenType;
        }
        if ((i & 4) != 0) {
            user = authResponse.user;
        }
        return authResponse.copy(str, str2, user);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAuthToken() {
        return this.authToken;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTokenType() {
        return this.tokenType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final User getUser() {
        return this.user;
    }

    public final AuthResponse copy(String authToken, String tokenType, User user) {
        return new AuthResponse(authToken, tokenType, user);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AuthResponse)) {
            return false;
        }
        AuthResponse authResponse = (AuthResponse) other;
        return Intrinsics.areEqual(this.authToken, authResponse.authToken) && Intrinsics.areEqual(this.tokenType, authResponse.tokenType) && Intrinsics.areEqual(this.user, authResponse.user);
    }

    public int hashCode() {
        String str = this.authToken;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.tokenType;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        User user = this.user;
        return iHashCode2 + (user != null ? user.hashCode() : 0);
    }

    public String toString() {
        return "AuthResponse(authToken=" + this.authToken + ", tokenType=" + this.tokenType + ", user=" + this.user + ')';
    }

    public AuthResponse(String str, String str2, User user) {
        this.authToken = str;
        this.tokenType = str2;
        this.user = user;
    }

    public final String getAuthToken() {
        return this.authToken;
    }

    public final String getTokenType() {
        return this.tokenType;
    }

    public final User getUser() {
        return this.user;
    }
}

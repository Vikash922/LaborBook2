package com.boilerplate.network.auth.model;

import com.boilerplate.network.utils.NetworkConstants;
import com.facebook.AccessToken;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003JV\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0012\u0010\u0010R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0013\u0010\u0010R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\r¨\u0006$"}, m2722d2 = {"Lcom/boilerplate/network/auth/model/FixToken;", "Ljava/io/Serializable;", "accessToken", "", "refreshToken", "expiresIn", "", "refreshExpiresIn", "notBeforePolicy", "tokenType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V", "getAccessToken", "()Ljava/lang/String;", "getRefreshToken", "getExpiresIn", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getRefreshExpiresIn", "getNotBeforePolicy", "getTokenType", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/boilerplate/network/auth/model/FixToken;", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class FixToken implements Serializable {

    @SerializedName("access_token")
    private final String accessToken;

    @SerializedName(AccessToken.EXPIRES_IN_KEY)
    private final Long expiresIn;

    @SerializedName("not_before_policy")
    private final Long notBeforePolicy;

    @SerializedName("refresh_expires_in")
    private final Long refreshExpiresIn;

    @SerializedName(NetworkConstants.REFRESH_TOKEN)
    private final String refreshToken;

    @SerializedName("token_type")
    private final String tokenType;

    public FixToken(String str, String str2, Long l, Long l2, Long l3, String str3) {
        this.accessToken = str;
        this.refreshToken = str2;
        this.expiresIn = l;
        this.refreshExpiresIn = l2;
        this.notBeforePolicy = l3;
        this.tokenType = str3;
    }

    public static /* synthetic */ FixToken copy$default(FixToken fixToken, String str, String str2, Long l, Long l2, Long l3, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = fixToken.accessToken;
        }
        if ((i & 2) != 0) {
            str2 = fixToken.refreshToken;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            l = fixToken.expiresIn;
        }
        Long l4 = l;
        if ((i & 8) != 0) {
            l2 = fixToken.refreshExpiresIn;
        }
        Long l5 = l2;
        if ((i & 16) != 0) {
            l3 = fixToken.notBeforePolicy;
        }
        Long l6 = l3;
        if ((i & 32) != 0) {
            str3 = fixToken.tokenType;
        }
        return fixToken.copy(str, str4, l4, l5, l6, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAccessToken() {
        return this.accessToken;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getRefreshToken() {
        return this.refreshToken;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Long getExpiresIn() {
        return this.expiresIn;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Long getRefreshExpiresIn() {
        return this.refreshExpiresIn;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getNotBeforePolicy() {
        return this.notBeforePolicy;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTokenType() {
        return this.tokenType;
    }

    public final FixToken copy(String accessToken, String refreshToken, Long expiresIn, Long refreshExpiresIn, Long notBeforePolicy, String tokenType) {
        return new FixToken(accessToken, refreshToken, expiresIn, refreshExpiresIn, notBeforePolicy, tokenType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FixToken)) {
            return false;
        }
        FixToken fixToken = (FixToken) other;
        return Intrinsics.areEqual(this.accessToken, fixToken.accessToken) && Intrinsics.areEqual(this.refreshToken, fixToken.refreshToken) && Intrinsics.areEqual(this.expiresIn, fixToken.expiresIn) && Intrinsics.areEqual(this.refreshExpiresIn, fixToken.refreshExpiresIn) && Intrinsics.areEqual(this.notBeforePolicy, fixToken.notBeforePolicy) && Intrinsics.areEqual(this.tokenType, fixToken.tokenType);
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final Long getExpiresIn() {
        return this.expiresIn;
    }

    public final Long getNotBeforePolicy() {
        return this.notBeforePolicy;
    }

    public final Long getRefreshExpiresIn() {
        return this.refreshExpiresIn;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final String getTokenType() {
        return this.tokenType;
    }

    public int hashCode() {
        String str = this.accessToken;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.refreshToken;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.expiresIn;
        int iHashCode3 = (iHashCode2 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.refreshExpiresIn;
        int iHashCode4 = (iHashCode3 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.notBeforePolicy;
        int iHashCode5 = (iHashCode4 + (l3 == null ? 0 : l3.hashCode())) * 31;
        String str3 = this.tokenType;
        return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "FixToken(accessToken=" + this.accessToken + ", refreshToken=" + this.refreshToken + ", expiresIn=" + this.expiresIn + ", refreshExpiresIn=" + this.refreshExpiresIn + ", notBeforePolicy=" + this.notBeforePolicy + ", tokenType=" + this.tokenType + ')';
    }
}

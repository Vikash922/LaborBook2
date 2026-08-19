package com.boilerplate.network.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012$\b\u0002\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\nj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\t¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J*\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\nj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\tHÆ\u0003¢\u0006\u0002\u0010\u001aJf\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032$\b\u0002\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\nj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\tHÆ\u0001¢\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020*HÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R8\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\nj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006,"}, m2722d2 = {"Lcom/boilerplate/network/model/APIHeaders;", "", "deviceId", "", "systemId", RemoteConfigConstants.RequestFieldKey.APP_VERSION, "accessToken", "userId", "additionalHeaders", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V", "getDeviceId", "()Ljava/lang/String;", "setDeviceId", "(Ljava/lang/String;)V", "getSystemId", "setSystemId", "getAppVersion", "setAppVersion", "getAccessToken", "setAccessToken", "getUserId", "setUserId", "getAdditionalHeaders", "()Ljava/util/HashMap;", "setAdditionalHeaders", "(Ljava/util/HashMap;)V", "Ljava/util/HashMap;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/boilerplate/network/model/APIHeaders;", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class APIHeaders {
    private String accessToken;
    private HashMap<String, String> additionalHeaders;
    private String appVersion;
    private String deviceId;
    private String systemId;
    private String userId;

    public APIHeaders(String deviceId, String systemId, String appVersion, String accessToken, String userId, HashMap<String, String> additionalHeaders) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(systemId, "systemId");
        Intrinsics.checkNotNullParameter(appVersion, "appVersion");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(additionalHeaders, "additionalHeaders");
        this.deviceId = deviceId;
        this.systemId = systemId;
        this.appVersion = appVersion;
        this.accessToken = accessToken;
        this.userId = userId;
        this.additionalHeaders = additionalHeaders;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ APIHeaders copy$default(APIHeaders aPIHeaders, String str, String str2, String str3, String str4, String str5, HashMap map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = aPIHeaders.deviceId;
        }
        if ((i & 2) != 0) {
            str2 = aPIHeaders.systemId;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = aPIHeaders.appVersion;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = aPIHeaders.accessToken;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = aPIHeaders.userId;
        }
        String str9 = str5;
        if ((i & 32) != 0) {
            map = aPIHeaders.additionalHeaders;
        }
        return aPIHeaders.copy(str, str6, str7, str8, str9, map);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDeviceId() {
        return this.deviceId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSystemId() {
        return this.systemId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAppVersion() {
        return this.appVersion;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getAccessToken() {
        return this.accessToken;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    public final HashMap<String, String> component6() {
        return this.additionalHeaders;
    }

    public final APIHeaders copy(String deviceId, String systemId, String appVersion, String accessToken, String userId, HashMap<String, String> additionalHeaders) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(systemId, "systemId");
        Intrinsics.checkNotNullParameter(appVersion, "appVersion");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(additionalHeaders, "additionalHeaders");
        return new APIHeaders(deviceId, systemId, appVersion, accessToken, userId, additionalHeaders);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof APIHeaders)) {
            return false;
        }
        APIHeaders aPIHeaders = (APIHeaders) other;
        return Intrinsics.areEqual(this.deviceId, aPIHeaders.deviceId) && Intrinsics.areEqual(this.systemId, aPIHeaders.systemId) && Intrinsics.areEqual(this.appVersion, aPIHeaders.appVersion) && Intrinsics.areEqual(this.accessToken, aPIHeaders.accessToken) && Intrinsics.areEqual(this.userId, aPIHeaders.userId) && Intrinsics.areEqual(this.additionalHeaders, aPIHeaders.additionalHeaders);
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final HashMap<String, String> getAdditionalHeaders() {
        return this.additionalHeaders;
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final String getSystemId() {
        return this.systemId;
    }

    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return this.additionalHeaders.hashCode() + ((this.userId.hashCode() + ((this.accessToken.hashCode() + ((this.appVersion.hashCode() + ((this.systemId.hashCode() + (this.deviceId.hashCode() * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final void setAccessToken(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.accessToken = str;
    }

    public final void setAdditionalHeaders(HashMap<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.additionalHeaders = map;
    }

    public final void setAppVersion(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.appVersion = str;
    }

    public final void setDeviceId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.deviceId = str;
    }

    public final void setSystemId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.systemId = str;
    }

    public final void setUserId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    public String toString() {
        return "APIHeaders(deviceId=" + this.deviceId + ", systemId=" + this.systemId + ", appVersion=" + this.appVersion + ", accessToken=" + this.accessToken + ", userId=" + this.userId + ", additionalHeaders=" + this.additionalHeaders + ')';
    }

    public /* synthetic */ APIHeaders(String str, String str2, String str3, String str4, String str5, HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? new HashMap() : map);
    }
}

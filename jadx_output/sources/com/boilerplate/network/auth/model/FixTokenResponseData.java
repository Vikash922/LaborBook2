package com.boilerplate.network.auth.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/boilerplate/network/auth/model/FixTokenResponseData;", "", "data", "Lcom/boilerplate/network/auth/model/FixTokenResponse;", "<init>", "(Lcom/boilerplate/network/auth/model/FixTokenResponse;)V", "getData", "()Lcom/boilerplate/network/auth/model/FixTokenResponse;", "component1", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class FixTokenResponseData {
    private final FixTokenResponse data;

    public FixTokenResponseData(FixTokenResponse fixTokenResponse) {
        this.data = fixTokenResponse;
    }

    public static /* synthetic */ FixTokenResponseData copy$default(FixTokenResponseData fixTokenResponseData, FixTokenResponse fixTokenResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            fixTokenResponse = fixTokenResponseData.data;
        }
        return fixTokenResponseData.copy(fixTokenResponse);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final FixTokenResponse getData() {
        return this.data;
    }

    public final FixTokenResponseData copy(FixTokenResponse data) {
        return new FixTokenResponseData(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof FixTokenResponseData) && Intrinsics.areEqual(this.data, ((FixTokenResponseData) other).data);
    }

    public final FixTokenResponse getData() {
        return this.data;
    }

    public int hashCode() {
        FixTokenResponse fixTokenResponse = this.data;
        if (fixTokenResponse == null) {
            return 0;
        }
        return fixTokenResponse.hashCode();
    }

    public String toString() {
        return "FixTokenResponseData(data=" + this.data + ')';
    }
}

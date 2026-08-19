package com.rebuilt.app.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetUserResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J;\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001c"}, m2722d2 = {"Lcom/laborbook/keep/model/GetUserResponse;", "", "id", "", "name", "mobileNumber", "companyId", "userType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "getMobileNumber", "getCompanyId", "getUserType", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class GetUserResponse {

    @SerializedName("company_id")
    private final String companyId;
    private final String id;

    @SerializedName("mobile_number")
    private final String mobileNumber;
    private final String name;

    @SerializedName(ConstantEventAttributes.USER_TYPE)
    private final String userType;

    public static /* synthetic */ GetUserResponse copy$default(GetUserResponse getUserResponse, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getUserResponse.id;
        }
        if ((i & 2) != 0) {
            str2 = getUserResponse.name;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = getUserResponse.mobileNumber;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = getUserResponse.companyId;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = getUserResponse.userType;
        }
        return getUserResponse.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMobileNumber() {
        return this.mobileNumber;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCompanyId() {
        return this.companyId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUserType() {
        return this.userType;
    }

    public final GetUserResponse copy(String id, String name, String mobileNumber, String companyId, String userType) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        Intrinsics.checkNotNullParameter(companyId, "companyId");
        Intrinsics.checkNotNullParameter(userType, "userType");
        return new GetUserResponse(id, name, mobileNumber, companyId, userType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GetUserResponse)) {
            return false;
        }
        GetUserResponse getUserResponse = (GetUserResponse) other;
        return Intrinsics.areEqual(this.id, getUserResponse.id) && Intrinsics.areEqual(this.name, getUserResponse.name) && Intrinsics.areEqual(this.mobileNumber, getUserResponse.mobileNumber) && Intrinsics.areEqual(this.companyId, getUserResponse.companyId) && Intrinsics.areEqual(this.userType, getUserResponse.userType);
    }

    public int hashCode() {
        return (((((((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.mobileNumber.hashCode()) * 31) + this.companyId.hashCode()) * 31) + this.userType.hashCode();
    }

    public String toString() {
        return "GetUserResponse(id=" + this.id + ", name=" + this.name + ", mobileNumber=" + this.mobileNumber + ", companyId=" + this.companyId + ", userType=" + this.userType + ')';
    }

    public GetUserResponse(String id, String name, String mobileNumber, String companyId, String userType) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        Intrinsics.checkNotNullParameter(companyId, "companyId");
        Intrinsics.checkNotNullParameter(userType, "userType");
        this.id = id;
        this.name = name;
        this.mobileNumber = mobileNumber;
        this.companyId = companyId;
        this.userType = userType;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getMobileNumber() {
        return this.mobileNumber;
    }

    public final String getCompanyId() {
        return this.companyId;
    }

    public final String getUserType() {
        return this.userType;
    }
}

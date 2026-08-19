package com.laborbook.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AddStaffUsersRequestBody.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0019"}, m2722d2 = {"Lcom/laborbook/keep/model/AddStaffUserResponse;", "", "id", "", "name", "mobileNumber", "createdBy", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "getMobileNumber", "getCreatedBy", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class AddStaffUserResponse {

    @SerializedName("created_by")
    private final String createdBy;
    private final String id;

    @SerializedName("mobile_number")
    private final String mobileNumber;
    private final String name;

    public static /* synthetic */ AddStaffUserResponse copy$default(AddStaffUserResponse addStaffUserResponse, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = addStaffUserResponse.id;
        }
        if ((i & 2) != 0) {
            str2 = addStaffUserResponse.name;
        }
        if ((i & 4) != 0) {
            str3 = addStaffUserResponse.mobileNumber;
        }
        if ((i & 8) != 0) {
            str4 = addStaffUserResponse.createdBy;
        }
        return addStaffUserResponse.copy(str, str2, str3, str4);
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
    public final String getCreatedBy() {
        return this.createdBy;
    }

    public final AddStaffUserResponse copy(String id, String name, String mobileNumber, String createdBy) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        Intrinsics.checkNotNullParameter(createdBy, "createdBy");
        return new AddStaffUserResponse(id, name, mobileNumber, createdBy);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AddStaffUserResponse)) {
            return false;
        }
        AddStaffUserResponse addStaffUserResponse = (AddStaffUserResponse) other;
        return Intrinsics.areEqual(this.id, addStaffUserResponse.id) && Intrinsics.areEqual(this.name, addStaffUserResponse.name) && Intrinsics.areEqual(this.mobileNumber, addStaffUserResponse.mobileNumber) && Intrinsics.areEqual(this.createdBy, addStaffUserResponse.createdBy);
    }

    public int hashCode() {
        return (((((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.mobileNumber.hashCode()) * 31) + this.createdBy.hashCode();
    }

    public String toString() {
        return "AddStaffUserResponse(id=" + this.id + ", name=" + this.name + ", mobileNumber=" + this.mobileNumber + ", createdBy=" + this.createdBy + ')';
    }

    public AddStaffUserResponse(String id, String name, String mobileNumber, String createdBy) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        Intrinsics.checkNotNullParameter(createdBy, "createdBy");
        this.id = id;
        this.name = name;
        this.mobileNumber = mobileNumber;
        this.createdBy = createdBy;
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

    public final String getCreatedBy() {
        return this.createdBy;
    }
}

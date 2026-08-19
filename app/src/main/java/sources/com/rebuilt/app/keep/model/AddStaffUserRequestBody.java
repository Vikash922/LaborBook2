package com.rebuilt.app.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AddStaffUsersRequestBody.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/keep/model/AddStaffUserRequestBody;", "", "name", "", "mobileNumber", "createdBy", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getMobileNumber", "getCreatedBy", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class AddStaffUserRequestBody {

    @SerializedName("created_by")
    private final String createdBy;

    @SerializedName("mobile_number")
    private final String mobileNumber;
    private final String name;

    public static /* synthetic */ AddStaffUserRequestBody copy$default(AddStaffUserRequestBody addStaffUserRequestBody, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = addStaffUserRequestBody.name;
        }
        if ((i & 2) != 0) {
            str2 = addStaffUserRequestBody.mobileNumber;
        }
        if ((i & 4) != 0) {
            str3 = addStaffUserRequestBody.createdBy;
        }
        return addStaffUserRequestBody.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMobileNumber() {
        return this.mobileNumber;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCreatedBy() {
        return this.createdBy;
    }

    public final AddStaffUserRequestBody copy(String name, String mobileNumber, String createdBy) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        Intrinsics.checkNotNullParameter(createdBy, "createdBy");
        return new AddStaffUserRequestBody(name, mobileNumber, createdBy);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AddStaffUserRequestBody)) {
            return false;
        }
        AddStaffUserRequestBody addStaffUserRequestBody = (AddStaffUserRequestBody) other;
        return Intrinsics.areEqual(this.name, addStaffUserRequestBody.name) && Intrinsics.areEqual(this.mobileNumber, addStaffUserRequestBody.mobileNumber) && Intrinsics.areEqual(this.createdBy, addStaffUserRequestBody.createdBy);
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.mobileNumber.hashCode()) * 31) + this.createdBy.hashCode();
    }

    public String toString() {
        return "AddStaffUserRequestBody(name=" + this.name + ", mobileNumber=" + this.mobileNumber + ", createdBy=" + this.createdBy + ')';
    }

    public AddStaffUserRequestBody(String name, String mobileNumber, String createdBy) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        Intrinsics.checkNotNullParameter(createdBy, "createdBy");
        this.name = name;
        this.mobileNumber = mobileNumber;
        this.createdBy = createdBy;
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

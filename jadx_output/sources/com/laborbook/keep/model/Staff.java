package com.laborbook.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import com.laborbook.base.analytics.ConstantEventAttributes;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AddStaffUsersRequestBody.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/keep/model/Staff;", "", "name", "", "mobileNumber", "userType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getMobileNumber", "getUserType", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class Staff {

    @SerializedName("mobile_number")
    private final String mobileNumber;
    private final String name;

    @SerializedName(ConstantEventAttributes.USER_TYPE)
    private final String userType;

    public static /* synthetic */ Staff copy$default(Staff staff, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = staff.name;
        }
        if ((i & 2) != 0) {
            str2 = staff.mobileNumber;
        }
        if ((i & 4) != 0) {
            str3 = staff.userType;
        }
        return staff.copy(str, str2, str3);
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
    public final String getUserType() {
        return this.userType;
    }

    public final Staff copy(String name, String mobileNumber, String userType) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        Intrinsics.checkNotNullParameter(userType, "userType");
        return new Staff(name, mobileNumber, userType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Staff)) {
            return false;
        }
        Staff staff = (Staff) other;
        return Intrinsics.areEqual(this.name, staff.name) && Intrinsics.areEqual(this.mobileNumber, staff.mobileNumber) && Intrinsics.areEqual(this.userType, staff.userType);
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.mobileNumber.hashCode()) * 31) + this.userType.hashCode();
    }

    public String toString() {
        return "Staff(name=" + this.name + ", mobileNumber=" + this.mobileNumber + ", userType=" + this.userType + ')';
    }

    public Staff(String name, String mobileNumber, String userType) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        Intrinsics.checkNotNullParameter(userType, "userType");
        this.name = name;
        this.mobileNumber = mobileNumber;
        this.userType = userType;
    }

    public final String getName() {
        return this.name;
    }

    public final String getMobileNumber() {
        return this.mobileNumber;
    }

    public final String getUserType() {
        return this.userType;
    }

    public /* synthetic */ Staff(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? "STAFF" : str3);
    }
}

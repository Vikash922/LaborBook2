package com.laborbook.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AddStaffUsersRequestBody.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0006HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/keep/model/AddStaffUsersRequestBody;", "", "users", "", "Lcom/laborbook/keep/model/Staff;", "createdBy", "", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "getUsers", "()Ljava/util/List;", "getCreatedBy", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class AddStaffUsersRequestBody {

    @SerializedName("created_by")
    private final String createdBy;
    private final List<Staff> users;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AddStaffUsersRequestBody copy$default(AddStaffUsersRequestBody addStaffUsersRequestBody, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = addStaffUsersRequestBody.users;
        }
        if ((i & 2) != 0) {
            str = addStaffUsersRequestBody.createdBy;
        }
        return addStaffUsersRequestBody.copy(list, str);
    }

    public final List<Staff> component1() {
        return this.users;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCreatedBy() {
        return this.createdBy;
    }

    public final AddStaffUsersRequestBody copy(List<Staff> users, String createdBy) {
        Intrinsics.checkNotNullParameter(users, "users");
        Intrinsics.checkNotNullParameter(createdBy, "createdBy");
        return new AddStaffUsersRequestBody(users, createdBy);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AddStaffUsersRequestBody)) {
            return false;
        }
        AddStaffUsersRequestBody addStaffUsersRequestBody = (AddStaffUsersRequestBody) other;
        return Intrinsics.areEqual(this.users, addStaffUsersRequestBody.users) && Intrinsics.areEqual(this.createdBy, addStaffUsersRequestBody.createdBy);
    }

    public int hashCode() {
        return (this.users.hashCode() * 31) + this.createdBy.hashCode();
    }

    public String toString() {
        return "AddStaffUsersRequestBody(users=" + this.users + ", createdBy=" + this.createdBy + ')';
    }

    public AddStaffUsersRequestBody(List<Staff> users, String createdBy) {
        Intrinsics.checkNotNullParameter(users, "users");
        Intrinsics.checkNotNullParameter(createdBy, "createdBy");
        this.users = users;
        this.createdBy = createdBy;
    }

    public final List<Staff> getUsers() {
        return this.users;
    }

    public final String getCreatedBy() {
        return this.createdBy;
    }
}

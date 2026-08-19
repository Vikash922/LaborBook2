package com.rebuilt.app.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MarkBulkAttendanceRequestBody.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0006HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/keep/model/MarkBulkAttendanceResponse;", "", "attendances", "", "Lcom/laborbook/keep/model/AttendanceItem;", "managerId", "", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "getAttendances", "()Ljava/util/List;", "getManagerId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class MarkBulkAttendanceResponse {
    private final List<AttendanceItem> attendances;

    @SerializedName("manager_id")
    private final String managerId;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MarkBulkAttendanceResponse copy$default(MarkBulkAttendanceResponse markBulkAttendanceResponse, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = markBulkAttendanceResponse.attendances;
        }
        if ((i & 2) != 0) {
            str = markBulkAttendanceResponse.managerId;
        }
        return markBulkAttendanceResponse.copy(list, str);
    }

    public final List<AttendanceItem> component1() {
        return this.attendances;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getManagerId() {
        return this.managerId;
    }

    public final MarkBulkAttendanceResponse copy(List<AttendanceItem> attendances, String managerId) {
        Intrinsics.checkNotNullParameter(attendances, "attendances");
        Intrinsics.checkNotNullParameter(managerId, "managerId");
        return new MarkBulkAttendanceResponse(attendances, managerId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MarkBulkAttendanceResponse)) {
            return false;
        }
        MarkBulkAttendanceResponse markBulkAttendanceResponse = (MarkBulkAttendanceResponse) other;
        return Intrinsics.areEqual(this.attendances, markBulkAttendanceResponse.attendances) && Intrinsics.areEqual(this.managerId, markBulkAttendanceResponse.managerId);
    }

    public int hashCode() {
        return (this.attendances.hashCode() * 31) + this.managerId.hashCode();
    }

    public String toString() {
        return "MarkBulkAttendanceResponse(attendances=" + this.attendances + ", managerId=" + this.managerId + ')';
    }

    public MarkBulkAttendanceResponse(List<AttendanceItem> attendances, String managerId) {
        Intrinsics.checkNotNullParameter(attendances, "attendances");
        Intrinsics.checkNotNullParameter(managerId, "managerId");
        this.attendances = attendances;
        this.managerId = managerId;
    }

    public final List<AttendanceItem> getAttendances() {
        return this.attendances;
    }

    public final String getManagerId() {
        return this.managerId;
    }
}

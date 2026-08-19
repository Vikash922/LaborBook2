package com.laborbook.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MarkBulkAttendanceRequestBody.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, m2722d2 = {"Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;", "", "attendance", "Lcom/laborbook/keep/model/AttendanceItem;", "managerId", "", "<init>", "(Lcom/laborbook/keep/model/AttendanceItem;Ljava/lang/String;)V", "getAttendance", "()Lcom/laborbook/keep/model/AttendanceItem;", "getManagerId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class MarkSingleAttendanceRequestBody {
    private final AttendanceItem attendance;

    @SerializedName("manager_id")
    private final String managerId;

    public static /* synthetic */ MarkSingleAttendanceRequestBody copy$default(MarkSingleAttendanceRequestBody markSingleAttendanceRequestBody, AttendanceItem attendanceItem, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            attendanceItem = markSingleAttendanceRequestBody.attendance;
        }
        if ((i & 2) != 0) {
            str = markSingleAttendanceRequestBody.managerId;
        }
        return markSingleAttendanceRequestBody.copy(attendanceItem, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AttendanceItem getAttendance() {
        return this.attendance;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getManagerId() {
        return this.managerId;
    }

    public final MarkSingleAttendanceRequestBody copy(AttendanceItem attendance, String managerId) {
        Intrinsics.checkNotNullParameter(attendance, "attendance");
        Intrinsics.checkNotNullParameter(managerId, "managerId");
        return new MarkSingleAttendanceRequestBody(attendance, managerId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MarkSingleAttendanceRequestBody)) {
            return false;
        }
        MarkSingleAttendanceRequestBody markSingleAttendanceRequestBody = (MarkSingleAttendanceRequestBody) other;
        return Intrinsics.areEqual(this.attendance, markSingleAttendanceRequestBody.attendance) && Intrinsics.areEqual(this.managerId, markSingleAttendanceRequestBody.managerId);
    }

    public int hashCode() {
        return (this.attendance.hashCode() * 31) + this.managerId.hashCode();
    }

    public String toString() {
        return "MarkSingleAttendanceRequestBody(attendance=" + this.attendance + ", managerId=" + this.managerId + ')';
    }

    public MarkSingleAttendanceRequestBody(AttendanceItem attendance, String managerId) {
        Intrinsics.checkNotNullParameter(attendance, "attendance");
        Intrinsics.checkNotNullParameter(managerId, "managerId");
        this.attendance = attendance;
        this.managerId = managerId;
    }

    public final AttendanceItem getAttendance() {
        return this.attendance;
    }

    public final String getManagerId() {
        return this.managerId;
    }
}

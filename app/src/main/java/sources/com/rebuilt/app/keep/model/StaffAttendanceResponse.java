package com.rebuilt.app.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StaffAttendanceResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, m2722d2 = {"Lcom/laborbook/keep/model/StaffAttendanceResponse;", "", "user", "Lcom/laborbook/keep/model/AttendanceUser;", "attendance", "", "Lcom/laborbook/keep/model/CalendarItem;", "<init>", "(Lcom/laborbook/keep/model/AttendanceUser;Ljava/util/List;)V", "getUser", "()Lcom/laborbook/keep/model/AttendanceUser;", "getAttendance", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class StaffAttendanceResponse {
    private final List<CalendarItem> attendance;
    private final AttendanceUser user;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StaffAttendanceResponse copy$default(StaffAttendanceResponse staffAttendanceResponse, AttendanceUser attendanceUser, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            attendanceUser = staffAttendanceResponse.user;
        }
        if ((i & 2) != 0) {
            list = staffAttendanceResponse.attendance;
        }
        return staffAttendanceResponse.copy(attendanceUser, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AttendanceUser getUser() {
        return this.user;
    }

    public final List<CalendarItem> component2() {
        return this.attendance;
    }

    public final StaffAttendanceResponse copy(AttendanceUser user, List<CalendarItem> attendance) {
        return new StaffAttendanceResponse(user, attendance);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StaffAttendanceResponse)) {
            return false;
        }
        StaffAttendanceResponse staffAttendanceResponse = (StaffAttendanceResponse) other;
        return Intrinsics.areEqual(this.user, staffAttendanceResponse.user) && Intrinsics.areEqual(this.attendance, staffAttendanceResponse.attendance);
    }

    public int hashCode() {
        AttendanceUser attendanceUser = this.user;
        int iHashCode = (attendanceUser == null ? 0 : attendanceUser.hashCode()) * 31;
        List<CalendarItem> list = this.attendance;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "StaffAttendanceResponse(user=" + this.user + ", attendance=" + this.attendance + ')';
    }

    public StaffAttendanceResponse(AttendanceUser attendanceUser, List<CalendarItem> list) {
        this.user = attendanceUser;
        this.attendance = list;
    }

    public final List<CalendarItem> getAttendance() {
        return this.attendance;
    }

    public final AttendanceUser getUser() {
        return this.user;
    }
}

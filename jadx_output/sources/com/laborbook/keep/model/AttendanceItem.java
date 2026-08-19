package com.laborbook.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MarkBulkAttendanceRequestBody.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\rJ2\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, m2722d2 = {"Lcom/laborbook/keep/model/AttendanceItem;", "", "attendanceDate", "", "attendanceStatus", "advance", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getAttendanceDate", "()Ljava/lang/String;", "getAttendanceStatus", "getAdvance", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/laborbook/keep/model/AttendanceItem;", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class AttendanceItem {

    @SerializedName("advance")
    private final Integer advance;

    @SerializedName("attendance_date")
    private final String attendanceDate;

    @SerializedName("attendance_status")
    private final String attendanceStatus;

    public AttendanceItem() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ AttendanceItem copy$default(AttendanceItem attendanceItem, String str, String str2, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            str = attendanceItem.attendanceDate;
        }
        if ((i & 2) != 0) {
            str2 = attendanceItem.attendanceStatus;
        }
        if ((i & 4) != 0) {
            num = attendanceItem.advance;
        }
        return attendanceItem.copy(str, str2, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAttendanceDate() {
        return this.attendanceDate;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAttendanceStatus() {
        return this.attendanceStatus;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getAdvance() {
        return this.advance;
    }

    public final AttendanceItem copy(String attendanceDate, String attendanceStatus, Integer advance) {
        return new AttendanceItem(attendanceDate, attendanceStatus, advance);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AttendanceItem)) {
            return false;
        }
        AttendanceItem attendanceItem = (AttendanceItem) other;
        return Intrinsics.areEqual(this.attendanceDate, attendanceItem.attendanceDate) && Intrinsics.areEqual(this.attendanceStatus, attendanceItem.attendanceStatus) && Intrinsics.areEqual(this.advance, attendanceItem.advance);
    }

    public int hashCode() {
        String str = this.attendanceDate;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.attendanceStatus;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.advance;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "AttendanceItem(attendanceDate=" + this.attendanceDate + ", attendanceStatus=" + this.attendanceStatus + ", advance=" + this.advance + ')';
    }

    public AttendanceItem(String str, String str2, Integer num) {
        this.attendanceDate = str;
        this.attendanceStatus = str2;
        this.advance = num;
    }

    public final String getAttendanceDate() {
        return this.attendanceDate;
    }

    public /* synthetic */ AttendanceItem(String str, String str2, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : num);
    }

    public final String getAttendanceStatus() {
        return this.attendanceStatus;
    }

    public final Integer getAdvance() {
        return this.advance;
    }
}

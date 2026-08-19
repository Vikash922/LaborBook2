package com.laborbook.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StaffAttendanceResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b/\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010#J\u0010\u00106\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010#J\u0010\u00107\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010#J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0094\u0001\u00109\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010:J\u0013\u0010;\u001a\u00020<2\b\u0010=\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010>\u001a\u00020?HÖ\u0001J\t\u0010@\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0013R \u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0013\"\u0004\b\u001d\u0010\u0015R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R \u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0013\"\u0004\b!\u0010\u0015R\"\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b'\u0010#\"\u0004\b(\u0010%R\"\u0010\u000e\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b)\u0010#\"\u0004\b*\u0010%R \u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0013\"\u0004\b,\u0010\u0015¨\u0006A"}, m2722d2 = {"Lcom/laborbook/keep/model/CalendarItem;", "", "id", "", "month", "year", "date", "day", "attendanceStatus", "advance", "reason", "otMinutes", "", "otPerHour", "otTotalAmount", "advancePaymentMethod", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getMonth", "setMonth", "getYear", "setYear", "getDate", "getDay", "getAttendanceStatus", "setAttendanceStatus", "getAdvance", "setAdvance", "getReason", "setReason", "getOtMinutes", "()Ljava/lang/Double;", "setOtMinutes", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getOtPerHour", "setOtPerHour", "getOtTotalAmount", "setOtTotalAmount", "getAdvancePaymentMethod", "setAdvancePaymentMethod", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/laborbook/keep/model/CalendarItem;", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class CalendarItem {
    private String advance;

    @SerializedName("advance_payment_method")
    private String advancePaymentMethod;

    @SerializedName("attendance_status")
    private String attendanceStatus;
    private final String date;
    private final String day;
    private String id;
    private String month;

    @SerializedName("ot_minutes")
    private Double otMinutes;

    @SerializedName("ot_per_hour")
    private Double otPerHour;

    @SerializedName("ot_total_amount")
    private Double otTotalAmount;

    @SerializedName("advance_reason")
    private String reason;
    private String year;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Double getOtPerHour() {
        return this.otPerHour;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Double getOtTotalAmount() {
        return this.otTotalAmount;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getAdvancePaymentMethod() {
        return this.advancePaymentMethod;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMonth() {
        return this.month;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getYear() {
        return this.year;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDay() {
        return this.day;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getAttendanceStatus() {
        return this.attendanceStatus;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getAdvance() {
        return this.advance;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getReason() {
        return this.reason;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Double getOtMinutes() {
        return this.otMinutes;
    }

    public final CalendarItem copy(String id, String month, String year, String date, String day, String attendanceStatus, String advance, String reason, Double otMinutes, Double otPerHour, Double otTotalAmount, String advancePaymentMethod) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(month, "month");
        Intrinsics.checkNotNullParameter(year, "year");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(day, "day");
        return new CalendarItem(id, month, year, date, day, attendanceStatus, advance, reason, otMinutes, otPerHour, otTotalAmount, advancePaymentMethod);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CalendarItem)) {
            return false;
        }
        CalendarItem calendarItem = (CalendarItem) other;
        return Intrinsics.areEqual(this.id, calendarItem.id) && Intrinsics.areEqual(this.month, calendarItem.month) && Intrinsics.areEqual(this.year, calendarItem.year) && Intrinsics.areEqual(this.date, calendarItem.date) && Intrinsics.areEqual(this.day, calendarItem.day) && Intrinsics.areEqual(this.attendanceStatus, calendarItem.attendanceStatus) && Intrinsics.areEqual(this.advance, calendarItem.advance) && Intrinsics.areEqual(this.reason, calendarItem.reason) && Intrinsics.areEqual((Object) this.otMinutes, (Object) calendarItem.otMinutes) && Intrinsics.areEqual((Object) this.otPerHour, (Object) calendarItem.otPerHour) && Intrinsics.areEqual((Object) this.otTotalAmount, (Object) calendarItem.otTotalAmount) && Intrinsics.areEqual(this.advancePaymentMethod, calendarItem.advancePaymentMethod);
    }

    public int hashCode() {
        int iHashCode = ((((((((this.id.hashCode() * 31) + this.month.hashCode()) * 31) + this.year.hashCode()) * 31) + this.date.hashCode()) * 31) + this.day.hashCode()) * 31;
        String str = this.attendanceStatus;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.advance;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.reason;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Double d = this.otMinutes;
        int iHashCode5 = (iHashCode4 + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.otPerHour;
        int iHashCode6 = (iHashCode5 + (d2 == null ? 0 : d2.hashCode())) * 31;
        Double d3 = this.otTotalAmount;
        int iHashCode7 = (iHashCode6 + (d3 == null ? 0 : d3.hashCode())) * 31;
        String str4 = this.advancePaymentMethod;
        return iHashCode7 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CalendarItem(id=");
        sb.append(this.id).append(", month=").append(this.month).append(", year=").append(this.year).append(", date=").append(this.date).append(", day=").append(this.day).append(", attendanceStatus=").append(this.attendanceStatus).append(", advance=").append(this.advance).append(", reason=").append(this.reason).append(", otMinutes=").append(this.otMinutes).append(", otPerHour=").append(this.otPerHour).append(", otTotalAmount=").append(this.otTotalAmount).append(", advancePaymentMethod=");
        sb.append(this.advancePaymentMethod).append(')');
        return sb.toString();
    }

    public CalendarItem(String id, String month, String year, String date, String day, String str, String str2, String str3, Double d, Double d2, Double d3, String str4) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(month, "month");
        Intrinsics.checkNotNullParameter(year, "year");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(day, "day");
        this.id = id;
        this.month = month;
        this.year = year;
        this.date = date;
        this.day = day;
        this.attendanceStatus = str;
        this.advance = str2;
        this.reason = str3;
        this.otMinutes = d;
        this.otPerHour = d2;
        this.otTotalAmount = d3;
        this.advancePaymentMethod = str4;
    }

    public /* synthetic */ CalendarItem(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Double d, Double d2, Double d3, String str9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? "" : str7, (i & 128) != 0 ? "" : str8, (i & 256) != 0 ? Double.valueOf(0.0d) : d, (i & 512) != 0 ? Double.valueOf(0.0d) : d2, (i & 1024) != 0 ? Double.valueOf(0.0d) : d3, (i & 2048) != 0 ? null : str9);
    }

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final String getMonth() {
        return this.month;
    }

    public final void setMonth(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.month = str;
    }

    public final String getYear() {
        return this.year;
    }

    public final void setYear(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.year = str;
    }

    public final String getDate() {
        return this.date;
    }

    public final String getDay() {
        return this.day;
    }

    public final String getAttendanceStatus() {
        return this.attendanceStatus;
    }

    public final void setAttendanceStatus(String str) {
        this.attendanceStatus = str;
    }

    public final String getAdvance() {
        return this.advance;
    }

    public final void setAdvance(String str) {
        this.advance = str;
    }

    public final String getReason() {
        return this.reason;
    }

    public final void setReason(String str) {
        this.reason = str;
    }

    public final Double getOtMinutes() {
        return this.otMinutes;
    }

    public final void setOtMinutes(Double d) {
        this.otMinutes = d;
    }

    public final Double getOtPerHour() {
        return this.otPerHour;
    }

    public final void setOtPerHour(Double d) {
        this.otPerHour = d;
    }

    public final Double getOtTotalAmount() {
        return this.otTotalAmount;
    }

    public final void setOtTotalAmount(Double d) {
        this.otTotalAmount = d;
    }

    public final String getAdvancePaymentMethod() {
        return this.advancePaymentMethod;
    }

    public final void setAdvancePaymentMethod(String str) {
        this.advancePaymentMethod = str;
    }
}

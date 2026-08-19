package com.laborbook.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StaffAttendanceResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0006HÆ\u0003J\t\u0010#\u001a\u00020\u0006HÆ\u0003J\t\u0010$\u001a\u00020\u0006HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u0010'\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u0010(\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u0010)\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001bJz\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010+J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010/\u001a\u000200HÖ\u0001J\t\u00101\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0016\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001d\u0010\u001bR\u001a\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001e\u0010\u001bR\u001a\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001f\u0010\u001b¨\u00062"}, m2722d2 = {"Lcom/laborbook/keep/model/AttendanceUser;", "", "id", "", "name", "totalPresent", "", "totalAbsent", "totalAdvance", "month", "totalOt", "totalPp", "totalPh", "totalH", "<init>", "(Ljava/lang/String;Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getName", "getTotalPresent", "()D", "getTotalAbsent", "getTotalAdvance", "getMonth", "getTotalOt", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getTotalPp", "getTotalPh", "getTotalH", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(Ljava/lang/String;Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Lcom/laborbook/keep/model/AttendanceUser;", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class AttendanceUser {
    private String id;
    private final String month;
    private final String name;

    @SerializedName("total_absent")
    private final double totalAbsent;

    @SerializedName("total_advance")
    private final double totalAdvance;

    @SerializedName("total_h")
    private final Double totalH;

    @SerializedName("total_ot")
    private final Double totalOt;

    @SerializedName("total_ph")
    private final Double totalPh;

    @SerializedName("total_pp")
    private final Double totalPp;

    @SerializedName("total_present")
    private final double totalPresent;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Double getTotalH() {
        return this.totalH;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final double getTotalPresent() {
        return this.totalPresent;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final double getTotalAbsent() {
        return this.totalAbsent;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final double getTotalAdvance() {
        return this.totalAdvance;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getMonth() {
        return this.month;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Double getTotalOt() {
        return this.totalOt;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Double getTotalPp() {
        return this.totalPp;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Double getTotalPh() {
        return this.totalPh;
    }

    public final AttendanceUser copy(String id, String name, double totalPresent, double totalAbsent, double totalAdvance, String month, Double totalOt, Double totalPp, Double totalPh, Double totalH) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(month, "month");
        return new AttendanceUser(id, name, totalPresent, totalAbsent, totalAdvance, month, totalOt, totalPp, totalPh, totalH);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AttendanceUser)) {
            return false;
        }
        AttendanceUser attendanceUser = (AttendanceUser) other;
        return Intrinsics.areEqual(this.id, attendanceUser.id) && Intrinsics.areEqual(this.name, attendanceUser.name) && Double.compare(this.totalPresent, attendanceUser.totalPresent) == 0 && Double.compare(this.totalAbsent, attendanceUser.totalAbsent) == 0 && Double.compare(this.totalAdvance, attendanceUser.totalAdvance) == 0 && Intrinsics.areEqual(this.month, attendanceUser.month) && Intrinsics.areEqual((Object) this.totalOt, (Object) attendanceUser.totalOt) && Intrinsics.areEqual((Object) this.totalPp, (Object) attendanceUser.totalPp) && Intrinsics.areEqual((Object) this.totalPh, (Object) attendanceUser.totalPh) && Intrinsics.areEqual((Object) this.totalH, (Object) attendanceUser.totalH);
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + Double.hashCode(this.totalPresent)) * 31) + Double.hashCode(this.totalAbsent)) * 31) + Double.hashCode(this.totalAdvance)) * 31) + this.month.hashCode()) * 31;
        Double d = this.totalOt;
        int iHashCode2 = (iHashCode + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.totalPp;
        int iHashCode3 = (iHashCode2 + (d2 == null ? 0 : d2.hashCode())) * 31;
        Double d3 = this.totalPh;
        int iHashCode4 = (iHashCode3 + (d3 == null ? 0 : d3.hashCode())) * 31;
        Double d4 = this.totalH;
        return iHashCode4 + (d4 != null ? d4.hashCode() : 0);
    }

    public String toString() {
        return "AttendanceUser(id=" + this.id + ", name=" + this.name + ", totalPresent=" + this.totalPresent + ", totalAbsent=" + this.totalAbsent + ", totalAdvance=" + this.totalAdvance + ", month=" + this.month + ", totalOt=" + this.totalOt + ", totalPp=" + this.totalPp + ", totalPh=" + this.totalPh + ", totalH=" + this.totalH + ')';
    }

    public AttendanceUser(String id, String name, double d, double d2, double d3, String month, Double d4, Double d5, Double d6, Double d7) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(month, "month");
        this.id = id;
        this.name = name;
        this.totalPresent = d;
        this.totalAbsent = d2;
        this.totalAdvance = d3;
        this.month = month;
        this.totalOt = d4;
        this.totalPp = d5;
        this.totalPh = d6;
        this.totalH = d7;
    }

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final String getName() {
        return this.name;
    }

    public final double getTotalPresent() {
        return this.totalPresent;
    }

    public final double getTotalAbsent() {
        return this.totalAbsent;
    }

    public final double getTotalAdvance() {
        return this.totalAdvance;
    }

    public final String getMonth() {
        return this.month;
    }

    public final Double getTotalOt() {
        return this.totalOt;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ AttendanceUser(String str, String str2, double d, double d2, double d3, String str3, Double d4, Double d5, Double d6, Double d7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        int i2 = i & 64;
        Double dValueOf = Double.valueOf(0.0d);
        this(str, str2, d, d2, d3, str3, i2 != 0 ? dValueOf : d4, (i & 128) != 0 ? dValueOf : d5, (i & 256) != 0 ? dValueOf : d6, (i & 512) != 0 ? dValueOf : d7);
    }

    public final Double getTotalPp() {
        return this.totalPp;
    }

    public final Double getTotalPh() {
        return this.totalPh;
    }

    public final Double getTotalH() {
        return this.totalH;
    }
}

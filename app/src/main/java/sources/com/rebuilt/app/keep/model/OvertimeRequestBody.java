package com.rebuilt.app.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OvertimeRequestBody.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J:\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001d"}, m2722d2 = {"Lcom/laborbook/keep/model/OvertimeRequestBody;", "", "date", "", "ot_minutes", "", "ot_per_hour", "manager_id", "<init>", "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V", "getDate", "()Ljava/lang/String;", "getOt_minutes", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getOt_per_hour", "getManager_id", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/laborbook/keep/model/OvertimeRequestBody;", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class OvertimeRequestBody {
    private final String date;
    private final String manager_id;
    private final Double ot_minutes;
    private final Double ot_per_hour;

    public static /* synthetic */ OvertimeRequestBody copy$default(OvertimeRequestBody overtimeRequestBody, String str, Double d, Double d2, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = overtimeRequestBody.date;
        }
        if ((i & 2) != 0) {
            d = overtimeRequestBody.ot_minutes;
        }
        if ((i & 4) != 0) {
            d2 = overtimeRequestBody.ot_per_hour;
        }
        if ((i & 8) != 0) {
            str2 = overtimeRequestBody.manager_id;
        }
        return overtimeRequestBody.copy(str, d, d2, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Double getOt_minutes() {
        return this.ot_minutes;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Double getOt_per_hour() {
        return this.ot_per_hour;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getManager_id() {
        return this.manager_id;
    }

    public final OvertimeRequestBody copy(String date, Double ot_minutes, Double ot_per_hour, String manager_id) {
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(manager_id, "manager_id");
        return new OvertimeRequestBody(date, ot_minutes, ot_per_hour, manager_id);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OvertimeRequestBody)) {
            return false;
        }
        OvertimeRequestBody overtimeRequestBody = (OvertimeRequestBody) other;
        return Intrinsics.areEqual(this.date, overtimeRequestBody.date) && Intrinsics.areEqual((Object) this.ot_minutes, (Object) overtimeRequestBody.ot_minutes) && Intrinsics.areEqual((Object) this.ot_per_hour, (Object) overtimeRequestBody.ot_per_hour) && Intrinsics.areEqual(this.manager_id, overtimeRequestBody.manager_id);
    }

    public int hashCode() {
        int iHashCode = this.date.hashCode() * 31;
        Double d = this.ot_minutes;
        int iHashCode2 = (iHashCode + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.ot_per_hour;
        return ((iHashCode2 + (d2 != null ? d2.hashCode() : 0)) * 31) + this.manager_id.hashCode();
    }

    public String toString() {
        return "OvertimeRequestBody(date=" + this.date + ", ot_minutes=" + this.ot_minutes + ", ot_per_hour=" + this.ot_per_hour + ", manager_id=" + this.manager_id + ')';
    }

    public OvertimeRequestBody(String date, Double d, Double d2, String manager_id) {
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(manager_id, "manager_id");
        this.date = date;
        this.ot_minutes = d;
        this.ot_per_hour = d2;
        this.manager_id = manager_id;
    }

    public /* synthetic */ OvertimeRequestBody(String str, Double d, Double d2, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : d, (i & 4) != 0 ? null : d2, str2);
    }

    public final String getDate() {
        return this.date;
    }

    public final Double getOt_minutes() {
        return this.ot_minutes;
    }

    public final Double getOt_per_hour() {
        return this.ot_per_hour;
    }

    public final String getManager_id() {
        return this.manager_id;
    }
}

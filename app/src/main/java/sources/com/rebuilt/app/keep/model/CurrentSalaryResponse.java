package com.rebuilt.app.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SalaryData.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J1\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0010¨\u0006\u001b"}, m2722d2 = {"Lcom/laborbook/keep/model/CurrentSalaryResponse;", "", "salary_per_day", "", "salary_type", "", FirebaseAnalytics.Param.START_DATE, "is_active", "", "<init>", "(DLjava/lang/String;Ljava/lang/String;Z)V", "getSalary_per_day", "()D", "getSalary_type", "()Ljava/lang/String;", "getStart_date", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class CurrentSalaryResponse {
    private final boolean is_active;
    private final double salary_per_day;
    private final String salary_type;
    private final String start_date;

    public static /* synthetic */ CurrentSalaryResponse copy$default(CurrentSalaryResponse currentSalaryResponse, double d, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            d = currentSalaryResponse.salary_per_day;
        }
        double d2 = d;
        if ((i & 2) != 0) {
            str = currentSalaryResponse.salary_type;
        }
        String str3 = str;
        if ((i & 4) != 0) {
            str2 = currentSalaryResponse.start_date;
        }
        String str4 = str2;
        if ((i & 8) != 0) {
            z = currentSalaryResponse.is_active;
        }
        return currentSalaryResponse.copy(d2, str3, str4, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final double getSalary_per_day() {
        return this.salary_per_day;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSalary_type() {
        return this.salary_type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStart_date() {
        return this.start_date;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIs_active() {
        return this.is_active;
    }

    public final CurrentSalaryResponse copy(double salary_per_day, String salary_type, String start_date, boolean is_active) {
        Intrinsics.checkNotNullParameter(salary_type, "salary_type");
        Intrinsics.checkNotNullParameter(start_date, "start_date");
        return new CurrentSalaryResponse(salary_per_day, salary_type, start_date, is_active);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CurrentSalaryResponse)) {
            return false;
        }
        CurrentSalaryResponse currentSalaryResponse = (CurrentSalaryResponse) other;
        return Double.compare(this.salary_per_day, currentSalaryResponse.salary_per_day) == 0 && Intrinsics.areEqual(this.salary_type, currentSalaryResponse.salary_type) && Intrinsics.areEqual(this.start_date, currentSalaryResponse.start_date) && this.is_active == currentSalaryResponse.is_active;
    }

    public int hashCode() {
        return (((((Double.hashCode(this.salary_per_day) * 31) + this.salary_type.hashCode()) * 31) + this.start_date.hashCode()) * 31) + Boolean.hashCode(this.is_active);
    }

    public String toString() {
        return "CurrentSalaryResponse(salary_per_day=" + this.salary_per_day + ", salary_type=" + this.salary_type + ", start_date=" + this.start_date + ", is_active=" + this.is_active + ')';
    }

    public CurrentSalaryResponse(double d, String salary_type, String start_date, boolean z) {
        Intrinsics.checkNotNullParameter(salary_type, "salary_type");
        Intrinsics.checkNotNullParameter(start_date, "start_date");
        this.salary_per_day = d;
        this.salary_type = salary_type;
        this.start_date = start_date;
        this.is_active = z;
    }

    public final double getSalary_per_day() {
        return this.salary_per_day;
    }

    public final String getSalary_type() {
        return this.salary_type;
    }

    public final String getStart_date() {
        return this.start_date;
    }

    public final boolean is_active() {
        return this.is_active;
    }
}

package com.laborbook.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AddOrUpdateSalaryRequestBody.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0018"}, m2722d2 = {"Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;", "", "salary_type", "", "salary", "", FirebaseAnalytics.Param.START_DATE, "<init>", "(Ljava/lang/String;DLjava/lang/String;)V", "getSalary_type", "()Ljava/lang/String;", "getSalary", "()D", "getStart_date", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class AddOrUpdateSalaryRequestBody {
    private final double salary;
    private final String salary_type;
    private final String start_date;

    public static /* synthetic */ AddOrUpdateSalaryRequestBody copy$default(AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody, String str, double d, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = addOrUpdateSalaryRequestBody.salary_type;
        }
        if ((i & 2) != 0) {
            d = addOrUpdateSalaryRequestBody.salary;
        }
        if ((i & 4) != 0) {
            str2 = addOrUpdateSalaryRequestBody.start_date;
        }
        return addOrUpdateSalaryRequestBody.copy(str, d, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSalary_type() {
        return this.salary_type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final double getSalary() {
        return this.salary;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStart_date() {
        return this.start_date;
    }

    public final AddOrUpdateSalaryRequestBody copy(String salary_type, double salary, String start_date) {
        Intrinsics.checkNotNullParameter(salary_type, "salary_type");
        Intrinsics.checkNotNullParameter(start_date, "start_date");
        return new AddOrUpdateSalaryRequestBody(salary_type, salary, start_date);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AddOrUpdateSalaryRequestBody)) {
            return false;
        }
        AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody = (AddOrUpdateSalaryRequestBody) other;
        return Intrinsics.areEqual(this.salary_type, addOrUpdateSalaryRequestBody.salary_type) && Double.compare(this.salary, addOrUpdateSalaryRequestBody.salary) == 0 && Intrinsics.areEqual(this.start_date, addOrUpdateSalaryRequestBody.start_date);
    }

    public int hashCode() {
        return (((this.salary_type.hashCode() * 31) + Double.hashCode(this.salary)) * 31) + this.start_date.hashCode();
    }

    public String toString() {
        return "AddOrUpdateSalaryRequestBody(salary_type=" + this.salary_type + ", salary=" + this.salary + ", start_date=" + this.start_date + ')';
    }

    public AddOrUpdateSalaryRequestBody(String salary_type, double d, String start_date) {
        Intrinsics.checkNotNullParameter(salary_type, "salary_type");
        Intrinsics.checkNotNullParameter(start_date, "start_date");
        this.salary_type = salary_type;
        this.salary = d;
        this.start_date = start_date;
    }

    public final String getSalary_type() {
        return this.salary_type;
    }

    public final double getSalary() {
        return this.salary;
    }

    public final String getStart_date() {
        return this.start_date;
    }
}

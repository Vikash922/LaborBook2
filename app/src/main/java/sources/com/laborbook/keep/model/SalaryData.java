package com.laborbook.keep.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;

/* JADX INFO: compiled from: SalaryData.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/model/SalaryData;", "", "total_salary", "", "<init>", "(D)V", "getTotal_salary", "()D", "component1", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class SalaryData {
    private final double total_salary;

    public static /* synthetic */ SalaryData copy$default(SalaryData salaryData, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            d = salaryData.total_salary;
        }
        return salaryData.copy(d);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final double getTotal_salary() {
        return this.total_salary;
    }

    public final SalaryData copy(double total_salary) {
        return new SalaryData(total_salary);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SalaryData) && Double.compare(this.total_salary, ((SalaryData) other).total_salary) == 0;
    }

    public int hashCode() {
        return Double.hashCode(this.total_salary);
    }

    public String toString() {
        return "SalaryData(total_salary=" + this.total_salary + ')';
    }

    public SalaryData(double d) {
        this.total_salary = d;
    }

    public final double getTotal_salary() {
        return this.total_salary;
    }
}

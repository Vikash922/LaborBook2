package com.laborbook.keep.screen.calendar.uistate;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.laborbook.keep.model.CurrentSalaryResponse;
import com.laborbook.keep.model.StaffAttendanceResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CalendarUiState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u000b\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000eB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u000b\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "", "<init>", "()V", "Loading", "GetStaffAttendanceSuccess", "MarkBulkAttendanceSuccess", "Error", "GetUserSalarySuccess", "GetUserSalaryError", "SalaryLoading", "ReportLoading", "GetCurrentSalarySuccess", "GetCurrentSalaryError", "CurrentSalaryLoading", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$CurrentSalaryLoading;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$Error;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalaryError;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalarySuccess;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalaryError;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalarySuccess;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$Loading;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$MarkBulkAttendanceSuccess;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$ReportLoading;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$SalaryLoading;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class CalendarUiState {
    public /* synthetic */ CalendarUiState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$Loading;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Loading extends CalendarUiState {
        public static final Loading INSTANCE = new Loading();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Loading)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1273544505;
        }

        public String toString() {
            return "Loading";
        }

        private Loading() {
            super(null);
        }
    }

    private CalendarUiState() {
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "staff", "Lcom/laborbook/keep/model/StaffAttendanceResponse;", "<init>", "(Lcom/laborbook/keep/model/StaffAttendanceResponse;)V", "getStaff", "()Lcom/laborbook/keep/model/StaffAttendanceResponse;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class GetStaffAttendanceSuccess extends CalendarUiState {
        private final StaffAttendanceResponse staff;

        public static /* synthetic */ GetStaffAttendanceSuccess copy$default(GetStaffAttendanceSuccess getStaffAttendanceSuccess, StaffAttendanceResponse staffAttendanceResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                staffAttendanceResponse = getStaffAttendanceSuccess.staff;
            }
            return getStaffAttendanceSuccess.copy(staffAttendanceResponse);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final StaffAttendanceResponse getStaff() {
            return this.staff;
        }

        public final GetStaffAttendanceSuccess copy(StaffAttendanceResponse staff) {
            Intrinsics.checkNotNullParameter(staff, "staff");
            return new GetStaffAttendanceSuccess(staff);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof GetStaffAttendanceSuccess) && Intrinsics.areEqual(this.staff, ((GetStaffAttendanceSuccess) other).staff);
        }

        public int hashCode() {
            return this.staff.hashCode();
        }

        public String toString() {
            return "GetStaffAttendanceSuccess(staff=" + this.staff + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GetStaffAttendanceSuccess(StaffAttendanceResponse staff) {
            super(null);
            Intrinsics.checkNotNullParameter(staff, "staff");
            this.staff = staff;
        }

        public final StaffAttendanceResponse getStaff() {
            return this.staff;
        }
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$MarkBulkAttendanceSuccess;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class MarkBulkAttendanceSuccess extends CalendarUiState {
        private final String message;

        public static /* synthetic */ MarkBulkAttendanceSuccess copy$default(MarkBulkAttendanceSuccess markBulkAttendanceSuccess, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = markBulkAttendanceSuccess.message;
            }
            return markBulkAttendanceSuccess.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final MarkBulkAttendanceSuccess copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new MarkBulkAttendanceSuccess(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof MarkBulkAttendanceSuccess) && Intrinsics.areEqual(this.message, ((MarkBulkAttendanceSuccess) other).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "MarkBulkAttendanceSuccess(message=" + this.message + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MarkBulkAttendanceSuccess(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$Error;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Error extends CalendarUiState {
        private final String message;

        public static /* synthetic */ Error copy$default(Error error, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = error.message;
            }
            return error.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final Error copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new Error(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Error) && Intrinsics.areEqual(this.message, ((Error) other).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "Error(message=" + this.message + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalarySuccess;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "salary", "", "<init>", "(D)V", "getSalary", "()D", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class GetUserSalarySuccess extends CalendarUiState {
        private final double salary;

        public static /* synthetic */ GetUserSalarySuccess copy$default(GetUserSalarySuccess getUserSalarySuccess, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                d = getUserSalarySuccess.salary;
            }
            return getUserSalarySuccess.copy(d);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final double getSalary() {
            return this.salary;
        }

        public final GetUserSalarySuccess copy(double salary) {
            return new GetUserSalarySuccess(salary);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof GetUserSalarySuccess) && Double.compare(this.salary, ((GetUserSalarySuccess) other).salary) == 0;
        }

        public int hashCode() {
            return Double.hashCode(this.salary);
        }

        public String toString() {
            return "GetUserSalarySuccess(salary=" + this.salary + ')';
        }

        public GetUserSalarySuccess(double d) {
            super(null);
            this.salary = d;
        }

        public final double getSalary() {
            return this.salary;
        }
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalaryError;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class GetUserSalaryError extends CalendarUiState {
        private final String message;

        public static /* synthetic */ GetUserSalaryError copy$default(GetUserSalaryError getUserSalaryError, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = getUserSalaryError.message;
            }
            return getUserSalaryError.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final GetUserSalaryError copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new GetUserSalaryError(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof GetUserSalaryError) && Intrinsics.areEqual(this.message, ((GetUserSalaryError) other).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "GetUserSalaryError(message=" + this.message + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GetUserSalaryError(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$SalaryLoading;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "isLoading", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class SalaryLoading extends CalendarUiState {
        private final boolean isLoading;

        public SalaryLoading() {
            this(false, 1, null);
        }

        public static /* synthetic */ SalaryLoading copy$default(SalaryLoading salaryLoading, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = salaryLoading.isLoading;
            }
            return salaryLoading.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsLoading() {
            return this.isLoading;
        }

        public final SalaryLoading copy(boolean isLoading) {
            return new SalaryLoading(isLoading);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof SalaryLoading) && this.isLoading == ((SalaryLoading) other).isLoading;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isLoading);
        }

        public String toString() {
            return "SalaryLoading(isLoading=" + this.isLoading + ')';
        }

        public SalaryLoading(boolean z) {
            super(null);
            this.isLoading = z;
        }

        public /* synthetic */ SalaryLoading(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? true : z);
        }

        public final boolean isLoading() {
            return this.isLoading;
        }
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$ReportLoading;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "isLoading", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class ReportLoading extends CalendarUiState {
        private final boolean isLoading;

        public ReportLoading() {
            this(false, 1, null);
        }

        public static /* synthetic */ ReportLoading copy$default(ReportLoading reportLoading, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = reportLoading.isLoading;
            }
            return reportLoading.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsLoading() {
            return this.isLoading;
        }

        public final ReportLoading copy(boolean isLoading) {
            return new ReportLoading(isLoading);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ReportLoading) && this.isLoading == ((ReportLoading) other).isLoading;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isLoading);
        }

        public String toString() {
            return "ReportLoading(isLoading=" + this.isLoading + ')';
        }

        public ReportLoading(boolean z) {
            super(null);
            this.isLoading = z;
        }

        public /* synthetic */ ReportLoading(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? true : z);
        }

        public final boolean isLoading() {
            return this.isLoading;
        }
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalarySuccess;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "currentSalary", "Lcom/laborbook/keep/model/CurrentSalaryResponse;", "<init>", "(Lcom/laborbook/keep/model/CurrentSalaryResponse;)V", "getCurrentSalary", "()Lcom/laborbook/keep/model/CurrentSalaryResponse;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class GetCurrentSalarySuccess extends CalendarUiState {
        private final CurrentSalaryResponse currentSalary;

        public static /* synthetic */ GetCurrentSalarySuccess copy$default(GetCurrentSalarySuccess getCurrentSalarySuccess, CurrentSalaryResponse currentSalaryResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                currentSalaryResponse = getCurrentSalarySuccess.currentSalary;
            }
            return getCurrentSalarySuccess.copy(currentSalaryResponse);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CurrentSalaryResponse getCurrentSalary() {
            return this.currentSalary;
        }

        public final GetCurrentSalarySuccess copy(CurrentSalaryResponse currentSalary) {
            Intrinsics.checkNotNullParameter(currentSalary, "currentSalary");
            return new GetCurrentSalarySuccess(currentSalary);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof GetCurrentSalarySuccess) && Intrinsics.areEqual(this.currentSalary, ((GetCurrentSalarySuccess) other).currentSalary);
        }

        public int hashCode() {
            return this.currentSalary.hashCode();
        }

        public String toString() {
            return "GetCurrentSalarySuccess(currentSalary=" + this.currentSalary + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GetCurrentSalarySuccess(CurrentSalaryResponse currentSalary) {
            super(null);
            Intrinsics.checkNotNullParameter(currentSalary, "currentSalary");
            this.currentSalary = currentSalary;
        }

        public final CurrentSalaryResponse getCurrentSalary() {
            return this.currentSalary;
        }
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalaryError;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class GetCurrentSalaryError extends CalendarUiState {
        private final String message;

        public static /* synthetic */ GetCurrentSalaryError copy$default(GetCurrentSalaryError getCurrentSalaryError, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = getCurrentSalaryError.message;
            }
            return getCurrentSalaryError.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final GetCurrentSalaryError copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new GetCurrentSalaryError(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof GetCurrentSalaryError) && Intrinsics.areEqual(this.message, ((GetCurrentSalaryError) other).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "GetCurrentSalaryError(message=" + this.message + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GetCurrentSalaryError(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: CalendarUiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$CurrentSalaryLoading;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "isLoading", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class CurrentSalaryLoading extends CalendarUiState {
        private final boolean isLoading;

        public CurrentSalaryLoading() {
            this(false, 1, null);
        }

        public static /* synthetic */ CurrentSalaryLoading copy$default(CurrentSalaryLoading currentSalaryLoading, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = currentSalaryLoading.isLoading;
            }
            return currentSalaryLoading.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsLoading() {
            return this.isLoading;
        }

        public final CurrentSalaryLoading copy(boolean isLoading) {
            return new CurrentSalaryLoading(isLoading);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof CurrentSalaryLoading) && this.isLoading == ((CurrentSalaryLoading) other).isLoading;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isLoading);
        }

        public String toString() {
            return "CurrentSalaryLoading(isLoading=" + this.isLoading + ')';
        }

        public CurrentSalaryLoading(boolean z) {
            super(null);
            this.isLoading = z;
        }

        public /* synthetic */ CurrentSalaryLoading(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? true : z);
        }

        public final boolean isLoading() {
            return this.isLoading;
        }
    }
}

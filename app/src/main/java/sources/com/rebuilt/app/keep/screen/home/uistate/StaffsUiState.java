package com.rebuilt.app.keep.screen.home.uistate;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.inmobi.unification.sdk.InitializationStatus;
import com.rebuilt.app.keep.model.StaffUser;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StaffsUiState.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/uistate/StaffsUiState;", "", "<init>", "()V", "Loading", InitializationStatus.SUCCESS, "Error", "Lcom/laborbook/keep/screen/home/uistate/StaffsUiState$Error;", "Lcom/laborbook/keep/screen/home/uistate/StaffsUiState$Loading;", "Lcom/laborbook/keep/screen/home/uistate/StaffsUiState$Success;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class StaffsUiState {
    public /* synthetic */ StaffsUiState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: StaffsUiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/uistate/StaffsUiState$Loading;", "Lcom/laborbook/keep/screen/home/uistate/StaffsUiState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Loading extends StaffsUiState {
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
            return 1552165811;
        }

        public String toString() {
            return "Loading";
        }

        private Loading() {
            super(null);
        }
    }

    private StaffsUiState() {
    }

    /* JADX INFO: compiled from: StaffsUiState.kt */
    @Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/uistate/StaffsUiState$Success;", "Lcom/laborbook/keep/screen/home/uistate/StaffsUiState;", "staffs", "", "Lcom/laborbook/keep/model/StaffUser;", "<init>", "(Ljava/util/List;)V", "getStaffs", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Success extends StaffsUiState {
        private final List<StaffUser> staffs;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Success copy$default(Success success, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = success.staffs;
            }
            return success.copy(list);
        }

        public final List<StaffUser> component1() {
            return this.staffs;
        }

        public final Success copy(List<StaffUser> staffs) {
            Intrinsics.checkNotNullParameter(staffs, "staffs");
            return new Success(staffs);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && Intrinsics.areEqual(this.staffs, ((Success) other).staffs);
        }

        public int hashCode() {
            return this.staffs.hashCode();
        }

        public String toString() {
            return "Success(staffs=" + this.staffs + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(List<StaffUser> staffs) {
            super(null);
            Intrinsics.checkNotNullParameter(staffs, "staffs");
            this.staffs = staffs;
        }

        public final List<StaffUser> getStaffs() {
            return this.staffs;
        }
    }

    /* JADX INFO: compiled from: StaffsUiState.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/uistate/StaffsUiState$Error;", "Lcom/laborbook/keep/screen/home/uistate/StaffsUiState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Error extends StaffsUiState {
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
}

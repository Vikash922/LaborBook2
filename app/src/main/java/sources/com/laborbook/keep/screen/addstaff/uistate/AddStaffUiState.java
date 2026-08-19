package com.laborbook.keep.screen.addstaff.uistate;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.inmobi.unification.sdk.InitializationStatus;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.keep.screen.addstaff.model.ContactItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AddStaffUiState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0007\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;", "", "<init>", "()V", "Loading", InitializationStatus.SUCCESS, "StaffUserAddedSuccess", "Error", "StaffAddError", "EnableAddStaffButton", "OpenNonContactStaff", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$EnableAddStaffButton;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Error;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Loading;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$OpenNonContactStaff;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffAddError;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffUserAddedSuccess;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Success;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class AddStaffUiState {
    public /* synthetic */ AddStaffUiState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: AddStaffUiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Loading;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Loading extends AddStaffUiState {
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
            return 263379655;
        }

        public String toString() {
            return "Loading";
        }

        private Loading() {
            super(null);
        }
    }

    private AddStaffUiState() {
    }

    /* JADX INFO: compiled from: AddStaffUiState.kt */
    @Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Success;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;", ConstantEventNames.CONTACTS, "", "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "<init>", "(Ljava/util/List;)V", "getContacts", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Success extends AddStaffUiState {
        private final List<ContactItem> contacts;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Success copy$default(Success success, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = success.contacts;
            }
            return success.copy(list);
        }

        public final List<ContactItem> component1() {
            return this.contacts;
        }

        public final Success copy(List<ContactItem> contacts) {
            Intrinsics.checkNotNullParameter(contacts, "contacts");
            return new Success(contacts);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && Intrinsics.areEqual(this.contacts, ((Success) other).contacts);
        }

        public int hashCode() {
            return this.contacts.hashCode();
        }

        public String toString() {
            return "Success(contacts=" + this.contacts + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(List<ContactItem> contacts) {
            super(null);
            Intrinsics.checkNotNullParameter(contacts, "contacts");
            this.contacts = contacts;
        }

        public final List<ContactItem> getContacts() {
            return this.contacts;
        }
    }

    /* JADX INFO: compiled from: AddStaffUiState.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffUserAddedSuccess;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;", "id", "", "mobileNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getMobileNumber", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class StaffUserAddedSuccess extends AddStaffUiState {
        private final String id;
        private final String mobileNumber;

        public static /* synthetic */ StaffUserAddedSuccess copy$default(StaffUserAddedSuccess staffUserAddedSuccess, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = staffUserAddedSuccess.id;
            }
            if ((i & 2) != 0) {
                str2 = staffUserAddedSuccess.mobileNumber;
            }
            return staffUserAddedSuccess.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getMobileNumber() {
            return this.mobileNumber;
        }

        public final StaffUserAddedSuccess copy(String id, String mobileNumber) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
            return new StaffUserAddedSuccess(id, mobileNumber);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StaffUserAddedSuccess)) {
                return false;
            }
            StaffUserAddedSuccess staffUserAddedSuccess = (StaffUserAddedSuccess) other;
            return Intrinsics.areEqual(this.id, staffUserAddedSuccess.id) && Intrinsics.areEqual(this.mobileNumber, staffUserAddedSuccess.mobileNumber);
        }

        public int hashCode() {
            return (this.id.hashCode() * 31) + this.mobileNumber.hashCode();
        }

        public String toString() {
            return "StaffUserAddedSuccess(id=" + this.id + ", mobileNumber=" + this.mobileNumber + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StaffUserAddedSuccess(String id, String mobileNumber) {
            super(null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
            this.id = id;
            this.mobileNumber = mobileNumber;
        }

        public final String getId() {
            return this.id;
        }

        public final String getMobileNumber() {
            return this.mobileNumber;
        }
    }

    /* JADX INFO: compiled from: AddStaffUiState.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Error;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Error extends AddStaffUiState {
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

    /* JADX INFO: compiled from: AddStaffUiState.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffAddError;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class StaffAddError extends AddStaffUiState {
        private final String message;

        public static /* synthetic */ StaffAddError copy$default(StaffAddError staffAddError, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = staffAddError.message;
            }
            return staffAddError.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final StaffAddError copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new StaffAddError(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof StaffAddError) && Intrinsics.areEqual(this.message, ((StaffAddError) other).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "StaffAddError(message=" + this.message + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StaffAddError(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: AddStaffUiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$EnableAddStaffButton;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;", "isDetailsEntered", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class EnableAddStaffButton extends AddStaffUiState {
        private final boolean isDetailsEntered;

        public static /* synthetic */ EnableAddStaffButton copy$default(EnableAddStaffButton enableAddStaffButton, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = enableAddStaffButton.isDetailsEntered;
            }
            return enableAddStaffButton.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsDetailsEntered() {
            return this.isDetailsEntered;
        }

        public final EnableAddStaffButton copy(boolean isDetailsEntered) {
            return new EnableAddStaffButton(isDetailsEntered);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof EnableAddStaffButton) && this.isDetailsEntered == ((EnableAddStaffButton) other).isDetailsEntered;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isDetailsEntered);
        }

        public String toString() {
            return "EnableAddStaffButton(isDetailsEntered=" + this.isDetailsEntered + ')';
        }

        public EnableAddStaffButton(boolean z) {
            super(null);
            this.isDetailsEntered = z;
        }

        public final boolean isDetailsEntered() {
            return this.isDetailsEntered;
        }
    }

    /* JADX INFO: compiled from: AddStaffUiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$OpenNonContactStaff;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;", "isOpen", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class OpenNonContactStaff extends AddStaffUiState {
        private final boolean isOpen;

        public static /* synthetic */ OpenNonContactStaff copy$default(OpenNonContactStaff openNonContactStaff, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = openNonContactStaff.isOpen;
            }
            return openNonContactStaff.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsOpen() {
            return this.isOpen;
        }

        public final OpenNonContactStaff copy(boolean isOpen) {
            return new OpenNonContactStaff(isOpen);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OpenNonContactStaff) && this.isOpen == ((OpenNonContactStaff) other).isOpen;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isOpen);
        }

        public String toString() {
            return "OpenNonContactStaff(isOpen=" + this.isOpen + ')';
        }

        public OpenNonContactStaff(boolean z) {
            super(null);
            this.isOpen = z;
        }

        public final boolean isOpen() {
            return this.isOpen;
        }
    }
}

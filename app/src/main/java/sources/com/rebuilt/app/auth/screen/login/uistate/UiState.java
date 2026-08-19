package com.rebuilt.app.auth.screen.login.uistate;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.rebuilt.app.auth.model.request.AuthResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UiState.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0007\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/uistate/UiState;", "", "<init>", "()V", "Loading", "NumberEntered", "OtpSent", "OtpEntered", "OtpVerified", "TrueCallerLoginSuccess", "Error", "Lcom/laborbook/auth/screen/login/uistate/UiState$Error;", "Lcom/laborbook/auth/screen/login/uistate/UiState$Loading;", "Lcom/laborbook/auth/screen/login/uistate/UiState$NumberEntered;", "Lcom/laborbook/auth/screen/login/uistate/UiState$OtpEntered;", "Lcom/laborbook/auth/screen/login/uistate/UiState$OtpSent;", "Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;", "Lcom/laborbook/auth/screen/login/uistate/UiState$TrueCallerLoginSuccess;", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class UiState {
    public /* synthetic */ UiState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: UiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/uistate/UiState$Loading;", "Lcom/laborbook/auth/screen/login/uistate/UiState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Loading extends UiState {
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
            return 1812106103;
        }

        public String toString() {
            return "Loading";
        }

        private Loading() {
            super(null);
        }
    }

    private UiState() {
    }

    /* JADX INFO: compiled from: UiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/uistate/UiState$NumberEntered;", "Lcom/laborbook/auth/screen/login/uistate/UiState;", "isValidNumber", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class NumberEntered extends UiState {
        private final boolean isValidNumber;

        public static /* synthetic */ NumberEntered copy$default(NumberEntered numberEntered, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = numberEntered.isValidNumber;
            }
            return numberEntered.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsValidNumber() {
            return this.isValidNumber;
        }

        public final NumberEntered copy(boolean isValidNumber) {
            return new NumberEntered(isValidNumber);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof NumberEntered) && this.isValidNumber == ((NumberEntered) other).isValidNumber;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isValidNumber);
        }

        public String toString() {
            return "NumberEntered(isValidNumber=" + this.isValidNumber + ')';
        }

        public NumberEntered(boolean z) {
            super(null);
            this.isValidNumber = z;
        }

        public final boolean isValidNumber() {
            return this.isValidNumber;
        }
    }

    /* JADX INFO: compiled from: UiState.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/uistate/UiState$OtpSent;", "Lcom/laborbook/auth/screen/login/uistate/UiState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class OtpSent extends UiState {
        private final String message;

        public static /* synthetic */ OtpSent copy$default(OtpSent otpSent, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = otpSent.message;
            }
            return otpSent.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final OtpSent copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new OtpSent(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OtpSent) && Intrinsics.areEqual(this.message, ((OtpSent) other).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "OtpSent(message=" + this.message + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OtpSent(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: UiState.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/uistate/UiState$OtpEntered;", "Lcom/laborbook/auth/screen/login/uistate/UiState;", "isValidOtp", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class OtpEntered extends UiState {
        private final boolean isValidOtp;

        public static /* synthetic */ OtpEntered copy$default(OtpEntered otpEntered, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = otpEntered.isValidOtp;
            }
            return otpEntered.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsValidOtp() {
            return this.isValidOtp;
        }

        public final OtpEntered copy(boolean isValidOtp) {
            return new OtpEntered(isValidOtp);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OtpEntered) && this.isValidOtp == ((OtpEntered) other).isValidOtp;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isValidOtp);
        }

        public String toString() {
            return "OtpEntered(isValidOtp=" + this.isValidOtp + ')';
        }

        public OtpEntered(boolean z) {
            super(null);
            this.isValidOtp = z;
        }

        public final boolean isValidOtp() {
            return this.isValidOtp;
        }
    }

    /* JADX INFO: compiled from: UiState.kt */
    @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;", "Lcom/laborbook/auth/screen/login/uistate/UiState;", "authResponse", "Lcom/laborbook/auth/model/request/AuthResponse;", "<init>", "(Lcom/laborbook/auth/model/request/AuthResponse;)V", "getAuthResponse", "()Lcom/laborbook/auth/model/request/AuthResponse;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class OtpVerified extends UiState {
        private final AuthResponse authResponse;

        public static /* synthetic */ OtpVerified copy$default(OtpVerified otpVerified, AuthResponse authResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                authResponse = otpVerified.authResponse;
            }
            return otpVerified.copy(authResponse);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AuthResponse getAuthResponse() {
            return this.authResponse;
        }

        public final OtpVerified copy(AuthResponse authResponse) {
            return new OtpVerified(authResponse);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OtpVerified) && Intrinsics.areEqual(this.authResponse, ((OtpVerified) other).authResponse);
        }

        public int hashCode() {
            AuthResponse authResponse = this.authResponse;
            if (authResponse == null) {
                return 0;
            }
            return authResponse.hashCode();
        }

        public String toString() {
            return "OtpVerified(authResponse=" + this.authResponse + ')';
        }

        public OtpVerified(AuthResponse authResponse) {
            super(null);
            this.authResponse = authResponse;
        }

        public final AuthResponse getAuthResponse() {
            return this.authResponse;
        }
    }

    /* JADX INFO: compiled from: UiState.kt */
    @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/uistate/UiState$TrueCallerLoginSuccess;", "Lcom/laborbook/auth/screen/login/uistate/UiState;", "authResponse", "Lcom/laborbook/auth/model/request/AuthResponse;", "<init>", "(Lcom/laborbook/auth/model/request/AuthResponse;)V", "getAuthResponse", "()Lcom/laborbook/auth/model/request/AuthResponse;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class TrueCallerLoginSuccess extends UiState {
        private final AuthResponse authResponse;

        public static /* synthetic */ TrueCallerLoginSuccess copy$default(TrueCallerLoginSuccess trueCallerLoginSuccess, AuthResponse authResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                authResponse = trueCallerLoginSuccess.authResponse;
            }
            return trueCallerLoginSuccess.copy(authResponse);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AuthResponse getAuthResponse() {
            return this.authResponse;
        }

        public final TrueCallerLoginSuccess copy(AuthResponse authResponse) {
            return new TrueCallerLoginSuccess(authResponse);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof TrueCallerLoginSuccess) && Intrinsics.areEqual(this.authResponse, ((TrueCallerLoginSuccess) other).authResponse);
        }

        public int hashCode() {
            AuthResponse authResponse = this.authResponse;
            if (authResponse == null) {
                return 0;
            }
            return authResponse.hashCode();
        }

        public String toString() {
            return "TrueCallerLoginSuccess(authResponse=" + this.authResponse + ')';
        }

        public TrueCallerLoginSuccess(AuthResponse authResponse) {
            super(null);
            this.authResponse = authResponse;
        }

        public final AuthResponse getAuthResponse() {
            return this.authResponse;
        }
    }

    /* JADX INFO: compiled from: UiState.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/uistate/UiState$Error;", "Lcom/laborbook/auth/screen/login/uistate/UiState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Error extends UiState {
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
            return new Error(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Error) && Intrinsics.areEqual(this.message, ((Error) other).message);
        }

        public int hashCode() {
            String str = this.message;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "Error(message=" + this.message + ')';
        }

        public Error(String str) {
            super(null);
            this.message = str;
        }

        public final String getMessage() {
            return this.message;
        }
    }
}

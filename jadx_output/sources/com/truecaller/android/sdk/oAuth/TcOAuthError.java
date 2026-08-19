package com.truecaller.android.sdk.oAuth;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.itextpdf.forms.xfdf.XfdfConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TcOAuthError.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\r\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017B\u0017\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0001\r\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$¨\u0006%"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "Landroid/os/Parcelable;", "errorCode", "", "errorMessage", "", "(ILjava/lang/String;)V", "getErrorCode", "()I", "getErrorMessage", "()Ljava/lang/String;", "ApiError", "DefaultError", "DeviceNotSupported", "InvalidAccountStateError", "InvalidPartnerError", "OldSdkError", "RequestCodeCollisionError", "TruecallerActivityNotFoundError", "TruecallerClosedError", "TruecallerNotInstalledError", "UserDeniedByPressingFooterError", "UserDeniedError", "UserDeniedWhileLoadingError", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$ApiError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$DefaultError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$DeviceNotSupported;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidAccountStateError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidPartnerError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$OldSdkError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$RequestCodeCollisionError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerClosedError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedByPressingFooterError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedWhileLoadingError;", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public abstract class TcOAuthError implements Parcelable {
    private final int errorCode;
    private final String errorMessage;

    public /* synthetic */ TcOAuthError(int i, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str);
    }

    private TcOAuthError(int i, String str) {
        this.errorCode = i;
        this.errorMessage = str;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$DefaultError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class DefaultError extends TcOAuthError {
        public static final DefaultError INSTANCE = new DefaultError();
        public static final Parcelable.Creator<DefaultError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<DefaultError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DefaultError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return DefaultError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DefaultError[] newArray(int i) {
                return new DefaultError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private DefaultError() {
            super(0, "Something went wrong", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$DeviceNotSupported;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class DeviceNotSupported extends TcOAuthError {
        public static final DeviceNotSupported INSTANCE = new DeviceNotSupported();
        public static final Parcelable.Creator<DeviceNotSupported> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<DeviceNotSupported> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DeviceNotSupported createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return DeviceNotSupported.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DeviceNotSupported[] newArray(int i) {
                return new DeviceNotSupported[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private DeviceNotSupported() {
            super(16, "Device is not supported", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidPartnerError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class InvalidPartnerError extends TcOAuthError {
        public static final InvalidPartnerError INSTANCE = new InvalidPartnerError();
        public static final Parcelable.Creator<InvalidPartnerError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<InvalidPartnerError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final InvalidPartnerError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return InvalidPartnerError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final InvalidPartnerError[] newArray(int i) {
                return new InvalidPartnerError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private InvalidPartnerError() {
            super(12, "Invalid partner or partner information is missing", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class UserDeniedError extends TcOAuthError {
        public static final UserDeniedError INSTANCE = new UserDeniedError();
        public static final Parcelable.Creator<UserDeniedError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<UserDeniedError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UserDeniedError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return UserDeniedError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UserDeniedError[] newArray(int i) {
                return new UserDeniedError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private UserDeniedError() {
            super(2, "User denied by dismissing consent screen", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedWhileLoadingError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class UserDeniedWhileLoadingError extends TcOAuthError {
        public static final UserDeniedWhileLoadingError INSTANCE = new UserDeniedWhileLoadingError();
        public static final Parcelable.Creator<UserDeniedWhileLoadingError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<UserDeniedWhileLoadingError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UserDeniedWhileLoadingError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return UserDeniedWhileLoadingError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UserDeniedWhileLoadingError[] newArray(int i) {
                return new UserDeniedWhileLoadingError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private UserDeniedWhileLoadingError() {
            super(13, "User denied while loading", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedByPressingFooterError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class UserDeniedByPressingFooterError extends TcOAuthError {
        public static final UserDeniedByPressingFooterError INSTANCE = new UserDeniedByPressingFooterError();
        public static final Parcelable.Creator<UserDeniedByPressingFooterError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<UserDeniedByPressingFooterError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UserDeniedByPressingFooterError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return UserDeniedByPressingFooterError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UserDeniedByPressingFooterError[] newArray(int i) {
                return new UserDeniedByPressingFooterError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private UserDeniedByPressingFooterError() {
            super(14, "User denied by pressing the footer button", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerClosedError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class TruecallerClosedError extends TcOAuthError {
        public static final TruecallerClosedError INSTANCE = new TruecallerClosedError();
        public static final Parcelable.Creator<TruecallerClosedError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<TruecallerClosedError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final TruecallerClosedError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return TruecallerClosedError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final TruecallerClosedError[] newArray(int i) {
                return new TruecallerClosedError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private TruecallerClosedError() {
            super(5, "Truecaller app closed unexpectedly", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$OldSdkError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class OldSdkError extends TcOAuthError {
        public static final OldSdkError INSTANCE = new OldSdkError();
        public static final Parcelable.Creator<OldSdkError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<OldSdkError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final OldSdkError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return OldSdkError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final OldSdkError[] newArray(int i) {
                return new OldSdkError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private OldSdkError() {
            super(6, "Truecaller sdk is old and not compatible", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class TruecallerNotInstalledError extends TcOAuthError {
        public static final TruecallerNotInstalledError INSTANCE = new TruecallerNotInstalledError();
        public static final Parcelable.Creator<TruecallerNotInstalledError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<TruecallerNotInstalledError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final TruecallerNotInstalledError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return TruecallerNotInstalledError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final TruecallerNotInstalledError[] newArray(int i) {
                return new TruecallerNotInstalledError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private TruecallerNotInstalledError() {
            super(11, "Truecaller app is not installed", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidAccountStateError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class InvalidAccountStateError extends TcOAuthError {
        public static final InvalidAccountStateError INSTANCE = new InvalidAccountStateError();
        public static final Parcelable.Creator<InvalidAccountStateError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<InvalidAccountStateError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final InvalidAccountStateError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return InvalidAccountStateError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final InvalidAccountStateError[] newArray(int i) {
                return new InvalidAccountStateError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private InvalidAccountStateError() {
            super(10, "Truecaller user has an invalid account state", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class TruecallerActivityNotFoundError extends TcOAuthError {
        public static final TruecallerActivityNotFoundError INSTANCE = new TruecallerActivityNotFoundError();
        public static final Parcelable.Creator<TruecallerActivityNotFoundError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<TruecallerActivityNotFoundError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final TruecallerActivityNotFoundError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return TruecallerActivityNotFoundError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final TruecallerActivityNotFoundError[] newArray(int i) {
                return new TruecallerActivityNotFoundError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private TruecallerActivityNotFoundError() {
            super(15, "Truecaller activity not found", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004HÖ\u0001¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$RequestCodeCollisionError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "()V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class RequestCodeCollisionError extends TcOAuthError {
        public static final RequestCodeCollisionError INSTANCE = new RequestCodeCollisionError();
        public static final Parcelable.Creator<RequestCodeCollisionError> CREATOR = new Creator();

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<RequestCodeCollisionError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final RequestCodeCollisionError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return RequestCodeCollisionError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final RequestCodeCollisionError[] newArray(int i) {
                return new RequestCodeCollisionError[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private RequestCodeCollisionError() {
            super(7, "Conflicting request code possible", null);
        }
    }

    /* JADX INFO: compiled from: TcOAuthError.kt */
    @Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001a"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthError$ApiError;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "code", "", "message", "", "(ILjava/lang/String;)V", "getCode", "()I", "getMessage", "()Ljava/lang/String;", "component1", "component2", "copy", "describeContents", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final /* data */ class ApiError extends TcOAuthError {
        public static final Parcelable.Creator<ApiError> CREATOR = new Creator();
        private final int code;
        private final String message;

        /* JADX INFO: compiled from: TcOAuthError.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<ApiError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final ApiError createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new ApiError(parcel.readInt(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final ApiError[] newArray(int i) {
                return new ApiError[i];
            }
        }

        public static /* synthetic */ ApiError copy$default(ApiError apiError, int i, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = apiError.code;
            }
            if ((i2 & 2) != 0) {
                str = apiError.message;
            }
            return apiError.copy(i, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getCode() {
            return this.code;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final ApiError copy(int code, String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new ApiError(code, message);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ApiError)) {
                return false;
            }
            ApiError apiError = (ApiError) other;
            return this.code == apiError.code && Intrinsics.areEqual(this.message, apiError.message);
        }

        public int hashCode() {
            return (Integer.hashCode(this.code) * 31) + this.message.hashCode();
        }

        public String toString() {
            return "ApiError(code=" + this.code + ", message=" + this.message + ")";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(this.code);
            parcel.writeString(this.message);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ApiError(int i, String message) {
            super(i, message, null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.code = i;
            this.message = message;
        }

        public final int getCode() {
            return this.code;
        }

        public final String getMessage() {
            return this.message;
        }
    }
}

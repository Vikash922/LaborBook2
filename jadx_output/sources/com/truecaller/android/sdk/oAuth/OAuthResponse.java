package com.truecaller.android.sdk.oAuth;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.itextpdf.forms.xfdf.XfdfConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OAuthResponse.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00062\u00020\u0001:\u0003\u0006\u0007\bB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005\u0082\u0001\u0002\t\n¨\u0006\u000b"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/OAuthResponse;", "Landroid/os/Parcelable;", "isSuccessful", "", "(Z)V", "()Z", "Companion", "FailureResponse", "SuccessResponse", "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;", "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public abstract class OAuthResponse implements Parcelable {
    public static final String OAUTH_RESPONSE_EXTRA = "OAUTH_SDK_RESPONSE_EXTRA";
    private final boolean isSuccessful;

    public /* synthetic */ OAuthResponse(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }

    private OAuthResponse(boolean z) {
        this.isSuccessful = z;
    }

    /* JADX INFO: renamed from: isSuccessful, reason: from getter */
    public final boolean getIsSuccessful() {
        return this.isSuccessful;
    }

    /* JADX INFO: compiled from: OAuthResponse.kt */
    @Metadata(m2721d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\nHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\nHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0017"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;", "Lcom/truecaller/android/sdk/oAuth/OAuthResponse;", "tcOAuthData", "Lcom/truecaller/android/sdk/oAuth/TcOAuthData;", "(Lcom/truecaller/android/sdk/oAuth/TcOAuthData;)V", "getTcOAuthData", "()Lcom/truecaller/android/sdk/oAuth/TcOAuthData;", "component1", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final /* data */ class SuccessResponse extends OAuthResponse {
        public static final Parcelable.Creator<SuccessResponse> CREATOR = new Creator();
        private final TcOAuthData tcOAuthData;

        /* JADX INFO: compiled from: OAuthResponse.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<SuccessResponse> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final SuccessResponse createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new SuccessResponse(TcOAuthData.CREATOR.createFromParcel(parcel));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final SuccessResponse[] newArray(int i) {
                return new SuccessResponse[i];
            }
        }

        public static /* synthetic */ SuccessResponse copy$default(SuccessResponse successResponse, TcOAuthData tcOAuthData, int i, Object obj) {
            if ((i & 1) != 0) {
                tcOAuthData = successResponse.tcOAuthData;
            }
            return successResponse.copy(tcOAuthData);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TcOAuthData getTcOAuthData() {
            return this.tcOAuthData;
        }

        public final SuccessResponse copy(TcOAuthData tcOAuthData) {
            Intrinsics.checkNotNullParameter(tcOAuthData, "tcOAuthData");
            return new SuccessResponse(tcOAuthData);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof SuccessResponse) && Intrinsics.areEqual(this.tcOAuthData, ((SuccessResponse) other).tcOAuthData);
        }

        public int hashCode() {
            return this.tcOAuthData.hashCode();
        }

        public String toString() {
            return "SuccessResponse(tcOAuthData=" + this.tcOAuthData + ")";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            this.tcOAuthData.writeToParcel(parcel, flags);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SuccessResponse(TcOAuthData tcOAuthData) {
            super(true, null);
            Intrinsics.checkNotNullParameter(tcOAuthData, "tcOAuthData");
            this.tcOAuthData = tcOAuthData;
        }

        public final TcOAuthData getTcOAuthData() {
            return this.tcOAuthData;
        }
    }

    /* JADX INFO: compiled from: OAuthResponse.kt */
    @Metadata(m2721d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\nHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\nHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0017"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;", "Lcom/truecaller/android/sdk/oAuth/OAuthResponse;", "tcOAuthError", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V", "getTcOAuthError", "()Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "component1", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final /* data */ class FailureResponse extends OAuthResponse {
        public static final Parcelable.Creator<FailureResponse> CREATOR = new Creator();
        private final TcOAuthError tcOAuthError;

        /* JADX INFO: compiled from: OAuthResponse.kt */
        @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
        public static final class Creator implements Parcelable.Creator<FailureResponse> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final FailureResponse createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new FailureResponse((TcOAuthError) parcel.readParcelable(FailureResponse.class.getClassLoader()));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final FailureResponse[] newArray(int i) {
                return new FailureResponse[i];
            }
        }

        public static /* synthetic */ FailureResponse copy$default(FailureResponse failureResponse, TcOAuthError tcOAuthError, int i, Object obj) {
            if ((i & 1) != 0) {
                tcOAuthError = failureResponse.tcOAuthError;
            }
            return failureResponse.copy(tcOAuthError);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TcOAuthError getTcOAuthError() {
            return this.tcOAuthError;
        }

        public final FailureResponse copy(TcOAuthError tcOAuthError) {
            Intrinsics.checkNotNullParameter(tcOAuthError, "tcOAuthError");
            return new FailureResponse(tcOAuthError);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof FailureResponse) && Intrinsics.areEqual(this.tcOAuthError, ((FailureResponse) other).tcOAuthError);
        }

        public int hashCode() {
            return this.tcOAuthError.hashCode();
        }

        public String toString() {
            return "FailureResponse(tcOAuthError=" + this.tcOAuthError + ")";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeParcelable(this.tcOAuthError, flags);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FailureResponse(TcOAuthError tcOAuthError) {
            super(false, null);
            Intrinsics.checkNotNullParameter(tcOAuthError, "tcOAuthError");
            this.tcOAuthError = tcOAuthError;
        }

        public final TcOAuthError getTcOAuthError() {
            return this.tcOAuthError;
        }
    }
}

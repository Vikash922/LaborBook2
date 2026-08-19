package com.truecaller.android.sdk.oAuth;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.itextpdf.forms.xfdf.XfdfConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OAuthResponse.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006HÆ\u0003J-\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001e"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthData;", "Landroid/os/Parcelable;", "authorizationCode", "", "state", "scopesGranted", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getAuthorizationCode", "()Ljava/lang/String;", "getScopesGranted", "()Ljava/util/List;", "getState", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "writeToParcel", "", "parcel", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final /* data */ class TcOAuthData implements Parcelable {
    public static final Parcelable.Creator<TcOAuthData> CREATOR = new Creator();
    private final String authorizationCode;
    private final List<String> scopesGranted;
    private final String state;

    /* JADX INFO: compiled from: OAuthResponse.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class Creator implements Parcelable.Creator<TcOAuthData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TcOAuthData createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new TcOAuthData(parcel.readString(), parcel.readString(), parcel.createStringArrayList());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TcOAuthData[] newArray(int i) {
            return new TcOAuthData[i];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TcOAuthData copy$default(TcOAuthData tcOAuthData, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tcOAuthData.authorizationCode;
        }
        if ((i & 2) != 0) {
            str2 = tcOAuthData.state;
        }
        if ((i & 4) != 0) {
            list = tcOAuthData.scopesGranted;
        }
        return tcOAuthData.copy(str, str2, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAuthorizationCode() {
        return this.authorizationCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getState() {
        return this.state;
    }

    public final List<String> component3() {
        return this.scopesGranted;
    }

    public final TcOAuthData copy(String authorizationCode, String state, List<String> scopesGranted) {
        Intrinsics.checkNotNullParameter(authorizationCode, "authorizationCode");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(scopesGranted, "scopesGranted");
        return new TcOAuthData(authorizationCode, state, scopesGranted);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TcOAuthData)) {
            return false;
        }
        TcOAuthData tcOAuthData = (TcOAuthData) other;
        return Intrinsics.areEqual(this.authorizationCode, tcOAuthData.authorizationCode) && Intrinsics.areEqual(this.state, tcOAuthData.state) && Intrinsics.areEqual(this.scopesGranted, tcOAuthData.scopesGranted);
    }

    public int hashCode() {
        return (((this.authorizationCode.hashCode() * 31) + this.state.hashCode()) * 31) + this.scopesGranted.hashCode();
    }

    public String toString() {
        return "TcOAuthData(authorizationCode=" + this.authorizationCode + ", state=" + this.state + ", scopesGranted=" + this.scopesGranted + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeString(this.authorizationCode);
        parcel.writeString(this.state);
        parcel.writeStringList(this.scopesGranted);
    }

    public TcOAuthData(String authorizationCode, String state, List<String> scopesGranted) {
        Intrinsics.checkNotNullParameter(authorizationCode, "authorizationCode");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(scopesGranted, "scopesGranted");
        this.authorizationCode = authorizationCode;
        this.state = state;
        this.scopesGranted = scopesGranted;
    }

    public final String getAuthorizationCode() {
        return this.authorizationCode;
    }

    public final String getState() {
        return this.state;
    }

    public final List<String> getScopesGranted() {
        return this.scopesGranted;
    }
}

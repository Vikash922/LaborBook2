package com.truecaller.android.sdk.legacy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.android.sdk.BuildConfig;
import com.truecaller.android.sdk.common.models.TrueProfile;

/* JADX INFO: loaded from: classes5.dex */
public class TrueResponse implements Parcelable {
    public static final Parcelable.Creator<TrueResponse> CREATOR = new Parcelable.Creator<TrueResponse>() { // from class: com.truecaller.android.sdk.legacy.TrueResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrueResponse createFromParcel(Parcel parcel) {
            return new TrueResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrueResponse[] newArray(int i) {
            return new TrueResponse[i];
        }
    };
    public static final String IS_SUCCESSFUL = "TRUERESPONSE_IS_SUCCESSFUL";
    public static final String TRUECALLER_RESPONSE_EXTRA = "TRUECALLER_RESPONSE_EXTRA";
    public static final String TRUESDK_VERSION = "TRUERESPONSE_TRUESDK_VERSION";
    public final boolean isSuccessful;
    public final TrueError trueError;
    public final TrueProfile trueProfile;
    private final String truesdkVersion;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TrueResponse(TrueProfile trueProfile) {
        this.trueProfile = trueProfile;
        this.trueError = null;
        this.isSuccessful = true;
        this.truesdkVersion = BuildConfig.TRUESDK_VERSION;
    }

    public TrueResponse(TrueError trueError) {
        this.trueProfile = null;
        this.trueError = trueError;
        this.isSuccessful = false;
        this.truesdkVersion = BuildConfig.TRUESDK_VERSION;
    }

    public TrueResponse(Bundle bundle) {
        boolean z = bundle.getBoolean(IS_SUCCESSFUL);
        this.isSuccessful = z;
        this.truesdkVersion = bundle.getString(TRUESDK_VERSION);
        if (z) {
            this.trueProfile = new TrueProfile(bundle);
            this.trueError = null;
        } else {
            this.trueProfile = null;
            this.trueError = new TrueError(bundle);
        }
    }

    public void writeToBundle(Bundle bundle) {
        TrueProfile trueProfile;
        bundle.putBoolean(IS_SUCCESSFUL, this.isSuccessful);
        bundle.putString(TRUESDK_VERSION, this.truesdkVersion);
        if (this.isSuccessful && (trueProfile = this.trueProfile) != null) {
            trueProfile.writeToBundle(bundle);
            return;
        }
        TrueError trueError = this.trueError;
        if (trueError != null) {
            trueError.writeToBundle(bundle);
        }
    }

    private TrueResponse(Parcel parcel) {
        this.trueProfile = (TrueProfile) parcel.readParcelable(TrueProfile.class.getClassLoader());
        this.trueError = (TrueError) parcel.readParcelable(TrueError.class.getClassLoader());
        this.isSuccessful = Boolean.valueOf(parcel.readString()).booleanValue();
        this.truesdkVersion = "0.4.2";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.trueProfile, i);
        parcel.writeParcelable(this.trueError, i);
        parcel.writeString(String.valueOf(this.isSuccessful));
    }
}

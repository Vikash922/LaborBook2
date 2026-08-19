package com.razorpay;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class ApplicationDetails implements Parcelable {
    public static final Parcelable.Creator<ApplicationDetails> CREATOR = new Parcelable.Creator<ApplicationDetails>() { // from class: com.razorpay.ApplicationDetails.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApplicationDetails createFromParcel(Parcel parcel) {
            return new ApplicationDetails(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApplicationDetails[] newArray(int i) {
            return new ApplicationDetails[i];
        }
    };
    private String appLogoUrl;
    private String appName;
    private String iconBase64;
    private String packageName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    ApplicationDetails(String str, String str2, String str3, String str4) {
        this.appName = str;
        this.iconBase64 = str2;
        this.packageName = str3;
        this.appLogoUrl = str4;
    }

    public String getAppName() {
        return this.appName;
    }

    public String getIconBase64() {
        return this.iconBase64;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getAppLogoUrl() {
        return this.appLogoUrl;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.appName);
        parcel.writeString(this.iconBase64);
        parcel.writeString(this.packageName);
        parcel.writeString(this.appLogoUrl);
    }

    protected ApplicationDetails(Parcel parcel) {
        this.appName = parcel.readString();
        this.iconBase64 = parcel.readString();
        this.packageName = parcel.readString();
        this.appLogoUrl = parcel.readString();
    }
}

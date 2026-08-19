package com.truecaller.android.sdk.oAuth;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SdkOptionsDataBundle implements Parcelable {
    public static final Parcelable.Creator<SdkOptionsDataBundle> CREATOR = new Parcelable.Creator<SdkOptionsDataBundle>() { // from class: com.truecaller.android.sdk.oAuth.SdkOptionsDataBundle.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SdkOptionsDataBundle createFromParcel(Parcel parcel) {
            return new SdkOptionsDataBundle(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SdkOptionsDataBundle[] newArray(int i) {
            return new SdkOptionsDataBundle[i];
        }
    };
    private final int buttonColor;
    private final int buttonTextColor;
    private final int ctaTextOption;
    private final int headingOption;
    private final int loginTextPrefixOption;
    private final int titleOption;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected SdkOptionsDataBundle(Parcel parcel) {
        this.buttonColor = parcel.readInt();
        this.buttonTextColor = parcel.readInt();
        this.titleOption = parcel.readInt();
        this.ctaTextOption = parcel.readInt();
        this.loginTextPrefixOption = parcel.readInt();
        this.headingOption = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.buttonColor);
        parcel.writeInt(this.buttonTextColor);
        parcel.writeInt(this.titleOption);
        parcel.writeInt(this.ctaTextOption);
        parcel.writeInt(this.loginTextPrefixOption);
        parcel.writeInt(this.headingOption);
    }

    protected SdkOptionsDataBundle(int i, int i2, int i3, int i4, int i5, int i6) {
        this.buttonColor = i;
        this.buttonTextColor = i2;
        this.titleOption = i3;
        this.headingOption = i4;
        this.ctaTextOption = i5;
        this.loginTextPrefixOption = i6;
    }

    public int getButtonColor() {
        return this.buttonColor;
    }

    public int getButtonTextColor() {
        return this.buttonTextColor;
    }

    public int getTitleOption() {
        return this.titleOption;
    }

    public int getHeadingOption() {
        return this.headingOption;
    }

    public int getCtaTextOption() {
        return this.ctaTextOption;
    }

    public int getLoginTextPrefixOption() {
        return this.loginTextPrefixOption;
    }
}

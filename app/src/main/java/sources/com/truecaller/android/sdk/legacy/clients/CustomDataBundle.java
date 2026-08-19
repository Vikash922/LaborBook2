package com.truecaller.android.sdk.legacy.clients;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class CustomDataBundle implements Parcelable {
    private static final String BTN_COLOR = "CUSTOMDATA_BTN_COLOR";
    private static final String BTN_TEXT_COLOR = "CUSTOMDATA_BTN_TEXT_COLOR";
    public static final Parcelable.Creator<CustomDataBundle> CREATOR = new Parcelable.Creator<CustomDataBundle>() { // from class: com.truecaller.android.sdk.legacy.clients.CustomDataBundle.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomDataBundle createFromParcel(Parcel parcel) {
            return new CustomDataBundle(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomDataBundle[] newArray(int i) {
            return new CustomDataBundle[i];
        }
    };
    private static final String CTA_TEXT_PREFIX_OPTION = "CUSTOMDATA_CTA_TEXT_PREFIX_OPTION";
    private static final String LOGIN_TEXT_PREFIX_OPTION = "CUSTOMDATA_LOGIN_TEXT_PREFIX_OPTION";
    private static final String LOGIN_TEXT_SUFFIX_OPTION = "CUSTOMDATA_LOGIN_TEXT_SUFFIX_OPTION";
    private static final String PRIVACY_URL = "CUSTOMDATA_PRIVACY_URL";
    private static final String TERMS_URL = "CUSTOMDATA_TERMS_URL";
    private final int buttonColor;
    private final int buttonTextColor;
    private final int ctaTextPrefixOption;
    private final int loginTextPrefixOption;
    private final int loginTextSuffixOption;
    private final String privacyPolicyUrl;
    private final String termsOfServiceUrl;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CustomDataBundle(int i, int i2, String str, String str2, int i3, int i4, int i5) {
        this.buttonColor = i;
        this.buttonTextColor = i2;
        this.privacyPolicyUrl = str;
        this.termsOfServiceUrl = str2;
        this.ctaTextPrefixOption = i3;
        this.loginTextPrefixOption = i4;
        this.loginTextSuffixOption = i5;
    }

    private CustomDataBundle(Parcel parcel) {
        this.buttonColor = parcel.readInt();
        this.buttonTextColor = parcel.readInt();
        this.privacyPolicyUrl = parcel.readString();
        this.termsOfServiceUrl = parcel.readString();
        this.ctaTextPrefixOption = parcel.readInt();
        this.loginTextPrefixOption = parcel.readInt();
        this.loginTextSuffixOption = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.buttonColor);
        parcel.writeInt(this.buttonTextColor);
        parcel.writeString(this.privacyPolicyUrl);
        parcel.writeString(this.termsOfServiceUrl);
        parcel.writeInt(this.ctaTextPrefixOption);
        parcel.writeInt(this.loginTextPrefixOption);
        parcel.writeInt(this.loginTextSuffixOption);
    }

    public void writeToBundle(Bundle bundle) {
        bundle.putInt(BTN_COLOR, this.buttonColor);
        bundle.putInt(BTN_TEXT_COLOR, this.buttonTextColor);
        bundle.putString(PRIVACY_URL, this.privacyPolicyUrl);
        bundle.putString(TERMS_URL, this.termsOfServiceUrl);
        bundle.putInt(CTA_TEXT_PREFIX_OPTION, this.ctaTextPrefixOption);
        bundle.putInt(LOGIN_TEXT_PREFIX_OPTION, this.loginTextPrefixOption);
        bundle.putInt(LOGIN_TEXT_SUFFIX_OPTION, this.loginTextSuffixOption);
    }

    public CustomDataBundle(Bundle bundle) {
        this.buttonColor = bundle.getInt(BTN_COLOR, 0);
        this.buttonTextColor = bundle.getInt(BTN_TEXT_COLOR, 0);
        this.privacyPolicyUrl = bundle.getString(PRIVACY_URL, "");
        this.termsOfServiceUrl = bundle.getString(TERMS_URL, "");
        this.ctaTextPrefixOption = bundle.getInt(CTA_TEXT_PREFIX_OPTION, 0);
        this.loginTextPrefixOption = bundle.getInt(LOGIN_TEXT_PREFIX_OPTION, 0);
        this.loginTextSuffixOption = bundle.getInt(LOGIN_TEXT_SUFFIX_OPTION, 0);
    }

    public int getButtonColor() {
        return this.buttonColor;
    }

    public int getButtonTextColor() {
        return this.buttonTextColor;
    }

    public String getPrivacyPolicyUrl() {
        return this.privacyPolicyUrl;
    }

    public String getTermsOfServiceUrl() {
        return this.termsOfServiceUrl;
    }

    public int getCtaTextPrefixOption() {
        return this.ctaTextPrefixOption;
    }

    public int getLoginTextPrefixOption() {
        return this.loginTextPrefixOption;
    }

    public int getLoginTextSuffixOption() {
        return this.loginTextSuffixOption;
    }
}

package com.truecaller.android.sdk.common.models;

import com.google.gson.annotations.SerializedName;
import com.truecaller.android.sdk.common.network.VerificationService;

/* JADX INFO: loaded from: classes5.dex */
public class VerifyInstallationModel {

    @SerializedName("countryCodeName")
    private final String mCountryCodeName;

    @SerializedName("phoneNumber")
    private final String mPhoneNumber;

    @SerializedName("secretToken")
    public final String mSecretToken;

    @SerializedName(VerificationService.JSON_KEY_VERIFICATION_TOKEN)
    private final String mVerificationToken;

    public VerifyInstallationModel(String str, String str2, String str3, String str4) {
        this.mVerificationToken = str;
        this.mPhoneNumber = str2;
        this.mCountryCodeName = str3;
        this.mSecretToken = str4;
    }
}

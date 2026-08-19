package com.truecaller.android.sdk.common.models;

import android.os.Build;
import com.google.gson.annotations.SerializedName;
import com.truecaller.android.sdk.common.network.VerificationService;

/* JADX INFO: loaded from: classes5.dex */
public class CreateInstallationModel {
    private static final int CLIENT_ID = 15;
    private static final String CLIENT_OS = "android";

    @SerializedName("airplaneModeDisabled")
    private boolean airplaneModeDisabled;

    @SerializedName("countryCodeName")
    public final String countryCodeName;

    @SerializedName("deviceId")
    public final String deviceId;

    @SerializedName("hasTruecaller")
    public final boolean hasTruecaller;

    @SerializedName("phoneNumber")
    public final String phoneNumber;

    @SerializedName("phonePermission")
    private boolean phonePermission;

    @SerializedName("requestNonce")
    public final String requestNonce;

    @SerializedName("simState")
    private int simState;

    @SerializedName(VerificationService.OAUTH_CLIENT_ID_REQUEST_HEADER)
    private final int clientId = 15;

    @SerializedName("osId")
    private final int osId = 15;

    /* JADX INFO: renamed from: os */
    @SerializedName("os")
    private final String f3515os = "android";

    @SerializedName("version")
    private final String version = Build.VERSION.RELEASE;

    public CreateInstallationModel(String str, String str2, String str3, String str4, boolean z) {
        this.phoneNumber = str3;
        this.countryCodeName = str2;
        this.deviceId = str4;
        this.hasTruecaller = z;
        this.requestNonce = str;
    }

    public void setPhonePermission(boolean z) {
        this.phonePermission = z;
    }

    public void setSimState(int i) {
        this.simState = i;
    }

    public void setAirplaneModeDisabled(boolean z) {
        this.airplaneModeDisabled = z;
    }
}

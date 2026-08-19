package com.truecaller.android.sdk.common.network;

import com.truecaller.android.sdk.common.models.CreateInstallationModel;
import com.truecaller.android.sdk.common.models.VerifyInstallationModel;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes5.dex */
public interface VerificationService {
    public static final String BASE_URL = "https://sdk-otp-verification-noneu.truecaller.com/v3/otp/installation/";
    public static final String BASE_URL_OAUTH = "https://sdk-otp-verification-noneu.truecaller.com/v2/otp/client/installation/";
    public static final String FINGERPRINT_HEADER = "fingerPrint";
    public static final String JSON_KEY_ACCESS_TOKEN = "accessToken";
    public static final String JSON_KEY_PATTERN = "pattern";
    public static final String JSON_KEY_REQ_NONCE = "requestNonce";
    public static final String JSON_KEY_STATUS = "status";
    public static final String JSON_KEY_VERIFICATION_TOKEN = "verificationToken";
    public static final String KEY_REQUEST_HEADER = "appKey";
    public static final String OAUTH_CLIENT_ID_REQUEST_HEADER = "clientId";

    @POST("create")
    Call<Map<String, Object>> createInstallation(@Header(KEY_REQUEST_HEADER) String str, @Header(FINGERPRINT_HEADER) String str2, @Body CreateInstallationModel createInstallationModel);

    @POST("create")
    Call<Map<String, Object>> createInstallationOAuth(@Header(OAUTH_CLIENT_ID_REQUEST_HEADER) String str, @Header(FINGERPRINT_HEADER) String str2, @Body CreateInstallationModel createInstallationModel);

    @POST("verify")
    Call<Map<String, Object>> verifyInstallation(@Header(KEY_REQUEST_HEADER) String str, @Header(FINGERPRINT_HEADER) String str2, @Body VerifyInstallationModel verifyInstallationModel);

    @POST("verify")
    Call<Map<String, Object>> verifyInstallationOAuth(@Header(OAUTH_CLIENT_ID_REQUEST_HEADER) String str, @Header(FINGERPRINT_HEADER) String str2, @Body VerifyInstallationModel verifyInstallationModel);
}

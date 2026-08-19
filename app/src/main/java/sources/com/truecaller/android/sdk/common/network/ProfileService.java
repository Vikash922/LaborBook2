package com.truecaller.android.sdk.common.network;

import com.truecaller.android.sdk.common.models.TrueProfile;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes5.dex */
public interface ProfileService {
    public static final String ACCESS_TOKEN_PREFIX = "Bearer %s";
    public static final String BASE_URL = "https://outline.truecaller.com/v1/";
    public static final String KEY_REQUEST_HEADER = "Authorization";

    @POST("profile")
    Call<JSONObject> createProfile(@Header("Authorization") String str, @Body TrueProfile trueProfile);

    @GET("profile")
    Call<TrueProfile> fetchProfile(@Header("Authorization") String str);
}

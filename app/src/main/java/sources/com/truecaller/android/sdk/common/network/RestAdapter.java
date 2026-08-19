package com.truecaller.android.sdk.common.network;

import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes5.dex */
public class RestAdapter {
    public static final String JSON_KEY_ERRORS_LIST = "errors";
    public static final String JSON_KEY_ERROR_MESSAGE = "message";
    private static final String SDK_VARIANT_REQUEST_HEADER = "sdkVariant";
    private static final String SDK_VARIANT_VERSION_REQUEST_HEADER = "sdkVariantVersion";
    private static final String SDK_VERSION_REQUEST_HEADER = "sdkVersion";

    public static <T> T createService(String str, Class<T> cls, final String str2, final String str3, final String str4) {
        Retrofit.Builder builderAddConverterFactory = new Retrofit.Builder().baseUrl(str).addConverterFactory(GsonConverterFactory.create());
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.addInterceptor(new Interceptor() { // from class: com.truecaller.android.sdk.common.network.RestAdapter$$ExternalSyntheticLambda0
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                String str5 = str2;
                return chain.proceed(chain.request().newBuilder().addHeader("sdkVersion", str5).addHeader(RestAdapter.SDK_VARIANT_REQUEST_HEADER, str3).addHeader(RestAdapter.SDK_VARIANT_VERSION_REQUEST_HEADER, str4).build());
            }
        });
        builderAddConverterFactory.client(builder.build());
        return (T) builderAddConverterFactory.build().create(cls);
    }
}

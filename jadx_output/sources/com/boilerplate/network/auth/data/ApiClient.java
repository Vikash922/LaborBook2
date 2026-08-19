package com.boilerplate.network.auth.data;

import com.boilerplate.network.auth.data.remote.AuthApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007¢\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/boilerplate/network/auth/data/ApiClient;", "", "baseUrl", "", "<init>", "(Ljava/lang/String;)V", "getClient", "Lcom/boilerplate/network/auth/data/remote/AuthApi;", "kotlin.jvm.PlatformType", "()Lcom/boilerplate/network/auth/data/remote/AuthApi;", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ApiClient {
    private final String baseUrl;

    public ApiClient(String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        this.baseUrl = baseUrl;
    }

    public final AuthApi getClient() {
        return (AuthApi) new Retrofit.Builder().baseUrl(this.baseUrl).addConverterFactory(GsonConverterFactory.create()).build().create(AuthApi.class);
    }
}

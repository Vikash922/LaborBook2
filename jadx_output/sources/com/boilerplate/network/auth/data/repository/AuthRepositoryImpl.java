package com.boilerplate.network.auth.data.repository;

import com.boilerplate.network.NetworkHandler;
import com.boilerplate.network.NetworkResource;
import com.boilerplate.network.RefreshControl;
import com.boilerplate.network.auth.data.remote.AuthApi;
import com.boilerplate.network.auth.model.FixTokenResponse;
import com.boilerplate.network.model.NetworkResult;
import com.boilerplate.network.utils.NetworkConstants;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JB\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\"\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000bj\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b`\nH\u0096@¢\u0006\u0002\u0010\f¨\u0006\r"}, m2722d2 = {"Lcom/boilerplate/network/auth/data/repository/AuthRepositoryImpl;", "Lcom/boilerplate/network/auth/data/repository/AuthRepository;", "<init>", "()V", "generateAccessToken", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/boilerplate/network/auth/model/FixTokenResponse;", "baseUrl", "", "refreshToken", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AuthRepositoryImpl implements AuthRepository {
    @Override // com.boilerplate.network.auth.data.repository.AuthRepository
    public Object generateAccessToken(String str, HashMap<String, String> map, Continuation<? super NetworkResult<FixTokenResponse>> continuation) {
        NetworkHandler companion = NetworkHandler.INSTANCE.getInstance();
        return new NetworkResource((Function1) new C1099a((AuthApi) new Retrofit.Builder().baseUrl(companion.getIsDebug() ? NetworkConstants.BASE_URL_DEBUG : NetworkConstants.BASE_URL).client(companion.getOkHttpClient()).addConverterFactory(GsonConverterFactory.create()).build().create(AuthApi.class), map, null), (RefreshControl) null, true, 2, (DefaultConstructorMarker) null).queryWithoutFlow(continuation);
    }
}

package com.boilerplate.network.auth.data.remote;

import com.boilerplate.network.auth.model.FixTokenResponse;
import com.boilerplate.network.model.DataResponse;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032$\b\u0001\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\tj\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b`\u0007H§@¢\u0006\u0002\u0010\n¨\u0006\u000b"}, m2722d2 = {"Lcom/boilerplate/network/auth/data/remote/AuthApi;", "", "generateAccessToken", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/boilerplate/network/auth/model/FixTokenResponse;", "refreshToken", "Lkotlin/collections/HashMap;", "", "Ljava/util/HashMap;", "(Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface AuthApi {
    @POST("/atom/external/v1/auth/refresh-token")
    Object generateAccessToken(@Body HashMap<String, String> map, Continuation<? super Response<DataResponse<FixTokenResponse>>> continuation);
}

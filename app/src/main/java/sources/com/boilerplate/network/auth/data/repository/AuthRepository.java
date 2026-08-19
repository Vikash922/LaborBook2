package com.boilerplate.network.auth.data.repository;

import com.boilerplate.network.auth.model.FixTokenResponse;
import com.boilerplate.network.model.NetworkResult;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001JB\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\tj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\bH¦@¢\u0006\u0002\u0010\n¨\u0006\u000b"}, m2722d2 = {"Lcom/boilerplate/network/auth/data/repository/AuthRepository;", "", "generateAccessToken", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/boilerplate/network/auth/model/FixTokenResponse;", "baseUrl", "", "refreshToken", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface AuthRepository {
    Object generateAccessToken(String str, HashMap<String, String> map, Continuation<? super NetworkResult<FixTokenResponse>> continuation);
}

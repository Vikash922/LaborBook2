package com.rebuilt.app.auth.repository;

import com.boilerplate.network.model.NetworkResult;
import com.rebuilt.app.auth.model.request.AuthRequestBody;
import com.rebuilt.app.auth.model.request.AuthResponse;
import com.rebuilt.app.auth.model.request.TruecallerRequestBody;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: AuthRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\bJ$\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\bJ$\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00040\u00032\u0006\u0010\r\u001a\u00020\u000eH¦@¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, m2722d2 = {"Lcom/laborbook/auth/repository/AuthRepository;", "", "generateOtp", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "", "authRequestBody", "Lcom/laborbook/auth/model/request/AuthRequestBody;", "(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resendOtp", "verifyOtp", "Lcom/laborbook/auth/model/request/AuthResponse;", "truecallerLogin", "truecallerRequestBody", "Lcom/laborbook/auth/model/request/TruecallerRequestBody;", "(Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface AuthRepository {
    Object generateOtp(AuthRequestBody authRequestBody, Continuation<? super Flow<NetworkResult<Unit>>> continuation);

    Object resendOtp(AuthRequestBody authRequestBody, Continuation<? super Flow<NetworkResult<Unit>>> continuation);

    Object truecallerLogin(TruecallerRequestBody truecallerRequestBody, Continuation<? super Flow<NetworkResult<AuthResponse>>> continuation);

    Object verifyOtp(AuthRequestBody authRequestBody, Continuation<? super Flow<NetworkResult<AuthResponse>>> continuation);
}

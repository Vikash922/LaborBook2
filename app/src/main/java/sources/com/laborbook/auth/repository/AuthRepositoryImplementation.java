package com.laborbook.auth.repository;

import com.boilerplate.network.model.NetworkResult;
import com.laborbook.auth.model.request.AuthRequestBody;
import com.laborbook.auth.model.request.AuthResponse;
import com.laborbook.auth.model.request.TruecallerRequestBody;
import com.laborbook.auth.network.AuthNetworkModule;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: AuthRepositoryImplementation.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J$\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n0\t2\u0006\u0010\f\u001a\u00020\rH\u0096@¢\u0006\u0002\u0010\u000eJ$\u0010\u000f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n0\t2\u0006\u0010\f\u001a\u00020\rH\u0096@¢\u0006\u0002\u0010\u000eJ$\u0010\u0010\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\n0\t2\u0006\u0010\f\u001a\u00020\rH\u0096@¢\u0006\u0002\u0010\u000eJ$\u0010\u0012\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\n0\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0096@¢\u0006\u0002\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/auth/repository/AuthRepositoryImplementation;", "Lcom/laborbook/auth/repository/AuthRepository;", "authNetworkModule", "Lcom/laborbook/auth/network/AuthNetworkModule;", "<init>", "(Lcom/laborbook/auth/network/AuthNetworkModule;)V", "getAuthNetworkModule", "()Lcom/laborbook/auth/network/AuthNetworkModule;", "generateOtp", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "", "authRequestBody", "Lcom/laborbook/auth/model/request/AuthRequestBody;", "(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resendOtp", "verifyOtp", "Lcom/laborbook/auth/model/request/AuthResponse;", "truecallerLogin", "truecallerRequestBody", "Lcom/laborbook/auth/model/request/TruecallerRequestBody;", "(Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AuthRepositoryImplementation implements AuthRepository {
    private final AuthNetworkModule authNetworkModule;

    public AuthRepositoryImplementation(AuthNetworkModule authNetworkModule) {
        Intrinsics.checkNotNullParameter(authNetworkModule, "authNetworkModule");
        this.authNetworkModule = authNetworkModule;
    }

    public final AuthNetworkModule getAuthNetworkModule() {
        return this.authNetworkModule;
    }

    @Override // com.laborbook.auth.repository.AuthRepository
    public Object generateOtp(AuthRequestBody authRequestBody, Continuation<? super Flow<NetworkResult<Unit>>> continuation) {
        return this.authNetworkModule.generateOtp(authRequestBody, continuation);
    }

    @Override // com.laborbook.auth.repository.AuthRepository
    public Object resendOtp(AuthRequestBody authRequestBody, Continuation<? super Flow<NetworkResult<Unit>>> continuation) {
        return this.authNetworkModule.generateOtp(authRequestBody, continuation);
    }

    @Override // com.laborbook.auth.repository.AuthRepository
    public Object verifyOtp(AuthRequestBody authRequestBody, Continuation<? super Flow<NetworkResult<AuthResponse>>> continuation) {
        return this.authNetworkModule.verifyOtp(authRequestBody, continuation);
    }

    @Override // com.laborbook.auth.repository.AuthRepository
    public Object truecallerLogin(TruecallerRequestBody truecallerRequestBody, Continuation<? super Flow<NetworkResult<AuthResponse>>> continuation) {
        return this.authNetworkModule.truecallerLogin(truecallerRequestBody, continuation);
    }
}

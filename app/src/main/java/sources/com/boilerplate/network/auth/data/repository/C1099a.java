package com.boilerplate.network.auth.data.repository;

import com.boilerplate.network.auth.data.remote.AuthApi;
import com.boilerplate.network.auth.model.FixTokenResponse;
import com.boilerplate.network.model.DataResponse;
import java.util.HashMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import retrofit2.Response;

/* JADX INFO: renamed from: com.boilerplate.network.auth.data.repository.a */
/* JADX INFO: loaded from: classes3.dex */
public final class C1099a extends SuspendLambda implements Function1 {
    final /* synthetic */ AuthApi $client;
    final /* synthetic */ HashMap<String, String> $refreshToken;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1099a(AuthApi authApi, HashMap<String, String> map, Continuation<? super C1099a> continuation) {
        super(1, continuation);
        this.$client = authApi;
        this.$refreshToken = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new C1099a(this.$client, this.$refreshToken, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            AuthApi authApi = this.$client;
            HashMap<String, String> map = this.$refreshToken;
            this.label = 1;
            obj = authApi.generateAccessToken(map, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Response<DataResponse<FixTokenResponse>>> continuation) {
        return ((C1099a) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }
}

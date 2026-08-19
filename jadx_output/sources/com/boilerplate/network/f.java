package com.boilerplate.network;

import com.boilerplate.network.model.DataResponse;
import com.boilerplate.network.model.NetworkResult;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public final class f extends SuspendLambda implements Function2 {
    final /* synthetic */ Ref.ObjectRef<NetworkResult<Object>> $networkResult;
    final /* synthetic */ Ref.ObjectRef<Response<DataResponse<Object>>> $res;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ NetworkResource<Object> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Ref.ObjectRef<Response<DataResponse<Object>>> objectRef, NetworkResource<Object> networkResource, Ref.ObjectRef<NetworkResult<Object>> objectRef2, Continuation<? super f> continuation) {
        super(2, continuation);
        this.$res = objectRef;
        this.this$0 = networkResource;
        this.$networkResult = objectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new f(this.$res, this.this$0, this.$networkResult, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b5 A[PHI: r1 r2 r3 r5
      0x00b5: PHI (r1v3 java.lang.Object) = (r1v2 java.lang.Object), (r1v6 java.lang.Object) binds: [B:35:0x00b3, B:32:0x009f] A[DONT_GENERATE, DONT_INLINE]
      0x00b5: PHI (r2v4 retrofit2.Response<com.boilerplate.network.model.DataResponse<java.lang.Object>>) = 
      (r2v3 retrofit2.Response<com.boilerplate.network.model.DataResponse<java.lang.Object>>)
      (r2v7 retrofit2.Response<com.boilerplate.network.model.DataResponse<java.lang.Object>>)
     binds: [B:35:0x00b3, B:32:0x009f] A[DONT_GENERATE, DONT_INLINE]
      0x00b5: PHI (r3v4 com.boilerplate.network.model.NetworkResult$Companion) = 
      (r3v3 com.boilerplate.network.model.NetworkResult$Companion)
      (r3v6 com.boilerplate.network.model.NetworkResult$Companion)
     binds: [B:35:0x00b3, B:32:0x009f] A[DONT_GENERATE, DONT_INLINE]
      0x00b5: PHI (r5v3 java.lang.String) = (r5v2 java.lang.String), (r5v5 java.lang.String) binds: [B:35:0x00b3, B:32:0x009f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r1v5, types: [T, com.boilerplate.network.model.NetworkResult] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.boilerplate.network.f.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<Unit>> continuation) {
        return ((f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}

package com.rebuilt.app.keep.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: SubscriptionRepositoryImpl.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.keep.repository.SubscriptionRepositoryImpl", m2735f = "SubscriptionRepositoryImpl.kt", m2736i = {0, 1}, m2737l = {71, 71}, m2738m = "createSubscription-0E7RQCE", m2739n = {"result", "result"}, m2740s = {"L$0", "L$0"})
final class SubscriptionRepositoryImpl$createSubscription$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SubscriptionRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubscriptionRepositoryImpl$createSubscription$1(SubscriptionRepositoryImpl subscriptionRepositoryImpl, Continuation<? super SubscriptionRepositoryImpl$createSubscription$1> continuation) {
        super(continuation);
        this.this$0 = subscriptionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo3194createSubscription0E7RQCE = this.this$0.mo3194createSubscription0E7RQCE(null, null, this);
        return objMo3194createSubscription0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo3194createSubscription0E7RQCE : Result.m3324boximpl(objMo3194createSubscription0E7RQCE);
    }
}

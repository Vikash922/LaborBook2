package com.laborbook.keep.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: SubscriptionRepositoryImpl.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.repository.SubscriptionRepositoryImpl", m2735f = "SubscriptionRepositoryImpl.kt", m2736i = {0, 1}, m2737l = {44, 44}, m2738m = "getUserSubscription-gIAlu-s", m2739n = {"result", "result"}, m2740s = {"L$0", "L$0"})
final class SubscriptionRepositoryImpl$getUserSubscription$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SubscriptionRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubscriptionRepositoryImpl$getUserSubscription$1(SubscriptionRepositoryImpl subscriptionRepositoryImpl, Continuation<? super SubscriptionRepositoryImpl$getUserSubscription$1> continuation) {
        super(continuation);
        this.this$0 = subscriptionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo3196getUserSubscriptiongIAlus = this.this$0.mo3196getUserSubscriptiongIAlus(null, this);
        return objMo3196getUserSubscriptiongIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo3196getUserSubscriptiongIAlus : Result.m3324boximpl(objMo3196getUserSubscriptiongIAlus);
    }
}

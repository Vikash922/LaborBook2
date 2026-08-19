package com.laborbook.keep.usecase;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: SubscriptionUseCaseImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.usecase.SubscriptionUseCaseImpl", m2735f = "SubscriptionUseCaseImpl.kt", m2736i = {}, m2737l = {34}, m2738m = "initiateSubscription-yxL6bBk", m2739n = {}, m2740s = {})
final class SubscriptionUseCaseImpl$initiateSubscription$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SubscriptionUseCaseImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubscriptionUseCaseImpl$initiateSubscription$1(SubscriptionUseCaseImpl subscriptionUseCaseImpl, Continuation<? super SubscriptionUseCaseImpl$initiateSubscription$1> continuation) {
        super(continuation);
        this.this$0 = subscriptionUseCaseImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo3287initiateSubscriptionyxL6bBk = this.this$0.mo3287initiateSubscriptionyxL6bBk(null, null, null, false, this);
        return objMo3287initiateSubscriptionyxL6bBk == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo3287initiateSubscriptionyxL6bBk : Result.m3324boximpl(objMo3287initiateSubscriptionyxL6bBk);
    }
}

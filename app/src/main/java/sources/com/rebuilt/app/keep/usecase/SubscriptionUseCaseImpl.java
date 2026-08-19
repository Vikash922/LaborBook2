package com.rebuilt.app.keep.usecase;

import com.rebuilt.app.keep.repository.SubscriptionRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SubscriptionUseCaseImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J$\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b\f\u0010\rJ\u001e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b\u0010\u0010\rJ6\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0096@¢\u0006\u0004\b\u0017\u0010\u0018J&\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\u00072\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@¢\u0006\u0004\b\u001d\u0010\u001eJ\u001e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u00072\u0006\u0010\u001a\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b!\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, m2722d2 = {"Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;", "Lcom/laborbook/keep/usecase/SubscriptionUseCase;", "subscriptionRepository", "Lcom/laborbook/keep/repository/SubscriptionRepository;", "<init>", "(Lcom/laborbook/keep/repository/SubscriptionRepository;)V", "getAvailablePlans", "Lkotlin/Result;", "", "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "userId", "", "getAvailablePlans-gIAlu-s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkSubscriptionStatus", "Lcom/laborbook/keep/model/subscription/UserSubscription;", "checkSubscriptionStatus-gIAlu-s", "initiateSubscription", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;", "planId", "upiId", "hasTrial", "", "initiateSubscription-yxL6bBk", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "verifyPayment", "subscriptionId", "paymentData", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;", "verifyPayment-0E7RQCE", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelSubscription", "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;", "cancelSubscription-gIAlu-s", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class SubscriptionUseCaseImpl implements SubscriptionUseCase {
    private final SubscriptionRepository subscriptionRepository;

    public SubscriptionUseCaseImpl(SubscriptionRepository subscriptionRepository) {
        Intrinsics.checkNotNullParameter(subscriptionRepository, "subscriptionRepository");
        this.subscriptionRepository = subscriptionRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.rebuilt.app.keep.usecase.SubscriptionUseCase
    /* JADX INFO: renamed from: getAvailablePlans-gIAlu-s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3286getAvailablePlansgIAlus(java.lang.String r5, kotlin.coroutines.Continuation<? super kotlin.Result<? extends java.util.List<com.rebuilt.app.keep.model.subscription.SubscriptionPlan>>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$getAvailablePlans$1
            if (r0 == 0) goto L14
            r0 = r6
            com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$getAvailablePlans$1 r0 = (com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$getAvailablePlans$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$getAvailablePlans$1 r0 = new com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$getAvailablePlans$1
            r0.<init>(r4, r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.getValue()
            goto L46
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            com.rebuilt.app.keep.repository.SubscriptionRepository r6 = r4.subscriptionRepository
            r0.label = r3
            java.lang.Object r5 = r6.mo3195getSubscriptionPlansgIAlus(r5, r0)
            if (r5 != r1) goto L46
            return r1
        L46:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl.mo3286getAvailablePlansgIAlus(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.rebuilt.app.keep.usecase.SubscriptionUseCase
    /* JADX INFO: renamed from: checkSubscriptionStatus-gIAlu-s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3285checkSubscriptionStatusgIAlus(java.lang.String r5, kotlin.coroutines.Continuation<? super kotlin.Result<com.rebuilt.app.keep.model.subscription.UserSubscription>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$checkSubscriptionStatus$1
            if (r0 == 0) goto L14
            r0 = r6
            com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$checkSubscriptionStatus$1 r0 = (com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$checkSubscriptionStatus$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$checkSubscriptionStatus$1 r0 = new com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$checkSubscriptionStatus$1
            r0.<init>(r4, r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.getValue()
            goto L46
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            com.rebuilt.app.keep.repository.SubscriptionRepository r6 = r4.subscriptionRepository
            r0.label = r3
            java.lang.Object r5 = r6.mo3196getUserSubscriptiongIAlus(r5, r0)
            if (r5 != r1) goto L46
            return r1
        L46:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl.mo3285checkSubscriptionStatusgIAlus(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.rebuilt.app.keep.usecase.SubscriptionUseCase
    /* JADX INFO: renamed from: initiateSubscription-yxL6bBk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3287initiateSubscriptionyxL6bBk(java.lang.String r4, java.lang.String r5, java.lang.String r6, boolean r7, kotlin.coroutines.Continuation<? super kotlin.Result<com.rebuilt.app.keep.model.subscription.CreateSubscriptionResponse>> r8) {
        /*
            r3 = this;
            boolean r7 = r8 instanceof com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$initiateSubscription$1
            if (r7 == 0) goto L14
            r7 = r8
            com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$initiateSubscription$1 r7 = (com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$initiateSubscription$1) r7
            int r0 = r7.label
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L14
            int r8 = r7.label
            int r8 = r8 - r1
            r7.label = r8
            goto L19
        L14:
            com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$initiateSubscription$1 r7 = new com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$initiateSubscription$1
            r7.<init>(r3, r8)
        L19:
            java.lang.Object r8 = r7.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r2 = 1
            if (r1 == 0) goto L38
            if (r1 != r2) goto L30
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r4 = r8.getValue()
            goto L4d
        L30:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            com.rebuilt.app.keep.model.subscription.CreateSubscriptionRequest r8 = new com.rebuilt.app.keep.model.subscription.CreateSubscriptionRequest
            java.lang.String r1 = "upi"
            r8.<init>(r5, r1, r6)
            com.rebuilt.app.keep.repository.SubscriptionRepository r5 = r3.subscriptionRepository
            r7.label = r2
            java.lang.Object r4 = r5.mo3194createSubscription0E7RQCE(r4, r8, r7)
            if (r4 != r0) goto L4d
            return r0
        L4d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl.mo3287initiateSubscriptionyxL6bBk(java.lang.String, java.lang.String, java.lang.String, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.rebuilt.app.keep.usecase.SubscriptionUseCase
    /* JADX INFO: renamed from: verifyPayment-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3288verifyPayment0E7RQCE(java.lang.String r5, com.rebuilt.app.keep.model.subscription.VerifySubscriptionRequest r6, kotlin.coroutines.Continuation<? super kotlin.Result<java.lang.Boolean>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$verifyPayment$1
            if (r0 == 0) goto L14
            r0 = r7
            com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$verifyPayment$1 r0 = (com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$verifyPayment$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$verifyPayment$1 r0 = new com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$verifyPayment$1
            r0.<init>(r4, r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L30
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Exception -> L30
            java.lang.Object r5 = r7.getValue()     // Catch: java.lang.Exception -> L30
            goto L48
        L30:
            r5 = move-exception
            goto L5f
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            kotlin.ResultKt.throwOnFailure(r7)
            com.rebuilt.app.keep.repository.SubscriptionRepository r7 = r4.subscriptionRepository     // Catch: java.lang.Exception -> L30
            r0.label = r3     // Catch: java.lang.Exception -> L30
            java.lang.Object r5 = r7.mo3197verifySubscription0E7RQCE(r5, r6, r0)     // Catch: java.lang.Exception -> L30
            if (r5 != r1) goto L48
            return r1
        L48:
            boolean r6 = kotlin.Result.m3332isSuccessimpl(r5)     // Catch: java.lang.Exception -> L30
            if (r6 == 0) goto L5a
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Exception -> L30
            com.rebuilt.app.keep.model.subscription.VerifySubscriptionResponse r5 = (com.rebuilt.app.keep.model.subscription.VerifySubscriptionResponse) r5     // Catch: java.lang.Exception -> L30
            boolean r5 = r5.getVerified()     // Catch: java.lang.Exception -> L30
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)     // Catch: java.lang.Exception -> L30
        L5a:
            java.lang.Object r5 = kotlin.Result.m3325constructorimpl(r5)     // Catch: java.lang.Exception -> L30
            goto L6b
        L5f:
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            java.lang.Object r5 = kotlin.ResultKt.createFailure(r5)
            java.lang.Object r5 = kotlin.Result.m3325constructorimpl(r5)
        L6b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl.mo3288verifyPayment0E7RQCE(java.lang.String, com.rebuilt.app.keep.model.subscription.VerifySubscriptionRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.rebuilt.app.keep.usecase.SubscriptionUseCase
    /* JADX INFO: renamed from: cancelSubscription-gIAlu-s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3284cancelSubscriptiongIAlus(java.lang.String r5, kotlin.coroutines.Continuation<? super kotlin.Result<com.rebuilt.app.keep.model.subscription.CancelSubscriptionResponse>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$cancelSubscription$1
            if (r0 == 0) goto L14
            r0 = r6
            com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$cancelSubscription$1 r0 = (com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$cancelSubscription$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$cancelSubscription$1 r0 = new com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl$cancelSubscription$1
            r0.<init>(r4, r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.getValue()
            goto L46
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            com.rebuilt.app.keep.repository.SubscriptionRepository r6 = r4.subscriptionRepository
            r0.label = r3
            java.lang.Object r5 = r6.mo3193cancelSubscriptiongIAlus(r5, r0)
            if (r5 != r1) goto L46
            return r1
        L46:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl.mo3284cancelSubscriptiongIAlus(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

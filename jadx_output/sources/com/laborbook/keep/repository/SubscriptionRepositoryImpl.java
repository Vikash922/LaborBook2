package com.laborbook.keep.repository;

import com.laborbook.keep.network.KeepNetworkModule;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SubscriptionRepositoryImpl.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J$\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b\f\u0010\rJ\u001e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b\u0010\u0010\rJ&\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0096@¢\u0006\u0004\b\u0015\u0010\u0016J&\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00072\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u001aH\u0096@¢\u0006\u0004\b\u001b\u0010\u001cJ\u001e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00072\u0006\u0010\u0019\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b\u001f\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, m2722d2 = {"Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;", "Lcom/laborbook/keep/repository/SubscriptionRepository;", "networkModule", "Lcom/laborbook/keep/network/KeepNetworkModule;", "<init>", "(Lcom/laborbook/keep/network/KeepNetworkModule;)V", "getSubscriptionPlans", "Lkotlin/Result;", "", "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "userId", "", "getSubscriptionPlans-gIAlu-s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserSubscription", "Lcom/laborbook/keep/model/subscription/UserSubscription;", "getUserSubscription-gIAlu-s", "createSubscription", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;", "request", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;", "createSubscription-0E7RQCE", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "verifySubscription", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;", "subscriptionId", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;", "verifySubscription-0E7RQCE", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelSubscription", "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;", "cancelSubscription-gIAlu-s", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class SubscriptionRepositoryImpl implements SubscriptionRepository {
    private final KeepNetworkModule networkModule;

    public SubscriptionRepositoryImpl(KeepNetworkModule networkModule) {
        Intrinsics.checkNotNullParameter(networkModule, "networkModule");
        this.networkModule = networkModule;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0073 A[Catch: Exception -> 0x008c, TryCatch #0 {Exception -> 0x008c, blocks: (B:13:0x002d, B:28:0x006d, B:30:0x0073, B:31:0x0078, B:18:0x003d, B:25:0x0059, B:21:0x0044), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078 A[Catch: Exception -> 0x008c, TRY_LEAVE, TryCatch #0 {Exception -> 0x008c, blocks: (B:13:0x002d, B:28:0x006d, B:30:0x0073, B:31:0x0078, B:18:0x003d, B:25:0x0059, B:21:0x0044), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.laborbook.keep.repository.SubscriptionRepository
    /* JADX INFO: renamed from: getSubscriptionPlans-gIAlu-s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3195getSubscriptionPlansgIAlus(java.lang.String r7, kotlin.coroutines.Continuation<? super kotlin.Result<? extends java.util.List<com.laborbook.keep.model.subscription.SubscriptionPlan>>> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.laborbook.keep.repository.SubscriptionRepositoryImpl$getSubscriptionPlans$1
            if (r0 == 0) goto L14
            r0 = r8
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$getSubscriptionPlans$1 r0 = (com.laborbook.keep.repository.SubscriptionRepositoryImpl$getSubscriptionPlans$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$getSubscriptionPlans$1 r0 = new com.laborbook.keep.repository.SubscriptionRepositoryImpl$getSubscriptionPlans$1
            r0.<init>(r6, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L8c
            goto L6d
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L8c
            goto L59
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$ObjectRef r8 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Exception -> L8c
            r8.<init>()     // Catch: java.lang.Exception -> L8c
            com.laborbook.keep.network.KeepNetworkModule r2 = r6.networkModule     // Catch: java.lang.Exception -> L8c
            r0.L$0 = r8     // Catch: java.lang.Exception -> L8c
            r0.label = r4     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = r2.getSubscriptionPlans(r7, r0)     // Catch: java.lang.Exception -> L8c
            if (r7 != r1) goto L56
            return r1
        L56:
            r5 = r8
            r8 = r7
            r7 = r5
        L59:
            kotlinx.coroutines.flow.Flow r8 = (kotlinx.coroutines.flow.Flow) r8     // Catch: java.lang.Exception -> L8c
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$getSubscriptionPlans$2 r2 = new com.laborbook.keep.repository.SubscriptionRepositoryImpl$getSubscriptionPlans$2     // Catch: java.lang.Exception -> L8c
            r2.<init>()     // Catch: java.lang.Exception -> L8c
            kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2     // Catch: java.lang.Exception -> L8c
            r0.L$0 = r7     // Catch: java.lang.Exception -> L8c
            r0.label = r3     // Catch: java.lang.Exception -> L8c
            java.lang.Object r8 = r8.collect(r2, r0)     // Catch: java.lang.Exception -> L8c
            if (r8 != r1) goto L6d
            return r1
        L6d:
            T r7 = r7.element     // Catch: java.lang.Exception -> L8c
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Exception -> L8c
            if (r7 == 0) goto L78
            java.lang.Object r7 = r7.getValue()     // Catch: java.lang.Exception -> L8c
            goto L99
        L78:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Exception -> L8c
            java.lang.Exception r7 = new java.lang.Exception     // Catch: java.lang.Exception -> L8c
            java.lang.String r8 = "No response received"
            r7.<init>(r8)     // Catch: java.lang.Exception -> L8c
            java.lang.Throwable r7 = (java.lang.Throwable) r7     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = kotlin.Result.m3325constructorimpl(r7)     // Catch: java.lang.Exception -> L8c
            goto L99
        L8c:
            r7 = move-exception
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)
            java.lang.Object r7 = kotlin.Result.m3325constructorimpl(r7)
        L99:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.repository.SubscriptionRepositoryImpl.mo3195getSubscriptionPlansgIAlus(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0073 A[Catch: Exception -> 0x008c, TryCatch #0 {Exception -> 0x008c, blocks: (B:13:0x002d, B:28:0x006d, B:30:0x0073, B:31:0x0078, B:18:0x003d, B:25:0x0059, B:21:0x0044), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078 A[Catch: Exception -> 0x008c, TRY_LEAVE, TryCatch #0 {Exception -> 0x008c, blocks: (B:13:0x002d, B:28:0x006d, B:30:0x0073, B:31:0x0078, B:18:0x003d, B:25:0x0059, B:21:0x0044), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.laborbook.keep.repository.SubscriptionRepository
    /* JADX INFO: renamed from: getUserSubscription-gIAlu-s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3196getUserSubscriptiongIAlus(java.lang.String r7, kotlin.coroutines.Continuation<? super kotlin.Result<com.laborbook.keep.model.subscription.UserSubscription>> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.laborbook.keep.repository.SubscriptionRepositoryImpl$getUserSubscription$1
            if (r0 == 0) goto L14
            r0 = r8
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$getUserSubscription$1 r0 = (com.laborbook.keep.repository.SubscriptionRepositoryImpl$getUserSubscription$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$getUserSubscription$1 r0 = new com.laborbook.keep.repository.SubscriptionRepositoryImpl$getUserSubscription$1
            r0.<init>(r6, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L8c
            goto L6d
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L8c
            goto L59
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$ObjectRef r8 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Exception -> L8c
            r8.<init>()     // Catch: java.lang.Exception -> L8c
            com.laborbook.keep.network.KeepNetworkModule r2 = r6.networkModule     // Catch: java.lang.Exception -> L8c
            r0.L$0 = r8     // Catch: java.lang.Exception -> L8c
            r0.label = r4     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = r2.getUserSubscription(r7, r0)     // Catch: java.lang.Exception -> L8c
            if (r7 != r1) goto L56
            return r1
        L56:
            r5 = r8
            r8 = r7
            r7 = r5
        L59:
            kotlinx.coroutines.flow.Flow r8 = (kotlinx.coroutines.flow.Flow) r8     // Catch: java.lang.Exception -> L8c
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$getUserSubscription$2 r2 = new com.laborbook.keep.repository.SubscriptionRepositoryImpl$getUserSubscription$2     // Catch: java.lang.Exception -> L8c
            r2.<init>()     // Catch: java.lang.Exception -> L8c
            kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2     // Catch: java.lang.Exception -> L8c
            r0.L$0 = r7     // Catch: java.lang.Exception -> L8c
            r0.label = r3     // Catch: java.lang.Exception -> L8c
            java.lang.Object r8 = r8.collect(r2, r0)     // Catch: java.lang.Exception -> L8c
            if (r8 != r1) goto L6d
            return r1
        L6d:
            T r7 = r7.element     // Catch: java.lang.Exception -> L8c
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Exception -> L8c
            if (r7 == 0) goto L78
            java.lang.Object r7 = r7.getValue()     // Catch: java.lang.Exception -> L8c
            goto L99
        L78:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Exception -> L8c
            java.lang.Exception r7 = new java.lang.Exception     // Catch: java.lang.Exception -> L8c
            java.lang.String r8 = "No response received"
            r7.<init>(r8)     // Catch: java.lang.Exception -> L8c
            java.lang.Throwable r7 = (java.lang.Throwable) r7     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = kotlin.Result.m3325constructorimpl(r7)     // Catch: java.lang.Exception -> L8c
            goto L99
        L8c:
            r7 = move-exception
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)
            java.lang.Object r7 = kotlin.Result.m3325constructorimpl(r7)
        L99:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.repository.SubscriptionRepositoryImpl.mo3196getUserSubscriptiongIAlus(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0073 A[Catch: Exception -> 0x008c, TryCatch #0 {Exception -> 0x008c, blocks: (B:13:0x002d, B:28:0x006d, B:30:0x0073, B:31:0x0078, B:18:0x003d, B:25:0x0059, B:21:0x0044), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078 A[Catch: Exception -> 0x008c, TRY_LEAVE, TryCatch #0 {Exception -> 0x008c, blocks: (B:13:0x002d, B:28:0x006d, B:30:0x0073, B:31:0x0078, B:18:0x003d, B:25:0x0059, B:21:0x0044), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.laborbook.keep.repository.SubscriptionRepository
    /* JADX INFO: renamed from: createSubscription-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3194createSubscription0E7RQCE(java.lang.String r7, com.laborbook.keep.model.subscription.CreateSubscriptionRequest r8, kotlin.coroutines.Continuation<? super kotlin.Result<com.laborbook.keep.model.subscription.CreateSubscriptionResponse>> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.laborbook.keep.repository.SubscriptionRepositoryImpl$createSubscription$1
            if (r0 == 0) goto L14
            r0 = r9
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$createSubscription$1 r0 = (com.laborbook.keep.repository.SubscriptionRepositoryImpl$createSubscription$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$createSubscription$1 r0 = new com.laborbook.keep.repository.SubscriptionRepositoryImpl$createSubscription$1
            r0.<init>(r6, r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L8c
            goto L6d
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L8c
            goto L59
        L41:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$ObjectRef r9 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Exception -> L8c
            r9.<init>()     // Catch: java.lang.Exception -> L8c
            com.laborbook.keep.network.KeepNetworkModule r2 = r6.networkModule     // Catch: java.lang.Exception -> L8c
            r0.L$0 = r9     // Catch: java.lang.Exception -> L8c
            r0.label = r4     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = r2.createSubscription(r7, r8, r0)     // Catch: java.lang.Exception -> L8c
            if (r7 != r1) goto L56
            return r1
        L56:
            r5 = r9
            r9 = r7
            r7 = r5
        L59:
            kotlinx.coroutines.flow.Flow r9 = (kotlinx.coroutines.flow.Flow) r9     // Catch: java.lang.Exception -> L8c
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$createSubscription$2 r8 = new com.laborbook.keep.repository.SubscriptionRepositoryImpl$createSubscription$2     // Catch: java.lang.Exception -> L8c
            r8.<init>()     // Catch: java.lang.Exception -> L8c
            kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8     // Catch: java.lang.Exception -> L8c
            r0.L$0 = r7     // Catch: java.lang.Exception -> L8c
            r0.label = r3     // Catch: java.lang.Exception -> L8c
            java.lang.Object r8 = r9.collect(r8, r0)     // Catch: java.lang.Exception -> L8c
            if (r8 != r1) goto L6d
            return r1
        L6d:
            T r7 = r7.element     // Catch: java.lang.Exception -> L8c
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Exception -> L8c
            if (r7 == 0) goto L78
            java.lang.Object r7 = r7.getValue()     // Catch: java.lang.Exception -> L8c
            goto L99
        L78:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Exception -> L8c
            java.lang.Exception r7 = new java.lang.Exception     // Catch: java.lang.Exception -> L8c
            java.lang.String r8 = "No response received"
            r7.<init>(r8)     // Catch: java.lang.Exception -> L8c
            java.lang.Throwable r7 = (java.lang.Throwable) r7     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = kotlin.Result.m3325constructorimpl(r7)     // Catch: java.lang.Exception -> L8c
            goto L99
        L8c:
            r7 = move-exception
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)
            java.lang.Object r7 = kotlin.Result.m3325constructorimpl(r7)
        L99:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.repository.SubscriptionRepositoryImpl.mo3194createSubscription0E7RQCE(java.lang.String, com.laborbook.keep.model.subscription.CreateSubscriptionRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0073 A[Catch: Exception -> 0x008c, TryCatch #0 {Exception -> 0x008c, blocks: (B:13:0x002d, B:28:0x006d, B:30:0x0073, B:31:0x0078, B:18:0x003d, B:25:0x0059, B:21:0x0044), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078 A[Catch: Exception -> 0x008c, TRY_LEAVE, TryCatch #0 {Exception -> 0x008c, blocks: (B:13:0x002d, B:28:0x006d, B:30:0x0073, B:31:0x0078, B:18:0x003d, B:25:0x0059, B:21:0x0044), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.laborbook.keep.repository.SubscriptionRepository
    /* JADX INFO: renamed from: verifySubscription-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3197verifySubscription0E7RQCE(java.lang.String r7, com.laborbook.keep.model.subscription.VerifySubscriptionRequest r8, kotlin.coroutines.Continuation<? super kotlin.Result<com.laborbook.keep.model.subscription.VerifySubscriptionResponse>> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.laborbook.keep.repository.SubscriptionRepositoryImpl$verifySubscription$1
            if (r0 == 0) goto L14
            r0 = r9
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$verifySubscription$1 r0 = (com.laborbook.keep.repository.SubscriptionRepositoryImpl$verifySubscription$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$verifySubscription$1 r0 = new com.laborbook.keep.repository.SubscriptionRepositoryImpl$verifySubscription$1
            r0.<init>(r6, r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L8c
            goto L6d
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L8c
            goto L59
        L41:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$ObjectRef r9 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Exception -> L8c
            r9.<init>()     // Catch: java.lang.Exception -> L8c
            com.laborbook.keep.network.KeepNetworkModule r2 = r6.networkModule     // Catch: java.lang.Exception -> L8c
            r0.L$0 = r9     // Catch: java.lang.Exception -> L8c
            r0.label = r4     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = r2.verifySubscription(r7, r8, r0)     // Catch: java.lang.Exception -> L8c
            if (r7 != r1) goto L56
            return r1
        L56:
            r5 = r9
            r9 = r7
            r7 = r5
        L59:
            kotlinx.coroutines.flow.Flow r9 = (kotlinx.coroutines.flow.Flow) r9     // Catch: java.lang.Exception -> L8c
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$verifySubscription$2 r8 = new com.laborbook.keep.repository.SubscriptionRepositoryImpl$verifySubscription$2     // Catch: java.lang.Exception -> L8c
            r8.<init>()     // Catch: java.lang.Exception -> L8c
            kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8     // Catch: java.lang.Exception -> L8c
            r0.L$0 = r7     // Catch: java.lang.Exception -> L8c
            r0.label = r3     // Catch: java.lang.Exception -> L8c
            java.lang.Object r8 = r9.collect(r8, r0)     // Catch: java.lang.Exception -> L8c
            if (r8 != r1) goto L6d
            return r1
        L6d:
            T r7 = r7.element     // Catch: java.lang.Exception -> L8c
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Exception -> L8c
            if (r7 == 0) goto L78
            java.lang.Object r7 = r7.getValue()     // Catch: java.lang.Exception -> L8c
            goto L99
        L78:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Exception -> L8c
            java.lang.Exception r7 = new java.lang.Exception     // Catch: java.lang.Exception -> L8c
            java.lang.String r8 = "No response received"
            r7.<init>(r8)     // Catch: java.lang.Exception -> L8c
            java.lang.Throwable r7 = (java.lang.Throwable) r7     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = kotlin.Result.m3325constructorimpl(r7)     // Catch: java.lang.Exception -> L8c
            goto L99
        L8c:
            r7 = move-exception
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)
            java.lang.Object r7 = kotlin.Result.m3325constructorimpl(r7)
        L99:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.repository.SubscriptionRepositoryImpl.mo3197verifySubscription0E7RQCE(java.lang.String, com.laborbook.keep.model.subscription.VerifySubscriptionRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0073 A[Catch: Exception -> 0x008c, TryCatch #0 {Exception -> 0x008c, blocks: (B:13:0x002d, B:28:0x006d, B:30:0x0073, B:31:0x0078, B:18:0x003d, B:25:0x0059, B:21:0x0044), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078 A[Catch: Exception -> 0x008c, TRY_LEAVE, TryCatch #0 {Exception -> 0x008c, blocks: (B:13:0x002d, B:28:0x006d, B:30:0x0073, B:31:0x0078, B:18:0x003d, B:25:0x0059, B:21:0x0044), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.laborbook.keep.repository.SubscriptionRepository
    /* JADX INFO: renamed from: cancelSubscription-gIAlu-s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3193cancelSubscriptiongIAlus(java.lang.String r7, kotlin.coroutines.Continuation<? super kotlin.Result<com.laborbook.keep.model.subscription.CancelSubscriptionResponse>> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.laborbook.keep.repository.SubscriptionRepositoryImpl$cancelSubscription$1
            if (r0 == 0) goto L14
            r0 = r8
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$cancelSubscription$1 r0 = (com.laborbook.keep.repository.SubscriptionRepositoryImpl$cancelSubscription$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$cancelSubscription$1 r0 = new com.laborbook.keep.repository.SubscriptionRepositoryImpl$cancelSubscription$1
            r0.<init>(r6, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L8c
            goto L6d
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L8c
            goto L59
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$ObjectRef r8 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Exception -> L8c
            r8.<init>()     // Catch: java.lang.Exception -> L8c
            com.laborbook.keep.network.KeepNetworkModule r2 = r6.networkModule     // Catch: java.lang.Exception -> L8c
            r0.L$0 = r8     // Catch: java.lang.Exception -> L8c
            r0.label = r4     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = r2.cancelSubscription(r7, r0)     // Catch: java.lang.Exception -> L8c
            if (r7 != r1) goto L56
            return r1
        L56:
            r5 = r8
            r8 = r7
            r7 = r5
        L59:
            kotlinx.coroutines.flow.Flow r8 = (kotlinx.coroutines.flow.Flow) r8     // Catch: java.lang.Exception -> L8c
            com.laborbook.keep.repository.SubscriptionRepositoryImpl$cancelSubscription$2 r2 = new com.laborbook.keep.repository.SubscriptionRepositoryImpl$cancelSubscription$2     // Catch: java.lang.Exception -> L8c
            r2.<init>()     // Catch: java.lang.Exception -> L8c
            kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2     // Catch: java.lang.Exception -> L8c
            r0.L$0 = r7     // Catch: java.lang.Exception -> L8c
            r0.label = r3     // Catch: java.lang.Exception -> L8c
            java.lang.Object r8 = r8.collect(r2, r0)     // Catch: java.lang.Exception -> L8c
            if (r8 != r1) goto L6d
            return r1
        L6d:
            T r7 = r7.element     // Catch: java.lang.Exception -> L8c
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Exception -> L8c
            if (r7 == 0) goto L78
            java.lang.Object r7 = r7.getValue()     // Catch: java.lang.Exception -> L8c
            goto L99
        L78:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Exception -> L8c
            java.lang.Exception r7 = new java.lang.Exception     // Catch: java.lang.Exception -> L8c
            java.lang.String r8 = "No response received"
            r7.<init>(r8)     // Catch: java.lang.Exception -> L8c
            java.lang.Throwable r7 = (java.lang.Throwable) r7     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)     // Catch: java.lang.Exception -> L8c
            java.lang.Object r7 = kotlin.Result.m3325constructorimpl(r7)     // Catch: java.lang.Exception -> L8c
            goto L99
        L8c:
            r7 = move-exception
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)
            java.lang.Object r7 = kotlin.Result.m3325constructorimpl(r7)
        L99:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.repository.SubscriptionRepositoryImpl.mo3193cancelSubscriptiongIAlus(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

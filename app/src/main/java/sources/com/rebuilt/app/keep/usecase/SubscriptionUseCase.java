package com.rebuilt.app.keep.usecase;

import com.rebuilt.app.keep.model.subscription.CancelSubscriptionResponse;
import com.rebuilt.app.keep.model.subscription.CreateSubscriptionResponse;
import com.rebuilt.app.keep.model.subscription.SubscriptionPlan;
import com.rebuilt.app.keep.model.subscription.UserSubscription;
import com.rebuilt.app.keep.model.subscription.VerifySubscriptionRequest;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: SubscriptionUseCase.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00032\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0004\b\f\u0010\tJ8\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u0012H¦@¢\u0006\u0004\b\u0013\u0010\u0014J&\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u00032\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0018H¦@¢\u0006\u0004\b\u0019\u0010\u001aJ\u001e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010\u0016\u001a\u00020\u0007H¦@¢\u0006\u0004\b\u001d\u0010\t¨\u0006\u001e"}, m2722d2 = {"Lcom/laborbook/keep/usecase/SubscriptionUseCase;", "", "getAvailablePlans", "Lkotlin/Result;", "", "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "userId", "", "getAvailablePlans-gIAlu-s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkSubscriptionStatus", "Lcom/laborbook/keep/model/subscription/UserSubscription;", "checkSubscriptionStatus-gIAlu-s", "initiateSubscription", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;", "planId", "upiId", "hasTrial", "", "initiateSubscription-yxL6bBk", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "verifyPayment", "subscriptionId", "paymentData", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;", "verifyPayment-0E7RQCE", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelSubscription", "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;", "cancelSubscription-gIAlu-s", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface SubscriptionUseCase {
    /* JADX INFO: renamed from: cancelSubscription-gIAlu-s, reason: not valid java name */
    Object mo3284cancelSubscriptiongIAlus(String str, Continuation<? super Result<CancelSubscriptionResponse>> continuation);

    /* JADX INFO: renamed from: checkSubscriptionStatus-gIAlu-s, reason: not valid java name */
    Object mo3285checkSubscriptionStatusgIAlus(String str, Continuation<? super Result<UserSubscription>> continuation);

    /* JADX INFO: renamed from: getAvailablePlans-gIAlu-s, reason: not valid java name */
    Object mo3286getAvailablePlansgIAlus(String str, Continuation<? super Result<? extends List<SubscriptionPlan>>> continuation);

    /* JADX INFO: renamed from: initiateSubscription-yxL6bBk, reason: not valid java name */
    Object mo3287initiateSubscriptionyxL6bBk(String str, String str2, String str3, boolean z, Continuation<? super Result<CreateSubscriptionResponse>> continuation);

    /* JADX INFO: renamed from: verifyPayment-0E7RQCE, reason: not valid java name */
    Object mo3288verifyPayment0E7RQCE(String str, VerifySubscriptionRequest verifySubscriptionRequest, Continuation<? super Result<Boolean>> continuation);

    /* JADX INFO: compiled from: SubscriptionUseCase.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class DefaultImpls {
        /* JADX INFO: renamed from: initiateSubscription-yxL6bBk$default, reason: not valid java name */
        public static /* synthetic */ Object m3289initiateSubscriptionyxL6bBk$default(SubscriptionUseCase subscriptionUseCase, String str, String str2, String str3, boolean z, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: initiateSubscription-yxL6bBk");
            }
            if ((i & 8) != 0) {
                z = false;
            }
            return subscriptionUseCase.mo3287initiateSubscriptionyxL6bBk(str, str2, str3, z, continuation);
        }
    }
}

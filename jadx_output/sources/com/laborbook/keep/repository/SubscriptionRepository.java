package com.laborbook.keep.repository;

import com.laborbook.keep.model.subscription.CancelSubscriptionResponse;
import com.laborbook.keep.model.subscription.CreateSubscriptionRequest;
import com.laborbook.keep.model.subscription.CreateSubscriptionResponse;
import com.laborbook.keep.model.subscription.SubscriptionPlan;
import com.laborbook.keep.model.subscription.UserSubscription;
import com.laborbook.keep.model.subscription.VerifySubscriptionRequest;
import com.laborbook.keep.model.subscription.VerifySubscriptionResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: SubscriptionRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00032\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0004\b\f\u0010\tJ&\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H¦@¢\u0006\u0004\b\u0011\u0010\u0012J&\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u00032\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0016H¦@¢\u0006\u0004\b\u0017\u0010\u0018J\u001e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00032\u0006\u0010\u0015\u001a\u00020\u0007H¦@¢\u0006\u0004\b\u001b\u0010\t¨\u0006\u001c"}, m2722d2 = {"Lcom/laborbook/keep/repository/SubscriptionRepository;", "", "getSubscriptionPlans", "Lkotlin/Result;", "", "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "userId", "", "getSubscriptionPlans-gIAlu-s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserSubscription", "Lcom/laborbook/keep/model/subscription/UserSubscription;", "getUserSubscription-gIAlu-s", "createSubscription", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;", "request", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;", "createSubscription-0E7RQCE", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "verifySubscription", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;", "subscriptionId", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;", "verifySubscription-0E7RQCE", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelSubscription", "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;", "cancelSubscription-gIAlu-s", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface SubscriptionRepository {
    /* JADX INFO: renamed from: cancelSubscription-gIAlu-s, reason: not valid java name */
    Object mo3193cancelSubscriptiongIAlus(String str, Continuation<? super Result<CancelSubscriptionResponse>> continuation);

    /* JADX INFO: renamed from: createSubscription-0E7RQCE, reason: not valid java name */
    Object mo3194createSubscription0E7RQCE(String str, CreateSubscriptionRequest createSubscriptionRequest, Continuation<? super Result<CreateSubscriptionResponse>> continuation);

    /* JADX INFO: renamed from: getSubscriptionPlans-gIAlu-s, reason: not valid java name */
    Object mo3195getSubscriptionPlansgIAlus(String str, Continuation<? super Result<? extends List<SubscriptionPlan>>> continuation);

    /* JADX INFO: renamed from: getUserSubscription-gIAlu-s, reason: not valid java name */
    Object mo3196getUserSubscriptiongIAlus(String str, Continuation<? super Result<UserSubscription>> continuation);

    /* JADX INFO: renamed from: verifySubscription-0E7RQCE, reason: not valid java name */
    Object mo3197verifySubscription0E7RQCE(String str, VerifySubscriptionRequest verifySubscriptionRequest, Continuation<? super Result<VerifySubscriptionResponse>> continuation);
}

package com.rebuilt.app.keep.screen.premium.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.keep.model.subscription.CancelSubscriptionResponse;
import com.rebuilt.app.keep.model.subscription.CreateSubscriptionResponse;
import com.rebuilt.app.keep.model.subscription.SubscriptionPlan;
import com.rebuilt.app.keep.model.subscription.UserSubscription;
import com.rebuilt.app.keep.model.subscription.VerifySubscriptionRequest;
import com.rebuilt.app.keep.screen.premium.PremiumOfferManager;
import com.rebuilt.app.keep.usecase.SubscriptionUseCase;
import com.rebuilt.app.keep.utils.SubscriptionsFeatureFlag;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: SubscriptionViewModel.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001*B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ(\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001d2\b\b\u0002\u0010\"\u001a\u00020#J\u0016\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020'J\u000e\u0010(\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001dJ\u0006\u0010)\u001a\u00020\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0016\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010¨\u0006+"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;", "Landroidx/lifecycle/ViewModel;", "subscriptionUseCase", "Lcom/laborbook/keep/usecase/SubscriptionUseCase;", "premiumOfferManager", "Lcom/laborbook/keep/screen/premium/PremiumOfferManager;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "<init>", "(Lcom/laborbook/keep/usecase/SubscriptionUseCase;Lcom/laborbook/keep/screen/premium/PremiumOfferManager;Lcom/laborbook/base/datastore/DataStoreManager;)V", "_subscriptionState", "Landroidx/lifecycle/MutableLiveData;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;", "subscriptionState", "Landroidx/lifecycle/LiveData;", "getSubscriptionState", "()Landroidx/lifecycle/LiveData;", "_subscriptionPlans", "", "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "subscriptionPlans", "getSubscriptionPlans", "_userSubscription", "Lcom/laborbook/keep/model/subscription/UserSubscription;", "userSubscription", "getUserSubscription", "loadSubscriptionPlans", "", "userId", "", "checkUserSubscriptionStatus", "createSubscription", "planId", "upiId", "hasTrial", "", "verifySubscription", "subscriptionId", "razorpayData", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;", "cancelSubscription", "resetState", "SubscriptionState", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class SubscriptionViewModel extends ViewModel {
    private final MutableLiveData<List<SubscriptionPlan>> _subscriptionPlans;
    private final MutableLiveData<SubscriptionState> _subscriptionState;
    private final MutableLiveData<UserSubscription> _userSubscription;
    private final DataStoreManager dataStoreManager;
    private final PremiumOfferManager premiumOfferManager;
    private final LiveData<List<SubscriptionPlan>> subscriptionPlans;
    private final LiveData<SubscriptionState> subscriptionState;
    private final SubscriptionUseCase subscriptionUseCase;
    private final LiveData<UserSubscription> userSubscription;

    public SubscriptionViewModel(SubscriptionUseCase subscriptionUseCase, PremiumOfferManager premiumOfferManager, DataStoreManager dataStoreManager) {
        Intrinsics.checkNotNullParameter(subscriptionUseCase, "subscriptionUseCase");
        Intrinsics.checkNotNullParameter(premiumOfferManager, "premiumOfferManager");
        Intrinsics.checkNotNullParameter(dataStoreManager, "dataStoreManager");
        this.subscriptionUseCase = subscriptionUseCase;
        this.premiumOfferManager = premiumOfferManager;
        this.dataStoreManager = dataStoreManager;
        MutableLiveData<SubscriptionState> mutableLiveData = new MutableLiveData<>();
        this._subscriptionState = mutableLiveData;
        this.subscriptionState = mutableLiveData;
        MutableLiveData<List<SubscriptionPlan>> mutableLiveData2 = new MutableLiveData<>();
        this._subscriptionPlans = mutableLiveData2;
        this.subscriptionPlans = mutableLiveData2;
        MutableLiveData<UserSubscription> mutableLiveData3 = new MutableLiveData<>();
        this._userSubscription = mutableLiveData3;
        this.userSubscription = mutableLiveData3;
    }

    public final LiveData<SubscriptionState> getSubscriptionState() {
        return this.subscriptionState;
    }

    public final LiveData<List<SubscriptionPlan>> getSubscriptionPlans() {
        return this.subscriptionPlans;
    }

    public final LiveData<UserSubscription> getUserSubscription() {
        return this.userSubscription;
    }

    /* JADX INFO: compiled from: SubscriptionViewModel.kt */
    @Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\b\u0004\u0005\u0006\u0007\b\t\n\u000bB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\b\f\r\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;", "", "<init>", "()V", "Idle", "Loading", "PlansLoaded", "SubscriptionCreated", "SubscriptionVerified", "SubscriptionCancelled", "Error", "UserSubscriptionLoaded", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Idle;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Loading;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$PlansLoaded;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionCancelled;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionCreated;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionVerified;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$UserSubscriptionLoaded;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static abstract class SubscriptionState {
        public /* synthetic */ SubscriptionState(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: SubscriptionViewModel.kt */
        @Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Idle;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;", "<init>", "()V", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final class Idle extends SubscriptionState {
            public static final Idle INSTANCE = new Idle();

            private Idle() {
                super(null);
            }
        }

        private SubscriptionState() {
        }

        /* JADX INFO: compiled from: SubscriptionViewModel.kt */
        @Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Loading;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;", "<init>", "()V", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final class Loading extends SubscriptionState {
            public static final Loading INSTANCE = new Loading();

            private Loading() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: SubscriptionViewModel.kt */
        @Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$PlansLoaded;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;", "plans", "", "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "<init>", "(Ljava/util/List;)V", "getPlans", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final /* data */ class PlansLoaded extends SubscriptionState {
            private final List<SubscriptionPlan> plans;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ PlansLoaded copy$default(PlansLoaded plansLoaded, List list, int i, Object obj) {
                if ((i & 1) != 0) {
                    list = plansLoaded.plans;
                }
                return plansLoaded.copy(list);
            }

            public final List<SubscriptionPlan> component1() {
                return this.plans;
            }

            public final PlansLoaded copy(List<SubscriptionPlan> plans) {
                Intrinsics.checkNotNullParameter(plans, "plans");
                return new PlansLoaded(plans);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof PlansLoaded) && Intrinsics.areEqual(this.plans, ((PlansLoaded) other).plans);
            }

            public int hashCode() {
                return this.plans.hashCode();
            }

            public String toString() {
                return "PlansLoaded(plans=" + this.plans + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public PlansLoaded(List<SubscriptionPlan> plans) {
                super(null);
                Intrinsics.checkNotNullParameter(plans, "plans");
                this.plans = plans;
            }

            public final List<SubscriptionPlan> getPlans() {
                return this.plans;
            }
        }

        /* JADX INFO: compiled from: SubscriptionViewModel.kt */
        @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionCreated;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;", "response", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;", "<init>", "(Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;)V", "getResponse", "()Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final /* data */ class SubscriptionCreated extends SubscriptionState {
            private final CreateSubscriptionResponse response;

            public static /* synthetic */ SubscriptionCreated copy$default(SubscriptionCreated subscriptionCreated, CreateSubscriptionResponse createSubscriptionResponse, int i, Object obj) {
                if ((i & 1) != 0) {
                    createSubscriptionResponse = subscriptionCreated.response;
                }
                return subscriptionCreated.copy(createSubscriptionResponse);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final CreateSubscriptionResponse getResponse() {
                return this.response;
            }

            public final SubscriptionCreated copy(CreateSubscriptionResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                return new SubscriptionCreated(response);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof SubscriptionCreated) && Intrinsics.areEqual(this.response, ((SubscriptionCreated) other).response);
            }

            public int hashCode() {
                return this.response.hashCode();
            }

            public String toString() {
                return "SubscriptionCreated(response=" + this.response + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SubscriptionCreated(CreateSubscriptionResponse response) {
                super(null);
                Intrinsics.checkNotNullParameter(response, "response");
                this.response = response;
            }

            public final CreateSubscriptionResponse getResponse() {
                return this.response;
            }
        }

        /* JADX INFO: compiled from: SubscriptionViewModel.kt */
        @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionVerified;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;", "isActive", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final /* data */ class SubscriptionVerified extends SubscriptionState {
            private final boolean isActive;

            public static /* synthetic */ SubscriptionVerified copy$default(SubscriptionVerified subscriptionVerified, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    z = subscriptionVerified.isActive;
                }
                return subscriptionVerified.copy(z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final boolean getIsActive() {
                return this.isActive;
            }

            public final SubscriptionVerified copy(boolean isActive) {
                return new SubscriptionVerified(isActive);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof SubscriptionVerified) && this.isActive == ((SubscriptionVerified) other).isActive;
            }

            public int hashCode() {
                return Boolean.hashCode(this.isActive);
            }

            public String toString() {
                return "SubscriptionVerified(isActive=" + this.isActive + ')';
            }

            public SubscriptionVerified(boolean z) {
                super(null);
                this.isActive = z;
            }

            public final boolean isActive() {
                return this.isActive;
            }
        }

        /* JADX INFO: compiled from: SubscriptionViewModel.kt */
        @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionCancelled;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;", "response", "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;", "<init>", "(Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;)V", "getResponse", "()Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final /* data */ class SubscriptionCancelled extends SubscriptionState {
            private final CancelSubscriptionResponse response;

            public static /* synthetic */ SubscriptionCancelled copy$default(SubscriptionCancelled subscriptionCancelled, CancelSubscriptionResponse cancelSubscriptionResponse, int i, Object obj) {
                if ((i & 1) != 0) {
                    cancelSubscriptionResponse = subscriptionCancelled.response;
                }
                return subscriptionCancelled.copy(cancelSubscriptionResponse);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final CancelSubscriptionResponse getResponse() {
                return this.response;
            }

            public final SubscriptionCancelled copy(CancelSubscriptionResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                return new SubscriptionCancelled(response);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof SubscriptionCancelled) && Intrinsics.areEqual(this.response, ((SubscriptionCancelled) other).response);
            }

            public int hashCode() {
                return this.response.hashCode();
            }

            public String toString() {
                return "SubscriptionCancelled(response=" + this.response + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SubscriptionCancelled(CancelSubscriptionResponse response) {
                super(null);
                Intrinsics.checkNotNullParameter(response, "response");
                this.response = response;
            }

            public final CancelSubscriptionResponse getResponse() {
                return this.response;
            }
        }

        /* JADX INFO: compiled from: SubscriptionViewModel.kt */
        @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final /* data */ class Error extends SubscriptionState {
            private final String message;

            public static /* synthetic */ Error copy$default(Error error, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = error.message;
                }
                return error.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getMessage() {
                return this.message;
            }

            public final Error copy(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                return new Error(message);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Error) && Intrinsics.areEqual(this.message, ((Error) other).message);
            }

            public int hashCode() {
                return this.message.hashCode();
            }

            public String toString() {
                return "Error(message=" + this.message + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(String message) {
                super(null);
                Intrinsics.checkNotNullParameter(message, "message");
                this.message = message;
            }

            public final String getMessage() {
                return this.message;
            }
        }

        /* JADX INFO: compiled from: SubscriptionViewModel.kt */
        @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$UserSubscriptionLoaded;", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;", "subscription", "Lcom/laborbook/keep/model/subscription/UserSubscription;", "<init>", "(Lcom/laborbook/keep/model/subscription/UserSubscription;)V", "getSubscription", "()Lcom/laborbook/keep/model/subscription/UserSubscription;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final /* data */ class UserSubscriptionLoaded extends SubscriptionState {
            private final UserSubscription subscription;

            public static /* synthetic */ UserSubscriptionLoaded copy$default(UserSubscriptionLoaded userSubscriptionLoaded, UserSubscription userSubscription, int i, Object obj) {
                if ((i & 1) != 0) {
                    userSubscription = userSubscriptionLoaded.subscription;
                }
                return userSubscriptionLoaded.copy(userSubscription);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final UserSubscription getSubscription() {
                return this.subscription;
            }

            public final UserSubscriptionLoaded copy(UserSubscription subscription) {
                Intrinsics.checkNotNullParameter(subscription, "subscription");
                return new UserSubscriptionLoaded(subscription);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof UserSubscriptionLoaded) && Intrinsics.areEqual(this.subscription, ((UserSubscriptionLoaded) other).subscription);
            }

            public int hashCode() {
                return this.subscription.hashCode();
            }

            public String toString() {
                return "UserSubscriptionLoaded(subscription=" + this.subscription + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public UserSubscriptionLoaded(UserSubscription subscription) {
                super(null);
                Intrinsics.checkNotNullParameter(subscription, "subscription");
                this.subscription = subscription;
            }

            public final UserSubscription getSubscription() {
                return this.subscription;
            }
        }
    }

    public final void loadSubscriptionPlans(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        List<SubscriptionPlan> value = this._subscriptionPlans.getValue();
        List<SubscriptionPlan> list = value;
        if (list == null || list.isEmpty()) {
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C38421(userId, null), 3, null);
        } else {
            this._subscriptionState.setValue(new SubscriptionState.PlansLoaded(value));
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$loadSubscriptionPlans$1 */
    /* JADX INFO: compiled from: SubscriptionViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$loadSubscriptionPlans$1", m2735f = "SubscriptionViewModel.kt", m2736i = {}, m2737l = {69}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38421 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38421(String str, Continuation<? super C38421> continuation) {
            super(2, continuation);
            this.$userId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SubscriptionViewModel.this.new C38421(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38421) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objMo3286getAvailablePlansgIAlus;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (!SubscriptionsFeatureFlag.INSTANCE.isSubscriptionsEnabled(RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE))) {
                    SubscriptionViewModel.this._subscriptionState.setValue(new SubscriptionState.Error("Subscriptions feature is not available"));
                    return Unit.INSTANCE;
                }
                SubscriptionViewModel.this._subscriptionState.setValue(SubscriptionState.Loading.INSTANCE);
                this.label = 1;
                objMo3286getAvailablePlansgIAlus = SubscriptionViewModel.this.subscriptionUseCase.mo3286getAvailablePlansgIAlus(this.$userId, this);
                if (objMo3286getAvailablePlansgIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objMo3286getAvailablePlansgIAlus = ((Result) obj).getValue();
            }
            SubscriptionViewModel subscriptionViewModel = SubscriptionViewModel.this;
            if (Result.m3332isSuccessimpl(objMo3286getAvailablePlansgIAlus)) {
                List list = (List) objMo3286getAvailablePlansgIAlus;
                subscriptionViewModel._subscriptionPlans.setValue(list);
                subscriptionViewModel._subscriptionState.setValue(new SubscriptionState.PlansLoaded(list));
            }
            SubscriptionViewModel subscriptionViewModel2 = SubscriptionViewModel.this;
            Throwable thM3328exceptionOrNullimpl = Result.m3328exceptionOrNullimpl(objMo3286getAvailablePlansgIAlus);
            if (thM3328exceptionOrNullimpl != null) {
                MutableLiveData mutableLiveData = subscriptionViewModel2._subscriptionState;
                String message = thM3328exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Failed to load subscription plans";
                }
                mutableLiveData.setValue(new SubscriptionState.Error(message));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$checkUserSubscriptionStatus$1 */
    /* JADX INFO: compiled from: SubscriptionViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$checkUserSubscriptionStatus$1", m2735f = "SubscriptionViewModel.kt", m2736i = {}, m2737l = {89, 95}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38401 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $userId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38401(String str, Continuation<? super C38401> continuation) {
            super(2, continuation);
            this.$userId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SubscriptionViewModel.this.new C38401(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38401) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x007f  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L26
                if (r1 == r3) goto L1c
                if (r1 != r2) goto L14
                java.lang.Object r0 = r6.L$0
                kotlin.ResultKt.throwOnFailure(r7)
                goto L76
            L14:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1c:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlin.Result r7 = (kotlin.Result) r7
                java.lang.Object r7 = r7.getValue()
                goto L48
            L26:
                kotlin.ResultKt.throwOnFailure(r7)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                androidx.lifecycle.MutableLiveData r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$get_subscriptionState$p(r7)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$Loading r1 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.SubscriptionState.Loading.INSTANCE
                r7.setValue(r1)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                com.rebuilt.app.keep.usecase.SubscriptionUseCase r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$getSubscriptionUseCase$p(r7)
                java.lang.String r1 = r6.$userId
                r4 = r6
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r6.label = r3
                java.lang.Object r7 = r7.mo3285checkSubscriptionStatusgIAlus(r1, r4)
                if (r7 != r0) goto L48
                return r0
            L48:
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r1 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                boolean r3 = kotlin.Result.m3332isSuccessimpl(r7)
                if (r3 == 0) goto L77
                r3 = r7
                com.rebuilt.app.keep.model.subscription.UserSubscription r3 = (com.rebuilt.app.keep.model.subscription.UserSubscription) r3
                androidx.lifecycle.MutableLiveData r4 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$get_userSubscription$p(r1)
                r4.setValue(r3)
                androidx.lifecycle.MutableLiveData r4 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$get_subscriptionState$p(r1)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$UserSubscriptionLoaded r5 = new com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$UserSubscriptionLoaded
                r5.<init>(r3)
                r4.setValue(r5)
                com.rebuilt.app.keep.screen.premium.PremiumOfferManager r1 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$getPremiumOfferManager$p(r1)
                r6.L$0 = r7
                r6.label = r2
                java.lang.Object r1 = r1.updateSubscriptionStatus(r3, r6)
                if (r1 != r0) goto L75
                return r0
            L75:
                r0 = r7
            L76:
                r7 = r0
            L77:
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r0 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                java.lang.Throwable r7 = kotlin.Result.m3328exceptionOrNullimpl(r7)
                if (r7 == 0) goto L93
                androidx.lifecycle.MutableLiveData r0 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$get_subscriptionState$p(r0)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$Error r1 = new com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$Error
                java.lang.String r7 = r7.getMessage()
                if (r7 != 0) goto L8d
                java.lang.String r7 = "Failed to check subscription status"
            L8d:
                r1.<init>(r7)
                r0.setValue(r1)
            L93:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.C38401.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void checkUserSubscriptionStatus(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C38401(userId, null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$createSubscription$1 */
    /* JADX INFO: compiled from: SubscriptionViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$createSubscription$1", m2735f = "SubscriptionViewModel.kt", m2736i = {}, m2737l = {112}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38411 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $hasTrial;
        final /* synthetic */ String $planId;
        final /* synthetic */ String $upiId;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38411(String str, String str2, String str3, boolean z, Continuation<? super C38411> continuation) {
            super(2, continuation);
            this.$userId = str;
            this.$planId = str2;
            this.$upiId = str3;
            this.$hasTrial = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SubscriptionViewModel.this.new C38411(this.$userId, this.$planId, this.$upiId, this.$hasTrial, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38411) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objMo3287initiateSubscriptionyxL6bBk;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SubscriptionViewModel.this._subscriptionState.setValue(SubscriptionState.Loading.INSTANCE);
                this.label = 1;
                objMo3287initiateSubscriptionyxL6bBk = SubscriptionViewModel.this.subscriptionUseCase.mo3287initiateSubscriptionyxL6bBk(this.$userId, this.$planId, this.$upiId, this.$hasTrial, this);
                if (objMo3287initiateSubscriptionyxL6bBk == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objMo3287initiateSubscriptionyxL6bBk = ((Result) obj).getValue();
            }
            SubscriptionViewModel subscriptionViewModel = SubscriptionViewModel.this;
            if (Result.m3332isSuccessimpl(objMo3287initiateSubscriptionyxL6bBk)) {
                subscriptionViewModel._subscriptionState.setValue(new SubscriptionState.SubscriptionCreated((CreateSubscriptionResponse) objMo3287initiateSubscriptionyxL6bBk));
            }
            SubscriptionViewModel subscriptionViewModel2 = SubscriptionViewModel.this;
            Throwable thM3328exceptionOrNullimpl = Result.m3328exceptionOrNullimpl(objMo3287initiateSubscriptionyxL6bBk);
            if (thM3328exceptionOrNullimpl != null) {
                MutableLiveData mutableLiveData = subscriptionViewModel2._subscriptionState;
                String message = thM3328exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Failed to create subscription";
                }
                mutableLiveData.setValue(new SubscriptionState.Error(message));
            }
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ void createSubscription$default(SubscriptionViewModel subscriptionViewModel, String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        subscriptionViewModel.createSubscription(str, str2, str3, z);
    }

    public final void createSubscription(String userId, String planId, String upiId, boolean hasTrial) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(planId, "planId");
        Intrinsics.checkNotNullParameter(upiId, "upiId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C38411(userId, planId, upiId, hasTrial, null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$verifySubscription$1 */
    /* JADX INFO: compiled from: SubscriptionViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$verifySubscription$1", m2735f = "SubscriptionViewModel.kt", m2736i = {1}, m2737l = {131, 135}, m2738m = "invokeSuspend", m2739n = {"isVerified"}, m2740s = {"Z$0"})
    static final class C38431 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ VerifySubscriptionRequest $razorpayData;
        final /* synthetic */ String $subscriptionId;
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38431(String str, VerifySubscriptionRequest verifySubscriptionRequest, Continuation<? super C38431> continuation) {
            super(2, continuation);
            this.$subscriptionId = str;
            this.$razorpayData = verifySubscriptionRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SubscriptionViewModel.this.new C38431(this.$subscriptionId, this.$razorpayData, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38431) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x008c  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2c
                if (r1 == r3) goto L22
                if (r1 != r2) goto L1a
                boolean r0 = r6.Z$0
                java.lang.Object r1 = r6.L$1
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r1 = (com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel) r1
                java.lang.Object r2 = r6.L$0
                kotlin.ResultKt.throwOnFailure(r7)
                goto L76
            L1a:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L22:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlin.Result r7 = (kotlin.Result) r7
                java.lang.Object r7 = r7.getValue()
                goto L50
            L2c:
                kotlin.ResultKt.throwOnFailure(r7)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                androidx.lifecycle.MutableLiveData r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$get_subscriptionState$p(r7)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$Loading r1 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.SubscriptionState.Loading.INSTANCE
                r7.setValue(r1)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                com.rebuilt.app.keep.usecase.SubscriptionUseCase r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$getSubscriptionUseCase$p(r7)
                java.lang.String r1 = r6.$subscriptionId
                com.rebuilt.app.keep.model.subscription.VerifySubscriptionRequest r4 = r6.$razorpayData
                r5 = r6
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r6.label = r3
                java.lang.Object r7 = r7.mo3288verifyPayment0E7RQCE(r1, r4, r5)
                if (r7 != r0) goto L50
                return r0
            L50:
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r1 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                boolean r3 = kotlin.Result.m3332isSuccessimpl(r7)
                if (r3 == 0) goto L84
                r3 = r7
                java.lang.Boolean r3 = (java.lang.Boolean) r3
                boolean r3 = r3.booleanValue()
                if (r3 == 0) goto L78
                com.rebuilt.app.keep.screen.premium.PremiumOfferManager r4 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$getPremiumOfferManager$p(r1)
                r6.L$0 = r7
                r6.L$1 = r1
                r6.Z$0 = r3
                r6.label = r2
                java.lang.Object r2 = r4.markUserAsPremium(r6)
                if (r2 != r0) goto L74
                return r0
            L74:
                r2 = r7
                r0 = r3
            L76:
                r3 = r0
                r7 = r2
            L78:
                androidx.lifecycle.MutableLiveData r0 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$get_subscriptionState$p(r1)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$SubscriptionVerified r1 = new com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$SubscriptionVerified
                r1.<init>(r3)
                r0.setValue(r1)
            L84:
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r0 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                java.lang.Throwable r7 = kotlin.Result.m3328exceptionOrNullimpl(r7)
                if (r7 == 0) goto La0
                androidx.lifecycle.MutableLiveData r0 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$get_subscriptionState$p(r0)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$Error r1 = new com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$Error
                java.lang.String r7 = r7.getMessage()
                if (r7 != 0) goto L9a
                java.lang.String r7 = "Payment verification failed"
            L9a:
                r1.<init>(r7)
                r0.setValue(r1)
            La0:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.C38431.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void verifySubscription(String subscriptionId, VerifySubscriptionRequest razorpayData) {
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        Intrinsics.checkNotNullParameter(razorpayData, "razorpayData");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C38431(subscriptionId, razorpayData, null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$cancelSubscription$1 */
    /* JADX INFO: compiled from: SubscriptionViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$cancelSubscription$1", m2735f = "SubscriptionViewModel.kt", m2736i = {}, m2737l = {157, Opcodes.IF_ICMPGE}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38391 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $subscriptionId;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38391(String str, Continuation<? super C38391> continuation) {
            super(2, continuation);
            this.$subscriptionId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SubscriptionViewModel.this.new C38391(this.$subscriptionId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38391) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0099  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2a
                if (r1 == r3) goto L20
                if (r1 != r2) goto L18
                java.lang.Object r0 = r6.L$1
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r0 = (com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel) r0
                java.lang.Object r1 = r6.L$0
                kotlin.ResultKt.throwOnFailure(r7)
                goto L83
            L18:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L20:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlin.Result r7 = (kotlin.Result) r7
                java.lang.Object r7 = r7.getValue()
                goto L4c
            L2a:
                kotlin.ResultKt.throwOnFailure(r7)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                androidx.lifecycle.MutableLiveData r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$get_subscriptionState$p(r7)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$Loading r1 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.SubscriptionState.Loading.INSTANCE
                r7.setValue(r1)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                com.rebuilt.app.keep.usecase.SubscriptionUseCase r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$getSubscriptionUseCase$p(r7)
                java.lang.String r1 = r6.$subscriptionId
                r4 = r6
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r6.label = r3
                java.lang.Object r7 = r7.mo3284cancelSubscriptiongIAlus(r1, r4)
                if (r7 != r0) goto L4c
                return r0
            L4c:
                r1 = r7
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                boolean r3 = kotlin.Result.m3332isSuccessimpl(r1)
                if (r3 == 0) goto L91
                r3 = r1
                com.rebuilt.app.keep.model.subscription.CancelSubscriptionResponse r3 = (com.rebuilt.app.keep.model.subscription.CancelSubscriptionResponse) r3
                androidx.lifecycle.MutableLiveData r4 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$get_subscriptionState$p(r7)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$SubscriptionCancelled r5 = new com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$SubscriptionCancelled
                r5.<init>(r3)
                r4.setValue(r5)
                com.rebuilt.app.base.datastore.DataStoreManager r3 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$getDataStoreManager$p(r7)
                com.rebuilt.app.base.datastore.DataStoreManager$Companion r4 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r4 = r4.getUSER_ID()
                java.lang.String r5 = ""
                kotlinx.coroutines.flow.Flow r3 = r3.read(r4, r5)
                r6.L$0 = r1
                r6.L$1 = r7
                r6.label = r2
                java.lang.Object r2 = kotlinx.coroutines.flow.FlowKt.first(r3, r6)
                if (r2 != r0) goto L81
                return r0
            L81:
                r0 = r7
                r7 = r2
            L83:
                java.lang.String r7 = (java.lang.String) r7
                r2 = r7
                java.lang.CharSequence r2 = (java.lang.CharSequence) r2
                int r2 = r2.length()
                if (r2 <= 0) goto L91
                r0.checkUserSubscriptionStatus(r7)
            L91:
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.this
                java.lang.Throwable r0 = kotlin.Result.m3328exceptionOrNullimpl(r1)
                if (r0 == 0) goto Lad
                androidx.lifecycle.MutableLiveData r7 = com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.access$get_subscriptionState$p(r7)
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$Error r1 = new com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel$SubscriptionState$Error
                java.lang.String r0 = r0.getMessage()
                if (r0 != 0) goto La7
                java.lang.String r0 = "Failed to cancel subscription"
            La7:
                r1.<init>(r0)
                r7.setValue(r1)
            Lad:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel.C38391.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void cancelSubscription(String subscriptionId) {
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C38391(subscriptionId, null), 3, null);
    }

    public final void resetState() {
        this._subscriptionState.setValue(SubscriptionState.Idle.INSTANCE);
    }
}

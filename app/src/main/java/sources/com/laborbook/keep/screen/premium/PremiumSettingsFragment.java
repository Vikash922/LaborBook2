package com.laborbook.keep.screen.premium;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleOwnerKt;
import com.amplitude.core.events.Identify;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.textviews.text12.TextViewHintRegular12;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.laborbook.base.BaseFragment;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.analytics.FacebookPaymentEvents;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.databinding.FragmentPremiumSettingsBinding;
import com.laborbook.keep.model.subscription.SubscriptionDetails;
import com.laborbook.keep.screen.premium.viewmodel.SubscriptionViewModel;
import com.laborbook.keep.utils.SubscriptionsFeatureFlag;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: PremiumSettingsFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0014\u0018\u0000 42\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00014B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J&\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001a\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u001f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u0010#\u001a\u00020!H\u0002J\b\u0010$\u001a\u00020!H\u0002J\b\u0010%\u001a\u00020!H\u0002J\u0010\u0010&\u001a\u00020!2\u0006\u0010'\u001a\u00020\u0010H\u0002J\u0012\u0010(\u001a\u00020!2\b\u0010)\u001a\u0004\u0018\u00010\u0016H\u0002J\u0010\u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0006H\u0002J\b\u0010,\u001a\u00020!H\u0002J\b\u0010-\u001a\u00020!H\u0002J\b\u0010.\u001a\u00020!H\u0002J\b\u0010/\u001a\u00020!H\u0002J\b\u00100\u001a\u00020!H\u0002J\b\u00101\u001a\u00020!H\u0002J\b\u00102\u001a\u00020!H\u0002J\b\u00103\u001a\u00020!H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00065"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/keep/databinding/FragmentPremiumSettingsBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "subscriptionViewModel", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;", "getSubscriptionViewModel", "()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;", "subscriptionViewModel$delegate", "Lkotlin/Lazy;", "isPremiumDetailsExpanded", "", "isFaq1Expanded", "isFaq2Expanded", "isFaq3Expanded", "isFaq4Expanded", "currentSubscription", "Lcom/laborbook/keep/model/subscription/SubscriptionDetails;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "onViewCreated", "", "view", "setupViews", "loadSubscriptionData", "observeViewModel", "showLoading", "show", "updateSubscriptionUI", "subscription", "formatDate", "dateString", "registerOnClickListeners", "togglePremiumDetails", "toggleFaq1", "toggleFaq2", "toggleFaq3", "toggleFaq4", "showCancelConfirmationDialog", "cancelSubscription", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class PremiumSettingsFragment extends BaseFragment<FragmentPremiumSettingsBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private SubscriptionDetails currentSubscription;
    private boolean isFaq1Expanded;
    private boolean isFaq2Expanded;
    private boolean isFaq3Expanded;
    private boolean isFaq4Expanded;
    private boolean isPremiumDetailsExpanded;

    /* JADX INFO: renamed from: subscriptionViewModel$delegate, reason: from kotlin metadata */
    private final Lazy subscriptionViewModel;

    @JvmStatic
    public static final PremiumSettingsFragment newInstance() {
        return INSTANCE.newInstance();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PremiumSettingsFragment() {
        final PremiumSettingsFragment premiumSettingsFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.subscriptionViewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<SubscriptionViewModel>() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.laborbook.keep.screen.premium.viewmodel.SubscriptionViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final SubscriptionViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(premiumSettingsFragment, qualifier, Reflection.getOrCreateKotlinClass(SubscriptionViewModel.class), objArr);
            }
        });
        this.isPremiumDetailsExpanded = true;
    }

    @Override // com.laborbook.base.BaseFragment
    public String getScreenName() {
        return ConstantEventNames.PREMIUM_SETTINGS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SubscriptionViewModel getSubscriptionViewModel() {
        return (SubscriptionViewModel) this.subscriptionViewModel.getValue();
    }

    @Override // com.laborbook.base.BaseFragment
    public FragmentPremiumSettingsBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentPremiumSettingsBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentPremiumSettingsBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38331(null), 3, null);
        setupViews();
        registerOnClickListeners();
        observeViewModel();
        loadSubscriptionData();
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.premium.PremiumSettingsFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: PremiumSettingsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.premium.PremiumSettingsFragment$onViewCreated$1", m2735f = "PremiumSettingsFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38331 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38331(Continuation<? super C38331> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumSettingsFragment.this.new C38331(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38331) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (!SubscriptionsFeatureFlag.INSTANCE.isSubscriptionsEnabled(RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE))) {
                PremiumSettingsFragment.this.getFragmentNavigator().goBack();
                return Unit.INSTANCE;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.premium.PremiumSettingsFragment$setupViews$1 */
    /* JADX INFO: compiled from: PremiumSettingsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.premium.PremiumSettingsFragment$setupViews$1", m2735f = "PremiumSettingsFragment.kt", m2736i = {0}, m2737l = {83}, m2738m = "invokeSuspend", m2739n = {"$this$invokeSuspend_u24lambda_u240"}, m2740s = {"L$1"})
    static final class C38341 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        int label;

        C38341(Continuation<? super C38341> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumSettingsFragment.this.new C38341(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38341) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            FragmentPremiumSettingsBinding fragmentPremiumSettingsBinding;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FragmentPremiumSettingsBinding binding = PremiumSettingsFragment.this.getBinding();
                if (binding != null) {
                    Flow flow = PremiumSettingsFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_NAME(), "");
                    this.L$0 = binding;
                    this.L$1 = binding;
                    this.label = 1;
                    Object objFirst = FlowKt.first(flow, this);
                    if (objFirst == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    fragmentPremiumSettingsBinding = binding;
                    obj = objFirst;
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fragmentPremiumSettingsBinding = (FragmentPremiumSettingsBinding) this.L$1;
            ResultKt.throwOnFailure(obj);
            fragmentPremiumSettingsBinding.tvUserName.setText((String) obj);
            return Unit.INSTANCE;
        }
    }

    private final void setupViews() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38341(null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.premium.PremiumSettingsFragment$loadSubscriptionData$1 */
    /* JADX INFO: compiled from: PremiumSettingsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.premium.PremiumSettingsFragment$loadSubscriptionData$1", m2735f = "PremiumSettingsFragment.kt", m2736i = {}, m2737l = {91}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38321 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38321(Continuation<? super C38321> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumSettingsFragment.this.new C38321(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38321) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(PremiumSettingsFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            String str = (String) obj;
            if (str.length() > 0) {
                PremiumSettingsFragment.this.getSubscriptionViewModel().checkUserSubscriptionStatus(str);
            }
            return Unit.INSTANCE;
        }
    }

    private final void loadSubscriptionData() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38321(null), 3, null);
    }

    private final void observeViewModel() {
        getSubscriptionViewModel().getSubscriptionState().observe(getViewLifecycleOwner(), new PremiumSettingsFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PremiumSettingsFragment.observeViewModel$lambda$1(this.f$0, (SubscriptionViewModel.SubscriptionState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeViewModel$lambda$1(final PremiumSettingsFragment this$0, SubscriptionViewModel.SubscriptionState subscriptionState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.Loading) {
            this$0.showLoading(true);
        } else if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.UserSubscriptionLoaded) {
            this$0.showLoading(false);
            SubscriptionViewModel.SubscriptionState.UserSubscriptionLoaded userSubscriptionLoaded = (SubscriptionViewModel.SubscriptionState.UserSubscriptionLoaded) subscriptionState;
            this$0.currentSubscription = userSubscriptionLoaded.getSubscription().getSubscription();
            this$0.updateSubscriptionUI(userSubscriptionLoaded.getSubscription().getSubscription());
        } else if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.SubscriptionCancelled) {
            this$0.showLoading(false);
            new AlertDialog.Builder(this$0.requireContext()).setTitle(this$0.getString(C3656R.string.subscription_cancelled)).setMessage(((SubscriptionViewModel.SubscriptionState.SubscriptionCancelled) subscriptionState).getResponse().getMessage()).setPositiveButton(this$0.getString(C3656R.string.f3444ok), new DialogInterface.OnClickListener() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda8
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    PremiumSettingsFragment.observeViewModel$lambda$1$lambda$0(this.f$0, dialogInterface, i);
                }
            }).show();
        } else if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.Error) {
            this$0.showLoading(false);
            Toast.makeText(this$0.requireContext(), ((SubscriptionViewModel.SubscriptionState.Error) subscriptionState).getMessage(), 0).show();
        } else {
            this$0.showLoading(false);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void observeViewModel$lambda$1$lambda$0(PremiumSettingsFragment this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialogInterface.dismiss();
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new PremiumSettingsFragment$observeViewModel$1$1$1(this$0, null), 3, null);
    }

    private final void showLoading(boolean show) {
        FragmentPremiumSettingsBinding binding = getBinding();
        if (binding != null) {
            if (show) {
                ProgressBar progressBar = binding.progressBar;
                Intrinsics.checkNotNullExpressionValue(progressBar, "progressBar");
                ExtentionsKt.show$default(progressBar, 0L, null, 3, null);
                binding.scrollContent.setAlpha(0.5f);
                return;
            }
            ProgressBar progressBar2 = binding.progressBar;
            Intrinsics.checkNotNullExpressionValue(progressBar2, "progressBar");
            ExtentionsKt.hide$default(progressBar2, 0L, null, 3, null);
            binding.scrollContent.setAlpha(1.0f);
        }
    }

    private final void updateSubscriptionUI(SubscriptionDetails subscription) {
        String str;
        FragmentPremiumSettingsBinding binding = getBinding();
        if (binding != null) {
            if (subscription != null) {
                String date = formatDate(subscription.getStartAt());
                String date2 = formatDate(subscription.getEndAt());
                binding.tvMemberSince.setText(getString(C3656R.string.member_since, date));
                binding.tvPurchaseDate.setText(date);
                binding.tvNextBill.setText(date2);
                if (subscription.getAmount() != null && subscription.getAmount().intValue() > 0) {
                    str = "₹" + subscription.getAmount();
                } else {
                    str = (!StringsKt.contains((CharSequence) subscription.getPlanName(), (CharSequence) "Monthly", true) && StringsKt.contains((CharSequence) subscription.getPlanName(), (CharSequence) "Yearly", true)) ? "₹699" : "₹79";
                }
                binding.tvAmountPaid.setText(str);
                return;
            }
            binding.tvMemberSince.setText(getString(C3656R.string.no_active_subscription));
            binding.tvPurchaseDate.setText(Identify.UNSET_VALUE);
            binding.tvNextBill.setText(Identify.UNSET_VALUE);
            binding.tvAmountPaid.setText(Identify.UNSET_VALUE);
        }
    }

    private final String formatDate(String dateString) {
        String str;
        try {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                Date date = simpleDateFormat.parse(dateString);
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd MMMM, yyyy", Locale.getDefault());
                if (date == null) {
                    return dateString;
                }
                str = simpleDateFormat2.format(date);
                if (str == null) {
                    return dateString;
                }
            } catch (Exception unused) {
                return dateString;
            }
        } catch (Exception unused2) {
            Date date2 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).parse(dateString);
            SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("dd MMMM, yyyy", Locale.getDefault());
            if (date2 == null) {
                return dateString;
            }
            str = simpleDateFormat3.format(date2);
            if (str == null) {
                return dateString;
            }
        }
        return str;
    }

    private final void registerOnClickListeners() {
        FragmentPremiumSettingsBinding binding = getBinding();
        if (binding != null) {
            binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumSettingsFragment.registerOnClickListeners$lambda$13$lambda$6(this.f$0, view);
                }
            });
            binding.clPremiumUserInfo.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumSettingsFragment.registerOnClickListeners$lambda$13$lambda$7(this.f$0, view);
                }
            });
            binding.clFaq1.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumSettingsFragment.registerOnClickListeners$lambda$13$lambda$8(this.f$0, view);
                }
            });
            binding.clFaq2.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumSettingsFragment.registerOnClickListeners$lambda$13$lambda$9(this.f$0, view);
                }
            });
            binding.clFaq3.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumSettingsFragment.registerOnClickListeners$lambda$13$lambda$10(this.f$0, view);
                }
            });
            binding.clFaq4.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumSettingsFragment.registerOnClickListeners$lambda$13$lambda$11(this.f$0, view);
                }
            });
            binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumSettingsFragment.registerOnClickListeners$lambda$13$lambda$12(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$6(PremiumSettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().goBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$7(PremiumSettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.togglePremiumDetails();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$8(PremiumSettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.toggleFaq1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$9(PremiumSettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.toggleFaq2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$10(PremiumSettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.toggleFaq3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$11(PremiumSettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.toggleFaq4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$12(PremiumSettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseFragment.recordClickEvent$default(this$0, "premium_cancel_subscription", null, 2, null);
        this$0.showCancelConfirmationDialog();
    }

    private final void togglePremiumDetails() {
        FragmentPremiumSettingsBinding binding = getBinding();
        if (binding != null) {
            boolean z = this.isPremiumDetailsExpanded;
            this.isPremiumDetailsExpanded = !z;
            if (!z) {
                ConstraintLayout clPremiumDetails = binding.clPremiumDetails;
                Intrinsics.checkNotNullExpressionValue(clPremiumDetails, "clPremiumDetails");
                ExtentionsKt.show$default(clPremiumDetails, 0L, null, 3, null);
                binding.ivExpand.setImageDrawable(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_chevron_up));
                return;
            }
            ConstraintLayout clPremiumDetails2 = binding.clPremiumDetails;
            Intrinsics.checkNotNullExpressionValue(clPremiumDetails2, "clPremiumDetails");
            ExtentionsKt.hide$default(clPremiumDetails2, 0L, null, 3, null);
            binding.ivExpand.setImageDrawable(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_chevron_down));
        }
    }

    private final void toggleFaq1() {
        FragmentPremiumSettingsBinding binding = getBinding();
        if (binding != null) {
            boolean z = this.isFaq1Expanded;
            this.isFaq1Expanded = !z;
            if (!z) {
                TextViewHintRegular12 tvFaq1Answer = binding.tvFaq1Answer;
                Intrinsics.checkNotNullExpressionValue(tvFaq1Answer, "tvFaq1Answer");
                ExtentionsKt.show$default(tvFaq1Answer, 0L, null, 3, null);
                binding.ivFaq1Expand.setImageDrawable(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_chevron_up));
                return;
            }
            TextViewHintRegular12 tvFaq1Answer2 = binding.tvFaq1Answer;
            Intrinsics.checkNotNullExpressionValue(tvFaq1Answer2, "tvFaq1Answer");
            ExtentionsKt.hide$default(tvFaq1Answer2, 0L, null, 3, null);
            binding.ivFaq1Expand.setImageDrawable(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_chevron_down));
        }
    }

    private final void toggleFaq2() {
        FragmentPremiumSettingsBinding binding = getBinding();
        if (binding != null) {
            boolean z = this.isFaq2Expanded;
            this.isFaq2Expanded = !z;
            if (!z) {
                TextViewHintRegular12 tvFaq2Answer = binding.tvFaq2Answer;
                Intrinsics.checkNotNullExpressionValue(tvFaq2Answer, "tvFaq2Answer");
                ExtentionsKt.show$default(tvFaq2Answer, 0L, null, 3, null);
                binding.ivFaq2Expand.setImageDrawable(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_chevron_up));
                return;
            }
            TextViewHintRegular12 tvFaq2Answer2 = binding.tvFaq2Answer;
            Intrinsics.checkNotNullExpressionValue(tvFaq2Answer2, "tvFaq2Answer");
            ExtentionsKt.hide$default(tvFaq2Answer2, 0L, null, 3, null);
            binding.ivFaq2Expand.setImageDrawable(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_chevron_down));
        }
    }

    private final void toggleFaq3() {
        FragmentPremiumSettingsBinding binding = getBinding();
        if (binding != null) {
            boolean z = this.isFaq3Expanded;
            this.isFaq3Expanded = !z;
            if (!z) {
                TextViewHintRegular12 tvFaq3Answer = binding.tvFaq3Answer;
                Intrinsics.checkNotNullExpressionValue(tvFaq3Answer, "tvFaq3Answer");
                ExtentionsKt.show$default(tvFaq3Answer, 0L, null, 3, null);
                binding.ivFaq3Expand.setImageDrawable(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_chevron_up));
                return;
            }
            TextViewHintRegular12 tvFaq3Answer2 = binding.tvFaq3Answer;
            Intrinsics.checkNotNullExpressionValue(tvFaq3Answer2, "tvFaq3Answer");
            ExtentionsKt.hide$default(tvFaq3Answer2, 0L, null, 3, null);
            binding.ivFaq3Expand.setImageDrawable(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_chevron_down));
        }
    }

    private final void toggleFaq4() {
        FragmentPremiumSettingsBinding binding = getBinding();
        if (binding != null) {
            boolean z = this.isFaq4Expanded;
            this.isFaq4Expanded = !z;
            if (!z) {
                TextViewHintRegular12 tvFaq4Answer = binding.tvFaq4Answer;
                Intrinsics.checkNotNullExpressionValue(tvFaq4Answer, "tvFaq4Answer");
                ExtentionsKt.show$default(tvFaq4Answer, 0L, null, 3, null);
                binding.ivFaq4Expand.setImageDrawable(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_chevron_up));
                return;
            }
            TextViewHintRegular12 tvFaq4Answer2 = binding.tvFaq4Answer;
            Intrinsics.checkNotNullExpressionValue(tvFaq4Answer2, "tvFaq4Answer");
            ExtentionsKt.hide$default(tvFaq4Answer2, 0L, null, 3, null);
            binding.ivFaq4Expand.setImageDrawable(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_chevron_down));
        }
    }

    private final void showCancelConfirmationDialog() {
        String string;
        String endAt;
        SubscriptionDetails subscriptionDetails = this.currentSubscription;
        if (subscriptionDetails == null || (endAt = subscriptionDetails.getEndAt()) == null || (string = formatDate(endAt)) == null) {
            string = getString(C3656R.string.end_of_billing_period);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        }
        new AlertDialog.Builder(requireContext()).setTitle(getString(C3656R.string.cancel_subscription)).setMessage(getString(C3656R.string.cancel_subscription_confirmation, string)).setPositiveButton(getString(C3656R.string.yes_cancel), new DialogInterface.OnClickListener() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PremiumSettingsFragment.showCancelConfirmationDialog$lambda$20(this.f$0, dialogInterface, i);
            }
        }).setNegativeButton(getString(C3656R.string.no_keep_subscription), new DialogInterface.OnClickListener() { // from class: com.laborbook.keep.screen.premium.PremiumSettingsFragment$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PremiumSettingsFragment.showCancelConfirmationDialog$lambda$21(this.f$0, dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showCancelConfirmationDialog$lambda$20(PremiumSettingsFragment this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.cancelSubscription();
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showCancelConfirmationDialog$lambda$21(PremiumSettingsFragment this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseFragment.recordClickEvent$default(this$0, "premium_cancel_subscription_cancelled", null, 2, null);
        dialogInterface.dismiss();
    }

    private final void cancelSubscription() {
        String planName;
        SubscriptionDetails subscriptionDetails = this.currentSubscription;
        String id = subscriptionDetails != null ? subscriptionDetails.getId() : null;
        if (id != null) {
            getSubscriptionViewModel().cancelSubscription(id);
            Pair[] pairArr = new Pair[2];
            pairArr[0] = new Pair("subscription_id", id);
            SubscriptionDetails subscriptionDetails2 = this.currentSubscription;
            if (subscriptionDetails2 == null || (planName = subscriptionDetails2.getPlanName()) == null) {
                planName = "";
            }
            pairArr[1] = new Pair("plan_name", planName);
            recordClickEvent("premium_subscription_cancelled", MapsKt.hashMapOf(pairArr));
            FacebookPaymentEvents facebookPaymentEvents = FacebookPaymentEvents.INSTANCE;
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            SubscriptionDetails subscriptionDetails3 = this.currentSubscription;
            facebookPaymentEvents.logSubscriptionCancelled(contextRequireContext, subscriptionDetails3 != null ? subscriptionDetails3.getPlanName() : null);
            return;
        }
        Toast.makeText(requireContext(), getString(C3656R.string.unable_to_cancel_subscription), 0).show();
    }

    /* JADX INFO: compiled from: PremiumSettingsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final PremiumSettingsFragment newInstance() {
            return new PremiumSettingsFragment();
        }
    }
}

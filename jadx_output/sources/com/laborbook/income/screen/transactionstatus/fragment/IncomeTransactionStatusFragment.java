package com.laborbook.income.screen.transactionstatus.fragment;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.laborbook.base.BaseFragment;
import com.laborbook.base.ads.CustomAdData;
import com.laborbook.base.ads.CustomAdManager;
import com.laborbook.base.ads.CustomAdView;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.base.datastore.DataStoreManagerExtensionsKt;
import com.laborbook.income.C3621R;
import com.laborbook.income.databinding.FragmentIncomeTransactionStatusBinding;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: IncomeTransactionStatusFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\u0018\u0000  2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u001b\u001a\u00020\u000fH\u0002J\b\u0010\u001c\u001a\u00020\u000fH\u0002J\b\u0010\u001d\u001a\u00020\u000fH\u0002J\b\u0010\u001e\u001a\u00020\u000fH\u0002J\b\u0010\u001f\u001a\u00020\u000fH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\r¨\u0006!²\u0006\n\u0010\"\u001a\u00020#X\u008a\u0084\u0002"}, m2722d2 = {"Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "type", ConstantEventAttributes.AMOUNT, "isUpdate", "", "Ljava/lang/Boolean;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "observeProStatusChanges", "requestGoogleAds", "loadCustomAd", "setUpViews", "registerOnClickListeners", "Companion", "income_release", "customAdManager", "Lcom/laborbook/base/ads/CustomAdManager;"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class IncomeTransactionStatusFragment extends BaseFragment<FragmentIncomeTransactionStatusBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String type = "";
    private String amount = "";
    private Boolean isUpdate = false;

    @JvmStatic
    public static final IncomeTransactionStatusFragment newInstance(String str, String str2, boolean z) {
        return INSTANCE.newInstance(str, str2, z);
    }

    @Override // com.laborbook.base.BaseFragment
    public String getScreenName() {
        return ConstantEventNames.INCOME_TRANSACTION_STATUS;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.type = arguments.getString("type");
            this.amount = arguments.getString(ConstantEventAttributes.AMOUNT);
            this.isUpdate = Boolean.valueOf(arguments.getBoolean("is_update"));
        }
    }

    @Override // com.laborbook.base.BaseFragment
    public FragmentIncomeTransactionStatusBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentIncomeTransactionStatusBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentIncomeTransactionStatusBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        registerOnClickListeners();
        setUpViews();
        requestGoogleAds();
        observeProStatusChanges();
    }

    /* JADX INFO: renamed from: com.laborbook.income.screen.transactionstatus.fragment.IncomeTransactionStatusFragment$observeProStatusChanges$1 */
    /* JADX INFO: compiled from: IncomeTransactionStatusFragment.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "isPro", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.income.screen.transactionstatus.fragment.IncomeTransactionStatusFragment$observeProStatusChanges$1", m2735f = "IncomeTransactionStatusFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36541 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C36541(Continuation<? super C36541> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C36541 c36541 = IncomeTransactionStatusFragment.this.new C36541(continuation);
            c36541.Z$0 = ((Boolean) obj).booleanValue();
            return c36541;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C36541) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            FragmentIncomeTransactionStatusBinding binding;
            AdView adView;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.Z$0 && (binding = IncomeTransactionStatusFragment.this.getBinding()) != null && (adView = binding.adView) != null) {
                ExtentionsKt.hide$default(adView, 0L, null, 3, null);
            }
            return Unit.INSTANCE;
        }
    }

    private final void observeProStatusChanges() {
        FlowKt.launchIn(FlowKt.onEach(getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), false), new C36541(null)), LifecycleOwnerKt.getLifecycleScope(this));
    }

    /* JADX INFO: renamed from: com.laborbook.income.screen.transactionstatus.fragment.IncomeTransactionStatusFragment$requestGoogleAds$1 */
    /* JADX INFO: compiled from: IncomeTransactionStatusFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.income.screen.transactionstatus.fragment.IncomeTransactionStatusFragment$requestGoogleAds$1", m2735f = "IncomeTransactionStatusFragment.kt", m2736i = {}, m2737l = {91}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36551 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36551(Continuation<? super C36551> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IncomeTransactionStatusFragment.this.new C36551(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36551) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AdView adView;
            AdView adView2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = DataStoreManagerExtensionsKt.shouldShowGoogleAds(IncomeTransactionStatusFragment.this.getDataStoreManager(), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                IncomeTransactionStatusFragment.this.loadCustomAd();
            } else {
                MobileAds.initialize(IncomeTransactionStatusFragment.this.requireContext());
                AdRequest adRequestBuild = new AdRequest.Builder().build();
                Intrinsics.checkNotNullExpressionValue(adRequestBuild, "build(...)");
                FragmentIncomeTransactionStatusBinding binding = IncomeTransactionStatusFragment.this.getBinding();
                if (binding != null && (adView2 = binding.adView) != null) {
                    final IncomeTransactionStatusFragment incomeTransactionStatusFragment = IncomeTransactionStatusFragment.this;
                    adView2.setAdListener(new AdListener() { // from class: com.laborbook.income.screen.transactionstatus.fragment.IncomeTransactionStatusFragment.requestGoogleAds.1.1
                        @Override // com.google.android.gms.ads.AdListener
                        public void onAdLoaded() {
                            incomeTransactionStatusFragment.triggerSystemEvent(ConstantEventNames.GOOGLE_BANNER_AD, MapsKt.hashMapOf(new Pair("status", "onAdLoaded"), new Pair("source", "Expense")));
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public void onAdFailedToLoad(LoadAdError errorCode) {
                            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                            incomeTransactionStatusFragment.triggerSystemEvent(ConstantEventNames.GOOGLE_BANNER_AD, MapsKt.hashMapOf(new Pair("status", "onAdFailedToLoad"), new Pair("source", "Income")));
                            incomeTransactionStatusFragment.loadCustomAd();
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public void onAdOpened() {
                            incomeTransactionStatusFragment.recordClickEvent(ConstantEventNames.GOOGLE_BANNER_AD_OPEN, MapsKt.hashMapOf(new Pair("status", "onAdOpened"), new Pair("source", "Expense")));
                        }

                        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
                        public void onAdClicked() {
                            incomeTransactionStatusFragment.recordClickEvent(ConstantEventNames.GOOGLE_BANNER_AD_CLICK, MapsKt.hashMapOf(new Pair("status", "onAdClicked"), new Pair("source", "Expense")));
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public void onAdClosed() {
                            incomeTransactionStatusFragment.recordClickEvent(ConstantEventNames.GOOGLE_BANNER_AD_CLOSE, MapsKt.hashMapOf(new Pair("status", "onAdClosed"), new Pair("source", "Expense")));
                        }
                    });
                }
                FragmentIncomeTransactionStatusBinding binding2 = IncomeTransactionStatusFragment.this.getBinding();
                if (binding2 != null && (adView = binding2.adView) != null) {
                    adView.loadAd(adRequestBuild);
                }
            }
            return Unit.INSTANCE;
        }
    }

    private final void requestGoogleAds() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36551(null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.income.screen.transactionstatus.fragment.IncomeTransactionStatusFragment$loadCustomAd$1 */
    /* JADX INFO: compiled from: IncomeTransactionStatusFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.income.screen.transactionstatus.fragment.IncomeTransactionStatusFragment$loadCustomAd$1", m2735f = "IncomeTransactionStatusFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36521 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36521(Continuation<? super C36521> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IncomeTransactionStatusFragment.this.new C36521(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36521) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CustomAdView customAdView;
            CustomAdView customAdView2;
            CustomAdView customAdView3;
            CustomAdView customAdView4;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                final IncomeTransactionStatusFragment incomeTransactionStatusFragment = IncomeTransactionStatusFragment.this;
                LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
                final Qualifier qualifier = null;
                final Object[] objArr = 0 == true ? 1 : 0;
                CustomAdData customAdDataSync = invokeSuspend$lambda$0(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<CustomAdManager>() { // from class: com.laborbook.income.screen.transactionstatus.fragment.IncomeTransactionStatusFragment$loadCustomAd$1$invokeSuspend$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.base.ads.CustomAdManager, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final CustomAdManager invoke() {
                        ComponentCallbacks componentCallbacks = incomeTransactionStatusFragment;
                        return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(CustomAdManager.class), qualifier, objArr);
                    }
                })).getCustomAdDataSync();
                if (customAdDataSync.isValid()) {
                    FragmentIncomeTransactionStatusBinding binding = IncomeTransactionStatusFragment.this.getBinding();
                    if (binding != null && (customAdView4 = binding.customAdView) != null) {
                        customAdView4.setAnalytics(IncomeTransactionStatusFragment.this.getAnalytics());
                    }
                    FragmentIncomeTransactionStatusBinding binding2 = IncomeTransactionStatusFragment.this.getBinding();
                    if (binding2 != null && (customAdView3 = binding2.customAdView) != null) {
                        customAdView3.loadAd(customAdDataSync);
                    }
                } else {
                    FragmentIncomeTransactionStatusBinding binding3 = IncomeTransactionStatusFragment.this.getBinding();
                    if (binding3 != null && (customAdView2 = binding3.customAdView) != null) {
                        customAdView2.hide();
                    }
                }
            } catch (Exception unused) {
                FragmentIncomeTransactionStatusBinding binding4 = IncomeTransactionStatusFragment.this.getBinding();
                if (binding4 != null && (customAdView = binding4.customAdView) != null) {
                    customAdView.hide();
                }
            }
            return Unit.INSTANCE;
        }

        private static final CustomAdManager invokeSuspend$lambda$0(Lazy<CustomAdManager> lazy) {
            return lazy.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadCustomAd() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36521(null), 3, null);
    }

    private final void setUpViews() {
        FragmentIncomeTransactionStatusBinding binding = getBinding();
        if (binding != null) {
            if (Intrinsics.areEqual((Object) this.isUpdate, (Object) true)) {
                binding.tvAmountAdded.setText(getString(C3621R.string.updated_successfully, this.amount, getString(Intrinsics.areEqual(this.type, "CREDIT") ? C3621R.string.cash_in : C3621R.string.cash_out)));
            } else {
                binding.tvAmountAdded.setText(getString(C3621R.string.added_successfully, this.amount, getString(Intrinsics.areEqual(this.type, "CREDIT") ? C3621R.string.cash_in : C3621R.string.cash_out)));
            }
        }
    }

    private final void registerOnClickListeners() {
        FragmentIncomeTransactionStatusBinding binding = getBinding();
        if (binding != null) {
            binding.btnOk.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.income.screen.transactionstatus.fragment.IncomeTransactionStatusFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    IncomeTransactionStatusFragment.registerOnClickListeners$lambda$3$lambda$2(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$3$lambda$2(IncomeTransactionStatusFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().goBack();
    }

    /* JADX INFO: compiled from: IncomeTransactionStatusFragment.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, m2722d2 = {"Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;", "type", "", ConstantEventAttributes.AMOUNT, "isUpdate", "", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ IncomeTransactionStatusFragment newInstance$default(Companion companion, String str, String str2, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = "";
            }
            return companion.newInstance(str, str2, z);
        }

        @JvmStatic
        public final IncomeTransactionStatusFragment newInstance(String type, String amount, boolean isUpdate) {
            Intrinsics.checkNotNullParameter(type, "type");
            IncomeTransactionStatusFragment incomeTransactionStatusFragment = new IncomeTransactionStatusFragment();
            Bundle bundle = new Bundle();
            bundle.putString("type", type);
            bundle.putString(ConstantEventAttributes.AMOUNT, amount);
            bundle.putBoolean("is_update", isUpdate);
            incomeTransactionStatusFragment.setArguments(bundle);
            return incomeTransactionStatusFragment;
        }
    }
}

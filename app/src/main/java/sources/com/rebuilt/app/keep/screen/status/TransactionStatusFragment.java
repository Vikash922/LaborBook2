package com.rebuilt.app.keep.screen.status;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.rebuilt.app.base.BaseFragment;
import com.rebuilt.app.base.ads.CustomAdData;
import com.rebuilt.app.base.ads.CustomAdManager;
import com.rebuilt.app.base.ads.CustomAdView;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt;
import com.rebuilt.app.keep.C3656R;
import com.rebuilt.app.keep.databinding.FragmentTransactionStatusBinding;
import com.rebuilt.app.keep.screen.calendar.utils.Constants;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: TransactionStatusFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J&\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00162\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0019\u001a\u00020\rH\u0002J\b\u0010\u001a\u001a\u00020\rH\u0002J\b\u0010\u001b\u001a\u00020\rH\u0002J\b\u0010\u001c\u001a\u00020\rH\u0002J\b\u0010\u001d\u001a\u00020\rH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f²\u0006\n\u0010 \u001a\u00020!X\u008a\u0084\u0002"}, m2722d2 = {"Lcom/laborbook/keep/screen/status/TransactionStatusFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "staffName", "type", ConstantEventAttributes.AMOUNT, "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "observeProStatusChanges", "requestGoogleAds", "loadCustomAd", "setUpViews", "registerOnClickListeners", "Companion", "keep_release", "customAdManager", "Lcom/laborbook/base/ads/CustomAdManager;"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionStatusFragment extends BaseFragment<FragmentTransactionStatusBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String staffName = "";
    private String type = "";
    private String amount = "";

    @JvmStatic
    public static final TransactionStatusFragment newInstance(String str, String str2, String str3) {
        return INSTANCE.newInstance(str, str2, str3);
    }

    @Override // com.rebuilt.app.base.BaseFragment
    public String getScreenName() {
        return ConstantEventNames.TRANSACTION_STATUS;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.staffName = arguments.getString("staff_name");
            this.type = arguments.getString("type");
            this.amount = arguments.getString(ConstantEventAttributes.AMOUNT);
        }
    }

    @Override // com.rebuilt.app.base.BaseFragment
    public FragmentTransactionStatusBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentTransactionStatusBinding.inflate(inflater, container, false);
    }

    @Override // com.rebuilt.app.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentTransactionStatusBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.rebuilt.app.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        registerOnClickListeners();
        setUpViews();
        requestGoogleAds();
        observeProStatusChanges();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.status.TransactionStatusFragment$observeProStatusChanges$1 */
    /* JADX INFO: compiled from: TransactionStatusFragment.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "isPro", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.status.TransactionStatusFragment$observeProStatusChanges$1", m2735f = "TransactionStatusFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38591 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C38591(Continuation<? super C38591> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C38591 c38591 = TransactionStatusFragment.this.new C38591(continuation);
            c38591.Z$0 = ((Boolean) obj).booleanValue();
            return c38591;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C38591) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            FragmentTransactionStatusBinding binding;
            AdView adView;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.Z$0 && (binding = TransactionStatusFragment.this.getBinding()) != null && (adView = binding.adView) != null) {
                ExtentionsKt.hide$default(adView, 0L, null, 3, null);
            }
            return Unit.INSTANCE;
        }
    }

    private final void observeProStatusChanges() {
        FlowKt.launchIn(FlowKt.onEach(getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), false), new C38591(null)), LifecycleOwnerKt.getLifecycleScope(this));
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.status.TransactionStatusFragment$requestGoogleAds$1 */
    /* JADX INFO: compiled from: TransactionStatusFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.status.TransactionStatusFragment$requestGoogleAds$1", m2735f = "TransactionStatusFragment.kt", m2736i = {}, m2737l = {92}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38601 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38601(Continuation<? super C38601> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionStatusFragment.this.new C38601(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38601) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                obj = DataStoreManagerExtensionsKt.shouldShowGoogleAds(TransactionStatusFragment.this.getDataStoreManager(), this);
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
                TransactionStatusFragment.this.loadCustomAd();
            } else {
                MobileAds.initialize(TransactionStatusFragment.this.requireContext());
                AdRequest adRequestBuild = new AdRequest.Builder().build();
                Intrinsics.checkNotNullExpressionValue(adRequestBuild, "build(...)");
                FragmentTransactionStatusBinding binding = TransactionStatusFragment.this.getBinding();
                if (binding != null && (adView2 = binding.adView) != null) {
                    final TransactionStatusFragment transactionStatusFragment = TransactionStatusFragment.this;
                    adView2.setAdListener(new AdListener() { // from class: com.rebuilt.app.keep.screen.status.TransactionStatusFragment.requestGoogleAds.1.1
                        @Override // com.google.android.gms.ads.AdListener
                        public void onAdLoaded() {
                            transactionStatusFragment.triggerSystemEvent(ConstantEventNames.GOOGLE_BANNER_AD, MapsKt.hashMapOf(new Pair("status", "onAdLoaded"), new Pair("source", "Advance")));
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public void onAdFailedToLoad(LoadAdError errorCode) {
                            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                            transactionStatusFragment.triggerSystemEvent(ConstantEventNames.GOOGLE_BANNER_AD, MapsKt.hashMapOf(new Pair("status", "onAdFailedToLoad"), new Pair("source", "Advance")));
                            transactionStatusFragment.loadCustomAd();
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public void onAdOpened() {
                            transactionStatusFragment.recordClickEvent(ConstantEventNames.GOOGLE_BANNER_AD_OPEN, MapsKt.hashMapOf(new Pair("status", "onAdOpened"), new Pair("source", "Advance")));
                        }

                        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
                        public void onAdClicked() {
                            transactionStatusFragment.recordClickEvent(ConstantEventNames.GOOGLE_BANNER_AD_CLICK, MapsKt.hashMapOf(new Pair("status", "onAdClicked"), new Pair("source", "Advance")));
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public void onAdClosed() {
                            transactionStatusFragment.recordClickEvent(ConstantEventNames.GOOGLE_BANNER_AD_CLOSE, MapsKt.hashMapOf(new Pair("status", "onAdClosed"), new Pair("source", "Advance")));
                        }
                    });
                }
                FragmentTransactionStatusBinding binding2 = TransactionStatusFragment.this.getBinding();
                if (binding2 != null && (adView = binding2.adView) != null) {
                    adView.loadAd(adRequestBuild);
                }
            }
            return Unit.INSTANCE;
        }
    }

    private final void requestGoogleAds() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38601(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.status.TransactionStatusFragment$loadCustomAd$1 */
    /* JADX INFO: compiled from: TransactionStatusFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.status.TransactionStatusFragment$loadCustomAd$1", m2735f = "TransactionStatusFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38571 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38571(Continuation<? super C38571> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionStatusFragment.this.new C38571(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38571) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                final TransactionStatusFragment transactionStatusFragment = TransactionStatusFragment.this;
                LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
                final Qualifier qualifier = null;
                final Object[] objArr = 0 == true ? 1 : 0;
                CustomAdData customAdDataSync = invokeSuspend$lambda$0(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<CustomAdManager>() { // from class: com.rebuilt.app.keep.screen.status.TransactionStatusFragment$loadCustomAd$1$invokeSuspend$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.ads.CustomAdManager, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final CustomAdManager invoke() {
                        ComponentCallbacks componentCallbacks = transactionStatusFragment;
                        return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(CustomAdManager.class), qualifier, objArr);
                    }
                })).getCustomAdDataSync();
                if (customAdDataSync.isValid()) {
                    FragmentTransactionStatusBinding binding = TransactionStatusFragment.this.getBinding();
                    if (binding != null && (customAdView4 = binding.customAdView) != null) {
                        customAdView4.setAnalytics(TransactionStatusFragment.this.getAnalytics());
                    }
                    FragmentTransactionStatusBinding binding2 = TransactionStatusFragment.this.getBinding();
                    if (binding2 != null && (customAdView3 = binding2.customAdView) != null) {
                        customAdView3.loadAd(customAdDataSync);
                    }
                } else {
                    FragmentTransactionStatusBinding binding3 = TransactionStatusFragment.this.getBinding();
                    if (binding3 != null && (customAdView2 = binding3.customAdView) != null) {
                        customAdView2.hide();
                    }
                }
            } catch (Exception unused) {
                FragmentTransactionStatusBinding binding4 = TransactionStatusFragment.this.getBinding();
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
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38571(null), 3, null);
    }

    private final void setUpViews() {
        FragmentTransactionStatusBinding binding = getBinding();
        if (binding != null) {
            if (!StringsKt.equals$default(this.type, Constants.TYPE_ADVANCE, false, 2, null)) {
                if (StringsKt.equals$default(this.type, Constants.TYPE_ATTENDANCE, false, 2, null)) {
                    binding.tvStaffName.setText(getString(C3656R.string.successfully_marked_attendance) + '\n' + getString(C3656R.string.f3445on) + ' ' + this.staffName);
                }
            } else if (Intrinsics.areEqual(this.amount, AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                binding.tvStaffName.setText(getString(C3656R.string.advance_amount) + ' ' + getString(C3656R.string.removed) + '\n' + getString(C3656R.string.f3445on) + ' ' + this.staffName);
            } else {
                binding.tvStaffName.setText(getString(C3656R.string.advance_amount) + ' ' + getString(C3656R.string.rupee) + ' ' + this.amount + ' ' + getString(C3656R.string.added) + '\n' + getString(C3656R.string.f3445on) + ' ' + this.staffName);
            }
        }
    }

    private final void registerOnClickListeners() {
        FragmentTransactionStatusBinding binding = getBinding();
        if (binding != null) {
            binding.btnOk.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.status.TransactionStatusFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransactionStatusFragment.registerOnClickListeners$lambda$3$lambda$2(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$3$lambda$2(TransactionStatusFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().goBack();
    }

    /* JADX INFO: compiled from: TransactionStatusFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0007¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/status/TransactionStatusFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/status/TransactionStatusFragment;", "staffName", "", "type", ConstantEventAttributes.AMOUNT, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ TransactionStatusFragment newInstance$default(Companion companion, String str, String str2, String str3, int i, Object obj) {
            if ((i & 4) != 0) {
                str3 = "";
            }
            return companion.newInstance(str, str2, str3);
        }

        @JvmStatic
        public final TransactionStatusFragment newInstance(String staffName, String type, String amount) {
            Intrinsics.checkNotNullParameter(staffName, "staffName");
            Intrinsics.checkNotNullParameter(type, "type");
            TransactionStatusFragment transactionStatusFragment = new TransactionStatusFragment();
            Bundle bundle = new Bundle();
            bundle.putString("staff_name", staffName);
            bundle.putString("type", type);
            bundle.putString(ConstantEventAttributes.AMOUNT, amount);
            transactionStatusFragment.setArguments(bundle);
            return transactionStatusFragment;
        }
    }
}

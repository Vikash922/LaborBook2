package com.laborbook.keep.screen.home.fragment;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.RecyclerView;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.textviews.text12.TextViewRegular12;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.laborbook.base.AdUnitConstants;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.BaseFragment;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.analytics.ConstantEventSources;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.base.datastore.DataStoreManagerExtensionsKt;
import com.laborbook.keep.databinding.FragmentStaffListBinding;
import com.laborbook.keep.screen.calendar.utils.ObserverUtil;
import com.laborbook.keep.screen.home.adapter.StaffUserAdapter;
import com.laborbook.keep.screen.home.fragment.StaffListFragment;
import com.laborbook.keep.screen.home.uistate.StaffsUiState;
import com.laborbook.keep.screen.home.viewmodel.StaffsViewModel;
import com.laborbook.keep.screen.premium.PremiumOfferDialogFragment;
import com.laborbook.keep.utils.SubscriptionsFeatureFlag;
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
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: StaffListFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 12\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J&\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J&\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001a\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020$2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u0010'\u001a\u00020\u001bH\u0002J\b\u0010(\u001a\u00020\u001bH\u0002J\b\u0010)\u001a\u00020\u001bH\u0002J\b\u0010*\u001a\u00020\u001bH\u0002J\b\u0010+\u001a\u00020,H\u0002J\b\u0010-\u001a\u00020\u001bH\u0002J\b\u0010.\u001a\u00020\u001bH\u0002J\b\u0010/\u001a\u00020\u001bH\u0002J\b\u00100\u001a\u00020\u001bH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000¨\u00062"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/keep/databinding/FragmentStaffListBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "shouldScrollToTop", "", "adapter", "Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;", "viewModel", "Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "getObserverUtil", "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "observerUtil$delegate", "wasProPreviously", "adUnitId", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "observeProStatusChanges", "showLanguageBottomSheet", "triggerInAppReview", "registerObservers", "callGetStaffsAPI", "Lkotlinx/coroutines/Job;", "setupView", "registerOnClickListeners", "viewModelObserver", "onDestroyView", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class StaffListFragment extends BaseFragment<FragmentStaffListBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String adUnitId;
    private StaffUserAdapter adapter;

    /* JADX INFO: renamed from: observerUtil$delegate, reason: from kotlin metadata */
    private final Lazy observerUtil;
    private boolean shouldScrollToTop;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;
    private boolean wasProPreviously;

    @JvmStatic
    public static final StaffListFragment newInstance() {
        return INSTANCE.newInstance();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StaffListFragment() {
        final StaffListFragment staffListFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<StaffsViewModel>() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.laborbook.keep.screen.home.viewmodel.StaffsViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final StaffsViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(staffListFragment, qualifier, Reflection.getOrCreateKotlinClass(StaffsViewModel.class), objArr);
            }
        });
        final StaffListFragment staffListFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.observerUtil = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<ObserverUtil>() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.keep.screen.calendar.utils.ObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = staffListFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ObserverUtil.class), objArr2, objArr3);
            }
        });
        this.adUnitId = AdUnitConstants.NativeAds.STAFF_LIST;
    }

    @Override // com.laborbook.base.BaseFragment
    public String getScreenName() {
        return ConstantEventNames.LABORS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final StaffsViewModel getViewModel() {
        return (StaffsViewModel) this.viewModel.getValue();
    }

    private final ObserverUtil getObserverUtil() {
        return (ObserverUtil) this.observerUtil.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.laborbook.base.BaseFragment
    public FragmentStaffListBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentStaffListBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentStaffListBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.home.fragment.StaffListFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: StaffListFragment.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$onViewCreated$1", m2735f = "StaffListFragment.kt", m2736i = {}, m2737l = {82}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38011 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38011(Continuation<? super C38011> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StaffListFragment.this.new C38011(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38011) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = DataStoreManagerExtensionsKt.shouldShowGoogleAds(StaffListFragment.this.getDataStoreManager(), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                MobileAds.initialize(StaffListFragment.this.requireContext());
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38011(null), 3, null);
        viewModelObserver();
        setupView();
        registerOnClickListeners();
        callGetStaffsAPI();
        registerObservers();
        showLanguageBottomSheet();
        triggerInAppReview();
        observeProStatusChanges();
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.home.fragment.StaffListFragment$observeProStatusChanges$1 */
    /* JADX INFO: compiled from: StaffListFragment.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "isPro", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$observeProStatusChanges$1", m2735f = "StaffListFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38001 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C38001(Continuation<? super C38001> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C38001 c38001 = StaffListFragment.this.new C38001(continuation);
            c38001.Z$0 = ((Boolean) obj).booleanValue();
            return c38001;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C38001) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            TextView textView;
            TextView textView2;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                boolean z = this.Z$0;
                if (z) {
                    FragmentStaffListBinding binding = StaffListFragment.this.getBinding();
                    if (binding != null && (textView2 = binding.ivProTag) != null) {
                        textView2.setVisibility(8);
                    }
                    if (StaffListFragment.this.adapter != null && !StaffListFragment.this.wasProPreviously) {
                        StaffUserAdapter staffUserAdapter = StaffListFragment.this.adapter;
                        if (staffUserAdapter == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            staffUserAdapter = null;
                        }
                        staffUserAdapter.removeAllAds();
                        StaffListFragment.this.setRefresh(true);
                        StaffListFragment.this.callGetStaffsAPI();
                    }
                } else {
                    FragmentStaffListBinding binding2 = StaffListFragment.this.getBinding();
                    if (binding2 != null && (textView = binding2.ivProTag) != null) {
                        textView.setVisibility(0);
                    }
                }
                StaffListFragment.this.wasProPreviously = z;
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void observeProStatusChanges() {
        FlowKt.launchIn(FlowKt.onEach(getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), false), new C38001(null)), LifecycleOwnerKt.getLifecycleScope(this));
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.home.fragment.StaffListFragment$showLanguageBottomSheet$1 */
    /* JADX INFO: compiled from: StaffListFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$showLanguageBottomSheet$1", m2735f = "StaffListFragment.kt", m2736i = {2}, m2737l = {121, 123, 124, 127, 130}, m2738m = "invokeSuspend", m2739n = {"isExistingUser"}, m2740s = {"Z$0"})
    static final class C38021 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        boolean Z$0;
        int label;

        C38021(Continuation<? super C38021> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StaffListFragment.this.new C38021(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38021) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0090 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0099 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00bd A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00c6 A[Catch: Exception -> 0x00f3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00f3, blocks: (B:9:0x0018, B:36:0x00c6), top: B:43:0x000c }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                Method dump skipped, instruction units count: 246
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.home.fragment.StaffListFragment.C38021.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void showLanguageBottomSheet() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38021(null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.home.fragment.StaffListFragment$triggerInAppReview$1 */
    /* JADX INFO: compiled from: StaffListFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$triggerInAppReview$1", m2735f = "StaffListFragment.kt", m2736i = {}, m2737l = {Opcodes.D2L}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38031 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38031(Continuation<? super C38031> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StaffListFragment.this.new C38031(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38031) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = FlowKt.first(StaffListFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getAPP_OPEN_COUNT(), Boxing.boxInt(0)), this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                int iIntValue = ((Number) obj).intValue();
                if (iIntValue != 0 && iIntValue % 3 == 0) {
                    final ReviewManager reviewManagerCreate = ReviewManagerFactory.create(StaffListFragment.this.requireContext());
                    Intrinsics.checkNotNullExpressionValue(reviewManagerCreate, "create(...)");
                    Task<ReviewInfo> taskRequestReviewFlow = reviewManagerCreate.requestReviewFlow();
                    Intrinsics.checkNotNullExpressionValue(taskRequestReviewFlow, "requestReviewFlow(...)");
                    final StaffListFragment staffListFragment = StaffListFragment.this;
                    taskRequestReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$triggerInAppReview$1$$ExternalSyntheticLambda0
                        @Override // com.google.android.gms.tasks.OnCompleteListener
                        public final void onComplete(Task task) {
                            StaffListFragment.C38031.invokeSuspend$lambda$1(reviewManagerCreate, staffListFragment, task);
                        }
                    });
                }
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$1(ReviewManager reviewManager, final StaffListFragment staffListFragment, Task task) {
            if (task.isSuccessful()) {
                try {
                    Task<Void> taskLaunchReviewFlow = reviewManager.launchReviewFlow(staffListFragment.requireActivity(), (ReviewInfo) task.getResult());
                    Intrinsics.checkNotNullExpressionValue(taskLaunchReviewFlow, "launchReviewFlow(...)");
                    BaseFragment.triggerImpressionEvent$default(staffListFragment, ConstantEventNames.IN_APP_REVIEW, null, 2, null);
                    taskLaunchReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$triggerInAppReview$1$$ExternalSyntheticLambda1
                        @Override // com.google.android.gms.tasks.OnCompleteListener
                        public final void onComplete(Task task2) {
                            StaffListFragment.C38031.invokeSuspend$lambda$1$lambda$0(staffListFragment, task2);
                        }
                    });
                } catch (Exception unused) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$1$lambda$0(StaffListFragment staffListFragment, Task task) {
            BaseFragment.recordClickEvent$default(staffListFragment, ConstantEventNames.IN_APP_REVIEW_DONE, null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void triggerInAppReview() {
        try {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38031(null), 3, null);
        } catch (Exception unused) {
        }
    }

    private final void registerObservers() {
        getObserverUtil().setRefreshStaffs(new Function1() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StaffListFragment.registerObservers$lambda$0(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
        getObserverUtil().setAddedStaff(new Function1() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StaffListFragment.registerObservers$lambda$1(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
        getObserverUtil().setClearSearchText(new Function1() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StaffListFragment.registerObservers$lambda$2(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
        getObserverUtil().setShowReviewBottomSheet(new Function1() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StaffListFragment.registerObservers$lambda$3(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit registerObservers$lambda$0(StaffListFragment this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.setRefresh(true);
            this$0.callGetStaffsAPI();
            if (this$0.shouldScrollToTop) {
                this$0.shouldScrollToTop = false;
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new StaffListFragment$registerObservers$1$1(this$0, null), 3, null);
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit registerObservers$lambda$1(StaffListFragment this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.shouldScrollToTop = z;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit registerObservers$lambda$2(StaffListFragment this$0, boolean z) {
        FragmentStaffListBinding binding;
        EditText editText;
        Editable text;
        FragmentStaffListBinding binding2;
        EditText editText2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z && (binding = this$0.getBinding()) != null && (editText = binding.etSearchStaffs) != null && (text = editText.getText()) != null && text.length() > 0 && (binding2 = this$0.getBinding()) != null && (editText2 = binding2.etSearchStaffs) != null) {
            editText2.setText("");
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit registerObservers$lambda$3(StaffListFragment this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new StaffListFragment$registerObservers$4$1(this$0, null), 3, null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.home.fragment.StaffListFragment$callGetStaffsAPI$1 */
    /* JADX INFO: compiled from: StaffListFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$callGetStaffsAPI$1", m2735f = "StaffListFragment.kt", m2736i = {}, m2737l = {212}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37991 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C37991(Continuation<? super C37991> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StaffListFragment.this.new C37991(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37991) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            StaffsViewModel staffsViewModel;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                StaffsViewModel viewModel = StaffListFragment.this.getViewModel();
                this.L$0 = viewModel;
                this.label = 1;
                Object objFirst = FlowKt.first(StaffListFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
                if (objFirst == coroutine_suspended) {
                    return coroutine_suspended;
                }
                staffsViewModel = viewModel;
                obj = objFirst;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                staffsViewModel = (StaffsViewModel) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            staffsViewModel.getUsers((String) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Job callGetStaffsAPI() {
        return BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getIO(), null, new C37991(null), 2, null);
    }

    private final void setupView() {
        this.adapter = new StaffUserAdapter(new Function0() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StaffListFragment.setupView$lambda$5(this.f$0);
            }
        }, this.adUnitId, new Function0() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StaffListFragment.setupView$lambda$6(this.f$0);
            }
        });
        FragmentStaffListBinding binding = getBinding();
        if (binding != null) {
            RecyclerView recyclerView = binding.rvStaffs;
            StaffUserAdapter staffUserAdapter = this.adapter;
            if (staffUserAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                staffUserAdapter = null;
            }
            recyclerView.setAdapter(staffUserAdapter);
            binding.etSearchStaffs.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$setupView$3$1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence s, int start, int before, int count) {
                    if (s != null) {
                        StaffUserAdapter staffUserAdapter2 = this.this$0.adapter;
                        if (staffUserAdapter2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            staffUserAdapter2 = null;
                        }
                        staffUserAdapter2.filter(s.toString());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupView$lambda$5(StaffListFragment this$0) {
        FragmentStaffListBinding binding;
        EditText editText;
        EditText editText2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.VIEW_LABOR_CALENDAR, null, 2, null);
        FragmentStaffListBinding binding2 = this$0.getBinding();
        if (binding2 != null && (editText2 = binding2.etSearchStaffs) != null) {
            editText2.setText("");
        }
        FragmentActivity activity = this$0.getActivity();
        if (activity != null && (binding = this$0.getBinding()) != null && (editText = binding.etSearchStaffs) != null) {
            BaseExtensionKt.hideKeyboard(editText, activity);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupView$lambda$6(StaffListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (SubscriptionsFeatureFlag.INSTANCE.isSubscriptionsEnabled(RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE))) {
            PremiumOfferDialogFragment.Companion.newInstance$default(PremiumOfferDialogFragment.INSTANCE, false, false, 3, null).show(this$0.getParentFragmentManager(), PremiumOfferDialogFragment.TAG);
            this$0.recordClickEvent(ConstantEventNames.VIEW_LABOR_CALENDAR, MapsKt.hashMapOf(new Pair("blocked_by_subscription", true)));
        }
        return Unit.INSTANCE;
    }

    private final void registerOnClickListeners() {
        FragmentStaffListBinding binding = getBinding();
        if (binding != null) {
            binding.btnAddStaff.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StaffListFragment.registerOnClickListeners$lambda$12$lambda$8(this.f$0, view);
                }
            });
            binding.tvShare.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StaffListFragment.registerOnClickListeners$lambda$12$lambda$9(this.f$0, view);
                }
            });
            binding.ivProTag.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StaffListFragment.registerOnClickListeners$lambda$12$lambda$10(this.f$0, view);
                }
            });
            binding.etSearchStaffs.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StaffListFragment.registerOnClickListeners$lambda$12$lambda$11(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$12$lambda$8(StaffListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new StaffListFragment$registerOnClickListeners$1$1$1(this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$12$lambda$9(StaffListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ReferFriendBottomSheetFragment.INSTANCE.newInstance().show(this$0.getParentFragmentManager(), ReferFriendBottomSheetFragment.TAG);
        this$0.recordClickEvent(ConstantEventNames.REFER_A_FRIEND, MapsKt.hashMapOf(new Pair("source", ConstantEventSources.LABOR_LIST)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$12$lambda$10(StaffListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new StaffListFragment$registerOnClickListeners$1$3$1(this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$12$lambda$11(StaffListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.SEARCH_LABOR, null, 2, null);
    }

    private final void viewModelObserver() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new StaffListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.laborbook.keep.screen.home.fragment.StaffListFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StaffListFragment.viewModelObserver$lambda$13(this.f$0, (StaffsUiState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit viewModelObserver$lambda$13(StaffListFragment this$0, StaffsUiState staffsUiState) {
        ProgressBar progressBar;
        ImageView imageView;
        RecyclerView recyclerView;
        TextViewRegular12 textViewRegular12;
        EditText editText;
        ImageView imageView2;
        ImageView imageView3;
        ProgressBar progressBar2;
        FragmentStaffListBinding binding;
        ProgressBar progressBar3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (staffsUiState instanceof StaffsUiState.Loading) {
            if (!this$0.getIsRefresh() && (binding = this$0.getBinding()) != null && (progressBar3 = binding.f3458pb) != null) {
                ExtentionsKt.show$default(progressBar3, 0L, null, 3, null);
            }
        } else if (staffsUiState instanceof StaffsUiState.Success) {
            FragmentStaffListBinding binding2 = this$0.getBinding();
            if (binding2 != null && (progressBar2 = binding2.f3458pb) != null) {
                ExtentionsKt.hide$default(progressBar2, 0L, null, 3, null);
            }
            StaffsUiState.Success success = (StaffsUiState.Success) staffsUiState;
            StaffUserAdapter staffUserAdapter = null;
            if (!success.getStaffs().isEmpty()) {
                this$0.setRefresh(false);
                FragmentStaffListBinding binding3 = this$0.getBinding();
                if (binding3 != null && (imageView3 = binding3.llAddStaffToolTip) != null) {
                    ExtentionsKt.hide$default(imageView3, 0L, null, 3, null);
                }
                FragmentStaffListBinding binding4 = this$0.getBinding();
                if (binding4 != null && (imageView2 = binding4.ivDownChevron) != null) {
                    ExtentionsKt.hide$default(imageView2, 0L, null, 3, null);
                }
                FragmentStaffListBinding binding5 = this$0.getBinding();
                if (binding5 != null && (editText = binding5.etSearchStaffs) != null) {
                    ExtentionsKt.show$default(editText, 0L, null, 3, null);
                }
                FragmentStaffListBinding binding6 = this$0.getBinding();
                if (binding6 != null && (textViewRegular12 = binding6.tvStaffs) != null) {
                    ExtentionsKt.show$default(textViewRegular12, 0L, null, 3, null);
                }
                FragmentStaffListBinding binding7 = this$0.getBinding();
                if (binding7 != null && (recyclerView = binding7.rvStaffs) != null) {
                    ExtentionsKt.show$default(recyclerView, 0L, null, 3, null);
                }
                StaffUserAdapter staffUserAdapter2 = this$0.adapter;
                if (staffUserAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    staffUserAdapter = staffUserAdapter2;
                }
                staffUserAdapter.submitOriginalList(success.getStaffs(), this$0.getIsRefresh());
            } else {
                this$0.setRefresh(false);
                FragmentStaffListBinding binding8 = this$0.getBinding();
                if (binding8 != null && (imageView = binding8.llAddStaffToolTip) != null) {
                    ExtentionsKt.show$default(imageView, 0L, null, 3, null);
                }
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new StaffListFragment$viewModelObserver$1$1(this$0, null), 3, null);
            }
        } else if (staffsUiState instanceof StaffsUiState.Error) {
            this$0.setRefresh(false);
            FragmentStaffListBinding binding9 = this$0.getBinding();
            if (binding9 != null && (progressBar = binding9.f3458pb) != null) {
                ExtentionsKt.hide$default(progressBar, 0L, null, 3, null);
            }
            Toast.makeText(this$0.requireContext(), ((StaffsUiState.Error) staffsUiState).getMessage(), 0).show();
        }
        return Unit.INSTANCE;
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        StaffUserAdapter staffUserAdapter = this.adapter;
        if (staffUserAdapter != null) {
            if (staffUserAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                staffUserAdapter = null;
            }
            staffUserAdapter.releaseAds();
        }
    }

    /* JADX INFO: compiled from: StaffListFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final StaffListFragment newInstance() {
            return new StaffListFragment();
        }
    }
}

package com.rebuilt.app.keep.screen.home.fragment;

import android.content.ActivityNotFoundException;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.buttons.RoundedPrimaryButton;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.google.android.play.core.appupdate.AppUpdateManagerFactory;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.rebuilt.app.base.BaseFragment;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.base.languagemanager.LanguageBottomSheetFragment;
import com.rebuilt.app.keep.C3656R;
import com.rebuilt.app.keep.databinding.FragmentSettingsBinding;
import com.rebuilt.app.keep.screen.premium.PremiumOfferManager;
import com.rebuilt.app.keep.screen.profile.fragment.UpdateNameBottomsheetFragment;
import com.rebuilt.app.keep.screen.profile.uistate.UserUiState;
import com.rebuilt.app.keep.screen.profile.viewmodel.UserProfileViewModel;
import com.rebuilt.app.keep.utils.CoachMarkManager;
import com.rebuilt.app.keep.utils.SubscriptionsFeatureFlag;
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
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.SharedViewModelExtKt;
import org.koin.core.qualifier.Qualifier;
import timber.log.Timber;

/* JADX INFO: compiled from: SettingsFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 62\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00016B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J&\u0010\u001f\u001a\u0004\u0018\u00010\u00022\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J&\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010&\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020%2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010(\u001a\u00020\u001cH\u0016J\b\u0010)\u001a\u00020\u001cH\u0002J\b\u0010*\u001a\u00020\u001cH\u0002J\b\u0010+\u001a\u00020\u001cH\u0002J\b\u0010,\u001a\u00020\u001cH\u0002J\b\u0010-\u001a\u00020\u001cH\u0002J\b\u0010.\u001a\u00020\u001cH\u0002J\u0010\u0010/\u001a\u00020\u001c2\u0006\u00100\u001a\u000201H\u0002J\u0010\u00102\u001a\u00020\u001c2\u0006\u00100\u001a\u000201H\u0002J\b\u00103\u001a\u00020\u001cH\u0002J\b\u00104\u001a\u00020\u001cH\u0002J\b\u00105\u001a\u00020\u001cH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u000e\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.¢\u0006\u0002\n\u0000¨\u00067"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/keep/databinding/FragmentSettingsBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "viewModel", "Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "coachMarkManager", "Lcom/laborbook/keep/utils/CoachMarkManager;", "getCoachMarkManager", "()Lcom/laborbook/keep/utils/CoachMarkManager;", "coachMarkManager$delegate", "premiumOfferManager", "Lcom/laborbook/keep/screen/premium/PremiumOfferManager;", "getPremiumOfferManager", "()Lcom/laborbook/keep/screen/premium/PremiumOfferManager;", "premiumOfferManager$delegate", "appUpdateManager", "Lcom/google/android/play/core/appupdate/AppUpdateManager;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "onResume", "updateProBadgeVisibility", "setupViews", "observeProStatusChanges", "registerOnClickListeners", "setupDebugOptions", "viewModelObserver", "openAppUpdatePage", "context", "Landroid/content/Context;", "openAppReviewPage", "openRequestFeatureBottomSheet", "checkForUpdate", "handleAppBackup", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class SettingsFragment extends BaseFragment<FragmentSettingsBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private AppUpdateManager appUpdateManager;

    /* JADX INFO: renamed from: coachMarkManager$delegate, reason: from kotlin metadata */
    private final Lazy coachMarkManager;

    /* JADX INFO: renamed from: premiumOfferManager$delegate, reason: from kotlin metadata */
    private final Lazy premiumOfferManager;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @JvmStatic
    public static final SettingsFragment newInstance() {
        return INSTANCE.newInstance();
    }

    private final void setupDebugOptions() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsFragment() {
        final SettingsFragment settingsFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<UserProfileViewModel>() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$special$$inlined$sharedViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.rebuilt.app.keep.screen.profile.viewmodel.UserProfileViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final UserProfileViewModel invoke() {
                return SharedViewModelExtKt.getSharedViewModel(settingsFragment, qualifier, Reflection.getOrCreateKotlinClass(UserProfileViewModel.class), objArr);
            }
        });
        final SettingsFragment settingsFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.coachMarkManager = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<CoachMarkManager>() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.keep.utils.CoachMarkManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final CoachMarkManager invoke() {
                ComponentCallbacks componentCallbacks = settingsFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(CoachMarkManager.class), objArr2, objArr3);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode3 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr4 = 0 == true ? 1 : 0;
        final Object[] objArr5 = 0 == true ? 1 : 0;
        this.premiumOfferManager = LazyKt.lazy(lazyThreadSafetyMode3, (Function0) new Function0<PremiumOfferManager>() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.keep.screen.premium.PremiumOfferManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final PremiumOfferManager invoke() {
                ComponentCallbacks componentCallbacks = settingsFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(PremiumOfferManager.class), objArr4, objArr5);
            }
        });
    }

    @Override // com.rebuilt.app.base.BaseFragment
    public String getScreenName() {
        return "settings";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UserProfileViewModel getViewModel() {
        return (UserProfileViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CoachMarkManager getCoachMarkManager() {
        return (CoachMarkManager) this.coachMarkManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PremiumOfferManager getPremiumOfferManager() {
        return (PremiumOfferManager) this.premiumOfferManager.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.rebuilt.app.base.BaseFragment
    public FragmentSettingsBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentSettingsBinding.inflate(inflater, container, false);
    }

    @Override // com.rebuilt.app.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentSettingsBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.rebuilt.app.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.appUpdateManager = AppUpdateManagerFactory.create(requireContext());
        checkForUpdate();
        setupViews();
        viewModelObserver();
        registerOnClickListeners();
        setupDebugOptions();
        observeProStatusChanges();
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C37961(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: SettingsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$onViewCreated$1", m2735f = "SettingsFragment.kt", m2736i = {}, m2737l = {84}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37961 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C37961(Continuation<? super C37961> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SettingsFragment.this.new C37961(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37961) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            UserProfileViewModel userProfileViewModel;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                UserProfileViewModel viewModel = SettingsFragment.this.getViewModel();
                this.L$0 = viewModel;
                this.label = 1;
                Object objFirst = FlowKt.first(SettingsFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
                if (objFirst == coroutine_suspended) {
                    return coroutine_suspended;
                }
                userProfileViewModel = viewModel;
                obj = objFirst;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                userProfileViewModel = (UserProfileViewModel) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            userProfileViewModel.getUser((String) obj);
            return Unit.INSTANCE;
        }
    }

    @Override // com.rebuilt.app.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        updateProBadgeVisibility();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$updateProBadgeVisibility$1 */
    /* JADX INFO: compiled from: SettingsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$updateProBadgeVisibility$1", m2735f = "SettingsFragment.kt", m2736i = {}, m2737l = {99}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37981 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C37981(Continuation<? super C37981> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SettingsFragment.this.new C37981(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37981) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(SettingsFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), Boxing.boxBoolean(false)), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Timber.INSTANCE.mo2932d("SettingsFragment: updateProBadgeVisibility isPro=" + ((Boolean) obj).booleanValue() + " subscriptionsEnabled=" + SubscriptionsFeatureFlag.INSTANCE.isSubscriptionsEnabled(RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE)), new Object[0]);
            return Unit.INSTANCE;
        }
    }

    private final void updateProBadgeVisibility() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C37981(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$setupViews$1 */
    /* JADX INFO: compiled from: SettingsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$setupViews$1", m2735f = "SettingsFragment.kt", m2736i = {0, 1, 2}, m2737l = {111, 112, 113}, m2738m = "invokeSuspend", m2739n = {"$this$invokeSuspend_u24lambda_u240", "$this$invokeSuspend_u24lambda_u240", "$this$invokeSuspend_u24lambda_u240"}, m2740s = {"L$2", "L$2", "L$1"})
    static final class C37971 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        C37971(Continuation<? super C37971> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SettingsFragment.this.new C37971(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37971) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00e2 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0110  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                Method dump skipped, instruction units count: 291
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment.C37971.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void setupViews() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C37971(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$observeProStatusChanges$1 */
    /* JADX INFO: compiled from: SettingsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "isPro", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$observeProStatusChanges$1", m2735f = "SettingsFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37951 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C37951(Continuation<? super C37951> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C37951 c37951 = new C37951(continuation);
            c37951.Z$0 = ((Boolean) obj).booleanValue();
            return c37951;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C37951) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Timber.INSTANCE.mo2932d("SettingsFragment: PRO_STATUS changed to " + this.Z$0, new Object[0]);
            return Unit.INSTANCE;
        }
    }

    private final void observeProStatusChanges() {
        FlowKt.launchIn(FlowKt.onEach(getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), false), new C37951(null)), LifecycleOwnerKt.getLifecycleScope(this));
    }

    private final void registerOnClickListeners() {
        ConstraintLayout constraintLayout;
        ConstraintLayout constraintLayout2;
        ConstraintLayout constraintLayout3;
        SwitchCompat switchCompat;
        ConstraintLayout constraintLayout4;
        RoundedPrimaryButton roundedPrimaryButton;
        ConstraintLayout constraintLayout5;
        ConstraintLayout constraintLayout6;
        ImageView imageView;
        ConstraintLayout constraintLayout7;
        ConstraintLayout constraintLayout8;
        ConstraintLayout constraintLayout9;
        ConstraintLayout constraintLayout10;
        FragmentSettingsBinding binding = getBinding();
        if (binding != null) {
            binding.clProfileName.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$1$lambda$0(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding2 = getBinding();
        if (binding2 != null && (constraintLayout10 = binding2.clTerms) != null) {
            constraintLayout10.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$2(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding3 = getBinding();
        if (binding3 != null && (constraintLayout9 = binding3.clPrivacyPolicy) != null) {
            constraintLayout9.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$3(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding4 = getBinding();
        if (binding4 != null && (constraintLayout8 = binding4.clPricing) != null) {
            constraintLayout8.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$4(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding5 = getBinding();
        if (binding5 != null && (constraintLayout7 = binding5.clInviteFriends) != null) {
            constraintLayout7.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$5(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding6 = getBinding();
        if (binding6 != null && (imageView = binding6.ivToolbarLanguage) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$6(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding7 = getBinding();
        if (binding7 != null && (constraintLayout6 = binding7.clRatings) != null) {
            constraintLayout6.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$7(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding8 = getBinding();
        if (binding8 != null && (constraintLayout5 = binding8.clAppUpdate) != null) {
            constraintLayout5.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$8(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding9 = getBinding();
        if (binding9 != null && (roundedPrimaryButton = binding9.btnAppUpdate) != null) {
            roundedPrimaryButton.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$9(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding10 = getBinding();
        if (binding10 != null && (constraintLayout4 = binding10.clRequestFeature) != null) {
            constraintLayout4.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$10(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding11 = getBinding();
        if (binding11 != null && (switchCompat = binding11.switchAppLock) != null) {
            switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda8
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    SettingsFragment.registerOnClickListeners$lambda$11(this.f$0, compoundButton, z);
                }
            });
        }
        FragmentSettingsBinding binding12 = getBinding();
        if (binding12 != null && (constraintLayout3 = binding12.clAppBackup) != null) {
            constraintLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$12(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding13 = getBinding();
        if (binding13 != null && (constraintLayout2 = binding13.clLogout) != null) {
            constraintLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.registerOnClickListeners$lambda$13(this.f$0, view);
                }
            });
        }
        FragmentSettingsBinding binding14 = getBinding();
        if (binding14 == null || (constraintLayout = binding14.clLaborbookPro) == null) {
            return;
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.registerOnClickListeners$lambda$14(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$1$lambda$0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().start((BottomSheetDialogFragment) UpdateNameBottomsheetFragment.INSTANCE.newInstance());
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.VIEW_PROFILE_NAME, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$2(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        this$0.openUrlInWebView(contextRequireContext, "https://laborbook.app/terms-of-service", this$0.getString(C3656R.string.terms_conditions));
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.VIEW_TERMS_AND_CONDITIONS, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$3(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        this$0.openUrlInWebView(contextRequireContext, "https://laborbook.app/privacy-policy", this$0.getString(C3656R.string.privacy_policy));
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.VIEW_PRIVACY_POLICY, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$4(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        this$0.openUrlInWebView(contextRequireContext, "https://laborbook.app/pricing", null);
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.VIEW_PRICING, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$5(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ReferFriendBottomSheetFragment.INSTANCE.newInstance().show(this$0.getParentFragmentManager(), ReferFriendBottomSheetFragment.TAG);
        this$0.recordClickEvent(ConstantEventNames.REFER_A_FRIEND, MapsKt.hashMapOf(new Pair("source", "settings")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$6(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().start((BottomSheetDialogFragment) LanguageBottomSheetFragment.INSTANCE.newInstance());
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.VIEW_LANGUAGES, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$7(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        this$0.openAppReviewPage(contextRequireContext);
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.OPEN_RATINGS, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$8(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        this$0.openAppUpdatePage(contextRequireContext);
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.OPEN_APP_UPDATE, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$9(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        this$0.openAppUpdatePage(contextRequireContext);
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.OPEN_APP_UPDATE, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$10(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openRequestFeatureBottomSheet();
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.OPEN_REQUEST_FEATURE, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$11(SettingsFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new SettingsFragment$registerOnClickListeners$11$1(this$0, z, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$12(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleAppBackup();
        this$0.recordClickEvent(ConstantEventNames.VIEW_PROFILE_NAME, MapsKt.hashMapOf(new Pair("action", "app_backup")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().start((BottomSheetDialogFragment) LogoutBottomSheetFragment.INSTANCE.newInstance());
        this$0.recordClickEvent(ConstantEventNames.VIEW_PROFILE_NAME, MapsKt.hashMapOf(new Pair("action", "logout")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$14(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new SettingsFragment$registerOnClickListeners$14$1(this$0, null), 3, null);
    }

    private static final void registerOnClickListeners$lambda$15(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new SettingsFragment$registerOnClickListeners$15$1(this$0, null), 3, null);
    }

    private final void viewModelObserver() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new SettingsFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SettingsFragment.viewModelObserver$lambda$16(this.f$0, (UserUiState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit viewModelObserver$lambda$16(SettingsFragment this$0, UserUiState userUiState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!(userUiState instanceof UserUiState.Loading)) {
            if (userUiState instanceof UserUiState.RefreshUserNameSuccess) {
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new SettingsFragment$viewModelObserver$1$1(this$0, null), 3, null);
            } else if (userUiState instanceof UserUiState.GetUserNameSucess) {
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new SettingsFragment$viewModelObserver$1$2(this$0, userUiState, null), 3, null);
            } else if (userUiState instanceof UserUiState.Error) {
                Toast.makeText(this$0.requireContext(), ((UserUiState.Error) userUiState).getMessage(), 0).show();
            }
        }
        return Unit.INSTANCE;
    }

    private final void openAppUpdatePage(Context context) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.rebuilt.app")));
        } catch (ActivityNotFoundException unused) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=com.rebuilt.app")));
        }
    }

    private final void openAppReviewPage(Context context) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.rebuilt.app&reviewId=0")));
        } catch (ActivityNotFoundException unused) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=com.rebuilt.app&reviewId=0")));
        }
    }

    private final void openRequestFeatureBottomSheet() {
        getFragmentNavigator().start((BottomSheetDialogFragment) RequestFeatureBottomSheetFragment.INSTANCE.newInstance());
    }

    private final void checkForUpdate() {
        AppUpdateManager appUpdateManager = this.appUpdateManager;
        if (appUpdateManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appUpdateManager");
            appUpdateManager = null;
        }
        Task<AppUpdateInfo> appUpdateInfo = appUpdateManager.getAppUpdateInfo();
        Intrinsics.checkNotNullExpressionValue(appUpdateInfo, "getAppUpdateInfo(...)");
        final Function1 function1 = new Function1() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SettingsFragment.checkForUpdate$lambda$17(this.f$0, (AppUpdateInfo) obj);
            }
        };
        appUpdateInfo.addOnSuccessListener(new OnSuccessListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$$ExternalSyntheticLambda6
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                SettingsFragment.checkForUpdate$lambda$18(function1, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkForUpdate$lambda$18(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit checkForUpdate$lambda$17(SettingsFragment this$0, AppUpdateInfo appUpdateInfo) {
        ConstraintLayout constraintLayout;
        ConstraintLayout constraintLayout2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (appUpdateInfo.updateAvailability() == 2) {
            FragmentSettingsBinding binding = this$0.getBinding();
            if (binding != null && (constraintLayout2 = binding.clAppUpdate) != null) {
                ExtentionsKt.show$default(constraintLayout2, 0L, null, 3, null);
            }
            BaseFragment.triggerSystemEvent$default(this$0, ConstantEventNames.SHOW_UPDATE_BUTTON, null, 2, null);
        } else {
            FragmentSettingsBinding binding2 = this$0.getBinding();
            if (binding2 != null && (constraintLayout = binding2.clAppUpdate) != null) {
                ExtentionsKt.hide$default(constraintLayout, 0L, null, 3, null);
            }
        }
        return Unit.INSTANCE;
    }

    private final void handleAppBackup() {
        getFragmentNavigator().start((BottomSheetDialogFragment) AppBackupBottomSheetFragment.INSTANCE.newInstance());
    }

    /* JADX INFO: compiled from: SettingsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SettingsFragment newInstance() {
            return new SettingsFragment();
        }
    }
}

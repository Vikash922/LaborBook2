package com.rebuilt.app.keep.screen.premium;

import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.LifecycleOwnerKt;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.keep.C3656R;
import com.rebuilt.app.keep.databinding.DialogSubscriptionSuccessBinding;
import com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
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
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: SubscriptionSuccessDialogFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 %2\u00020\u0001:\u0001%B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010 \u001a\u00020!2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\"\u001a\u00020\u0015H\u0002J\b\u0010#\u001a\u00020\u0015H\u0002J\b\u0010$\u001a\u00020\u0015H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0011\u0010\u0012¨\u0006&"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/SubscriptionSuccessDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "_binding", "Lcom/laborbook/keep/databinding/DialogSubscriptionSuccessBinding;", "binding", "getBinding", "()Lcom/laborbook/keep/databinding/DialogSubscriptionSuccessBinding;", "viewModel", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", "view", "onCreateDialog", "Landroid/app/Dialog;", "setupViews", "refreshSubscriptionStatus", "onDestroyView", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class SubscriptionSuccessDialogFragment extends DialogFragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String TAG = "SubscriptionSuccessDialogFragment";
    private DialogSubscriptionSuccessBinding _binding;

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @JvmStatic
    public static final SubscriptionSuccessDialogFragment newInstance() {
        return INSTANCE.newInstance();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SubscriptionSuccessDialogFragment() {
        final SubscriptionSuccessDialogFragment subscriptionSuccessDialogFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<SubscriptionViewModel>() { // from class: com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final SubscriptionViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(subscriptionSuccessDialogFragment, qualifier, Reflection.getOrCreateKotlinClass(SubscriptionViewModel.class), objArr);
            }
        });
        final SubscriptionSuccessDialogFragment subscriptionSuccessDialogFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<DataStoreManager>() { // from class: com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                ComponentCallbacks componentCallbacks = subscriptionSuccessDialogFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), objArr2, objArr3);
            }
        });
    }

    /* JADX INFO: renamed from: getBinding, reason: from getter */
    private final DialogSubscriptionSuccessBinding get_binding() {
        return this._binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SubscriptionViewModel getViewModel() {
        return (SubscriptionViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, C3656R.style.FullScreenDialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = DialogSubscriptionSuccessBinding.inflate(inflater, container, false);
        DialogSubscriptionSuccessBinding dialogSubscriptionSuccessBinding = get_binding();
        return dialogSubscriptionSuccessBinding != null ? dialogSubscriptionSuccessBinding.getRoot() : null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setupViews();
        refreshSubscriptionStatus();
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.checkNotNullExpressionValue(dialogOnCreateDialog, "onCreateDialog(...)");
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
            window.setStatusBarColor(getResources().getColor(C3656R.color.background, null));
            window.getDecorView().setSystemUiVisibility(8192);
        }
        return dialogOnCreateDialog;
    }

    private final void setupViews() {
        DialogSubscriptionSuccessBinding dialogSubscriptionSuccessBinding = get_binding();
        if (dialogSubscriptionSuccessBinding != null) {
            dialogSubscriptionSuccessBinding.ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubscriptionSuccessDialogFragment.setupViews$lambda$3$lambda$1(this.f$0, view);
                }
            });
            dialogSubscriptionSuccessBinding.btnContinue.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubscriptionSuccessDialogFragment.setupViews$lambda$3$lambda$2(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$3$lambda$1(SubscriptionSuccessDialogFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$3$lambda$2(SubscriptionSuccessDialogFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment$refreshSubscriptionStatus$1 */
    /* JADX INFO: compiled from: SubscriptionSuccessDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment$refreshSubscriptionStatus$1", m2735f = "SubscriptionSuccessDialogFragment.kt", m2736i = {}, m2737l = {81, 84}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38351 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38351(Continuation<? super C38351> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SubscriptionSuccessDialogFragment.this.new C38351(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38351) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x005a A[Catch: Exception -> 0x001e, TRY_LEAVE, TryCatch #0 {Exception -> 0x001e, blocks: (B:6:0x000e, B:21:0x004f, B:23:0x005a, B:10:0x001a, B:18:0x0031, B:15:0x0023), top: B:28:0x0008 }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L20
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Exception -> L1e
                goto L4f
            L12:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1a:
                kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Exception -> L1e
                goto L31
            L1e:
                r6 = move-exception
                goto L64
            L20:
                kotlin.ResultKt.throwOnFailure(r6)
                r6 = r5
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6     // Catch: java.lang.Exception -> L1e
                r5.label = r3     // Catch: java.lang.Exception -> L1e
                r3 = 2000(0x7d0, double:9.88E-321)
                java.lang.Object r6 = kotlinx.coroutines.DelayKt.delay(r3, r6)     // Catch: java.lang.Exception -> L1e
                if (r6 != r0) goto L31
                return r0
            L31:
                com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment r6 = com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment.this     // Catch: java.lang.Exception -> L1e
                com.rebuilt.app.base.datastore.DataStoreManager r6 = com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment.access$getDataStoreManager(r6)     // Catch: java.lang.Exception -> L1e
                com.rebuilt.app.base.datastore.DataStoreManager$Companion r1 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE     // Catch: java.lang.Exception -> L1e
                androidx.datastore.preferences.core.Preferences$Key r1 = r1.getUSER_ID()     // Catch: java.lang.Exception -> L1e
                java.lang.String r3 = ""
                kotlinx.coroutines.flow.Flow r6 = r6.read(r1, r3)     // Catch: java.lang.Exception -> L1e
                r1 = r5
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1     // Catch: java.lang.Exception -> L1e
                r5.label = r2     // Catch: java.lang.Exception -> L1e
                java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.first(r6, r1)     // Catch: java.lang.Exception -> L1e
                if (r6 != r0) goto L4f
                return r0
            L4f:
                java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L1e
                r0 = r6
                java.lang.CharSequence r0 = (java.lang.CharSequence) r0     // Catch: java.lang.Exception -> L1e
                int r0 = r0.length()     // Catch: java.lang.Exception -> L1e
                if (r0 <= 0) goto L67
                com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment r0 = com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment.this     // Catch: java.lang.Exception -> L1e
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r0 = com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment.access$getViewModel(r0)     // Catch: java.lang.Exception -> L1e
                r0.checkUserSubscriptionStatus(r6)     // Catch: java.lang.Exception -> L1e
                goto L67
            L64:
                r6.printStackTrace()
            L67:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment.C38351.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void refreshSubscriptionStatus() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38351(null), 3, null);
        getViewModel().getSubscriptionState().observe(getViewLifecycleOwner(), new C3836xabd2e8c2(new Function1() { // from class: com.rebuilt.app.keep.screen.premium.SubscriptionSuccessDialogFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubscriptionSuccessDialogFragment.refreshSubscriptionStatus$lambda$4((SubscriptionViewModel.SubscriptionState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit refreshSubscriptionStatus$lambda$4(SubscriptionViewModel.SubscriptionState subscriptionState) {
        boolean z = subscriptionState instanceof SubscriptionViewModel.SubscriptionState.UserSubscriptionLoaded;
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    /* JADX INFO: compiled from: SubscriptionSuccessDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/SubscriptionSuccessDialogFragment$Companion;", "", "<init>", "()V", "TAG", "", "newInstance", "Lcom/laborbook/keep/screen/premium/SubscriptionSuccessDialogFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SubscriptionSuccessDialogFragment newInstance() {
            return new SubscriptionSuccessDialogFragment();
        }
    }
}

package com.laborbook.keep.screen.profile.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.laborbook.base.BaseBottomsheetFragment;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding;
import com.laborbook.keep.screen.profile.uistate.UserUiState;
import com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
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
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import org.koin.androidx.viewmodel.ext.android.SharedViewModelExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: UpdateNameBottomsheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000  2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J&\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001a2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u001d\u001a\u00020\u0010H\u0002J\b\u0010\u001e\u001a\u00020\u0010H\u0002J\b\u0010\u001f\u001a\u00020\u0010H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006!"}, m2722d2 = {"Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "viewModel", "Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onStart", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "setViewModelObservers", "setViews", "setOnClickListeners", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class UpdateNameBottomsheetFragment extends BaseBottomsheetFragment<FragmentUpdateNameBottomsheetBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @JvmStatic
    public static final UpdateNameBottomsheetFragment newInstance() {
        return INSTANCE.newInstance();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UpdateNameBottomsheetFragment() {
        final UpdateNameBottomsheetFragment updateNameBottomsheetFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<UserProfileViewModel>() { // from class: com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final UserProfileViewModel invoke() {
                return SharedViewModelExtKt.getSharedViewModel(updateNameBottomsheetFragment, qualifier, Reflection.getOrCreateKotlinClass(UserProfileViewModel.class), objArr);
            }
        });
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.UPDATE_NAME_BS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UserProfileViewModel getViewModel() {
        return (UserProfileViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        Intrinsics.checkNotNull(dialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
        View viewFindViewById = bottomSheetDialog.findViewById(C1346R.id.design_bottom_sheet);
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(viewFindViewById);
        Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
        viewFindViewById.getLayoutParams().height = -1;
        bottomSheetBehaviorFrom.setState(3);
        Window window = bottomSheetDialog.getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public FragmentUpdateNameBottomsheetBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentUpdateNameBottomsheetBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentUpdateNameBottomsheetBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setViews();
        setOnClickListeners();
        setViewModelObservers();
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38471(null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: UpdateNameBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$onViewCreated$1", m2735f = "UpdateNameBottomsheetFragment.kt", m2736i = {}, m2737l = {71}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38471 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38471(Continuation<? super C38471> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return UpdateNameBottomsheetFragment.this.new C38471(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38471) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            EditText editText;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(500L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            FragmentUpdateNameBottomsheetBinding binding = UpdateNameBottomsheetFragment.this.getBinding();
            if (binding != null && (editText = binding.etName) != null) {
                FragmentActivity fragmentActivityRequireActivity = UpdateNameBottomsheetFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                BaseExtensionKt.toggleKeyboard(editText, fragmentActivityRequireActivity);
            }
            return Unit.INSTANCE;
        }
    }

    private final void setViewModelObservers() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new UpdateNameBottomsheetFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UpdateNameBottomsheetFragment.setViewModelObservers$lambda$0(this.f$0, (UserUiState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setViewModelObservers$lambda$0(UpdateNameBottomsheetFragment this$0, UserUiState userUiState) {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (userUiState instanceof UserUiState.UpdateUserNameSuccess) {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new UpdateNameBottomsheetFragment$setViewModelObservers$1$1(this$0, null), 3, null);
        } else if (userUiState instanceof UserUiState.Error) {
            FragmentUpdateNameBottomsheetBinding binding = this$0.getBinding();
            if (binding != null && (progressBar2 = binding.f3459pb) != null) {
                ExtentionsKt.hide$default(progressBar2, 0L, null, 3, null);
            }
            Toast.makeText(this$0.requireContext(), ((UserUiState.Error) userUiState).getMessage(), 0).show();
        } else if (userUiState instanceof UserUiState.Loading) {
            FragmentUpdateNameBottomsheetBinding binding2 = this$0.getBinding();
            if (binding2 != null && (progressBar = binding2.f3459pb) != null) {
                ExtentionsKt.show$default(progressBar, 0L, null, 3, null);
            }
        } else {
            boolean z = userUiState instanceof UserUiState.RefreshUserNameSuccess;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$setViews$1 */
    /* JADX INFO: compiled from: UpdateNameBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$setViews$1", m2735f = "UpdateNameBottomsheetFragment.kt", m2736i = {}, m2737l = {105}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38481 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C38481(Continuation<? super C38481> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return UpdateNameBottomsheetFragment.this.new C38481(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38481) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
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
                r2 = 1
                if (r1 == 0) goto L1b
                if (r1 != r2) goto L13
                java.lang.Object r0 = r5.L$0
                android.widget.EditText r0 = (android.widget.EditText) r0
                kotlin.ResultKt.throwOnFailure(r6)
                goto L4e
            L13:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1b:
                kotlin.ResultKt.throwOnFailure(r6)
                com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment r6 = com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment.this
                androidx.viewbinding.ViewBinding r6 = r6.getBinding()
                com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding r6 = (com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding) r6
                if (r6 == 0) goto L53
                android.widget.EditText r6 = r6.etName
                if (r6 == 0) goto L53
                com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment r1 = com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment.this
                com.laborbook.base.datastore.DataStoreManager r1 = r1.getDataStoreManager()
                com.laborbook.base.datastore.DataStoreManager$Companion r3 = com.laborbook.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r3 = r3.getUSER_NAME()
                java.lang.String r4 = ""
                kotlinx.coroutines.flow.Flow r1 = r1.read(r3, r4)
                r3 = r5
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r5.L$0 = r6
                r5.label = r2
                java.lang.Object r1 = kotlinx.coroutines.flow.FlowKt.first(r1, r3)
                if (r1 != r0) goto L4c
                return r0
            L4c:
                r0 = r6
                r6 = r1
            L4e:
                java.lang.CharSequence r6 = (java.lang.CharSequence) r6
                r0.setText(r6)
            L53:
                com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment r6 = com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment.this
                androidx.viewbinding.ViewBinding r6 = r6.getBinding()
                com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding r6 = (com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding) r6
                r0 = 0
                if (r6 == 0) goto L67
                android.widget.EditText r6 = r6.etName
                if (r6 == 0) goto L67
                android.text.Editable r6 = r6.getText()
                goto L68
            L67:
                r6 = r0
            L68:
                java.lang.String r6 = java.lang.String.valueOf(r6)
                java.lang.CharSequence r6 = (java.lang.CharSequence) r6
                int r6 = r6.length()
                if (r6 <= 0) goto L9f
                com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment r6 = com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment.this
                androidx.viewbinding.ViewBinding r6 = r6.getBinding()
                com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding r6 = (com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding) r6
                if (r6 == 0) goto L9f
                android.widget.EditText r6 = r6.etName
                if (r6 == 0) goto L9f
                com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment r1 = com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment.this
                androidx.viewbinding.ViewBinding r1 = r1.getBinding()
                com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding r1 = (com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding) r1
                if (r1 == 0) goto L94
                android.widget.EditText r1 = r1.etName
                if (r1 == 0) goto L94
                android.text.Editable r0 = r1.getText()
            L94:
                java.lang.String r0 = java.lang.String.valueOf(r0)
                int r0 = r0.length()
                r6.setSelection(r0)
            L9f:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment.C38481.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void setViews() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38481(null), 3, null);
    }

    private final void setOnClickListeners() {
        PrimaryButton primaryButton;
        ImageView imageView;
        FragmentUpdateNameBottomsheetBinding binding = getBinding();
        if (binding != null && (imageView = binding.ivClose) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UpdateNameBottomsheetFragment.setOnClickListeners$lambda$1(this.f$0, view);
                }
            });
        }
        FragmentUpdateNameBottomsheetBinding binding2 = getBinding();
        if (binding2 == null || (primaryButton = binding2.btnUpdateName) == null) {
            return;
        }
        primaryButton.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateNameBottomsheetFragment.setOnClickListeners$lambda$2(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$1(UpdateNameBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$2(UpdateNameBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new UpdateNameBottomsheetFragment$setOnClickListeners$2$1(this$0, null), 3, null);
    }

    /* JADX INFO: compiled from: UpdateNameBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final UpdateNameBottomsheetFragment newInstance() {
            return new UpdateNameBottomsheetFragment();
        }
    }
}

package com.laborbook.keep.screen.advance;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.textfield.TextInputEditText;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.laborbook.base.BaseBottomsheetFragment;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.databinding.FragmentPayAdvanceBottomsheetBinding;
import com.laborbook.keep.model.AddAdvanceRequestBody;
import com.laborbook.keep.model.Advance;
import com.laborbook.keep.screen.advance.uistate.AddAdvanceUiState;
import com.laborbook.keep.screen.advance.viewmodel.AddAdvanceViewModel;
import com.laborbook.keep.screen.calendar.utils.ObserverUtil;
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
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: PayAdvanceBottomsheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 32\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00013B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0012\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J&\u0010\u001f\u001a\u0004\u0018\u00010\u00022\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J&\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010&\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020%2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010(\u001a\u00020\u001bH\u0002J\b\u0010)\u001a\u00020\u001bH\u0002J\b\u0010*\u001a\u00020\u001bH\u0002J\b\u0010+\u001a\u00020\u001bH\u0002J\b\u0010,\u001a\u00020\u001bH\u0002J\u0010\u0010-\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020\u0006H\u0002J\b\u0010/\u001a\u00020\u001bH\u0002J\b\u00100\u001a\u00020\u001bH\u0002J\u0010\u00101\u001a\u00020\u001b2\u0006\u00102\u001a\u00020\u0006H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u0017\u0010\u0018¨\u00064"}, m2722d2 = {"Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/keep/databinding/FragmentPayAdvanceBottomsheetBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "id", "advance", "date", "name", "reason", "paymentMethod", "viewModel", "Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "getObserverUtil", "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "observerUtil$delegate", "onStart", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "viewModelObserver", "setUpViews", "setupInputWatchers", "updateAddButtonState", "setupPaymentMethodToggle", "selectPaymentMethod", FirebaseAnalytics.Param.METHOD, "resetPaymentMethodBackgrounds", "setOnClickListeners", "addOrUpdateAdvance", "newAdvance", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class PayAdvanceBottomsheetFragment extends BaseBottomsheetFragment<FragmentPayAdvanceBottomsheetBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: observerUtil$delegate, reason: from kotlin metadata */
    private final Lazy observerUtil;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;
    private String id = "";
    private String advance = "";
    private String date = "";
    private String name = "";
    private String reason = "";
    private String paymentMethod = "cash";

    @JvmStatic
    public static final PayAdvanceBottomsheetFragment newInstance(String str, String str2, String str3, String str4, String str5) {
        return INSTANCE.newInstance(str, str2, str3, str4, str5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PayAdvanceBottomsheetFragment() {
        final PayAdvanceBottomsheetFragment payAdvanceBottomsheetFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<AddAdvanceViewModel>() { // from class: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.laborbook.keep.screen.advance.viewmodel.AddAdvanceViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final AddAdvanceViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(payAdvanceBottomsheetFragment, qualifier, Reflection.getOrCreateKotlinClass(AddAdvanceViewModel.class), objArr);
            }
        });
        final PayAdvanceBottomsheetFragment payAdvanceBottomsheetFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.observerUtil = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<ObserverUtil>() { // from class: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.keep.screen.calendar.utils.ObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = payAdvanceBottomsheetFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ObserverUtil.class), objArr2, objArr3);
            }
        });
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.ADVANCE_BS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AddAdvanceViewModel getViewModel() {
        return (AddAdvanceViewModel) this.viewModel.getValue();
    }

    private final ObserverUtil getObserverUtil() {
        return (ObserverUtil) this.observerUtil.getValue();
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
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.id = arguments.getString("id");
            this.name = arguments.getString("name");
            this.date = arguments.getString("date");
            this.advance = arguments.getString("advance");
            this.reason = arguments.getString("reason");
        }
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public FragmentPayAdvanceBottomsheetBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentPayAdvanceBottomsheetBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentPayAdvanceBottomsheetBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setUpViews();
        viewModelObserver();
        setOnClickListeners();
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C37171(null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: PayAdvanceBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$onViewCreated$1", m2735f = "PayAdvanceBottomsheetFragment.kt", m2736i = {}, m2737l = {100}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37171 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C37171(Continuation<? super C37171> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PayAdvanceBottomsheetFragment.this.new C37171(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            TextInputEditText textInputEditText;
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
            FragmentPayAdvanceBottomsheetBinding binding = PayAdvanceBottomsheetFragment.this.getBinding();
            if (binding != null && (textInputEditText = binding.etAdvance) != null) {
                FragmentActivity fragmentActivityRequireActivity = PayAdvanceBottomsheetFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                BaseExtensionKt.toggleKeyboard(textInputEditText, (Activity) fragmentActivityRequireActivity);
            }
            return Unit.INSTANCE;
        }
    }

    private final void viewModelObserver() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new C3721xe32bd877(new Function1() { // from class: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PayAdvanceBottomsheetFragment.viewModelObserver$lambda$1(this.f$0, (AddAdvanceUiState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit viewModelObserver$lambda$1(PayAdvanceBottomsheetFragment this$0, AddAdvanceUiState addAdvanceUiState) {
        ProgressBar progressBar;
        String strTake;
        ProgressBar progressBar2;
        ProgressBar progressBar3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (addAdvanceUiState instanceof AddAdvanceUiState.Loading) {
            FragmentPayAdvanceBottomsheetBinding binding = this$0.getBinding();
            if (binding != null && (progressBar3 = binding.f3455pb) != null) {
                ExtentionsKt.show$default(progressBar3, 0L, null, 3, null);
            }
        } else {
            int i = 0;
            if (addAdvanceUiState instanceof AddAdvanceUiState.Success) {
                FragmentPayAdvanceBottomsheetBinding binding2 = this$0.getBinding();
                if (binding2 != null && (progressBar2 = binding2.f3455pb) != null) {
                    ExtentionsKt.hide$default(progressBar2, 0L, null, 3, null);
                }
                Function4<Boolean, Boolean, String, Integer, Unit> refreshCalendar = this$0.getObserverUtil().getRefreshCalendar();
                if (refreshCalendar != null) {
                    String str = this$0.advance;
                    if (str == null) {
                        str = "";
                    }
                    String str2 = this$0.date;
                    if (str2 != null && (strTake = StringsKt.take(str2, 2)) != null) {
                        i = Integer.parseInt(strTake) - 1;
                    }
                    refreshCalendar.invoke(true, true, str, Integer.valueOf(i));
                }
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new PayAdvanceBottomsheetFragment$viewModelObserver$1$1(this$0, null), 3, null);
                this$0.dismiss();
            } else if (addAdvanceUiState instanceof AddAdvanceUiState.Error) {
                FragmentPayAdvanceBottomsheetBinding binding3 = this$0.getBinding();
                if (binding3 != null && (progressBar = binding3.f3455pb) != null) {
                    ExtentionsKt.hide$default(progressBar, 0L, null, 3, null);
                }
                Toast.makeText(this$0.requireContext(), ((AddAdvanceUiState.Error) addAdvanceUiState).getMessage(), 0).show();
            } else {
                boolean z = addAdvanceUiState instanceof AddAdvanceUiState.AdvanceEntered;
            }
        }
        return Unit.INSTANCE;
    }

    private final void setUpViews() {
        String str;
        FragmentPayAdvanceBottomsheetBinding binding = getBinding();
        if (binding != null) {
            binding.tvStaffName.setText(getString(C3656R.string.f3449to) + ' ' + this.name);
            TextViewBold14 textViewBold14 = binding.tvDate;
            String str2 = this.date;
            textViewBold14.setText(str2 != null ? BaseExtensionKt.toFormattedDate(str2) : null);
            String str3 = this.advance;
            if (str3 != null && str3.length() > 0 && (str = this.advance) != null && !str.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                binding.etAdvance.setText(this.advance);
                if (String.valueOf(binding.etAdvance.getText()).length() > 0) {
                    binding.etAdvance.setSelection(String.valueOf(binding.etAdvance.getText()).length());
                }
                TextView btnRemoveAdvance = binding.btnRemoveAdvance;
                Intrinsics.checkNotNullExpressionValue(btnRemoveAdvance, "btnRemoveAdvance");
                ExtentionsKt.show$default(btnRemoveAdvance, 0L, null, 3, null);
            } else {
                TextView btnRemoveAdvance2 = binding.btnRemoveAdvance;
                Intrinsics.checkNotNullExpressionValue(btnRemoveAdvance2, "btnRemoveAdvance");
                ExtentionsKt.hide$default(btnRemoveAdvance2, 0L, null, 3, null);
            }
            binding.etDescription.setText(this.reason);
            setupInputWatchers();
            updateAddButtonState();
            setupPaymentMethodToggle();
        }
    }

    private final void setupInputWatchers() {
        FragmentPayAdvanceBottomsheetBinding binding = getBinding();
        if (binding != null) {
            TextInputEditText etAdvance = binding.etAdvance;
            Intrinsics.checkNotNullExpressionValue(etAdvance, "etAdvance");
            etAdvance.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$setupInputWatchers$lambda$5$$inlined$doAfterTextChanged$1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence text, int start, int count, int after) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence text, int start, int before, int count) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s) {
                    this.this$0.updateAddButtonState();
                }
            });
            EditText etDescription = binding.etDescription;
            Intrinsics.checkNotNullExpressionValue(etDescription, "etDescription");
            etDescription.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$setupInputWatchers$lambda$5$$inlined$doAfterTextChanged$2
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence text, int start, int count, int after) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence text, int start, int before, int count) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s) {
                    this.this$0.updateAddButtonState();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAddButtonState() {
        String string;
        String string2;
        FragmentPayAdvanceBottomsheetBinding binding = getBinding();
        if (binding != null) {
            Editable text = binding.etAdvance.getText();
            String string3 = null;
            String string4 = (text == null || (string2 = text.toString()) == null) ? null : StringsKt.trim((CharSequence) string2).toString();
            if (string4 == null) {
                string4 = "";
            }
            Editable text2 = binding.etDescription.getText();
            if (text2 != null && (string = text2.toString()) != null) {
                string3 = StringsKt.trim((CharSequence) string).toString();
            }
            String str = string3 != null ? string3 : "";
            boolean z = true;
            boolean z2 = string4.length() > 0 && !Intrinsics.areEqual(string4, AppEventsConstants.EVENT_PARAM_VALUE_NO);
            boolean z3 = str.length() > 0;
            PrimaryButton primaryButton = binding.btnAddAdvance;
            if (!z2 && !z3) {
                z = false;
            }
            primaryButton.setEnabled(z);
        }
    }

    private final void setupPaymentMethodToggle() {
        FragmentPayAdvanceBottomsheetBinding binding = getBinding();
        if (binding != null) {
            resetPaymentMethodBackgrounds();
            binding.rbCash.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.toggle_button_right_selected));
            binding.rbCash.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
            binding.rbOnline.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.color_primary));
            this.paymentMethod = "cash";
            binding.rbOnline.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PayAdvanceBottomsheetFragment.setupPaymentMethodToggle$lambda$9$lambda$7(this.f$0, view);
                }
            });
            binding.rbCash.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PayAdvanceBottomsheetFragment.setupPaymentMethodToggle$lambda$9$lambda$8(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupPaymentMethodToggle$lambda$9$lambda$7(PayAdvanceBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectPaymentMethod(CustomTabsCallback.ONLINE_EXTRAS_KEY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupPaymentMethodToggle$lambda$9$lambda$8(PayAdvanceBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectPaymentMethod("cash");
    }

    private final void selectPaymentMethod(String method) {
        FragmentPayAdvanceBottomsheetBinding binding = getBinding();
        if (binding != null) {
            this.paymentMethod = method;
            if (Intrinsics.areEqual(method, CustomTabsCallback.ONLINE_EXTRAS_KEY)) {
                binding.rbOnline.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.toggle_button_left_selected));
                binding.rbOnline.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
                binding.rbCash.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.toggle_button_right));
                binding.rbCash.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.color_primary));
                return;
            }
            binding.rbOnline.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.toggle_button_left));
            binding.rbOnline.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.color_primary));
            binding.rbCash.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.toggle_button_right_selected));
            binding.rbCash.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
        }
    }

    private final void resetPaymentMethodBackgrounds() {
        FragmentPayAdvanceBottomsheetBinding binding = getBinding();
        if (binding != null) {
            binding.rbOnline.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.toggle_button_left));
            binding.rbOnline.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.color_primary));
            binding.rbCash.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.toggle_button_right));
            binding.rbCash.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.color_primary));
        }
    }

    private final void setOnClickListeners() {
        TextView textView;
        PrimaryButton primaryButton;
        ImageView imageView;
        FragmentPayAdvanceBottomsheetBinding binding = getBinding();
        if (binding != null && (imageView = binding.ivClose) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PayAdvanceBottomsheetFragment.setOnClickListeners$lambda$12(this.f$0, view);
                }
            });
        }
        FragmentPayAdvanceBottomsheetBinding binding2 = getBinding();
        if (binding2 != null && (primaryButton = binding2.btnAddAdvance) != null) {
            primaryButton.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PayAdvanceBottomsheetFragment.setOnClickListeners$lambda$13(this.f$0, view);
                }
            });
        }
        FragmentPayAdvanceBottomsheetBinding binding3 = getBinding();
        if (binding3 == null || (textView = binding3.btnRemoveAdvance) == null) {
            return;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PayAdvanceBottomsheetFragment.setOnClickListeners$lambda$14(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$12(PayAdvanceBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$13(PayAdvanceBottomsheetFragment this$0, View view) {
        TextInputEditText textInputEditText;
        TextInputEditText textInputEditText2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentPayAdvanceBottomsheetBinding binding = this$0.getBinding();
        Editable text = null;
        this$0.addOrUpdateAdvance(StringsKt.trim((CharSequence) String.valueOf((binding == null || (textInputEditText2 = binding.etAdvance) == null) ? null : textInputEditText2.getText())).toString());
        Pair[] pairArr = new Pair[1];
        FragmentPayAdvanceBottomsheetBinding binding2 = this$0.getBinding();
        if (binding2 != null && (textInputEditText = binding2.etAdvance) != null) {
            text = textInputEditText.getText();
        }
        pairArr[0] = new Pair(ConstantEventAttributes.AMOUNT, StringsKt.trim((CharSequence) String.valueOf(text)).toString());
        this$0.recordClickEvent(ConstantEventNames.ADD_ADVANCE, MapsKt.hashMapOf(pairArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$14(PayAdvanceBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.addOrUpdateAdvance(AppEventsConstants.EVENT_PARAM_VALUE_NO);
        BaseBottomsheetFragment.recordClickEvent$default(this$0, ConstantEventNames.DELETE_ADVANCE, null, 2, null);
    }

    private final void addOrUpdateAdvance(String newAdvance) {
        EditText editText;
        Editable text;
        String string;
        try {
            this.advance = newAdvance;
            FragmentPayAdvanceBottomsheetBinding binding = getBinding();
            String string2 = (binding == null || (editText = binding.etDescription) == null || (text = editText.getText()) == null || (string = text.toString()) == null) ? null : StringsKt.trim((CharSequence) string).toString();
            if (string2 == null) {
                string2 = "";
            }
            Integer intOrNull = StringsKt.toIntOrNull(newAdvance);
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C37161(intOrNull != null ? intOrNull.intValue() : 0, string2, null), 3, null);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1 */
    /* JADX INFO: compiled from: PayAdvanceBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1", m2735f = "PayAdvanceBottomsheetFragment.kt", m2736i = {}, m2737l = {255}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37161 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $parsedAdvance;
        final /* synthetic */ String $updatedDescription;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37161(int i, String str, Continuation<? super C37161> continuation) {
            super(2, continuation);
            this.$parsedAdvance = i;
            this.$updatedDescription = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PayAdvanceBottomsheetFragment.this.new C37161(this.$parsedAdvance, this.$updatedDescription, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37161) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            Advance advance;
            AddAdvanceViewModel addAdvanceViewModel;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    AddAdvanceViewModel viewModel = PayAdvanceBottomsheetFragment.this.getViewModel();
                    str = PayAdvanceBottomsheetFragment.this.id;
                    if (str == null) {
                        str = "";
                    }
                    String str2 = PayAdvanceBottomsheetFragment.this.date;
                    if (str2 == null) {
                        str2 = "";
                    }
                    Advance advance2 = new Advance(str2, this.$parsedAdvance, this.$updatedDescription, PayAdvanceBottomsheetFragment.this.paymentMethod);
                    this.L$0 = viewModel;
                    this.L$1 = str;
                    this.L$2 = advance2;
                    this.label = 1;
                    Object objFirst = FlowKt.first(PayAdvanceBottomsheetFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
                    if (objFirst == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    advance = advance2;
                    addAdvanceViewModel = viewModel;
                    obj = objFirst;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    advance = (Advance) this.L$2;
                    str = (String) this.L$1;
                    addAdvanceViewModel = (AddAdvanceViewModel) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                addAdvanceViewModel.addAdvance(str, new AddAdvanceRequestBody(advance, (String) obj));
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: compiled from: PayAdvanceBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0007¨\u0006\f"}, m2722d2 = {"Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;", "id", "", "name", "date", "advance", "reason", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final PayAdvanceBottomsheetFragment newInstance(String id, String name, String date, String advance, String reason) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(advance, "advance");
            Intrinsics.checkNotNullParameter(reason, "reason");
            PayAdvanceBottomsheetFragment payAdvanceBottomsheetFragment = new PayAdvanceBottomsheetFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", id);
            bundle.putString("name", name);
            bundle.putString("date", date);
            bundle.putString("advance", advance);
            bundle.putString("reason", reason);
            payAdvanceBottomsheetFragment.setArguments(bundle);
            return payAdvanceBottomsheetFragment;
        }
    }
}

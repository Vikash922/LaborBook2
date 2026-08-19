package com.rebuilt.app.income.screen.cashentry.fragment;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import com.amplitude.core.events.Identify;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text14.TextViewBoldError14;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.textfield.TextInputEditText;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.svg.SvgConstants;
import com.rebuilt.app.base.BaseBottomsheetFragment;
import com.rebuilt.app.base.BaseExtensionKt;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.income.C3621R;
import com.rebuilt.app.income.databinding.FragmentCashInBinding;
import com.rebuilt.app.income.model.DeleteTransactionResponseModel;
import com.rebuilt.app.income.model.Transaction;
import com.rebuilt.app.income.model.TransactionRequest;
import com.rebuilt.app.income.screen.cashentry.uistate.CashInOutUiState;
import com.rebuilt.app.income.screen.cashentry.viewmodel.CashInOutViewModel;
import com.rebuilt.app.income.util.IncomeObserverUtil;
import com.rebuilt.app.income.util.Utils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
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
import kotlinx.coroutines.DelayKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: CashInOutBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 82\b\u0012\u0004\u0012\u00020\u00020\u0001:\u000278B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\u0012\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J&\u0010!\u001a\u0004\u0018\u00010\u00022\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010&\u001a\u00020\u001d2\u0006\u0010'\u001a\u00020(2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\b\u0010)\u001a\u00020\u001dH\u0002J\b\u0010*\u001a\u00020\u001dH\u0002J\b\u0010+\u001a\u00020\u001dH\u0002J\b\u0010,\u001a\u00020\u001dH\u0002J\u0010\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\fH\u0002J\b\u0010/\u001a\u00020\u001dH\u0002J\b\u00100\u001a\u00020\u001dH\u0002J\b\u00101\u001a\u00020\u001dH\u0002J\b\u00102\u001a\u00020\u001dH\u0002J\u0010\u00103\u001a\u00020\f2\u0006\u00104\u001a\u000205H\u0002J\u0010\u00106\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\fH\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\n\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00069"}, m2722d2 = {"Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/income/databinding/FragmentCashInBinding;", "<init>", "()V", "incomeObserverUtil", "Lcom/laborbook/income/util/IncomeObserverUtil;", "getIncomeObserverUtil", "()Lcom/laborbook/income/util/IncomeObserverUtil;", "incomeObserverUtil$delegate", "Lkotlin/Lazy;", "screenName", "", "getScreenName", "()Ljava/lang/String;", "viewModel", "Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;", "getViewModel", "()Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;", "viewModel$delegate", "id", ConstantEventAttributes.AMOUNT, "date", "transactionType", "reason", "isUpdate", "", "paymentMethod", "onStart", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", "view", "Landroid/view/View;", "viewModelObserver", "updateSaveButtonState", "setUpViews", "setupPaymentMethodToggle", "selectPaymentMethod", FirebaseAnalytics.Param.METHOD, "resetPaymentMethodBackgrounds", "setOnClickListeners", "showDeleteConfirmationDialog", "openDatePicker", "formatToISO", ConstantEventNames.CALENDAR, "Ljava/util/Calendar;", "addOrUpdateExpenseAmount", "MaxDigitsInputFilter", "Companion", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class CashInOutBottomSheetFragment extends BaseBottomsheetFragment<FragmentCashInBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String amount;
    private String date;
    private String id;

    /* JADX INFO: renamed from: incomeObserverUtil$delegate, reason: from kotlin metadata */
    private final Lazy incomeObserverUtil;
    private boolean isUpdate;
    private String paymentMethod;
    private String reason;
    private String transactionType;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @JvmStatic
    public static final CashInOutBottomSheetFragment newInstance(String str, String str2, String str3, String str4, String str5, String str6) {
        return INSTANCE.newInstance(str, str2, str3, str4, str5, str6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CashInOutBottomSheetFragment() {
        final CashInOutBottomSheetFragment cashInOutBottomSheetFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.incomeObserverUtil = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<IncomeObserverUtil>() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.income.util.IncomeObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final IncomeObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = cashInOutBottomSheetFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(IncomeObserverUtil.class), qualifier, objArr);
            }
        });
        final CashInOutBottomSheetFragment cashInOutBottomSheetFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<CashInOutViewModel>() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.rebuilt.app.income.screen.cashentry.viewmodel.CashInOutViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final CashInOutViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(cashInOutBottomSheetFragment2, objArr2, Reflection.getOrCreateKotlinClass(CashInOutViewModel.class), objArr3);
            }
        });
        this.id = "";
        this.amount = "";
        this.date = "";
        this.transactionType = "";
        this.reason = "";
        this.paymentMethod = "cash";
    }

    private final IncomeObserverUtil getIncomeObserverUtil() {
        return (IncomeObserverUtil) this.incomeObserverUtil.getValue();
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.CASH_IN_OUT_BS;
    }

    private final CashInOutViewModel getViewModel() {
        return (CashInOutViewModel) this.viewModel.getValue();
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
        String lowerCase;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.id = arguments.getString("id");
            this.transactionType = String.valueOf(arguments.getString("transaction_type"));
            this.date = arguments.getString("date");
            this.amount = arguments.getString(ConstantEventAttributes.AMOUNT);
            this.reason = arguments.getString("reason");
            String string = arguments.getString("payment_method");
            String str = string;
            if (str == null || str.length() == 0) {
                lowerCase = "cash";
            } else {
                lowerCase = string.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            }
            this.paymentMethod = lowerCase;
        }
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public FragmentCashInBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentCashInBinding.inflate(inflater, container, false);
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        String str = this.date;
        if (str == null || str.length() == 0) {
            this.date = Utils.INSTANCE.getCurrentTimeInISOFormat();
        }
        setUpViews();
        viewModelObserver();
        setOnClickListeners();
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36271(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: CashInOutBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$onViewCreated$1", m2735f = "CashInOutBottomSheetFragment.kt", m2736i = {}, m2737l = {112}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36271 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36271(Continuation<? super C36271> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CashInOutBottomSheetFragment.this.new C36271(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36271) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            FragmentCashInBinding binding = CashInOutBottomSheetFragment.this.getBinding();
            if (binding != null && (textInputEditText = binding.etAmount) != null) {
                FragmentActivity fragmentActivityRequireActivity = CashInOutBottomSheetFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                BaseExtensionKt.toggleKeyboard(textInputEditText, (Activity) fragmentActivityRequireActivity);
            }
            return Unit.INSTANCE;
        }
    }

    private final void viewModelObserver() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new CashInOutBottomSheetFragmentKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CashInOutBottomSheetFragment.viewModelObserver$lambda$1(this.f$0, (CashInOutUiState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit viewModelObserver$lambda$1(CashInOutBottomSheetFragment this$0, CashInOutUiState cashInOutUiState) {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        ProgressBar progressBar3;
        ProgressBar progressBar4;
        ProgressBar progressBar5;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (cashInOutUiState instanceof CashInOutUiState.ExpenseEntered) {
            this$0.updateSaveButtonState();
        } else if (cashInOutUiState instanceof CashInOutUiState.ERROR) {
            FragmentCashInBinding binding = this$0.getBinding();
            if (binding != null && (progressBar5 = binding.f3433pb) != null) {
                ExtentionsKt.hide$default(progressBar5, 0L, null, 3, null);
            }
            this$0.dismiss();
            Toast.makeText(this$0.requireContext(), ((CashInOutUiState.ERROR) cashInOutUiState).getMessage(), 0).show();
        } else if (cashInOutUiState instanceof CashInOutUiState.LOADING) {
            FragmentCashInBinding binding2 = this$0.getBinding();
            if (binding2 != null && (progressBar4 = binding2.f3433pb) != null) {
                ExtentionsKt.show$default(progressBar4, 0L, null, 3, null);
            }
        } else if (cashInOutUiState instanceof CashInOutUiState.CREATE_SUCCESS) {
            FragmentCashInBinding binding3 = this$0.getBinding();
            if (binding3 != null && (progressBar3 = binding3.f3433pb) != null) {
                ExtentionsKt.hide$default(progressBar3, 0L, null, 3, null);
            }
            Function2<Transaction, Boolean, Unit> onIncomeAddedOrUpdated = this$0.getIncomeObserverUtil().getOnIncomeAddedOrUpdated();
            if (onIncomeAddedOrUpdated != null) {
                Object data = ((CashInOutUiState.CREATE_SUCCESS) cashInOutUiState).getData();
                Intrinsics.checkNotNull(data, "null cannot be cast to non-null type com.rebuilt.app.income.model.Transaction");
                onIncomeAddedOrUpdated.invoke((Transaction) data, false);
            }
            this$0.dismiss();
        } else if (cashInOutUiState instanceof CashInOutUiState.UPDATE_SUCCESS) {
            FragmentCashInBinding binding4 = this$0.getBinding();
            if (binding4 != null && (progressBar2 = binding4.f3433pb) != null) {
                ExtentionsKt.hide$default(progressBar2, 0L, null, 3, null);
            }
            Function2<Transaction, Boolean, Unit> onIncomeAddedOrUpdated2 = this$0.getIncomeObserverUtil().getOnIncomeAddedOrUpdated();
            if (onIncomeAddedOrUpdated2 != null) {
                Object data2 = ((CashInOutUiState.UPDATE_SUCCESS) cashInOutUiState).getData();
                Intrinsics.checkNotNull(data2, "null cannot be cast to non-null type com.rebuilt.app.income.model.Transaction");
                onIncomeAddedOrUpdated2.invoke((Transaction) data2, true);
            }
            this$0.dismiss();
        } else {
            if (!(cashInOutUiState instanceof CashInOutUiState.DELETE_SUCCESS)) {
                throw new NoWhenBranchMatchedException();
            }
            BaseBottomsheetFragment.recordClickEvent$default(this$0, ConstantEventNames.DELETE_INCOME_CONFIRM, null, 2, null);
            FragmentCashInBinding binding5 = this$0.getBinding();
            if (binding5 != null && (progressBar = binding5.f3433pb) != null) {
                ExtentionsKt.hide$default(progressBar, 0L, null, 3, null);
            }
            Function1<DeleteTransactionResponseModel, Unit> onIncomeDeleted = this$0.getIncomeObserverUtil().getOnIncomeDeleted();
            if (onIncomeDeleted != null) {
                Object data3 = ((CashInOutUiState.DELETE_SUCCESS) cashInOutUiState).getData();
                Intrinsics.checkNotNull(data3, "null cannot be cast to non-null type com.rebuilt.app.income.model.DeleteTransactionResponseModel");
                onIncomeDeleted.invoke((DeleteTransactionResponseModel) data3);
            }
            this$0.dismiss();
        }
        return Unit.INSTANCE;
    }

    private final void updateSaveButtonState() {
        PrimaryButton primaryButton;
        TextInputEditText textInputEditText;
        Editable text;
        FragmentCashInBinding binding = getBinding();
        boolean z = false;
        if (binding != null && (textInputEditText = binding.etAmount) != null && (text = textInputEditText.getText()) != null && text.length() > 0) {
            z = true;
        }
        FragmentCashInBinding binding2 = getBinding();
        if (binding2 == null || (primaryButton = binding2.btnSave) == null) {
            return;
        }
        primaryButton.setEnabled(z);
    }

    private final void setUpViews() {
        FragmentCashInBinding binding = getBinding();
        if (binding != null) {
            TextViewBold14 textViewBold14 = binding.tvDate;
            String str = this.date;
            textViewBold14.setText(str != null ? BaseExtensionKt.toReadableDate(str) : null);
            binding.tvTitle.setText(getString(Intrinsics.areEqual(this.transactionType, "CREDIT") ? C3621R.string.cash_in : C3621R.string.cash_out));
            String str2 = this.amount;
            if (str2 != null && str2.length() > 0 && !Intrinsics.areEqual(this.amount, AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                this.isUpdate = true;
                binding.etAmount.setText(this.amount);
                if (String.valueOf(binding.etAmount.getText()).length() > 0) {
                    binding.etAmount.setSelection(String.valueOf(binding.etAmount.getText()).length());
                }
                binding.btnSave.setEnabled(true);
                TextViewBoldError14 btnDelete = binding.btnDelete;
                Intrinsics.checkNotNullExpressionValue(btnDelete, "btnDelete");
                ExtentionsKt.show$default(btnDelete, 0L, null, 3, null);
            } else {
                this.isUpdate = false;
                binding.btnSave.setEnabled(false);
                TextViewBoldError14 btnDelete2 = binding.btnDelete;
                Intrinsics.checkNotNullExpressionValue(btnDelete2, "btnDelete");
                ExtentionsKt.hide$default(btnDelete2, 0L, null, 3, null);
            }
            binding.etDescription.setText(this.reason);
            binding.etAmount.setFilters(new MaxDigitsInputFilter[]{new MaxDigitsInputFilter(8)});
            CashInOutViewModel viewModel = getViewModel();
            TextInputEditText etAmount = binding.etAmount;
            Intrinsics.checkNotNullExpressionValue(etAmount, "etAmount");
            viewModel.attachExpenseTextWatcher(etAmount);
            setupPaymentMethodToggle();
        }
    }

    private final void setupPaymentMethodToggle() {
        FragmentCashInBinding binding = getBinding();
        if (binding != null) {
            resetPaymentMethodBackgrounds();
            selectPaymentMethod(this.paymentMethod);
            binding.rbOnline.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CashInOutBottomSheetFragment.setupPaymentMethodToggle$lambda$5$lambda$3(this.f$0, view);
                }
            });
            binding.rbCash.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CashInOutBottomSheetFragment.setupPaymentMethodToggle$lambda$5$lambda$4(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupPaymentMethodToggle$lambda$5$lambda$3(CashInOutBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectPaymentMethod(CustomTabsCallback.ONLINE_EXTRAS_KEY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupPaymentMethodToggle$lambda$5$lambda$4(CashInOutBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectPaymentMethod("cash");
    }

    private final void selectPaymentMethod(String method) {
        FragmentCashInBinding binding = getBinding();
        if (binding != null) {
            this.paymentMethod = method;
            if (Intrinsics.areEqual(method, CustomTabsCallback.ONLINE_EXTRAS_KEY)) {
                binding.rbOnline.setBackground(ContextCompat.getDrawable(requireContext(), C3621R.drawable.toggle_button_left_selected));
                binding.rbOnline.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
                binding.rbCash.setBackground(ContextCompat.getDrawable(requireContext(), C3621R.drawable.toggle_button_right));
                binding.rbCash.setTextColor(ContextCompat.getColor(requireContext(), C3621R.color.color_primary));
                return;
            }
            binding.rbOnline.setBackground(ContextCompat.getDrawable(requireContext(), C3621R.drawable.toggle_button_left));
            binding.rbOnline.setTextColor(ContextCompat.getColor(requireContext(), C3621R.color.color_primary));
            binding.rbCash.setBackground(ContextCompat.getDrawable(requireContext(), C3621R.drawable.toggle_button_right_selected));
            binding.rbCash.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
        }
    }

    private final void resetPaymentMethodBackgrounds() {
        FragmentCashInBinding binding = getBinding();
        if (binding != null) {
            binding.rbOnline.setBackground(ContextCompat.getDrawable(requireContext(), C3621R.drawable.toggle_button_left));
            binding.rbOnline.setTextColor(ContextCompat.getColor(requireContext(), C3621R.color.color_primary));
            binding.rbCash.setBackground(ContextCompat.getDrawable(requireContext(), C3621R.drawable.toggle_button_right));
            binding.rbCash.setTextColor(ContextCompat.getColor(requireContext(), C3621R.color.color_primary));
        }
    }

    private final void setOnClickListeners() {
        final FragmentCashInBinding binding = getBinding();
        if (binding != null) {
            binding.ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CashInOutBottomSheetFragment.setOnClickListeners$lambda$12$lambda$8(this.f$0, view);
                }
            });
            binding.btnSave.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CashInOutBottomSheetFragment.setOnClickListeners$lambda$12$lambda$9(this.f$0, binding, view);
                }
            });
            binding.btnDelete.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CashInOutBottomSheetFragment.setOnClickListeners$lambda$12$lambda$10(this.f$0, view);
                }
            });
            binding.tvDateEdit.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CashInOutBottomSheetFragment.setOnClickListeners$lambda$12$lambda$11(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$12$lambda$8(CashInOutBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$12$lambda$9(CashInOutBottomSheetFragment this$0, FragmentCashInBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.addOrUpdateExpenseAmount(StringsKt.trim((CharSequence) String.valueOf(this_apply.etAmount.getText())).toString());
        this$0.recordClickEvent(ConstantEventNames.SAVE_INCOME, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.INCOME_TYPE, this$0.transactionType), new Pair(ConstantEventAttributes.AMOUNT, String.valueOf(this$0.amount)), new Pair(ConstantEventAttributes.IS_UPDATE_INCOME, String.valueOf(this$0.isUpdate)), new Pair("date", String.valueOf(this$0.date))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$12$lambda$10(CashInOutBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showDeleteConfirmationDialog();
        this$0.recordClickEvent(ConstantEventNames.DELETE_INCOME_TRY, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.INCOME_TYPE, this$0.transactionType), new Pair(ConstantEventAttributes.AMOUNT, String.valueOf(this$0.amount)), new Pair(ConstantEventAttributes.IS_UPDATE_INCOME, String.valueOf(this$0.isUpdate))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$12$lambda$11(CashInOutBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openDatePicker();
        BaseBottomsheetFragment.recordClickEvent$default(this$0, ConstantEventNames.EDIT_INCOME_DATE, null, 2, null);
    }

    private final void showDeleteConfirmationDialog() {
        new AlertDialog.Builder(requireContext()).setTitle(getString(C3621R.string.delete_expense)).setMessage(getString(C3621R.string.are_you_sure_you_want_to_delete_this_expense)).setPositiveButton(getString(C3621R.string.delete), new DialogInterface.OnClickListener() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                CashInOutBottomSheetFragment.showDeleteConfirmationDialog$lambda$14(this.f$0, dialogInterface, i);
            }
        }).setNegativeButton(getString(C3621R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeleteConfirmationDialog$lambda$14(CashInOutBottomSheetFragment this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String str = this$0.id;
        if (str != null) {
            this$0.getViewModel().deleteExpense(str);
        }
    }

    private final void openDatePicker() {
        final Calendar calendar = Calendar.getInstance();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
        String str = this.date;
        if (str != null) {
            try {
                Date date = simpleDateFormat.parse(str);
                if (date == null) {
                    date = new Date();
                }
                calendar.setTime(date);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        new DatePickerDialog(requireContext(), new DatePickerDialog.OnDateSetListener() { // from class: com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment$$ExternalSyntheticLambda9
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                CashInOutBottomSheetFragment.openDatePicker$lambda$17(calendar, this, datePicker, i, i2, i3);
            }
        }, calendar.get(1), calendar.get(2), calendar.get(5)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openDatePicker$lambda$17(Calendar calendar, CashInOutBottomSheetFragment this$0, DatePicker datePicker, int i, int i2, int i3) {
        TextViewBold14 textViewBold14;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        calendar.set(i, i2, i3);
        Intrinsics.checkNotNull(calendar);
        this$0.date = this$0.formatToISO(calendar);
        FragmentCashInBinding binding = this$0.getBinding();
        if (binding == null || (textViewBold14 = binding.tvDate) == null) {
            return;
        }
        String str = this$0.date;
        textViewBold14.setText(str != null ? BaseExtensionKt.toReadableDate(str) : null);
    }

    private final String formatToISO(Calendar calendar) {
        String str = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault()).format(calendar.getTime());
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final void addOrUpdateExpenseAmount(String amount) {
        EditText editText;
        FragmentCashInBinding binding = getBinding();
        String strValueOf = String.valueOf((binding == null || (editText = binding.etDescription) == null) ? null : editText.getText());
        this.reason = strValueOf;
        this.amount = amount;
        String str = strValueOf;
        if (str == null || str.length() == 0) {
            this.reason = "Income";
        }
        Double doubleOrNull = StringsKt.toDoubleOrNull(amount);
        if (doubleOrNull == null) {
            Toast.makeText(getContext(), "Please enter a valid amount", 0).show();
            return;
        }
        if (StringsKt.replace$default(StringsKt.replace$default(amount, ".", "", false, 4, (Object) null), Identify.UNSET_VALUE, "", false, 4, (Object) null).length() > 8) {
            Toast.makeText(getContext(), "Maximum 8 digits allowed", 0).show();
            return;
        }
        String str2 = this.reason;
        TransactionRequest transactionRequest = new TransactionRequest(str2 == null ? "Income" : str2, String.valueOf(this.date), doubleOrNull.doubleValue(), this.transactionType, Intrinsics.areEqual(this.paymentMethod, CustomTabsCallback.ONLINE_EXTRAS_KEY) ? "UPI" : "CASH", this.paymentMethod);
        if (this.isUpdate) {
            String str3 = this.id;
            if (str3 != null) {
                getViewModel().updateExpense(str3, transactionRequest);
                return;
            }
            return;
        }
        getViewModel().createExpense(transactionRequest);
    }

    /* JADX INFO: compiled from: CashInOutBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J>\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m2722d2 = {"Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$MaxDigitsInputFilter;", "Landroid/text/InputFilter;", "maxDigits", "", "<init>", "(I)V", SvgConstants.Tags.FILTER, "", "source", "start", "end", "dest", "Landroid/text/Spanned;", "dstart", "dend", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    private static final class MaxDigitsInputFilter implements InputFilter {
        private final int maxDigits;

        public MaxDigitsInputFilter(int i) {
            this.maxDigits = i;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
            String string;
            if (dest == null || (string = dest.toString()) == null) {
                string = "";
            }
            StringBuilder sb = new StringBuilder();
            String strSubstring = string.substring(0, dstart);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            StringBuilder sbAppend = sb.append(strSubstring).append((Object) (source != null ? source.subSequence(start, end) : null));
            String strSubstring2 = string.substring(dend);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            if (StringsKt.replace$default(StringsKt.replace$default(sbAppend.append(strSubstring2).toString(), ".", "", false, 4, (Object) null), Identify.UNSET_VALUE, "", false, 4, (Object) null).length() > this.maxDigits) {
                return "";
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: CashInOutBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J<\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0007¨\u0006\r"}, m2722d2 = {"Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;", "id", "", "transactionType", "date", ConstantEventAttributes.AMOUNT, "reason", "paymentMethod", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ CashInOutBottomSheetFragment newInstance$default(Companion companion, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
            if ((i & 32) != 0) {
                str6 = null;
            }
            return companion.newInstance(str, str2, str3, str4, str5, str6);
        }

        @JvmStatic
        public final CashInOutBottomSheetFragment newInstance(String id, String transactionType, String date, String amount, String reason, String paymentMethod) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(transactionType, "transactionType");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(reason, "reason");
            CashInOutBottomSheetFragment cashInOutBottomSheetFragment = new CashInOutBottomSheetFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", id);
            bundle.putString("transaction_type", transactionType);
            bundle.putString("date", date);
            bundle.putString(ConstantEventAttributes.AMOUNT, amount);
            bundle.putString("reason", reason);
            bundle.putString("payment_method", paymentMethod);
            cashInOutBottomSheetFragment.setArguments(bundle);
            return cashInOutBottomSheetFragment;
        }
    }
}

package com.rebuilt.app.expense.screen.details.fragment;

import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.rebuilt.app.base.BaseBottomsheetFragment;
import com.rebuilt.app.base.BaseExtensionKt;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.expense.C3591R;
import com.rebuilt.app.expense.databinding.FragmentTransactionDetailsBinding;
import com.rebuilt.app.expense.model.DeleteTransactionResponseModel;
import com.rebuilt.app.expense.model.Transaction;
import com.rebuilt.app.expense.screen.cashentry.fragment.CashInOutBottomSheetFragment;
import com.rebuilt.app.expense.screen.home.fragment.ExpenseFragment;
import com.rebuilt.app.expense.util.ExpenseObserverUtil;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: TransactionDetailsBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 '2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001'B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0016J\u001a\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\"\u001a\u00020\u0016H\u0002J\b\u0010#\u001a\u00020\u0016H\u0002J\b\u0010$\u001a\u00020\u0016H\u0002J\n\u0010%\u001a\u0004\u0018\u00010&H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, m2722d2 = {"Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "expenseObserverUtil", "Lcom/laborbook/expense/util/ExpenseObserverUtil;", "getExpenseObserverUtil", "()Lcom/laborbook/expense/util/ExpenseObserverUtil;", "expenseObserverUtil$delegate", "Lkotlin/Lazy;", "id", "transactionType", "date", ConstantEventAttributes.AMOUNT, "reason", "paymentMethod", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "Landroid/view/View;", "setupViews", "setupClicks", "setupObserverCallbacks", "findExpenseFragment", "Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;", "Companion", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionDetailsBottomSheetFragment extends BaseBottomsheetFragment<FragmentTransactionDetailsBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String amount;
    private String date;

    /* JADX INFO: renamed from: expenseObserverUtil$delegate, reason: from kotlin metadata */
    private final Lazy expenseObserverUtil;
    private String id;
    private String paymentMethod;
    private String reason;
    private String transactionType;

    @JvmStatic
    public static final TransactionDetailsBottomSheetFragment newInstance(String str, String str2, String str3, String str4, String str5, String str6) {
        return INSTANCE.newInstance(str, str2, str3, str4, str5, str6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TransactionDetailsBottomSheetFragment() {
        final TransactionDetailsBottomSheetFragment transactionDetailsBottomSheetFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.expenseObserverUtil = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<ExpenseObserverUtil>() { // from class: com.rebuilt.app.expense.screen.details.fragment.TransactionDetailsBottomSheetFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.expense.util.ExpenseObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ExpenseObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = transactionDetailsBottomSheetFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ExpenseObserverUtil.class), qualifier, objArr);
            }
        });
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.EXPENSE_TRANSACTION_DETAILS;
    }

    private final ExpenseObserverUtil getExpenseObserverUtil() {
        return (ExpenseObserverUtil) this.expenseObserverUtil.getValue();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.id = arguments.getString("id");
            this.transactionType = arguments.getString("transaction_type");
            this.date = arguments.getString("date");
            this.amount = arguments.getString(ConstantEventAttributes.AMOUNT);
            this.reason = arguments.getString("reason");
            this.paymentMethod = arguments.getString("payment_method");
        }
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public FragmentTransactionDetailsBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentTransactionDetailsBinding.inflate(inflater, container, false);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        Intrinsics.checkNotNull(dialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        View viewFindViewById = ((BottomSheetDialog) dialog).findViewById(C1346R.id.design_bottom_sheet);
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(viewFindViewById);
        Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
        viewFindViewById.getLayoutParams().height = -1;
        bottomSheetBehaviorFrom.setState(3);
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setupViews();
        setupClicks();
    }

    private final void setupViews() {
        String string;
        String string2;
        int color;
        String strValueOf;
        FragmentTransactionDetailsBinding binding = getBinding();
        if (binding != null) {
            TextViewBold20 textViewBold20 = binding.tvHeaderDate;
            String str = this.date;
            textViewBold20.setText(str != null ? BaseExtensionKt.toReadableDate(str) : null);
            TextViewBold16 textViewBold16 = binding.tvTitle;
            if (Intrinsics.areEqual(this.transactionType, "CREDIT")) {
                string = getString(C3591R.string.cash_in);
            } else {
                string = getString(C3591R.string.cash_out);
            }
            textViewBold16.setText(string);
            String str2 = this.amount;
            if (str2 == null || str2.length() == 0 || Intrinsics.areEqual(this.amount, AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                string2 = getString(C3591R.string.f3420_0);
            } else {
                string2 = getString(C3591R.string.rupee) + ' ' + this.amount;
            }
            Intrinsics.checkNotNull(string2);
            binding.tvAmount.setText(string2);
            if (Intrinsics.areEqual(this.transactionType, "DEBIT")) {
                color = ContextCompat.getColor(requireContext(), C3591R.color.error_state_color);
            } else {
                color = ContextCompat.getColor(requireContext(), C3591R.color.button_green_color);
            }
            binding.tvAmount.setTextColor(color);
            TextViewBold16 textViewBold162 = binding.tvNotes;
            String str3 = this.reason;
            String str4 = "";
            textViewBold162.setText(str3 != null ? str3 : "");
            String str5 = this.paymentMethod;
            if (str5 != null && str5.length() != 0) {
                binding.tvPaymentMethodLabel.setVisibility(0);
                binding.tvPaymentMethodValue.setVisibility(0);
                String string3 = this.paymentMethod;
                if (string3 != null) {
                    if (string3.length() > 0) {
                        StringBuilder sb = new StringBuilder();
                        char cCharAt = string3.charAt(0);
                        if (Character.isLowerCase(cCharAt)) {
                            Locale locale = Locale.getDefault();
                            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
                            strValueOf = CharsKt.titlecase(cCharAt, locale);
                        } else {
                            strValueOf = String.valueOf(cCharAt);
                        }
                        StringBuilder sbAppend = sb.append((Object) strValueOf);
                        String strSubstring = string3.substring(1);
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                        string3 = sbAppend.append(strSubstring).toString();
                    }
                    if (string3 != null) {
                        str4 = string3;
                    }
                }
                binding.tvPaymentMethodValue.setText(str4);
            } else {
                binding.tvPaymentMethodLabel.setVisibility(8);
                binding.tvPaymentMethodValue.setVisibility(8);
            }
            binding.tvEdit.setText(getString(C3591R.string.edit));
        }
    }

    private final void setupClicks() {
        TextViewBold12 textViewBold12;
        PrimaryButton primaryButton;
        ImageView imageView;
        FragmentTransactionDetailsBinding binding = getBinding();
        if (binding != null && (imageView = binding.ivClose) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.expense.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransactionDetailsBottomSheetFragment.setupClicks$lambda$3(this.f$0, view);
                }
            });
        }
        FragmentTransactionDetailsBinding binding2 = getBinding();
        if (binding2 != null && (primaryButton = binding2.btnOk) != null) {
            primaryButton.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.expense.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransactionDetailsBottomSheetFragment.setupClicks$lambda$4(this.f$0, view);
                }
            });
        }
        FragmentTransactionDetailsBinding binding3 = getBinding();
        if (binding3 == null || (textViewBold12 = binding3.tvEdit) == null) {
            return;
        }
        textViewBold12.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.expense.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransactionDetailsBottomSheetFragment.setupClicks$lambda$6(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClicks$lambda$3(TransactionDetailsBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClicks$lambda$4(TransactionDetailsBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClicks$lambda$6(final TransactionDetailsBottomSheetFragment this$0, View view) {
        View decorView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupObserverCallbacks();
        CashInOutBottomSheetFragment.Companion companion = CashInOutBottomSheetFragment.INSTANCE;
        String str = this$0.id;
        if (str == null) {
            str = "";
        }
        String str2 = this$0.transactionType;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = this$0.date;
        if (str3 == null) {
            str3 = "";
        }
        String str4 = this$0.amount;
        if (str4 == null) {
            str4 = "";
        }
        String str5 = this$0.reason;
        if (str5 == null) {
            str5 = "";
        }
        final CashInOutBottomSheetFragment cashInOutBottomSheetFragmentNewInstance = companion.newInstance(str, str2, str3, str4, str5, this$0.paymentMethod);
        this$0.dismiss();
        try {
            Window window = this$0.requireActivity().getWindow();
            if (window == null || (decorView = window.getDecorView()) == null) {
                return;
            }
            decorView.postDelayed(new Runnable() { // from class: com.rebuilt.app.expense.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    TransactionDetailsBottomSheetFragment.setupClicks$lambda$6$lambda$5(this.f$0, cashInOutBottomSheetFragmentNewInstance);
                }
            }, 150L);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClicks$lambda$6$lambda$5(TransactionDetailsBottomSheetFragment this$0, CashInOutBottomSheetFragment fragment) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        this$0.getFragmentNavigator().start((BottomSheetDialogFragment) fragment);
    }

    private final void setupObserverCallbacks() {
        final ExpenseFragment expenseFragmentFindExpenseFragment = findExpenseFragment();
        if (expenseFragmentFindExpenseFragment != null) {
            getExpenseObserverUtil().setOnExpenseAddedOrUpdated(new Function2() { // from class: com.rebuilt.app.expense.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return TransactionDetailsBottomSheetFragment.setupObserverCallbacks$lambda$9$lambda$7(expenseFragmentFindExpenseFragment, (Transaction) obj, ((Boolean) obj2).booleanValue());
                }
            });
            getExpenseObserverUtil().setOnExpenseDeleted(new Function1() { // from class: com.rebuilt.app.expense.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TransactionDetailsBottomSheetFragment.setupObserverCallbacks$lambda$9$lambda$8(expenseFragmentFindExpenseFragment, (DeleteTransactionResponseModel) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupObserverCallbacks$lambda$9$lambda$7(ExpenseFragment fragment, Transaction expense, boolean z) {
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        Intrinsics.checkNotNullParameter(expense, "expense");
        if (z) {
            fragment.handleExpenseUpdate$expense_release(expense);
        } else {
            fragment.handleExpenseAddition$expense_release(expense);
        }
        fragment.updateViewVisibility$expense_release(false, fragment.getAllTransactionItems$expense_release().isEmpty());
        fragment.getTransactionSummaryViewModel$expense_release().getTransactionSummary(String.valueOf(fragment.getMonthNumber()), String.valueOf(fragment.getCurrentYear()));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupObserverCallbacks$lambda$9$lambda$8(ExpenseFragment fragment, DeleteTransactionResponseModel deleteTransaction) {
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        Intrinsics.checkNotNullParameter(deleteTransaction, "deleteTransaction");
        fragment.handleExpenseDeletion$expense_release(deleteTransaction.getId());
        fragment.updateViewVisibility$expense_release(false, fragment.getAllTransactionItems$expense_release().isEmpty());
        fragment.getTransactionSummaryViewModel$expense_release().getTransactionSummary(String.valueOf(fragment.getMonthNumber()), String.valueOf(fragment.getCurrentYear()));
        return Unit.INSTANCE;
    }

    private final ExpenseFragment findExpenseFragment() {
        try {
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            FragmentManager supportFragmentManager = fragmentActivityRequireActivity.getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            List<Fragment> fragments = supportFragmentManager.getFragments();
            Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
            return findExpenseFragment$findFragmentRecursive(fragments);
        } catch (Exception unused) {
            return null;
        }
    }

    private static final ExpenseFragment findExpenseFragment$findFragmentRecursive(List<? extends Fragment> list) {
        for (Fragment fragment : list) {
            if (fragment instanceof ExpenseFragment) {
                return (ExpenseFragment) fragment;
            }
            List<Fragment> fragments = fragment.getChildFragmentManager().getFragments();
            Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
            if (!fragments.isEmpty()) {
                List<Fragment> fragments2 = fragment.getChildFragmentManager().getFragments();
                Intrinsics.checkNotNullExpressionValue(fragments2, "getFragments(...)");
                ExpenseFragment expenseFragmentFindExpenseFragment$findFragmentRecursive = findExpenseFragment$findFragmentRecursive(fragments2);
                if (expenseFragmentFindExpenseFragment$findFragmentRecursive != null) {
                    return expenseFragmentFindExpenseFragment$findFragmentRecursive;
                }
            }
        }
        return null;
    }

    /* JADX INFO: compiled from: TransactionDetailsBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J<\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0007¨\u0006\r"}, m2722d2 = {"Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment;", "id", "", "transactionType", "date", ConstantEventAttributes.AMOUNT, "reason", "paymentMethod", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ TransactionDetailsBottomSheetFragment newInstance$default(Companion companion, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
            if ((i & 32) != 0) {
                str6 = null;
            }
            return companion.newInstance(str, str2, str3, str4, str5, str6);
        }

        @JvmStatic
        public final TransactionDetailsBottomSheetFragment newInstance(String id, String transactionType, String date, String amount, String reason, String paymentMethod) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(transactionType, "transactionType");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(reason, "reason");
            TransactionDetailsBottomSheetFragment transactionDetailsBottomSheetFragment = new TransactionDetailsBottomSheetFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", id);
            bundle.putString("transaction_type", transactionType);
            bundle.putString("date", date);
            bundle.putString(ConstantEventAttributes.AMOUNT, amount);
            bundle.putString("reason", reason);
            bundle.putString("payment_method", paymentMethod);
            transactionDetailsBottomSheetFragment.setArguments(bundle);
            return transactionDetailsBottomSheetFragment;
        }
    }
}

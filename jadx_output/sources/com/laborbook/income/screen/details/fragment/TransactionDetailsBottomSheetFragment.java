package com.laborbook.income.screen.details.fragment;

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
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.laborbook.base.BaseBottomsheetFragment;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.income.C3621R;
import com.laborbook.income.databinding.FragmentTransactionDetailsBinding;
import com.laborbook.income.model.DeleteTransactionResponseModel;
import com.laborbook.income.model.Transaction;
import com.laborbook.income.screen.cashentry.fragment.CashInOutBottomSheetFragment;
import com.laborbook.income.screen.home.fragment.IncomeFragment;
import com.laborbook.income.util.IncomeObserverUtil;
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
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: TransactionDetailsBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0016J\u001a\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\"\u001a\u00020\u0016H\u0002J\b\u0010#\u001a\u00020\u0016H\u0002J\b\u0010$\u001a\u00020\u0016H\u0002J\b\u0010%\u001a\u00020\u0016H\u0002J\n\u0010&\u001a\u0004\u0018\u00010'H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006)"}, m2722d2 = {"Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "incomeObserverUtil", "Lcom/laborbook/income/util/IncomeObserverUtil;", "getIncomeObserverUtil", "()Lcom/laborbook/income/util/IncomeObserverUtil;", "incomeObserverUtil$delegate", "Lkotlin/Lazy;", "id", "transactionType", "date", ConstantEventAttributes.AMOUNT, "reason", "paymentMethod", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "Landroid/view/View;", "setupViews", "setupClicks", "openEditFragment", "setupObserverCallbacks", "findIncomeFragment", "Lcom/laborbook/income/screen/home/fragment/IncomeFragment;", "Companion", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionDetailsBottomSheetFragment extends BaseBottomsheetFragment<FragmentTransactionDetailsBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String amount;
    private String date;
    private String id;

    /* JADX INFO: renamed from: incomeObserverUtil$delegate, reason: from kotlin metadata */
    private final Lazy incomeObserverUtil;
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
        this.incomeObserverUtil = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<IncomeObserverUtil>() { // from class: com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.income.util.IncomeObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final IncomeObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = transactionDetailsBottomSheetFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(IncomeObserverUtil.class), qualifier, objArr);
            }
        });
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.INCOME_TRANSACTION_DETAILS;
    }

    private final IncomeObserverUtil getIncomeObserverUtil() {
        return (IncomeObserverUtil) this.incomeObserverUtil.getValue();
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

    @Override // com.laborbook.base.BaseBottomsheetFragment
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

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
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
        String str;
        FragmentTransactionDetailsBinding binding = getBinding();
        if (binding != null) {
            TextViewBold20 textViewBold20 = binding.tvHeaderDate;
            String str2 = this.date;
            textViewBold20.setText(str2 != null ? BaseExtensionKt.toReadableDate(str2) : null);
            TextViewBold16 textViewBold16 = binding.tvTitle;
            if (Intrinsics.areEqual(this.transactionType, "CREDIT")) {
                string = getString(C3621R.string.cash_in);
            } else {
                string = getString(C3621R.string.cash_out);
            }
            textViewBold16.setText(string);
            if (Intrinsics.areEqual(this.transactionType, "CREDIT") && (str = this.amount) != null && str.length() != 0 && !Intrinsics.areEqual(this.amount, AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new TransactionDetailsBottomSheetFragment$setupViews$1$1(this, binding, null), 3, null);
            } else {
                binding.tvAmount.setVisibility(0);
                binding.ivSecretAmount.setVisibility(8);
                String str3 = this.amount;
                if (str3 == null || str3.length() == 0 || Intrinsics.areEqual(this.amount, AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                    string2 = getString(C3621R.string.f3430_0);
                } else {
                    string2 = getString(C3621R.string.rupee) + ' ' + this.amount;
                }
                Intrinsics.checkNotNull(string2);
                binding.tvAmount.setText(string2);
                if (Intrinsics.areEqual(this.transactionType, "DEBIT")) {
                    color = ContextCompat.getColor(requireContext(), C3621R.color.error_state_color);
                } else {
                    color = ContextCompat.getColor(requireContext(), C3621R.color.button_green_color);
                }
                binding.tvAmount.setTextColor(color);
                binding.tvEdit.setAlpha(1.0f);
            }
            TextViewBold16 textViewBold162 = binding.tvNotes;
            String str4 = this.reason;
            String str5 = "";
            textViewBold162.setText(str4 != null ? str4 : "");
            String str6 = this.paymentMethod;
            if (str6 != null && str6.length() != 0) {
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
                        str5 = string3;
                    }
                }
                binding.tvPaymentMethodValue.setText(str5);
            } else {
                binding.tvPaymentMethodLabel.setVisibility(8);
                binding.tvPaymentMethodValue.setVisibility(8);
            }
            binding.tvEdit.setText(getString(C3621R.string.edit));
        }
    }

    private final void setupClicks() {
        TextViewBold12 textViewBold12;
        PrimaryButton primaryButton;
        ImageView imageView;
        FragmentTransactionDetailsBinding binding = getBinding();
        if (binding != null && (imageView = binding.ivClose) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransactionDetailsBottomSheetFragment.setupClicks$lambda$3(this.f$0, view);
                }
            });
        }
        FragmentTransactionDetailsBinding binding2 = getBinding();
        if (binding2 != null && (primaryButton = binding2.btnOk) != null) {
            primaryButton.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda4
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
        textViewBold12.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransactionDetailsBottomSheetFragment.setupClicks$lambda$5(this.f$0, view);
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
    public static final void setupClicks$lambda$5(TransactionDetailsBottomSheetFragment this$0, View view) {
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Intrinsics.areEqual(this$0.transactionType, "CREDIT") && (str = this$0.amount) != null && str.length() != 0 && !Intrinsics.areEqual(this$0.amount, AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new TransactionDetailsBottomSheetFragment$setupClicks$3$1(this$0, null), 3, null);
        } else {
            this$0.openEditFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openEditFragment() {
        View decorView;
        setupObserverCallbacks();
        CashInOutBottomSheetFragment.Companion companion = CashInOutBottomSheetFragment.INSTANCE;
        String str = this.id;
        if (str == null) {
            str = "";
        }
        String str2 = this.transactionType;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = this.date;
        if (str3 == null) {
            str3 = "";
        }
        String str4 = this.amount;
        if (str4 == null) {
            str4 = "";
        }
        String str5 = this.reason;
        if (str5 == null) {
            str5 = "";
        }
        final CashInOutBottomSheetFragment cashInOutBottomSheetFragmentNewInstance = companion.newInstance(str, str2, str3, str4, str5, this.paymentMethod);
        dismiss();
        try {
            Window window = requireActivity().getWindow();
            if (window == null || (decorView = window.getDecorView()) == null) {
                return;
            }
            decorView.postDelayed(new Runnable() { // from class: com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    TransactionDetailsBottomSheetFragment.openEditFragment$lambda$6(this.f$0, cashInOutBottomSheetFragmentNewInstance);
                }
            }, 150L);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openEditFragment$lambda$6(TransactionDetailsBottomSheetFragment this$0, CashInOutBottomSheetFragment fragment) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        this$0.getFragmentNavigator().start((BottomSheetDialogFragment) fragment);
    }

    private final void setupObserverCallbacks() {
        final IncomeFragment incomeFragmentFindIncomeFragment = findIncomeFragment();
        if (incomeFragmentFindIncomeFragment != null) {
            getIncomeObserverUtil().setOnIncomeAddedOrUpdated(new Function2() { // from class: com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return TransactionDetailsBottomSheetFragment.setupObserverCallbacks$lambda$9$lambda$7(incomeFragmentFindIncomeFragment, (Transaction) obj, ((Boolean) obj2).booleanValue());
                }
            });
            getIncomeObserverUtil().setOnIncomeDeleted(new Function1() { // from class: com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TransactionDetailsBottomSheetFragment.setupObserverCallbacks$lambda$9$lambda$8(incomeFragmentFindIncomeFragment, (DeleteTransactionResponseModel) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupObserverCallbacks$lambda$9$lambda$7(IncomeFragment fragment, Transaction expense, boolean z) {
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        Intrinsics.checkNotNullParameter(expense, "expense");
        if (z) {
            fragment.handleExpenseUpdate$income_release(expense);
        } else {
            fragment.handleExpenseAddition$income_release(expense);
        }
        fragment.updateViewVisibility$income_release(false, fragment.getAllTransactionItems$income_release().isEmpty());
        fragment.getTransactionSummaryViewModel$income_release().getTransactionSummary(String.valueOf(fragment.getMonthNumber()), String.valueOf(fragment.getCurrentYear()));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupObserverCallbacks$lambda$9$lambda$8(IncomeFragment fragment, DeleteTransactionResponseModel deleteTransaction) {
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        Intrinsics.checkNotNullParameter(deleteTransaction, "deleteTransaction");
        fragment.handleExpenseDeletion$income_release(deleteTransaction.getId());
        fragment.updateViewVisibility$income_release(false, fragment.getAllTransactionItems$income_release().isEmpty());
        fragment.getTransactionSummaryViewModel$income_release().getTransactionSummary(String.valueOf(fragment.getMonthNumber()), String.valueOf(fragment.getCurrentYear()));
        return Unit.INSTANCE;
    }

    private final IncomeFragment findIncomeFragment() {
        try {
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            FragmentManager supportFragmentManager = fragmentActivityRequireActivity.getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            List<Fragment> fragments = supportFragmentManager.getFragments();
            Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
            return findIncomeFragment$findFragmentRecursive(fragments);
        } catch (Exception unused) {
            return null;
        }
    }

    private static final IncomeFragment findIncomeFragment$findFragmentRecursive(List<? extends Fragment> list) {
        for (Fragment fragment : list) {
            if (fragment instanceof IncomeFragment) {
                return (IncomeFragment) fragment;
            }
            List<Fragment> fragments = fragment.getChildFragmentManager().getFragments();
            Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
            if (!fragments.isEmpty()) {
                List<Fragment> fragments2 = fragment.getChildFragmentManager().getFragments();
                Intrinsics.checkNotNullExpressionValue(fragments2, "getFragments(...)");
                IncomeFragment incomeFragmentFindIncomeFragment$findFragmentRecursive = findIncomeFragment$findFragmentRecursive(fragments2);
                if (incomeFragmentFindIncomeFragment$findFragmentRecursive != null) {
                    return incomeFragmentFindIncomeFragment$findFragmentRecursive;
                }
            }
        }
        return null;
    }

    /* JADX INFO: compiled from: TransactionDetailsBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J<\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0007¨\u0006\r"}, m2722d2 = {"Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;", "id", "", "transactionType", "date", ConstantEventAttributes.AMOUNT, "reason", "paymentMethod", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
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

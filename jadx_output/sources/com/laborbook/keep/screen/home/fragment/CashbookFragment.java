package com.laborbook.keep.screen.home.fragment;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.boilerplate.network.NetworkHandler;
import com.boilerplate.network.model.DataResponse;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.google.android.material.button.MaterialButton;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import com.laborbook.base.BaseFragment;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.expense.model.Transaction;
import com.laborbook.expense.model.TransactionSummaryResponseModel;
import com.laborbook.expense.network.TransactionApi;
import com.laborbook.expense.screen.cashentry.fragment.CashInOutBottomSheetFragment;
import com.laborbook.expense.screen.reports.fragment.TransactionReportsFragment;
import com.laborbook.expense.util.ExpenseObserverUtil;
import com.laborbook.income.model.DeleteTransactionResponseModel;
import com.laborbook.income.screen.cashentry.fragment.CashInOutBottomSheetFragment;
import com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment;
import com.laborbook.income.screen.monthchooser.MonthYearChooserFragment;
import com.laborbook.income.util.IncomeObserverUtil;
import com.laborbook.keep.databinding.FragmentCashbookBinding;
import com.laborbook.keep.screen.home.adapter.CashbookTransactionAdapter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import org.bouncycastle.i18n.ErrorBundle;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: compiled from: CashbookFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 ?2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001?B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010 \u001a\u0004\u0018\u00010\u00022\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u001a\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\b\u0010+\u001a\u00020(H\u0002J\b\u0010,\u001a\u00020(H\u0002J\b\u0010-\u001a\u00020(H\u0002J\b\u0010.\u001a\u00020(H\u0002J\b\u0010/\u001a\u00020(H\u0002J\b\u00100\u001a\u00020(H\u0002J\u0010\u00101\u001a\u00020(2\u0006\u00102\u001a\u000203H\u0002J\u0010\u00104\u001a\u00020(2\u0006\u00105\u001a\u00020\u0006H\u0002J\b\u00106\u001a\u00020(H\u0002J\b\u00107\u001a\u00020(H\u0002J\b\u00108\u001a\u00020(H\u0002J\u0010\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;H\u0002J\b\u0010<\u001a\u00020(H\u0002J\b\u0010=\u001a\u00020(H\u0002J\u0006\u0010>\u001a\u00020(R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b\u001d\u0010\u001e¨\u0006@"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/keep/databinding/FragmentCashbookBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "currentYear", "", "monthName", "monthNumber", "currentPage", "isLastPage", "", "isLoading", "adapter", "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;", "api", "Lcom/laborbook/expense/network/TransactionApi;", "expenseObserverUtil", "Lcom/laborbook/expense/util/ExpenseObserverUtil;", "getExpenseObserverUtil", "()Lcom/laborbook/expense/util/ExpenseObserverUtil;", "expenseObserverUtil$delegate", "Lkotlin/Lazy;", "incomeObserverUtil", "Lcom/laborbook/income/util/IncomeObserverUtil;", "getIncomeObserverUtil", "()Lcom/laborbook/income/util/IncomeObserverUtil;", "incomeObserverUtil$delegate", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "Landroid/view/View;", "getCurrentDateInfo", "setupApi", "setupView", "setupSearch", "setClickListeners", "openMonthYearChooser", "openTransactionDetail", "transaction", "Lcom/laborbook/expense/model/Transaction;", "openAddTransaction", "type", "resetAndLoad", "loadData", "loadSummary", "updateSummary", ErrorBundle.SUMMARY_ENTRY, "Lcom/laborbook/expense/model/TransactionSummaryResponseModel;", "loadTransactions", "openReports", "refreshData", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class CashbookFragment extends BaseFragment<FragmentCashbookBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private CashbookTransactionAdapter adapter;
    private TransactionApi api;

    /* JADX INFO: renamed from: expenseObserverUtil$delegate, reason: from kotlin metadata */
    private final Lazy expenseObserverUtil;

    /* JADX INFO: renamed from: incomeObserverUtil$delegate, reason: from kotlin metadata */
    private final Lazy incomeObserverUtil;
    private boolean isLastPage;
    private boolean isLoading;
    private int currentYear = 2024;
    private String monthName = "Jan";
    private int monthNumber = 1;
    private int currentPage = 1;

    @JvmStatic
    public static final CashbookFragment newInstance() {
        return INSTANCE.newInstance();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CashbookFragment() {
        final CashbookFragment cashbookFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.expenseObserverUtil = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<ExpenseObserverUtil>() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.expense.util.ExpenseObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ExpenseObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = cashbookFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ExpenseObserverUtil.class), qualifier, objArr);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.incomeObserverUtil = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<IncomeObserverUtil>() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.income.util.IncomeObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final IncomeObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = cashbookFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(IncomeObserverUtil.class), objArr2, objArr3);
            }
        });
    }

    @Override // com.laborbook.base.BaseFragment
    public String getScreenName() {
        return ConstantEventNames.EXPENSE;
    }

    private final ExpenseObserverUtil getExpenseObserverUtil() {
        return (ExpenseObserverUtil) this.expenseObserverUtil.getValue();
    }

    private final IncomeObserverUtil getIncomeObserverUtil() {
        return (IncomeObserverUtil) this.incomeObserverUtil.getValue();
    }

    @Override // com.laborbook.base.BaseFragment
    public FragmentCashbookBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentCashbookBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getCurrentDateInfo();
        setupApi();
        setupView();
        setupSearch();
        setClickListeners();
        loadData();
    }

    private final void getCurrentDateInfo() {
        Calendar calendar = Calendar.getInstance();
        this.monthNumber = calendar.get(2) + 1;
        this.monthName = calendar.getDisplayName(2, 2, Locale.getDefault());
        this.currentYear = calendar.get(1);
    }

    private final void setupApi() {
        this.api = (TransactionApi) new Retrofit.Builder().baseUrl("https://api.laborbook.app/").client(NetworkHandler.INSTANCE.getInstance().getOkHttpClient()).addConverterFactory(GsonConverterFactory.create()).build().create(TransactionApi.class);
    }

    private final void setupView() {
        FragmentCashbookBinding binding = getBinding();
        if (binding != null) {
            TextViewBold12 textViewBold12 = binding.tvMonthYear;
            StringBuilder sb = new StringBuilder();
            String str = this.monthName;
            CashbookTransactionAdapter cashbookTransactionAdapter = null;
            textViewBold12.setText(sb.append(str != null ? StringsKt.take(str, 3) : null).append(' ').append(this.currentYear).toString());
            this.adapter = new CashbookTransactionAdapter(new Function1() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CashbookFragment.setupView$lambda$1$lambda$0(this.f$0, (Transaction) obj);
                }
            });
            binding.rvTransactions.setLayoutManager(new LinearLayoutManager(requireContext()));
            RecyclerView recyclerView = binding.rvTransactions;
            CashbookTransactionAdapter cashbookTransactionAdapter2 = this.adapter;
            if (cashbookTransactionAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                cashbookTransactionAdapter = cashbookTransactionAdapter2;
            }
            recyclerView.setAdapter(cashbookTransactionAdapter);
            binding.rvTransactions.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$setupView$1$2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView2, int dx, int dy) {
                    Intrinsics.checkNotNullParameter(recyclerView2, "recyclerView");
                    super.onScrolled(recyclerView2, dx, dy);
                    RecyclerView.LayoutManager layoutManager = recyclerView2.getLayoutManager();
                    Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                    int itemCount = linearLayoutManager.getItemCount();
                    int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                    if (this.this$0.isLoading || this.this$0.isLastPage || iFindLastVisibleItemPosition < itemCount - 3) {
                        return;
                    }
                    this.this$0.currentPage++;
                    this.this$0.loadTransactions();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupView$lambda$1$lambda$0(CashbookFragment this$0, Transaction transaction) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        BaseFragment.recordClickEvent$default(this$0, Intrinsics.areEqual(transaction.getType(), "CREDIT") ? ConstantEventNames.VIEW_INCOME : ConstantEventNames.VIEW_EXPENSE, null, 2, null);
        this$0.openTransactionDetail(transaction);
        return Unit.INSTANCE;
    }

    private final void setupSearch() {
        EditText editText;
        FragmentCashbookBinding binding = getBinding();
        if (binding == null || (editText = binding.etSearch) == null) {
            return;
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment.setupSearch.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                CashbookTransactionAdapter cashbookTransactionAdapter = CashbookFragment.this.adapter;
                if (cashbookTransactionAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    cashbookTransactionAdapter = null;
                }
                String string = s != null ? s.toString() : null;
                if (string == null) {
                    string = "";
                }
                cashbookTransactionAdapter.filter(string);
            }
        });
    }

    private final void setClickListeners() {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        LinearLayout linearLayout;
        TextViewBold12 textViewBold12;
        FragmentCashbookBinding binding = getBinding();
        if (binding != null && (textViewBold12 = binding.tvMonthYear) != null) {
            textViewBold12.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CashbookFragment.setClickListeners$lambda$2(this.f$0, view);
                }
            });
        }
        FragmentCashbookBinding binding2 = getBinding();
        if (binding2 != null && (linearLayout = binding2.tvReports) != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CashbookFragment.setClickListeners$lambda$3(this.f$0, view);
                }
            });
        }
        FragmentCashbookBinding binding3 = getBinding();
        if (binding3 != null && (materialButton2 = binding3.fabCashIn) != null) {
            materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CashbookFragment.setClickListeners$lambda$4(this.f$0, view);
                }
            });
        }
        FragmentCashbookBinding binding4 = getBinding();
        if (binding4 == null || (materialButton = binding4.fabCashOut) == null) {
            return;
        }
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CashbookFragment.setClickListeners$lambda$5(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$2(CashbookFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openMonthYearChooser();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$3(CashbookFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openReports();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$4(CashbookFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openAddTransaction("CREDIT");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$5(CashbookFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openAddTransaction("DEBIT");
    }

    private final void openMonthYearChooser() {
        MonthYearChooserFragment monthYearChooserFragmentNewInstance = com.laborbook.keep.screen.monthchooser.MonthYearChooserFragment.INSTANCE.newInstance(this.monthNumber - 1, this.currentYear);
        monthYearChooserFragmentNewInstance.setOnSelectionCallback(new Function2() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CashbookFragment.openMonthYearChooser$lambda$7(this.f$0, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        });
        monthYearChooserFragmentNewInstance.show(getParentFragmentManager(), "MonthYearChooserFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openMonthYearChooser$lambda$7(CashbookFragment this$0, int i, int i2) {
        TextViewBold12 textViewBold12;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.monthNumber = i + 1;
        this$0.currentYear = i2;
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(2, i);
        calendar.set(1, i2);
        this$0.monthName = calendar.getDisplayName(2, 2, Locale.getDefault());
        FragmentCashbookBinding binding = this$0.getBinding();
        if (binding != null && (textViewBold12 = binding.tvMonthYear) != null) {
            StringBuilder sb = new StringBuilder();
            String str = this$0.monthName;
            textViewBold12.setText(sb.append(str != null ? StringsKt.take(str, 3) : null).append(' ').append(this$0.currentYear).toString());
        }
        this$0.resetAndLoad();
        return Unit.INSTANCE;
    }

    private final void openTransactionDetail(Transaction transaction) {
        try {
            if (Intrinsics.areEqual(transaction.getType(), "CREDIT")) {
                getFragmentNavigator().start((BottomSheetDialogFragment) TransactionDetailsBottomSheetFragment.INSTANCE.newInstance(transaction.getId(), transaction.getType(), transaction.getDate(), String.valueOf((int) transaction.getAmount()), transaction.getReason(), transaction.getPaymentMethod()));
                getIncomeObserverUtil().setOnIncomeAddedOrUpdated(new Function2() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return CashbookFragment.openTransactionDetail$lambda$8(this.f$0, (com.laborbook.income.model.Transaction) obj, ((Boolean) obj2).booleanValue());
                    }
                });
                getIncomeObserverUtil().setOnIncomeDeleted(new Function1() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return CashbookFragment.openTransactionDetail$lambda$9(this.f$0, (DeleteTransactionResponseModel) obj);
                    }
                });
            } else {
                getFragmentNavigator().start((BottomSheetDialogFragment) com.laborbook.expense.screen.details.fragment.TransactionDetailsBottomSheetFragment.INSTANCE.newInstance(transaction.getId(), transaction.getType(), transaction.getDate(), String.valueOf((int) transaction.getAmount()), transaction.getReason(), transaction.getPaymentMethod()));
                getExpenseObserverUtil().setOnExpenseAddedOrUpdated(new Function2() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return CashbookFragment.openTransactionDetail$lambda$10(this.f$0, (Transaction) obj, ((Boolean) obj2).booleanValue());
                    }
                });
                getExpenseObserverUtil().setOnExpenseDeleted(new Function1() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return CashbookFragment.openTransactionDetail$lambda$11(this.f$0, (com.laborbook.expense.model.DeleteTransactionResponseModel) obj);
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openTransactionDetail$lambda$8(CashbookFragment this$0, com.laborbook.income.model.Transaction transaction, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(transaction, "<unused var>");
        this$0.resetAndLoad();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openTransactionDetail$lambda$9(CashbookFragment this$0, DeleteTransactionResponseModel it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.resetAndLoad();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openTransactionDetail$lambda$10(CashbookFragment this$0, Transaction transaction, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(transaction, "<unused var>");
        this$0.resetAndLoad();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openTransactionDetail$lambda$11(CashbookFragment this$0, com.laborbook.expense.model.DeleteTransactionResponseModel it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.resetAndLoad();
        return Unit.INSTANCE;
    }

    private final void openAddTransaction(String type) {
        try {
            if (Intrinsics.areEqual(type, "CREDIT")) {
                getFragmentNavigator().start((BottomSheetDialogFragment) CashInOutBottomSheetFragment.Companion.newInstance$default(CashInOutBottomSheetFragment.INSTANCE, "", "CREDIT", "", "", "", null, 32, null));
                getIncomeObserverUtil().setOnIncomeAddedOrUpdated(new Function2() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return CashbookFragment.openAddTransaction$lambda$12(this.f$0, (com.laborbook.income.model.Transaction) obj, ((Boolean) obj2).booleanValue());
                    }
                });
            } else {
                getFragmentNavigator().start((BottomSheetDialogFragment) CashInOutBottomSheetFragment.Companion.newInstance$default(com.laborbook.expense.screen.cashentry.fragment.CashInOutBottomSheetFragment.INSTANCE, "", "DEBIT", "", "", "", null, 32, null));
                getExpenseObserverUtil().setOnExpenseAddedOrUpdated(new Function2() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return CashbookFragment.openAddTransaction$lambda$13(this.f$0, (Transaction) obj, ((Boolean) obj2).booleanValue());
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openAddTransaction$lambda$12(CashbookFragment this$0, com.laborbook.income.model.Transaction transaction, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(transaction, "<unused var>");
        this$0.resetAndLoad();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openAddTransaction$lambda$13(CashbookFragment this$0, Transaction transaction, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(transaction, "<unused var>");
        this$0.resetAndLoad();
        return Unit.INSTANCE;
    }

    private final void resetAndLoad() {
        this.currentPage = 1;
        this.isLastPage = false;
        CashbookTransactionAdapter cashbookTransactionAdapter = this.adapter;
        if (cashbookTransactionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            cashbookTransactionAdapter = null;
        }
        cashbookTransactionAdapter.clear();
        loadData();
    }

    private final void loadData() {
        loadSummary();
        loadTransactions();
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.home.fragment.CashbookFragment$loadSummary$1 */
    /* JADX INFO: compiled from: CashbookFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.home.fragment.CashbookFragment$loadSummary$1", m2735f = "CashbookFragment.kt", m2736i = {}, m2737l = {212, 213}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37901 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C37901(Continuation<? super C37901> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CashbookFragment.this.new C37901(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37901) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Response response;
            DataResponse dataResponse;
            TransactionSummaryResponseModel transactionSummaryResponseModel;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(CashbookFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    response = (Response) obj;
                    if (response.isSuccessful() && (dataResponse = (DataResponse) response.body()) != null && (transactionSummaryResponseModel = (TransactionSummaryResponseModel) dataResponse.getData()) != null) {
                        CashbookFragment.this.updateSummary(transactionSummaryResponseModel);
                    }
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            CoroutineDispatcher io2 = Dispatchers.getIO();
            CashbookFragment cashbookFragment = CashbookFragment.this;
            this.label = 2;
            obj = BuildersKt.withContext(io2, new CashbookFragment$loadSummary$1$response$1(cashbookFragment, (String) obj, null), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            response = (Response) obj;
            if (response.isSuccessful()) {
                CashbookFragment.this.updateSummary(transactionSummaryResponseModel);
            }
            return Unit.INSTANCE;
        }
    }

    private final void loadSummary() {
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C37901(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSummary(TransactionSummaryResponseModel summary) {
        FragmentCashbookBinding binding = getBinding();
        if (binding != null) {
            binding.tvCashIn.setText("₹ " + ((int) summary.getTotalCredit()));
            binding.tvCashOut.setText("₹ " + ((int) summary.getTotalDebit()));
            binding.tvBalance.setText("₹ " + ((int) (summary.getTotalCredit() - summary.getTotalDebit())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadTransactions() {
        TextView textView;
        ProgressBar progressBar;
        if (this.isLoading) {
            return;
        }
        this.isLoading = true;
        if (this.currentPage == 1) {
            FragmentCashbookBinding binding = getBinding();
            if (binding != null && (progressBar = binding.f3451pb) != null) {
                ExtentionsKt.show$default(progressBar, 0L, null, 3, null);
            }
            FragmentCashbookBinding binding2 = getBinding();
            if (binding2 != null && (textView = binding2.tvEmpty) != null) {
                ExtentionsKt.hide$default(textView, 0L, null, 3, null);
            }
        }
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C37911(null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.home.fragment.CashbookFragment$loadTransactions$1 */
    /* JADX INFO: compiled from: CashbookFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.home.fragment.CashbookFragment$loadTransactions$1", m2735f = "CashbookFragment.kt", m2736i = {}, m2737l = {246, MetaDo.META_CREATEPALETTE}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37911 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C37911(Continuation<? super C37911> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CashbookFragment.this.new C37911(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37911) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x0098 A[Catch: all -> 0x0021, Exception -> 0x0024, TRY_LEAVE, TryCatch #1 {Exception -> 0x0024, blocks: (B:6:0x0010, B:32:0x008e, B:34:0x0098, B:41:0x00b9, B:43:0x00bf, B:45:0x00c7, B:47:0x00cf, B:49:0x00de, B:51:0x00e8, B:53:0x00f0, B:55:0x00f4, B:56:0x00ff, B:58:0x0107, B:60:0x010b, B:61:0x0117, B:63:0x011f, B:65:0x0123, B:66:0x012e, B:68:0x0136, B:70:0x013a, B:71:0x0145, B:73:0x014b, B:75:0x0152, B:76:0x015a, B:78:0x0162, B:80:0x016c, B:82:0x0170, B:10:0x001d, B:29:0x0071, B:17:0x002a, B:19:0x0032, B:26:0x0053), top: B:109:0x000a, outer: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00b9 A[Catch: all -> 0x0021, Exception -> 0x0024, TRY_ENTER, TryCatch #1 {Exception -> 0x0024, blocks: (B:6:0x0010, B:32:0x008e, B:34:0x0098, B:41:0x00b9, B:43:0x00bf, B:45:0x00c7, B:47:0x00cf, B:49:0x00de, B:51:0x00e8, B:53:0x00f0, B:55:0x00f4, B:56:0x00ff, B:58:0x0107, B:60:0x010b, B:61:0x0117, B:63:0x011f, B:65:0x0123, B:66:0x012e, B:68:0x0136, B:70:0x013a, B:71:0x0145, B:73:0x014b, B:75:0x0152, B:76:0x015a, B:78:0x0162, B:80:0x016c, B:82:0x0170, B:10:0x001d, B:29:0x0071, B:17:0x002a, B:19:0x0032, B:26:0x0053), top: B:109:0x000a, outer: #0 }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                Method dump skipped, instruction units count: 503
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.home.fragment.CashbookFragment.C37911.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void openReports() {
        CashbookTransactionAdapter cashbookTransactionAdapter = null;
        BaseFragment.recordClickEvent$default(this, ConstantEventNames.VIEW_REPORTS, null, 2, null);
        try {
            final ReviewManager reviewManagerCreate = ReviewManagerFactory.create(requireContext());
            Intrinsics.checkNotNullExpressionValue(reviewManagerCreate, "create(...)");
            reviewManagerCreate.requestReviewFlow().addOnCompleteListener(new OnCompleteListener() { // from class: com.laborbook.keep.screen.home.fragment.CashbookFragment$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    CashbookFragment.openReports$lambda$15(reviewManagerCreate, this, task);
                }
            });
        } catch (Exception unused) {
        }
        CashbookTransactionAdapter cashbookTransactionAdapter2 = this.adapter;
        if (cashbookTransactionAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            cashbookTransactionAdapter = cashbookTransactionAdapter2;
        }
        getFragmentNavigator().start(TransactionReportsFragment.INSTANCE.newInstance(new ArrayList<>(cashbookTransactionAdapter.getAllTransactions()), "", this.monthNumber, this.currentYear));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openReports$lambda$15(ReviewManager reviewManager, CashbookFragment this$0, Task task) {
        Intrinsics.checkNotNullParameter(reviewManager, "$reviewManager");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(task, "task");
        if (task.isSuccessful()) {
            try {
                reviewManager.launchReviewFlow(this$0.requireActivity(), (ReviewInfo) task.getResult());
            } catch (Exception unused) {
            }
        }
    }

    public final void refreshData() {
        resetAndLoad();
    }

    /* JADX INFO: compiled from: CashbookFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CashbookFragment newInstance() {
            return new CashbookFragment();
        }
    }
}

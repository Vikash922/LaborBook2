package com.laborbook.expense.screen.home.fragment;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.RecyclerView;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldError16;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.ads.MobileAds;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.laborbook.base.AdUnitConstants;
import com.laborbook.base.BaseFragment;
import com.laborbook.base.Logger;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.base.datastore.DataStoreManagerExtensionsKt;
import com.laborbook.expense.databinding.FragmentExpenseBinding;
import com.laborbook.expense.model.DeleteTransactionResponseModel;
import com.laborbook.expense.model.Transaction;
import com.laborbook.expense.model.TransactionItem;
import com.laborbook.expense.model.TransactionSummaryResponseModel;
import com.laborbook.expense.model.TransactionsResponseModel;
import com.laborbook.expense.screen.cashentry.fragment.CashInOutBottomSheetFragment;
import com.laborbook.expense.screen.details.fragment.TransactionDetailsBottomSheetFragment;
import com.laborbook.expense.screen.home.adapter.TransactionListAdapter;
import com.laborbook.expense.screen.home.uistate.TransactionUiState;
import com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel;
import com.laborbook.expense.screen.home.viewmodel.TransactionsViewModel;
import com.laborbook.expense.screen.monthchooser.MonthYearChooserFragment;
import com.laborbook.expense.screen.reports.fragment.TransactionReportsFragment;
import com.laborbook.expense.util.ExpenseObserverUtil;
import com.laborbook.expense.util.Utils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: ExpenseFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 r2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001rB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u00102\u001a\u0004\u0018\u00010\u00022\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u0001062\b\u00107\u001a\u0004\u0018\u000108H\u0016J\u001a\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\b\u00107\u001a\u0004\u0018\u000108H\u0016J\b\u0010=\u001a\u00020:H\u0002J\b\u0010>\u001a\u00020:H\u0016J\b\u0010?\u001a\u00020:H\u0002J\u0012\u0010@\u001a\u00020:2\b\b\u0002\u0010A\u001a\u00020\u0019H\u0002J\u0010\u0010B\u001a\u00020:2\u0006\u0010C\u001a\u00020\u0015H\u0002J\b\u0010D\u001a\u00020:H\u0002J\b\u0010E\u001a\u00020:H\u0002J\b\u0010F\u001a\u00020:H\u0002J\b\u0010G\u001a\u00020:H\u0002J\b\u0010H\u001a\u00020:H\u0002J\b\u0010I\u001a\u00020:H\u0002J\b\u0010J\u001a\u00020:H\u0002J!\u0010K\u001a\u00020:2\b\b\u0002\u0010L\u001a\u00020\u00192\b\b\u0002\u0010M\u001a\u00020\u0019H\u0000¢\u0006\u0002\bNJ\b\u0010O\u001a\u00020:H\u0002J\b\u0010P\u001a\u00020:H\u0002J\b\u0010Q\u001a\u00020:H\u0002J\u0016\u0010R\u001a\b\u0012\u0004\u0012\u00020\u001c0S2\u0006\u0010T\u001a\u00020UH\u0002J\u0016\u0010V\u001a\u00020:2\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u001c0SH\u0002J<\u0010X\u001a\u00020:2\u0006\u0010Y\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020\u00152\u0006\u0010[\u001a\u00020\u00152\u0006\u0010\\\u001a\u00020\u00152\u0006\u0010]\u001a\u00020\u00152\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u0015H\u0002J<\u0010_\u001a\u00020:2\u0006\u0010Y\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020\u00152\u0006\u0010[\u001a\u00020\u00152\u0006\u0010\\\u001a\u00020\u00152\u0006\u0010]\u001a\u00020\u00152\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u0015H\u0002J\u0015\u0010`\u001a\u00020:2\u0006\u0010a\u001a\u00020bH\u0000¢\u0006\u0002\bcJ\u0015\u0010d\u001a\u00020:2\u0006\u0010a\u001a\u00020bH\u0000¢\u0006\u0002\beJ\u0015\u0010f\u001a\u00020:2\u0006\u0010g\u001a\u00020\u0015H\u0000¢\u0006\u0002\bhJ\b\u0010i\u001a\u00020:H\u0002J\b\u0010j\u001a\u00020:H\u0002J\b\u0010k\u001a\u00020\u0015H\u0002J\b\u0010l\u001a\u00020:H\u0002J\u0016\u0010m\u001a\u00020:2\u0006\u0010n\u001a\u00020\u00172\u0006\u0010o\u001a\u00020\u0017J\u0012\u0010q\u001a\u00020:2\b\u00107\u001a\u0004\u0018\u000108H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u0017X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020\u0017X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010!\"\u0004\b(\u0010#R\u000e\u0010)\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010*\u001a\u00020+8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b.\u0010\f\u001a\u0004\b,\u0010-R\u0014\u0010/\u001a\u00020\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u000e\u0010p\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006s"}, m2722d2 = {"Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/expense/databinding/FragmentExpenseBinding;", "<init>", "()V", ConstantEventNames.CALENDAR, "Ljava/util/Calendar;", "viewModel", "Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;", "getViewModel", "()Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "expenseObserverUtil", "Lcom/laborbook/expense/util/ExpenseObserverUtil;", "getExpenseObserverUtil", "()Lcom/laborbook/expense/util/ExpenseObserverUtil;", "expenseObserverUtil$delegate", "expenseAdapter", "Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;", "adUnitId", "", "currentPage", "", "isLastPage", "", "allTransactionItems", "", "Lcom/laborbook/expense/model/TransactionItem;", "getAllTransactionItems$expense_release", "()Ljava/util/List;", "currentYear", "getCurrentYear$expense_release", "()I", "setCurrentYear$expense_release", "(I)V", "currentDate", "monthName", "monthNumber", "getMonthNumber$expense_release", "setMonthNumber$expense_release", "isFetching", "transactionSummaryViewModel", "Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;", "getTransactionSummaryViewModel$expense_release", "()Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;", "transactionSummaryViewModel$delegate", "screenName", "getScreenName", "()Ljava/lang/String;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "Landroid/view/View;", "observeProStatusChanges", "onDestroyView", "setupSearchListener", "updateAdapterWithTransactions", "forceRefreshAds", "filterItems", SearchIntents.EXTRA_QUERY, "loadInitialData", "resetData", "setupView", "setClickListeners", "openReportsFragment", "setupRecyclerView", "observeViewModel", "updateViewVisibility", "loading", CommonCssConstants.EMPTY, "updateViewVisibility$expense_release", "showEmptyStateViews", "hideEmptyStateViews", "loadMoreData", "groupExpensesByDate", "", "response", "Lcom/laborbook/expense/model/TransactionsResponseModel;", "appendNewItems", "newItems", "openTransactionDetails", "id", "transactionType", "date", ConstantEventAttributes.AMOUNT, "reason", "paymentMethod", "openCashEntryBottomSheet", "handleExpenseAddition", "transaction", "Lcom/laborbook/expense/model/Transaction;", "handleExpenseAddition$expense_release", "handleExpenseUpdate", "handleExpenseUpdate$expense_release", "handleExpenseDeletion", "expenseId", "handleExpenseDeletion$expense_release", "getCurrentDateInfo", "openMonthYearChooser", "getFormattedMonthYear", "changeMonthAndGetExpenses", "changeMonth", "selectedMonth", "selectedYear", "hideHeader", "onCreate", "Companion", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ExpenseFragment extends BaseFragment<FragmentExpenseBinding> {
    private static final String ARG_HIDE_HEADER = "hide_header";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String adUnitId;
    private final List<TransactionItem> allTransactionItems;
    private Calendar calendar;
    private int currentDate;
    private int currentPage;
    private int currentYear;
    private TransactionListAdapter expenseAdapter;

    /* JADX INFO: renamed from: expenseObserverUtil$delegate, reason: from kotlin metadata */
    private final Lazy expenseObserverUtil;
    private boolean hideHeader;
    private boolean isFetching;
    private boolean isLastPage;
    private String monthName;
    private int monthNumber;

    /* JADX INFO: renamed from: transactionSummaryViewModel$delegate, reason: from kotlin metadata */
    private final Lazy transactionSummaryViewModel;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @JvmStatic
    public static final ExpenseFragment newInstance() {
        return INSTANCE.newInstance();
    }

    @JvmStatic
    public static final ExpenseFragment newInstance(boolean z) {
        return INSTANCE.newInstance(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ExpenseFragment() {
        final ExpenseFragment expenseFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<TransactionsViewModel>() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.laborbook.expense.screen.home.viewmodel.TransactionsViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final TransactionsViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(expenseFragment, qualifier, Reflection.getOrCreateKotlinClass(TransactionsViewModel.class), objArr);
            }
        });
        final ExpenseFragment expenseFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.expenseObserverUtil = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<ExpenseObserverUtil>() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.expense.util.ExpenseObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ExpenseObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = expenseFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ExpenseObserverUtil.class), objArr2, objArr3);
            }
        });
        this.adUnitId = AdUnitConstants.NativeAds.EXPENSE_LIST;
        this.currentPage = 1;
        this.allTransactionItems = new ArrayList();
        this.currentYear = 2024;
        this.currentDate = 1;
        this.monthName = "Jan";
        this.monthNumber = 1;
        LazyThreadSafetyMode lazyThreadSafetyMode3 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr4 = 0 == true ? 1 : 0;
        final Object[] objArr5 = 0 == true ? 1 : 0;
        this.transactionSummaryViewModel = LazyKt.lazy(lazyThreadSafetyMode3, (Function0) new Function0<TransactionSummaryViewModel>() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$special$$inlined$viewModel$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final TransactionSummaryViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(expenseFragment, objArr4, Reflection.getOrCreateKotlinClass(TransactionSummaryViewModel.class), objArr5);
            }
        });
    }

    private final TransactionsViewModel getViewModel() {
        return (TransactionsViewModel) this.viewModel.getValue();
    }

    private final ExpenseObserverUtil getExpenseObserverUtil() {
        return (ExpenseObserverUtil) this.expenseObserverUtil.getValue();
    }

    public final List<TransactionItem> getAllTransactionItems$expense_release() {
        return this.allTransactionItems;
    }

    /* JADX INFO: renamed from: getCurrentYear$expense_release, reason: from getter */
    public final int getCurrentYear() {
        return this.currentYear;
    }

    public final void setCurrentYear$expense_release(int i) {
        this.currentYear = i;
    }

    /* JADX INFO: renamed from: getMonthNumber$expense_release, reason: from getter */
    public final int getMonthNumber() {
        return this.monthNumber;
    }

    public final void setMonthNumber$expense_release(int i) {
        this.monthNumber = i;
    }

    public final TransactionSummaryViewModel getTransactionSummaryViewModel$expense_release() {
        return (TransactionSummaryViewModel) this.transactionSummaryViewModel.getValue();
    }

    @Override // com.laborbook.base.BaseFragment
    public String getScreenName() {
        return ConstantEventNames.EXPENSE;
    }

    @Override // com.laborbook.base.BaseFragment
    public FragmentExpenseBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentExpenseBinding.inflate(inflater, container, false);
    }

    /* JADX INFO: renamed from: com.laborbook.expense.screen.home.fragment.ExpenseFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: ExpenseFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.expense.screen.home.fragment.ExpenseFragment$onViewCreated$1", m2735f = "ExpenseFragment.kt", m2736i = {}, m2737l = {80}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36081 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36081(Continuation<? super C36081> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ExpenseFragment.this.new C36081(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36081) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = DataStoreManagerExtensionsKt.shouldShowGoogleAds(ExpenseFragment.this.getDataStoreManager(), this);
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
                MobileAds.initialize(ExpenseFragment.this.requireContext());
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36081(null), 3, null);
        getCurrentDateInfo();
        setClickListeners();
        setupView();
        setupRecyclerView();
        observeViewModel();
        loadInitialData();
        setupSearchListener();
        observeProStatusChanges();
    }

    /* JADX INFO: renamed from: com.laborbook.expense.screen.home.fragment.ExpenseFragment$observeProStatusChanges$1 */
    /* JADX INFO: compiled from: ExpenseFragment.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "isPro", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.expense.screen.home.fragment.ExpenseFragment$observeProStatusChanges$1", m2735f = "ExpenseFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36071 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C36071(Continuation<? super C36071> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C36071 c36071 = ExpenseFragment.this.new C36071(continuation);
            c36071.Z$0 = ((Boolean) obj).booleanValue();
            return c36071;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C36071) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            TransactionListAdapter transactionListAdapter;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.Z$0 && ExpenseFragment.this.expenseAdapter != null && (transactionListAdapter = ExpenseFragment.this.expenseAdapter) != null) {
                    transactionListAdapter.removeAllAds();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void observeProStatusChanges() {
        FlowKt.launchIn(FlowKt.onEach(getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), false), new C36071(null)), LifecycleOwnerKt.getLifecycleScope(this));
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        TransactionListAdapter transactionListAdapter = this.expenseAdapter;
        if (transactionListAdapter != null) {
            transactionListAdapter.releaseAds();
        }
        getViewModel().clearState();
    }

    private final void setupSearchListener() {
        EditText editText;
        FragmentExpenseBinding binding = getBinding();
        if (binding == null || (editText = binding.etSearchExpense) == null) {
            return;
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment.setupSearchListener.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                String lowerCase = StringsKt.trim((CharSequence) String.valueOf(s)).toString().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                ExpenseFragment.this.filterItems(lowerCase);
            }
        });
    }

    static /* synthetic */ void updateAdapterWithTransactions$default(ExpenseFragment expenseFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        expenseFragment.updateAdapterWithTransactions(z);
    }

    private final void updateAdapterWithTransactions(boolean forceRefreshAds) {
        List<TransactionItem> list = this.allTransactionItems;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof TransactionItem.TransactionItemView) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((TransactionItem.TransactionItemView) it.next()).getTransaction());
        }
        ArrayList arrayList4 = arrayList3;
        TransactionListAdapter transactionListAdapter = this.expenseAdapter;
        if (transactionListAdapter != null) {
            transactionListAdapter.submitOriginalList(arrayList4, forceRefreshAds);
        }
        TransactionListAdapter transactionListAdapter2 = this.expenseAdapter;
        if (transactionListAdapter2 != null) {
            transactionListAdapter2.submitList(CollectionsKt.toList(this.allTransactionItems));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void filterItems(String query) {
        try {
            if (query.length() == 0) {
                updateAdapterWithTransactions$default(this, false, 1, null);
                return;
            }
            List<TransactionItem> list = this.allTransactionItems;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                TransactionItem transactionItem = (TransactionItem) obj;
                if (transactionItem instanceof TransactionItem.TransactionItemView) {
                    String lowerCase = ((TransactionItem.TransactionItemView) transactionItem).getTransaction().getReason().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    if (StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) query, false, 2, (Object) null)) {
                        arrayList.add(obj);
                    }
                }
            }
            ArrayList arrayList2 = arrayList;
            TransactionListAdapter transactionListAdapter = this.expenseAdapter;
            if (transactionListAdapter != null) {
                transactionListAdapter.submitList(arrayList2);
            }
        } catch (Exception unused) {
        }
    }

    private final void loadInitialData() {
        resetData();
        getViewModel().getTransactions(String.valueOf(this.monthNumber), String.valueOf(this.currentYear), this.currentPage);
        getTransactionSummaryViewModel$expense_release().getTransactionSummary(String.valueOf(this.monthNumber), String.valueOf(this.currentYear));
    }

    private final void resetData() {
        EditText editText;
        this.allTransactionItems.clear();
        this.currentPage = 1;
        this.isLastPage = false;
        this.isFetching = false;
        FragmentExpenseBinding binding = getBinding();
        if (binding == null || (editText = binding.etSearchExpense) == null) {
            return;
        }
        editText.setText("");
    }

    private final void setupView() {
        FragmentExpenseBinding binding = getBinding();
        if (binding != null) {
            if (this.hideHeader) {
                binding.tvExpense.setVisibility(8);
                binding.tvMonthYear.setVisibility(8);
            } else {
                TextViewBold12 textViewBold12 = binding.tvMonthYear;
                StringBuilder sb = new StringBuilder();
                String str = this.monthName;
                textViewBold12.setText(sb.append(str != null ? StringsKt.take(str, 3) : null).append(' ').append(this.currentYear).toString());
            }
        }
    }

    private final void setClickListeners() {
        final FragmentExpenseBinding binding = getBinding();
        if (binding != null) {
            binding.btnCashOut.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ExpenseFragment.setClickListeners$lambda$6$lambda$3(this.f$0, view);
                }
            });
            binding.tvMonthYear.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ExpenseFragment.setClickListeners$lambda$6$lambda$4(this.f$0, binding, view);
                }
            });
            binding.tvViewReports.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ExpenseFragment.setClickListeners$lambda$6$lambda$5(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$6$lambda$3(ExpenseFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        openCashEntryBottomSheet$default(this$0, "", "DEBIT", Utils.INSTANCE.getCurrentTimeInISOFormat(), "", "", null, 32, null);
        this$0.recordClickEvent(ConstantEventNames.CASH_OUT, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.EXPENSE_TYPE, "DEBIT")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$6$lambda$4(ExpenseFragment this$0, FragmentExpenseBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.openMonthYearChooser();
        this$0.recordClickEvent(ConstantEventNames.CHANGE_EXPENSE_MONTH, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.CURRENT_MONTH, this_apply.tvMonthYear.getText().toString())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$6$lambda$5(ExpenseFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openReportsFragment();
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.VIEW_REPORTS, null, 2, null);
    }

    private final void openReportsFragment() {
        List<TransactionItem> list = this.allTransactionItems;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof TransactionItem.TransactionItemView) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((TransactionItem.TransactionItemView) it.next()).getTransaction());
        }
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (Intrinsics.areEqual(((Transaction) obj2).getType(), "DEBIT")) {
                arrayList4.add(obj2);
            }
        }
        getFragmentNavigator().start(TransactionReportsFragment.INSTANCE.newInstance(new ArrayList<>(arrayList4), "DEBIT", this.monthNumber, this.currentYear));
    }

    private final void setupRecyclerView() {
        RecyclerView recyclerView;
        this.expenseAdapter = new TransactionListAdapter(new Function2() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ExpenseFragment.setupRecyclerView$lambda$9(this.f$0, (Transaction) obj, ((Integer) obj2).intValue());
            }
        }, new Function0() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ExpenseFragment.setupRecyclerView$lambda$10(this.f$0);
            }
        }, this.adUnitId);
        FragmentExpenseBinding binding = getBinding();
        if (binding == null || (recyclerView = binding.rvExpense) == null) {
            return;
        }
        recyclerView.setAdapter(this.expenseAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupRecyclerView$lambda$9(ExpenseFragment this$0, Transaction transaction, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        this$0.openTransactionDetails(transaction.getId(), transaction.getType(), transaction.getDate(), String.valueOf(transaction.getAmount()), transaction.getReason(), transaction.getPaymentMethod());
        this$0.recordClickEvent(ConstantEventNames.VIEW_EXPENSE, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.EXPENSE_TYPE, transaction.getType())));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupRecyclerView$lambda$10(ExpenseFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.isLastPage && !this$0.isFetching) {
            this$0.isFetching = true;
            this$0.loadMoreData();
        }
        return Unit.INSTANCE;
    }

    private final void observeViewModel() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new ExpenseFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ExpenseFragment.observeViewModel$lambda$11(this.f$0, (TransactionUiState) obj);
            }
        }));
        getTransactionSummaryViewModel$expense_release().uiState().observe(getViewLifecycleOwner(), new ExpenseFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ExpenseFragment.observeViewModel$lambda$13(this.f$0, (TransactionUiState) obj);
            }
        }));
        getExpenseObserverUtil().setClearExpenseSearchText(new Function1() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ExpenseFragment.observeViewModel$lambda$14(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeViewModel$lambda$11(ExpenseFragment this$0, TransactionUiState transactionUiState) {
        List<Transaction> transactions;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (transactionUiState instanceof TransactionUiState.LOADING) {
            if (this$0.currentPage == 1) {
                updateViewVisibility$expense_release$default(this$0, true, false, 2, null);
            }
        } else if (transactionUiState instanceof TransactionUiState.SUCCESS) {
            TransactionUiState.SUCCESS success = (TransactionUiState.SUCCESS) transactionUiState;
            TransactionsResponseModel transactionsResponseModel = (TransactionsResponseModel) success.getData();
            List<Transaction> transactions2 = transactionsResponseModel != null ? transactionsResponseModel.getTransactions() : null;
            this$0.updateViewVisibility$expense_release(false, (transactions2 == null || transactions2.isEmpty()) && this$0.currentPage == 1);
            this$0.isFetching = false;
            TransactionsResponseModel transactionsResponseModel2 = (TransactionsResponseModel) success.getData();
            if (transactionsResponseModel2 != null && (transactions = transactionsResponseModel2.getTransactions()) != null && (!transactions.isEmpty())) {
                this$0.appendNewItems(this$0.groupExpensesByDate((TransactionsResponseModel) success.getData()));
                this$0.isLastPage = ((TransactionsResponseModel) success.getData()).isLastPage();
                if (this$0.currentPage == 1) {
                    this$0.updateAdapterWithTransactions(true);
                }
            }
        } else {
            if (!(transactionUiState instanceof TransactionUiState.ERROR)) {
                throw new NoWhenBranchMatchedException();
            }
            this$0.updateViewVisibility$expense_release(false, true);
            this$0.isFetching = false;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeViewModel$lambda$13(ExpenseFragment this$0, TransactionUiState transactionUiState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (transactionUiState instanceof TransactionUiState.SUCCESS) {
            FragmentExpenseBinding binding = this$0.getBinding();
            if (binding != null) {
                TextViewBoldError16 textViewBoldError16 = binding.tvTotalCashOut;
                StringBuilder sb = new StringBuilder("₹ ");
                TransactionUiState.SUCCESS success = (TransactionUiState.SUCCESS) transactionUiState;
                TransactionSummaryResponseModel transactionSummaryResponseModel = (TransactionSummaryResponseModel) success.getData();
                textViewBoldError16.setText(sb.append(transactionSummaryResponseModel != null ? Double.valueOf(transactionSummaryResponseModel.getTotalDebit()) : 0).toString());
                TextViewBold16 textViewBold16 = binding.tvTotalEntries;
                TransactionSummaryResponseModel transactionSummaryResponseModel2 = (TransactionSummaryResponseModel) success.getData();
                textViewBold16.setText(String.valueOf(transactionSummaryResponseModel2 != null ? transactionSummaryResponseModel2.getTotalEntriesCount() : 0));
            }
        } else if (!(transactionUiState instanceof TransactionUiState.LOADING) && !(transactionUiState instanceof TransactionUiState.ERROR)) {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeViewModel$lambda$14(ExpenseFragment this$0, boolean z) {
        FragmentExpenseBinding binding;
        EditText editText;
        Editable text;
        FragmentExpenseBinding binding2;
        EditText editText2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z && (binding = this$0.getBinding()) != null && (editText = binding.etSearchExpense) != null && (text = editText.getText()) != null && text.length() > 0 && (binding2 = this$0.getBinding()) != null && (editText2 = binding2.etSearchExpense) != null) {
            editText2.setText("");
        }
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void updateViewVisibility$expense_release$default(ExpenseFragment expenseFragment, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        expenseFragment.updateViewVisibility$expense_release(z, z2);
    }

    public final void updateViewVisibility$expense_release(boolean loading, boolean empty) {
        FragmentExpenseBinding binding = getBinding();
        if (binding != null) {
            binding.progressBar.setVisibility(loading ? 0 : 8);
            binding.rvExpense.setVisibility((loading || empty) ? 8 : 0);
            binding.llTableHeader.setVisibility((loading || empty) ? 8 : 0);
            binding.dividerHeader.setVisibility((loading || empty) ? 8 : 0);
            if (empty) {
                showEmptyStateViews();
            } else {
                hideEmptyStateViews();
            }
        }
    }

    private final void showEmptyStateViews() {
        FragmentExpenseBinding binding = getBinding();
        if (binding != null) {
            TextViewBold16 tvAddFirstEntry = binding.tvAddFirstEntry;
            Intrinsics.checkNotNullExpressionValue(tvAddFirstEntry, "tvAddFirstEntry");
            ExtentionsKt.show$default(tvAddFirstEntry, 0L, null, 3, null);
            ImageView ivArrow = binding.ivArrow;
            Intrinsics.checkNotNullExpressionValue(ivArrow, "ivArrow");
            ExtentionsKt.show$default(ivArrow, 0L, null, 3, null);
        }
    }

    private final void hideEmptyStateViews() {
        FragmentExpenseBinding binding = getBinding();
        if (binding != null) {
            TextViewBold16 tvAddFirstEntry = binding.tvAddFirstEntry;
            Intrinsics.checkNotNullExpressionValue(tvAddFirstEntry, "tvAddFirstEntry");
            ExtentionsKt.hide$default(tvAddFirstEntry, 0L, null, 3, null);
            ImageView ivArrow = binding.ivArrow;
            Intrinsics.checkNotNullExpressionValue(ivArrow, "ivArrow");
            ExtentionsKt.hide$default(ivArrow, 0L, null, 3, null);
        }
    }

    private final void loadMoreData() {
        if (this.isLastPage) {
            return;
        }
        TransactionsViewModel viewModel = getViewModel();
        String strValueOf = String.valueOf(this.monthNumber);
        String strValueOf2 = String.valueOf(this.currentYear);
        int i = this.currentPage + 1;
        this.currentPage = i;
        viewModel.getTransactions(strValueOf, strValueOf2, i);
    }

    private final List<TransactionItem> groupExpensesByDate(TransactionsResponseModel response) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = response.getTransactions().iterator();
        while (it.hasNext()) {
            arrayList.add(new TransactionItem.TransactionItemView((Transaction) it.next()));
        }
        return arrayList;
    }

    private final void appendNewItems(List<? extends TransactionItem> newItems) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : newItems) {
            if (obj instanceof TransactionItem.TransactionItemView) {
                arrayList.add(obj);
            }
        }
        this.allTransactionItems.addAll(arrayList);
        updateAdapterWithTransactions$default(this, false, 1, null);
    }

    static /* synthetic */ void openTransactionDetails$default(ExpenseFragment expenseFragment, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 32) != 0) {
            str6 = null;
        }
        expenseFragment.openTransactionDetails(str, str2, str3, str4, str5, str6);
    }

    private final void openTransactionDetails(String id, String transactionType, String date, String amount, String reason, String paymentMethod) {
        getExpenseObserverUtil().setOnExpenseAddedOrUpdated(new Function2() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ExpenseFragment.openTransactionDetails$lambda$19(this.f$0, (Transaction) obj, ((Boolean) obj2).booleanValue());
            }
        });
        getExpenseObserverUtil().setOnExpenseDeleted(new Function1() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ExpenseFragment.openTransactionDetails$lambda$20(this.f$0, (DeleteTransactionResponseModel) obj);
            }
        });
        getFragmentNavigator().start((BottomSheetDialogFragment) TransactionDetailsBottomSheetFragment.INSTANCE.newInstance(id, transactionType, date, amount, reason, paymentMethod));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openTransactionDetails$lambda$19(ExpenseFragment this$0, Transaction expense, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(expense, "expense");
        if (z) {
            this$0.handleExpenseUpdate$expense_release(expense);
        } else {
            this$0.handleExpenseAddition$expense_release(expense);
        }
        this$0.updateViewVisibility$expense_release(false, this$0.allTransactionItems.isEmpty());
        this$0.getTransactionSummaryViewModel$expense_release().getTransactionSummary(String.valueOf(this$0.monthNumber), String.valueOf(this$0.currentYear));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openTransactionDetails$lambda$20(ExpenseFragment this$0, DeleteTransactionResponseModel deleteTransaction) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(deleteTransaction, "deleteTransaction");
        this$0.handleExpenseDeletion$expense_release(deleteTransaction.getId());
        this$0.updateViewVisibility$expense_release(false, this$0.allTransactionItems.isEmpty());
        this$0.getTransactionSummaryViewModel$expense_release().getTransactionSummary(String.valueOf(this$0.monthNumber), String.valueOf(this$0.currentYear));
        return Unit.INSTANCE;
    }

    static /* synthetic */ void openCashEntryBottomSheet$default(ExpenseFragment expenseFragment, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 32) != 0) {
            str6 = null;
        }
        expenseFragment.openCashEntryBottomSheet(str, str2, str3, str4, str5, str6);
    }

    private final void openCashEntryBottomSheet(String id, String transactionType, String date, String amount, String reason, String paymentMethod) {
        getFragmentNavigator().start((BottomSheetDialogFragment) CashInOutBottomSheetFragment.INSTANCE.newInstance(id, transactionType, date, amount, reason, paymentMethod));
        getExpenseObserverUtil().setOnExpenseAddedOrUpdated(new Function2() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ExpenseFragment.openCashEntryBottomSheet$lambda$21(this.f$0, (Transaction) obj, ((Boolean) obj2).booleanValue());
            }
        });
        getExpenseObserverUtil().setOnExpenseDeleted(new Function1() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ExpenseFragment.openCashEntryBottomSheet$lambda$22(this.f$0, (DeleteTransactionResponseModel) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openCashEntryBottomSheet$lambda$21(ExpenseFragment this$0, Transaction expense, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(expense, "expense");
        if (z) {
            this$0.handleExpenseUpdate$expense_release(expense);
        } else {
            this$0.handleExpenseAddition$expense_release(expense);
        }
        this$0.updateViewVisibility$expense_release(false, this$0.allTransactionItems.isEmpty());
        this$0.getTransactionSummaryViewModel$expense_release().getTransactionSummary(String.valueOf(this$0.monthNumber), String.valueOf(this$0.currentYear));
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new ExpenseFragment$openCashEntryBottomSheet$1$1(this$0, expense, z, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openCashEntryBottomSheet$lambda$22(ExpenseFragment this$0, DeleteTransactionResponseModel deleteTransaction) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(deleteTransaction, "deleteTransaction");
        this$0.handleExpenseDeletion$expense_release(deleteTransaction.getId());
        this$0.updateViewVisibility$expense_release(false, this$0.allTransactionItems.isEmpty());
        this$0.getTransactionSummaryViewModel$expense_release().getTransactionSummary(String.valueOf(this$0.monthNumber), String.valueOf(this$0.currentYear));
        return Unit.INSTANCE;
    }

    public final void handleExpenseAddition$expense_release(Transaction transaction) {
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        this.allTransactionItems.add(0, new TransactionItem.TransactionItemView(transaction));
        updateAdapterWithTransactions$default(this, false, 1, null);
        FragmentExpenseBinding binding = getBinding();
        if (binding == null || (recyclerView = binding.rvExpense) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ExpenseFragment.handleExpenseAddition$lambda$23(this.f$0);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleExpenseAddition$lambda$23(ExpenseFragment this$0) {
        FragmentExpenseBinding binding;
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.isAdded() || this$0.getContext() == null || (binding = this$0.getBinding()) == null || (recyclerView = binding.rvExpense) == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(0);
    }

    public final void handleExpenseUpdate$expense_release(Transaction transaction) {
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        TransactionItem.TransactionItemView transactionItemView = new TransactionItem.TransactionItemView(transaction);
        Iterator<TransactionItem> it = this.allTransactionItems.iterator();
        final int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            TransactionItem next = it.next();
            if ((next instanceof TransactionItem.TransactionItemView) && Intrinsics.areEqual(((TransactionItem.TransactionItemView) next).getTransaction().getId(), transaction.getId())) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            this.allTransactionItems.set(i, transactionItemView);
            TransactionListAdapter transactionListAdapter = this.expenseAdapter;
            if (transactionListAdapter != null) {
                transactionListAdapter.submitList(CollectionsKt.toList(this.allTransactionItems));
            }
            FragmentExpenseBinding binding = getBinding();
            if (binding == null || (recyclerView = binding.rvExpense) == null) {
                return;
            }
            recyclerView.postDelayed(new Runnable() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ExpenseFragment.handleExpenseUpdate$lambda$25(this.f$0, i);
                }
            }, 500L);
            return;
        }
        Logger.INSTANCE.m2678i("Expense with ID: " + transaction.getId() + " not found for update.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleExpenseUpdate$lambda$25(ExpenseFragment this$0, int i) {
        FragmentExpenseBinding binding;
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.isAdded() || this$0.getContext() == null || (binding = this$0.getBinding()) == null || (recyclerView = binding.rvExpense) == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(i);
    }

    public final void handleExpenseDeletion$expense_release(String expenseId) {
        Intrinsics.checkNotNullParameter(expenseId, "expenseId");
        Iterator<TransactionItem> it = this.allTransactionItems.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            TransactionItem next = it.next();
            if ((next instanceof TransactionItem.TransactionItemView) && Intrinsics.areEqual(((TransactionItem.TransactionItemView) next).getTransaction().getId(), expenseId)) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            this.allTransactionItems.remove(i);
            TransactionListAdapter transactionListAdapter = this.expenseAdapter;
            if (transactionListAdapter != null) {
                transactionListAdapter.submitList(CollectionsKt.toList(this.allTransactionItems));
            }
        }
    }

    private final void getCurrentDateInfo() {
        Calendar calendar = Calendar.getInstance();
        this.calendar = calendar;
        Calendar calendar2 = null;
        if (calendar == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ConstantEventNames.CALENDAR);
            calendar = null;
        }
        this.monthNumber = calendar.get(2) + 1;
        Calendar calendar3 = this.calendar;
        if (calendar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ConstantEventNames.CALENDAR);
            calendar3 = null;
        }
        this.monthName = calendar3.getDisplayName(2, 2, Locale.getDefault());
        Calendar calendar4 = this.calendar;
        if (calendar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ConstantEventNames.CALENDAR);
            calendar4 = null;
        }
        this.currentYear = calendar4.get(1);
        Calendar calendar5 = this.calendar;
        if (calendar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ConstantEventNames.CALENDAR);
        } else {
            calendar2 = calendar5;
        }
        this.currentDate = calendar2.get(5);
    }

    private final void openMonthYearChooser() {
        MonthYearChooserFragment monthYearChooserFragmentNewInstance = MonthYearChooserFragment.INSTANCE.newInstance(this.monthNumber - 1, this.currentYear);
        monthYearChooserFragmentNewInstance.setOnSelectionCallback(new Function2() { // from class: com.laborbook.expense.screen.home.fragment.ExpenseFragment$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ExpenseFragment.openMonthYearChooser$lambda$28(this.f$0, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        });
        monthYearChooserFragmentNewInstance.show(getParentFragmentManager(), "MonthYearChooserFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openMonthYearChooser$lambda$28(ExpenseFragment this$0, int i, int i2) {
        TextViewBold12 textViewBold12;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.monthNumber = i + 1;
        this$0.currentYear = i2;
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(2, i);
        calendar.set(1, i2);
        this$0.monthName = calendar.getDisplayName(2, 2, Locale.getDefault());
        FragmentExpenseBinding binding = this$0.getBinding();
        if (binding != null && (textViewBold12 = binding.tvMonthYear) != null) {
            textViewBold12.setText(this$0.getFormattedMonthYear());
        }
        this$0.changeMonthAndGetExpenses();
        return Unit.INSTANCE;
    }

    private final String getFormattedMonthYear() {
        StringBuilder sb = new StringBuilder();
        String str = this.monthName;
        return sb.append(str != null ? StringsKt.take(str, 3) : null).append(' ').append(this.currentYear).toString();
    }

    private final void changeMonthAndGetExpenses() {
        resetData();
        getTransactionSummaryViewModel$expense_release().getTransactionSummary(String.valueOf(this.monthNumber), String.valueOf(this.currentYear));
        getViewModel().getTransactions(String.valueOf(this.monthNumber), String.valueOf(this.currentYear), this.currentPage);
    }

    public final void changeMonth(int selectedMonth, int selectedYear) {
        this.monthNumber = selectedMonth + 1;
        this.currentYear = selectedYear;
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(2, selectedMonth);
        calendar.set(1, selectedYear);
        this.monthName = calendar.getDisplayName(2, 2, Locale.getDefault());
        changeMonthAndGetExpenses();
    }

    /* JADX INFO: compiled from: ExpenseFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;", "", "<init>", "()V", "ARG_HIDE_HEADER", "", "newInstance", "Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;", "hideHeader", "", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ExpenseFragment newInstance() {
            return new ExpenseFragment();
        }

        @JvmStatic
        public final ExpenseFragment newInstance(boolean hideHeader) {
            ExpenseFragment expenseFragment = new ExpenseFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean(ExpenseFragment.ARG_HIDE_HEADER, hideHeader);
            expenseFragment.setArguments(bundle);
            return expenseFragment;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.hideHeader = arguments != null ? arguments.getBoolean(ARG_HIDE_HEADER, false) : false;
    }
}

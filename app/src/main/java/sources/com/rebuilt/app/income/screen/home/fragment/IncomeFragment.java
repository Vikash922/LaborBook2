package com.rebuilt.app.income.screen.home.fragment;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.RecyclerView;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldGreen16;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.ads.MobileAds;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.rebuilt.app.base.AdUnitConstants;
import com.rebuilt.app.base.BaseFragment;
import com.rebuilt.app.base.Logger;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt;
import com.rebuilt.app.income.C3621R;
import com.rebuilt.app.income.databinding.FragmentIncomeBinding;
import com.rebuilt.app.income.model.DeleteTransactionResponseModel;
import com.rebuilt.app.income.model.Transaction;
import com.rebuilt.app.income.model.TransactionItem;
import com.rebuilt.app.income.model.TransactionSummaryResponseModel;
import com.rebuilt.app.income.model.TransactionsResponseModel;
import com.rebuilt.app.income.screen.cashentry.fragment.CashInOutBottomSheetFragment;
import com.rebuilt.app.income.screen.details.fragment.TransactionDetailsBottomSheetFragment;
import com.rebuilt.app.income.screen.home.adapter.TransactionListAdapter;
import com.rebuilt.app.income.screen.home.fragment.IncomeFragment;
import com.rebuilt.app.income.screen.home.uistate.TransactionUiState;
import com.rebuilt.app.income.screen.home.viewmodel.TransactionSummaryViewModel;
import com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel;
import com.rebuilt.app.income.screen.monthchooser.MonthYearChooserFragment;
import com.rebuilt.app.income.screen.reports.fragment.TransactionReportsFragment;
import com.rebuilt.app.income.util.IncomeObserverUtil;
import com.rebuilt.app.income.util.Utils;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: IncomeFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 v2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001vB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u00102\u001a\u0004\u0018\u00010\u00022\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u0001062\b\u00107\u001a\u0004\u0018\u000108H\u0016J\u001a\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\b\u00107\u001a\u0004\u0018\u000108H\u0016J\b\u0010=\u001a\u00020:H\u0002J\b\u0010>\u001a\u00020:H\u0016J\b\u0010?\u001a\u00020:H\u0002J\u0012\u0010@\u001a\u00020:2\b\b\u0002\u0010A\u001a\u00020\u0019H\u0002J\u0010\u0010B\u001a\u00020:2\u0006\u0010C\u001a\u00020\u0015H\u0002J\b\u0010D\u001a\u00020:H\u0002J\b\u0010E\u001a\u00020:H\u0002J\b\u0010F\u001a\u00020:H\u0002J\b\u0010G\u001a\u00020:H\u0002J\b\u0010H\u001a\u00020:H\u0002J\b\u0010I\u001a\u00020:H\u0002J\b\u0010J\u001a\u00020:H\u0002J\b\u0010K\u001a\u00020:H\u0002J\u0010\u0010L\u001a\u00020:2\u0006\u0010M\u001a\u00020\u0019H\u0002J\b\u0010N\u001a\u00020:H\u0002J!\u0010O\u001a\u00020:2\b\b\u0002\u0010P\u001a\u00020\u00192\b\b\u0002\u0010Q\u001a\u00020\u0019H\u0000¢\u0006\u0002\bRJ\b\u0010S\u001a\u00020:H\u0002J\b\u0010T\u001a\u00020:H\u0002J\b\u0010U\u001a\u00020:H\u0002J\u0016\u0010V\u001a\b\u0012\u0004\u0012\u00020\u001c0W2\u0006\u0010X\u001a\u00020YH\u0002J\u0016\u0010Z\u001a\u00020:2\f\u0010[\u001a\b\u0012\u0004\u0012\u00020\u001c0WH\u0002J<\u0010\\\u001a\u00020:2\u0006\u0010]\u001a\u00020\u00152\u0006\u0010^\u001a\u00020\u00152\u0006\u0010_\u001a\u00020\u00152\u0006\u0010`\u001a\u00020\u00152\u0006\u0010a\u001a\u00020\u00152\n\b\u0002\u0010b\u001a\u0004\u0018\u00010\u0015H\u0002J<\u0010c\u001a\u00020:2\u0006\u0010]\u001a\u00020\u00152\u0006\u0010^\u001a\u00020\u00152\u0006\u0010_\u001a\u00020\u00152\u0006\u0010`\u001a\u00020\u00152\u0006\u0010a\u001a\u00020\u00152\n\b\u0002\u0010b\u001a\u0004\u0018\u00010\u0015H\u0002J\u0015\u0010d\u001a\u00020:2\u0006\u0010e\u001a\u00020fH\u0000¢\u0006\u0002\bgJ\u0015\u0010h\u001a\u00020:2\u0006\u0010e\u001a\u00020fH\u0000¢\u0006\u0002\biJ\u0015\u0010j\u001a\u00020:2\u0006\u0010k\u001a\u00020\u0015H\u0000¢\u0006\u0002\blJ\b\u0010m\u001a\u00020:H\u0002J\b\u0010n\u001a\u00020:H\u0002J\b\u0010o\u001a\u00020\u0015H\u0002J\b\u0010p\u001a\u00020:H\u0002J\u0016\u0010q\u001a\u00020:2\u0006\u0010r\u001a\u00020\u00172\u0006\u0010s\u001a\u00020\u0017J\u0012\u0010u\u001a\u00020:2\b\u00107\u001a\u0004\u0018\u000108H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u0017X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020\u0017X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010!\"\u0004\b(\u0010#R\u000e\u0010)\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010*\u001a\u00020+8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b.\u0010\f\u001a\u0004\b,\u0010-R\u0014\u0010/\u001a\u00020\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u000e\u0010t\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006w"}, m2722d2 = {"Lcom/laborbook/income/screen/home/fragment/IncomeFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/income/databinding/FragmentIncomeBinding;", "<init>", "()V", ConstantEventNames.CALENDAR, "Ljava/util/Calendar;", "viewModel", "Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;", "getViewModel", "()Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "incomeObserverUtil", "Lcom/laborbook/income/util/IncomeObserverUtil;", "getIncomeObserverUtil", "()Lcom/laborbook/income/util/IncomeObserverUtil;", "incomeObserverUtil$delegate", "expenseAdapter", "Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;", "adUnitId", "", "currentPage", "", "isLastPage", "", "allTransactionItems", "", "Lcom/laborbook/income/model/TransactionItem;", "getAllTransactionItems$income_release", "()Ljava/util/List;", "currentYear", "getCurrentYear$income_release", "()I", "setCurrentYear$income_release", "(I)V", "currentDate", "monthName", "monthNumber", "getMonthNumber$income_release", "setMonthNumber$income_release", "isFetching", "transactionSummaryViewModel", "Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;", "getTransactionSummaryViewModel$income_release", "()Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;", "transactionSummaryViewModel$delegate", "screenName", "getScreenName", "()Ljava/lang/String;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "Landroid/view/View;", "observeProStatusChanges", "onDestroyView", "setupSearchListener", "updateAdapterWithTransactions", "forceRefreshAds", "filterItems", SearchIntents.EXTRA_QUERY, "loadInitialData", "resetData", "setupView", "setClickListeners", "openReportsFragment", "togglePrivacyMode", "setupRecyclerView", "setupPrivacyMode", "updatePrivacyModeUI", "isPrivacyModeEnabled", "observeViewModel", "updateViewVisibility", "loading", CommonCssConstants.EMPTY, "updateViewVisibility$income_release", "showEmptyStateViews", "hideEmptyStateViews", "loadMoreData", "groupExpensesByDate", "", "response", "Lcom/laborbook/income/model/TransactionsResponseModel;", "appendNewItems", "newItems", "openTransactionDetails", "id", "transactionType", "date", ConstantEventAttributes.AMOUNT, "reason", "paymentMethod", "openCashEntryBottomSheet", "handleExpenseAddition", "transaction", "Lcom/laborbook/income/model/Transaction;", "handleExpenseAddition$income_release", "handleExpenseUpdate", "handleExpenseUpdate$income_release", "handleExpenseDeletion", "expenseId", "handleExpenseDeletion$income_release", "getCurrentDateInfo", "openMonthYearChooser", "getFormattedMonthYear", "changeMonthAndGetExpenses", "changeMonth", "selectedMonth", "selectedYear", "hideHeader", "onCreate", "Companion", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class IncomeFragment extends BaseFragment<FragmentIncomeBinding> {
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
    private boolean hideHeader;

    /* JADX INFO: renamed from: incomeObserverUtil$delegate, reason: from kotlin metadata */
    private final Lazy incomeObserverUtil;
    private boolean isFetching;
    private boolean isLastPage;
    private String monthName;
    private int monthNumber;

    /* JADX INFO: renamed from: transactionSummaryViewModel$delegate, reason: from kotlin metadata */
    private final Lazy transactionSummaryViewModel;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @JvmStatic
    public static final IncomeFragment newInstance() {
        return INSTANCE.newInstance();
    }

    @JvmStatic
    public static final IncomeFragment newInstance(boolean z) {
        return INSTANCE.newInstance(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IncomeFragment() {
        final IncomeFragment incomeFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<TransactionsViewModel>() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final TransactionsViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(incomeFragment, qualifier, Reflection.getOrCreateKotlinClass(TransactionsViewModel.class), objArr);
            }
        });
        final IncomeFragment incomeFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.incomeObserverUtil = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<IncomeObserverUtil>() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.income.util.IncomeObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final IncomeObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = incomeFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(IncomeObserverUtil.class), objArr2, objArr3);
            }
        });
        this.adUnitId = AdUnitConstants.NativeAds.INCOME_LIST;
        this.currentPage = 1;
        this.allTransactionItems = new ArrayList();
        this.currentYear = 2024;
        this.currentDate = 1;
        this.monthName = "Jan";
        this.monthNumber = 1;
        LazyThreadSafetyMode lazyThreadSafetyMode3 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr4 = 0 == true ? 1 : 0;
        final Object[] objArr5 = 0 == true ? 1 : 0;
        this.transactionSummaryViewModel = LazyKt.lazy(lazyThreadSafetyMode3, (Function0) new Function0<TransactionSummaryViewModel>() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$special$$inlined$viewModel$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.rebuilt.app.income.screen.home.viewmodel.TransactionSummaryViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final TransactionSummaryViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(incomeFragment, objArr4, Reflection.getOrCreateKotlinClass(TransactionSummaryViewModel.class), objArr5);
            }
        });
    }

    private final TransactionsViewModel getViewModel() {
        return (TransactionsViewModel) this.viewModel.getValue();
    }

    private final IncomeObserverUtil getIncomeObserverUtil() {
        return (IncomeObserverUtil) this.incomeObserverUtil.getValue();
    }

    public final List<TransactionItem> getAllTransactionItems$income_release() {
        return this.allTransactionItems;
    }

    /* JADX INFO: renamed from: getCurrentYear$income_release, reason: from getter */
    public final int getCurrentYear() {
        return this.currentYear;
    }

    public final void setCurrentYear$income_release(int i) {
        this.currentYear = i;
    }

    /* JADX INFO: renamed from: getMonthNumber$income_release, reason: from getter */
    public final int getMonthNumber() {
        return this.monthNumber;
    }

    public final void setMonthNumber$income_release(int i) {
        this.monthNumber = i;
    }

    public final TransactionSummaryViewModel getTransactionSummaryViewModel$income_release() {
        return (TransactionSummaryViewModel) this.transactionSummaryViewModel.getValue();
    }

    @Override // com.rebuilt.app.base.BaseFragment
    public String getScreenName() {
        return ConstantEventNames.INCOME;
    }

    @Override // com.rebuilt.app.base.BaseFragment
    public FragmentIncomeBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentIncomeBinding.inflate(inflater, container, false);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: IncomeFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.screen.home.fragment.IncomeFragment$onViewCreated$1", m2735f = "IncomeFragment.kt", m2736i = {}, m2737l = {82}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36391 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36391(Continuation<? super C36391> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IncomeFragment.this.new C36391(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36391) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = DataStoreManagerExtensionsKt.shouldShowGoogleAds(IncomeFragment.this.getDataStoreManager(), this);
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
                MobileAds.initialize(IncomeFragment.this.requireContext());
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.rebuilt.app.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36391(null), 3, null);
        getCurrentDateInfo();
        setClickListeners();
        setupView();
        setupPrivacyMode();
        setupRecyclerView();
        observeViewModel();
        loadInitialData();
        setupSearchListener();
        observeProStatusChanges();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$observeProStatusChanges$1 */
    /* JADX INFO: compiled from: IncomeFragment.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "isPro", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.screen.home.fragment.IncomeFragment$observeProStatusChanges$1", m2735f = "IncomeFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36381 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C36381(Continuation<? super C36381> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C36381 c36381 = IncomeFragment.this.new C36381(continuation);
            c36381.Z$0 = ((Boolean) obj).booleanValue();
            return c36381;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C36381) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            TransactionListAdapter transactionListAdapter;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.Z$0 && IncomeFragment.this.expenseAdapter != null && (transactionListAdapter = IncomeFragment.this.expenseAdapter) != null) {
                    transactionListAdapter.removeAllAds();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void observeProStatusChanges() {
        FlowKt.launchIn(FlowKt.onEach(getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), false), new C36381(null)), LifecycleOwnerKt.getLifecycleScope(this));
    }

    @Override // com.rebuilt.app.base.BaseFragment, androidx.fragment.app.Fragment
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
        FragmentIncomeBinding binding = getBinding();
        if (binding == null || (editText = binding.etSearchIncome) == null) {
            return;
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment.setupSearchListener.1
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
                IncomeFragment.this.filterItems(lowerCase);
            }
        });
    }

    static /* synthetic */ void updateAdapterWithTransactions$default(IncomeFragment incomeFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        incomeFragment.updateAdapterWithTransactions(z);
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
        getTransactionSummaryViewModel$income_release().getTransactionSummary(String.valueOf(this.monthNumber), String.valueOf(this.currentYear));
    }

    private final void resetData() {
        EditText editText;
        this.allTransactionItems.clear();
        this.currentPage = 1;
        this.isLastPage = false;
        this.isFetching = false;
        FragmentIncomeBinding binding = getBinding();
        if (binding == null || (editText = binding.etSearchIncome) == null) {
            return;
        }
        editText.setText("");
    }

    private final void setupView() {
        FragmentIncomeBinding binding = getBinding();
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
        final FragmentIncomeBinding binding = getBinding();
        if (binding != null) {
            binding.btnCashIn.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    IncomeFragment.setClickListeners$lambda$10$lambda$3(this.f$0, view);
                }
            });
            binding.tvMonthYear.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    IncomeFragment.setClickListeners$lambda$10$lambda$4(this.f$0, binding, view);
                }
            });
            binding.llTotalCashIn.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    IncomeFragment.setClickListeners$lambda$10$lambda$5(this.f$0, view);
                }
            });
            binding.tvTotalCashIn.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    IncomeFragment.setClickListeners$lambda$10$lambda$6(this.f$0, view);
                }
            });
            binding.ivEyeOpenClose.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    IncomeFragment.setClickListeners$lambda$10$lambda$7(this.f$0, view);
                }
            });
            binding.llParentTotalCashIn.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    IncomeFragment.setClickListeners$lambda$10$lambda$8(this.f$0, view);
                }
            });
            binding.tvViewReports.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    IncomeFragment.setClickListeners$lambda$10$lambda$9(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$10$lambda$3(IncomeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        openCashEntryBottomSheet$default(this$0, "", "CREDIT", Utils.INSTANCE.getCurrentTimeInISOFormat(), "", "", null, 32, null);
        this$0.recordClickEvent(ConstantEventNames.CASH_IN, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.INCOME_TYPE, "CREDIT")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$10$lambda$4(IncomeFragment this$0, FragmentIncomeBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.openMonthYearChooser();
        this$0.recordClickEvent(ConstantEventNames.CHANGE_INCOME_MONTH, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.CURRENT_MONTH, this_apply.tvMonthYear.getText().toString())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$10$lambda$5(IncomeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.togglePrivacyMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$10$lambda$6(IncomeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.togglePrivacyMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$10$lambda$7(IncomeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.togglePrivacyMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$10$lambda$8(IncomeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.togglePrivacyMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClickListeners$lambda$10$lambda$9(IncomeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openReportsFragment();
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.VIEW_REPORTS, null, 2, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$openReportsFragment$1 */
    /* JADX INFO: compiled from: IncomeFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.screen.home.fragment.IncomeFragment$openReportsFragment$1", m2735f = "IncomeFragment.kt", m2736i = {}, m2737l = {248}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36401 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36401(Continuation<? super C36401> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IncomeFragment.this.new C36401(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36401) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(IncomeFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getPRIVACY_MODE_ENABLED(), Boxing.boxBoolean(false)), this);
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
                Toast.makeText(IncomeFragment.this.requireContext(), IncomeFragment.this.getString(C3621R.string.disable_privacy_mode_to_access_reports), 0).show();
                return Unit.INSTANCE;
            }
            List<TransactionItem> allTransactionItems$income_release = IncomeFragment.this.getAllTransactionItems$income_release();
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : allTransactionItems$income_release) {
                if (obj2 instanceof TransactionItem.TransactionItemView) {
                    arrayList.add(obj2);
                }
            }
            ArrayList arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(((TransactionItem.TransactionItemView) it.next()).getTransaction());
            }
            ArrayList arrayList4 = new ArrayList();
            for (Object obj3 : arrayList3) {
                if (Intrinsics.areEqual(((Transaction) obj3).getType(), "CREDIT")) {
                    arrayList4.add(obj3);
                }
            }
            IncomeFragment.this.getFragmentNavigator().start(TransactionReportsFragment.INSTANCE.newInstance(new ArrayList<>(arrayList4), "CREDIT", IncomeFragment.this.getMonthNumber(), IncomeFragment.this.getCurrentYear()));
            return Unit.INSTANCE;
        }
    }

    private final void openReportsFragment() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36401(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$togglePrivacyMode$1 */
    /* JADX INFO: compiled from: IncomeFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.screen.home.fragment.IncomeFragment$togglePrivacyMode$1", m2735f = "IncomeFragment.kt", m2736i = {1}, m2737l = {TIFFConstants.TIFFTAG_MAXSAMPLEVALUE, TIFFConstants.TIFFTAG_XPOSITION}, m2738m = "invokeSuspend", m2739n = {"newValue"}, m2740s = {"I$0"})
    static final class C36441 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int I$0;
        int label;

        C36441(Continuation<? super C36441> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IncomeFragment.this.new C36441(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36441) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0088  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0096  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 2
                r3 = 0
                r4 = 1
                if (r1 == 0) goto L21
                if (r1 == r4) goto L1d
                if (r1 != r2) goto L15
                int r0 = r9.I$0
                kotlin.ResultKt.throwOnFailure(r10)
                goto L84
            L15:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L1d:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L44
            L21:
                kotlin.ResultKt.throwOnFailure(r10)
                com.rebuilt.app.income.screen.home.fragment.IncomeFragment r10 = com.rebuilt.app.income.screen.home.fragment.IncomeFragment.this
                com.rebuilt.app.base.datastore.DataStoreManager r10 = r10.getDataStoreManager()
                com.rebuilt.app.base.datastore.DataStoreManager$Companion r1 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r1 = r1.getPRIVACY_MODE_ENABLED()
                java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
                kotlinx.coroutines.flow.Flow r10 = r10.read(r1, r5)
                r1 = r9
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r9.label = r4
                java.lang.Object r10 = kotlinx.coroutines.flow.FlowKt.first(r10, r1)
                if (r10 != r0) goto L44
                return r0
            L44:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                r10 = r10 ^ r4
                com.rebuilt.app.income.screen.home.fragment.IncomeFragment r1 = com.rebuilt.app.income.screen.home.fragment.IncomeFragment.this
                kotlin.Pair[] r5 = new kotlin.Pair[r4]
                kotlin.Pair r6 = new kotlin.Pair
                java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r10)
                java.lang.String r8 = "privacy_mode"
                r6.<init>(r8, r7)
                r5[r3] = r6
                java.util.HashMap r5 = kotlin.collections.MapsKt.hashMapOf(r5)
                java.lang.String r6 = "toggle_privacy_mode"
                r1.recordClickEvent(r6, r5)
                com.rebuilt.app.income.screen.home.fragment.IncomeFragment r1 = com.rebuilt.app.income.screen.home.fragment.IncomeFragment.this
                com.rebuilt.app.base.datastore.DataStoreManager r1 = r1.getDataStoreManager()
                com.rebuilt.app.base.datastore.DataStoreManager$Companion r5 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r5 = r5.getPRIVACY_MODE_ENABLED()
                java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r10)
                r7 = r9
                kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
                r9.I$0 = r10
                r9.label = r2
                java.lang.Object r1 = r1.write(r5, r6, r7)
                if (r1 != r0) goto L83
                return r0
            L83:
                r0 = r10
            L84:
                com.rebuilt.app.income.screen.home.fragment.IncomeFragment r10 = com.rebuilt.app.income.screen.home.fragment.IncomeFragment.this
                if (r0 == 0) goto L8a
                r1 = r4
                goto L8b
            L8a:
                r1 = r3
            L8b:
                com.rebuilt.app.income.screen.home.fragment.IncomeFragment.access$updatePrivacyModeUI(r10, r1)
                com.rebuilt.app.income.screen.home.fragment.IncomeFragment r10 = com.rebuilt.app.income.screen.home.fragment.IncomeFragment.this
                com.rebuilt.app.income.screen.home.adapter.TransactionListAdapter r10 = com.rebuilt.app.income.screen.home.fragment.IncomeFragment.access$getExpenseAdapter$p(r10)
                if (r10 == 0) goto L9c
                if (r0 == 0) goto L99
                r3 = r4
            L99:
                r10.togglePrivacyMode(r3)
            L9c:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.income.screen.home.fragment.IncomeFragment.C36441.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void togglePrivacyMode() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36441(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$setupRecyclerView$1 */
    /* JADX INFO: compiled from: IncomeFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.screen.home.fragment.IncomeFragment$setupRecyclerView$1", m2735f = "IncomeFragment.kt", m2736i = {}, m2737l = {MetaDo.META_RESTOREDC}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36421 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36421(Continuation<? super C36421> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IncomeFragment.this.new C36421(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36421) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            RecyclerView recyclerView;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(IncomeFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getPRIVACY_MODE_ENABLED(), Boxing.boxBoolean(false)), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            IncomeFragment incomeFragment = IncomeFragment.this;
            final IncomeFragment incomeFragment2 = IncomeFragment.this;
            Function2 function2 = new Function2() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$setupRecyclerView$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return IncomeFragment.C36421.invokeSuspend$lambda$0(incomeFragment2, (Transaction) obj2, ((Integer) obj3).intValue());
                }
            };
            final IncomeFragment incomeFragment3 = IncomeFragment.this;
            incomeFragment.expenseAdapter = new TransactionListAdapter(zBooleanValue, function2, new Function0() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$setupRecyclerView$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return IncomeFragment.C36421.invokeSuspend$lambda$1(incomeFragment3);
                }
            }, IncomeFragment.this.adUnitId);
            FragmentIncomeBinding binding = IncomeFragment.this.getBinding();
            if (binding != null && (recyclerView = binding.rvExpense) != null) {
                recyclerView.setAdapter(IncomeFragment.this.expenseAdapter);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(IncomeFragment incomeFragment, Transaction transaction, int i) {
            incomeFragment.openTransactionDetails(transaction.getId(), transaction.getType(), transaction.getDate(), String.valueOf(transaction.getAmount()), transaction.getReason(), transaction.getPaymentMethod());
            incomeFragment.recordClickEvent(ConstantEventNames.VIEW_INCOME, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.INCOME_TYPE, transaction.getType())));
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$1(IncomeFragment incomeFragment) {
            if (!incomeFragment.isLastPage && !incomeFragment.isFetching) {
                incomeFragment.isFetching = true;
                incomeFragment.loadMoreData();
            }
            return Unit.INSTANCE;
        }
    }

    private final void setupRecyclerView() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36421(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$setupPrivacyMode$1 */
    /* JADX INFO: compiled from: IncomeFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.screen.home.fragment.IncomeFragment$setupPrivacyMode$1", m2735f = "IncomeFragment.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_CLEANFAXDATA}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36411 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36411(Continuation<? super C36411> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IncomeFragment.this.new C36411(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36411) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(IncomeFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getPRIVACY_MODE_ENABLED(), Boxing.boxBoolean(false)), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            IncomeFragment.this.updatePrivacyModeUI(((Boolean) obj).booleanValue());
            return Unit.INSTANCE;
        }
    }

    private final void setupPrivacyMode() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36411(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePrivacyModeUI(boolean isPrivacyModeEnabled) {
        int i;
        ImageView imageView;
        TextViewBoldGreen16 textViewBoldGreen16;
        ImageView imageView2;
        TextViewBoldGreen16 textViewBoldGreen162;
        ImageView imageView3;
        if (isPrivacyModeEnabled) {
            i = C3621R.drawable.ic_eye_close;
        } else {
            i = C3621R.drawable.ic_eye_open;
        }
        FragmentIncomeBinding binding = getBinding();
        if (binding != null && (imageView3 = binding.ivEyeOpenClose) != null) {
            imageView3.setImageResource(i);
        }
        if (isPrivacyModeEnabled) {
            FragmentIncomeBinding binding2 = getBinding();
            if (binding2 != null && (textViewBoldGreen162 = binding2.tvTotalCashIn) != null) {
                ExtentionsKt.hide$default(textViewBoldGreen162, 0L, null, 3, null);
            }
            FragmentIncomeBinding binding3 = getBinding();
            if (binding3 == null || (imageView2 = binding3.icHiddenAmount) == null) {
                return;
            }
            ExtentionsKt.show$default(imageView2, 0L, null, 3, null);
            return;
        }
        FragmentIncomeBinding binding4 = getBinding();
        if (binding4 != null && (textViewBoldGreen16 = binding4.tvTotalCashIn) != null) {
            ExtentionsKt.show$default(textViewBoldGreen16, 0L, null, 3, null);
        }
        FragmentIncomeBinding binding5 = getBinding();
        if (binding5 == null || (imageView = binding5.icHiddenAmount) == null) {
            return;
        }
        ExtentionsKt.hide$default(imageView, 0L, null, 3, null);
    }

    private final void observeViewModel() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new IncomeFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return IncomeFragment.observeViewModel$lambda$11(this.f$0, (TransactionUiState) obj);
            }
        }));
        getTransactionSummaryViewModel$income_release().uiState().observe(getViewLifecycleOwner(), new IncomeFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return IncomeFragment.observeViewModel$lambda$13(this.f$0, (TransactionUiState) obj);
            }
        }));
        getIncomeObserverUtil().setClearIncomeSearchText(new Function1() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return IncomeFragment.observeViewModel$lambda$14(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeViewModel$lambda$11(IncomeFragment this$0, TransactionUiState transactionUiState) {
        List<Transaction> transactions;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (transactionUiState instanceof TransactionUiState.LOADING) {
            if (this$0.currentPage == 1) {
                updateViewVisibility$income_release$default(this$0, true, false, 2, null);
            }
        } else if (transactionUiState instanceof TransactionUiState.SUCCESS) {
            TransactionUiState.SUCCESS success = (TransactionUiState.SUCCESS) transactionUiState;
            TransactionsResponseModel transactionsResponseModel = (TransactionsResponseModel) success.getData();
            List<Transaction> transactions2 = transactionsResponseModel != null ? transactionsResponseModel.getTransactions() : null;
            this$0.updateViewVisibility$income_release(false, (transactions2 == null || transactions2.isEmpty()) && this$0.currentPage == 1);
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
            this$0.updateViewVisibility$income_release(false, true);
            this$0.isFetching = false;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeViewModel$lambda$13(IncomeFragment this$0, TransactionUiState transactionUiState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (transactionUiState instanceof TransactionUiState.SUCCESS) {
            FragmentIncomeBinding binding = this$0.getBinding();
            if (binding != null) {
                TextViewBoldGreen16 textViewBoldGreen16 = binding.tvTotalCashIn;
                StringBuilder sb = new StringBuilder("₹ ");
                TransactionUiState.SUCCESS success = (TransactionUiState.SUCCESS) transactionUiState;
                TransactionSummaryResponseModel transactionSummaryResponseModel = (TransactionSummaryResponseModel) success.getData();
                textViewBoldGreen16.setText(sb.append(transactionSummaryResponseModel != null ? Double.valueOf(transactionSummaryResponseModel.getTotalCredit()) : 0).toString());
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
    public static final Unit observeViewModel$lambda$14(IncomeFragment this$0, boolean z) {
        FragmentIncomeBinding binding;
        EditText editText;
        Editable text;
        FragmentIncomeBinding binding2;
        EditText editText2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z && (binding = this$0.getBinding()) != null && (editText = binding.etSearchIncome) != null && (text = editText.getText()) != null && text.length() > 0 && (binding2 = this$0.getBinding()) != null && (editText2 = binding2.etSearchIncome) != null) {
            editText2.setText("");
        }
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void updateViewVisibility$income_release$default(IncomeFragment incomeFragment, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        incomeFragment.updateViewVisibility$income_release(z, z2);
    }

    public final void updateViewVisibility$income_release(boolean loading, boolean empty) {
        FragmentIncomeBinding binding = getBinding();
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
        FragmentIncomeBinding binding = getBinding();
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
        FragmentIncomeBinding binding = getBinding();
        if (binding != null) {
            TextViewBold16 tvAddFirstEntry = binding.tvAddFirstEntry;
            Intrinsics.checkNotNullExpressionValue(tvAddFirstEntry, "tvAddFirstEntry");
            ExtentionsKt.hide$default(tvAddFirstEntry, 0L, null, 3, null);
            ImageView ivArrow = binding.ivArrow;
            Intrinsics.checkNotNullExpressionValue(ivArrow, "ivArrow");
            ExtentionsKt.hide$default(ivArrow, 0L, null, 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadMoreData() {
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

    static /* synthetic */ void openTransactionDetails$default(IncomeFragment incomeFragment, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 32) != 0) {
            str6 = null;
        }
        incomeFragment.openTransactionDetails(str, str2, str3, str4, str5, str6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openTransactionDetails(String id, String transactionType, String date, String amount, String reason, String paymentMethod) {
        getIncomeObserverUtil().setOnIncomeAddedOrUpdated(new Function2() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return IncomeFragment.openTransactionDetails$lambda$19(this.f$0, (Transaction) obj, ((Boolean) obj2).booleanValue());
            }
        });
        getIncomeObserverUtil().setOnIncomeDeleted(new Function1() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return IncomeFragment.openTransactionDetails$lambda$20(this.f$0, (DeleteTransactionResponseModel) obj);
            }
        });
        getFragmentNavigator().start((BottomSheetDialogFragment) TransactionDetailsBottomSheetFragment.INSTANCE.newInstance(id, transactionType, date, amount, reason, paymentMethod));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openTransactionDetails$lambda$19(IncomeFragment this$0, Transaction expense, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(expense, "expense");
        if (z) {
            this$0.handleExpenseUpdate$income_release(expense);
        } else {
            this$0.handleExpenseAddition$income_release(expense);
        }
        this$0.updateViewVisibility$income_release(false, this$0.allTransactionItems.isEmpty());
        this$0.getTransactionSummaryViewModel$income_release().getTransactionSummary(String.valueOf(this$0.monthNumber), String.valueOf(this$0.currentYear));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openTransactionDetails$lambda$20(IncomeFragment this$0, DeleteTransactionResponseModel deleteTransaction) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(deleteTransaction, "deleteTransaction");
        this$0.handleExpenseDeletion$income_release(deleteTransaction.getId());
        this$0.updateViewVisibility$income_release(false, this$0.allTransactionItems.isEmpty());
        this$0.getTransactionSummaryViewModel$income_release().getTransactionSummary(String.valueOf(this$0.monthNumber), String.valueOf(this$0.currentYear));
        return Unit.INSTANCE;
    }

    static /* synthetic */ void openCashEntryBottomSheet$default(IncomeFragment incomeFragment, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 32) != 0) {
            str6 = null;
        }
        incomeFragment.openCashEntryBottomSheet(str, str2, str3, str4, str5, str6);
    }

    private final void openCashEntryBottomSheet(String id, String transactionType, String date, String amount, String reason, String paymentMethod) {
        getFragmentNavigator().start((BottomSheetDialogFragment) CashInOutBottomSheetFragment.INSTANCE.newInstance(id, transactionType, date, amount, reason, paymentMethod));
        getIncomeObserverUtil().setOnIncomeAddedOrUpdated(new Function2() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return IncomeFragment.openCashEntryBottomSheet$lambda$21(this.f$0, (Transaction) obj, ((Boolean) obj2).booleanValue());
            }
        });
        getIncomeObserverUtil().setOnIncomeDeleted(new Function1() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return IncomeFragment.openCashEntryBottomSheet$lambda$22(this.f$0, (DeleteTransactionResponseModel) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openCashEntryBottomSheet$lambda$21(IncomeFragment this$0, Transaction expense, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(expense, "expense");
        if (z) {
            this$0.handleExpenseUpdate$income_release(expense);
        } else {
            this$0.handleExpenseAddition$income_release(expense);
        }
        this$0.updateViewVisibility$income_release(false, this$0.allTransactionItems.isEmpty());
        this$0.getTransactionSummaryViewModel$income_release().getTransactionSummary(String.valueOf(this$0.monthNumber), String.valueOf(this$0.currentYear));
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new IncomeFragment$openCashEntryBottomSheet$1$1(this$0, expense, z, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openCashEntryBottomSheet$lambda$22(IncomeFragment this$0, DeleteTransactionResponseModel deleteTransaction) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(deleteTransaction, "deleteTransaction");
        this$0.handleExpenseDeletion$income_release(deleteTransaction.getId());
        this$0.updateViewVisibility$income_release(false, this$0.allTransactionItems.isEmpty());
        this$0.getTransactionSummaryViewModel$income_release().getTransactionSummary(String.valueOf(this$0.monthNumber), String.valueOf(this$0.currentYear));
        return Unit.INSTANCE;
    }

    public final void handleExpenseAddition$income_release(Transaction transaction) {
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        this.allTransactionItems.add(0, new TransactionItem.TransactionItemView(transaction));
        updateAdapterWithTransactions$default(this, false, 1, null);
        FragmentIncomeBinding binding = getBinding();
        if (binding == null || (recyclerView = binding.rvExpense) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                IncomeFragment.handleExpenseAddition$lambda$23(this.f$0);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleExpenseAddition$lambda$23(IncomeFragment this$0) {
        FragmentIncomeBinding binding;
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.isAdded() || this$0.getContext() == null || (binding = this$0.getBinding()) == null || (recyclerView = binding.rvExpense) == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(0);
    }

    public final void handleExpenseUpdate$income_release(Transaction transaction) {
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
            updateAdapterWithTransactions$default(this, false, 1, null);
            FragmentIncomeBinding binding = getBinding();
            if (binding == null || (recyclerView = binding.rvExpense) == null) {
                return;
            }
            recyclerView.postDelayed(new Runnable() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    IncomeFragment.handleExpenseUpdate$lambda$25(this.f$0, i);
                }
            }, 500L);
            return;
        }
        Logger.INSTANCE.m2678i("Expense with ID: " + transaction.getId() + " not found for update.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleExpenseUpdate$lambda$25(IncomeFragment this$0, int i) {
        FragmentIncomeBinding binding;
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.isAdded() || this$0.getContext() == null || (binding = this$0.getBinding()) == null || (recyclerView = binding.rvExpense) == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(i);
    }

    public final void handleExpenseDeletion$income_release(String expenseId) {
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
            updateAdapterWithTransactions$default(this, false, 1, null);
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
        monthYearChooserFragmentNewInstance.setOnSelectionCallback(new Function2() { // from class: com.rebuilt.app.income.screen.home.fragment.IncomeFragment$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return IncomeFragment.openMonthYearChooser$lambda$28(this.f$0, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        });
        monthYearChooserFragmentNewInstance.show(getParentFragmentManager(), "MonthYearChooserFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openMonthYearChooser$lambda$28(IncomeFragment this$0, int i, int i2) {
        TextViewBold12 textViewBold12;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.monthNumber = i + 1;
        this$0.currentYear = i2;
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(2, i);
        calendar.set(1, i2);
        this$0.monthName = calendar.getDisplayName(2, 2, Locale.getDefault());
        FragmentIncomeBinding binding = this$0.getBinding();
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
        getTransactionSummaryViewModel$income_release().getTransactionSummary(String.valueOf(this.monthNumber), String.valueOf(this.currentYear));
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

    /* JADX INFO: compiled from: IncomeFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/income/screen/home/fragment/IncomeFragment$Companion;", "", "<init>", "()V", "ARG_HIDE_HEADER", "", "newInstance", "Lcom/laborbook/income/screen/home/fragment/IncomeFragment;", "hideHeader", "", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final IncomeFragment newInstance() {
            return new IncomeFragment();
        }

        @JvmStatic
        public final IncomeFragment newInstance(boolean hideHeader) {
            IncomeFragment incomeFragment = new IncomeFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean(IncomeFragment.ARG_HIDE_HEADER, hideHeader);
            incomeFragment.setArguments(bundle);
            return incomeFragment;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.hideHeader = arguments != null ? arguments.getBoolean(ARG_HIDE_HEADER, false) : false;
    }
}

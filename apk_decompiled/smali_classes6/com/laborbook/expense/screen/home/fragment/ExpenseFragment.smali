.class public final Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "ExpenseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/expense/databinding/FragmentExpenseBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpenseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpenseFragment.kt\ncom/laborbook/expense/screen/home/fragment/ExpenseFragment\n+ 2 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 3 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,509:1\n35#2,6:510\n35#2,6:521\n50#3,5:516\n808#4,11:527\n1557#4:538\n1628#4,3:539\n774#4:542\n865#4,2:543\n808#4,11:545\n1557#4:556\n1628#4,3:557\n774#4:560\n865#4,2:561\n1863#4,2:563\n808#4,11:565\n360#4,7:576\n360#4,7:583\n*S KotlinDebug\n*F\n+ 1 ExpenseFragment.kt\ncom/laborbook/expense/screen/home/fragment/ExpenseFragment\n*L\n51#1:510,6\n63#1:521,6\n52#1:516,5\n135#1:527,11\n136#1:538\n136#1:539,3\n148#1:542\n148#1:543,2\n205#1:545,11\n206#1:556\n206#1:557,3\n207#1:560\n207#1:561,2\n321#1:563,2\n329#1:565,11\n400#1:576,7\n425#1:583,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 r2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001rB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u00102\u001a\u0004\u0018\u00010\u00022\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u001a\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u0008\u0010=\u001a\u00020:H\u0002J\u0008\u0010>\u001a\u00020:H\u0016J\u0008\u0010?\u001a\u00020:H\u0002J\u0012\u0010@\u001a\u00020:2\u0008\u0008\u0002\u0010A\u001a\u00020\u0019H\u0002J\u0010\u0010B\u001a\u00020:2\u0006\u0010C\u001a\u00020\u0015H\u0002J\u0008\u0010D\u001a\u00020:H\u0002J\u0008\u0010E\u001a\u00020:H\u0002J\u0008\u0010F\u001a\u00020:H\u0002J\u0008\u0010G\u001a\u00020:H\u0002J\u0008\u0010H\u001a\u00020:H\u0002J\u0008\u0010I\u001a\u00020:H\u0002J\u0008\u0010J\u001a\u00020:H\u0002J!\u0010K\u001a\u00020:2\u0008\u0008\u0002\u0010L\u001a\u00020\u00192\u0008\u0008\u0002\u0010M\u001a\u00020\u0019H\u0000\u00a2\u0006\u0002\u0008NJ\u0008\u0010O\u001a\u00020:H\u0002J\u0008\u0010P\u001a\u00020:H\u0002J\u0008\u0010Q\u001a\u00020:H\u0002J\u0016\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u001c0S2\u0006\u0010T\u001a\u00020UH\u0002J\u0016\u0010V\u001a\u00020:2\u000c\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\u001c0SH\u0002J<\u0010X\u001a\u00020:2\u0006\u0010Y\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020\u00152\u0006\u0010[\u001a\u00020\u00152\u0006\u0010\\\u001a\u00020\u00152\u0006\u0010]\u001a\u00020\u00152\n\u0008\u0002\u0010^\u001a\u0004\u0018\u00010\u0015H\u0002J<\u0010_\u001a\u00020:2\u0006\u0010Y\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020\u00152\u0006\u0010[\u001a\u00020\u00152\u0006\u0010\\\u001a\u00020\u00152\u0006\u0010]\u001a\u00020\u00152\n\u0008\u0002\u0010^\u001a\u0004\u0018\u00010\u0015H\u0002J\u0015\u0010`\u001a\u00020:2\u0006\u0010a\u001a\u00020bH\u0000\u00a2\u0006\u0002\u0008cJ\u0015\u0010d\u001a\u00020:2\u0006\u0010a\u001a\u00020bH\u0000\u00a2\u0006\u0002\u0008eJ\u0015\u0010f\u001a\u00020:2\u0006\u0010g\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008hJ\u0008\u0010i\u001a\u00020:H\u0002J\u0008\u0010j\u001a\u00020:H\u0002J\u0008\u0010k\u001a\u00020\u0015H\u0002J\u0008\u0010l\u001a\u00020:H\u0002J\u0016\u0010m\u001a\u00020:2\u0006\u0010n\u001a\u00020\u00172\u0006\u0010o\u001a\u00020\u0017J\u0012\u0010q\u001a\u00020:2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u000e\u0010$\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010!\"\u0004\u0008(\u0010#R\u000e\u0010)\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010*\u001a\u00020+8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\u000c\u001a\u0004\u0008,\u0010-R\u0014\u0010/\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u000e\u0010p\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006s"
    }
    d2 = {
        "Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/expense/databinding/FragmentExpenseBinding;",
        "<init>",
        "()V",
        "calendar",
        "Ljava/util/Calendar;",
        "viewModel",
        "Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;",
        "getViewModel",
        "()Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "expenseObserverUtil",
        "Lcom/laborbook/expense/util/ExpenseObserverUtil;",
        "getExpenseObserverUtil",
        "()Lcom/laborbook/expense/util/ExpenseObserverUtil;",
        "expenseObserverUtil$delegate",
        "expenseAdapter",
        "Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;",
        "adUnitId",
        "",
        "currentPage",
        "",
        "isLastPage",
        "",
        "allTransactionItems",
        "",
        "Lcom/laborbook/expense/model/TransactionItem;",
        "getAllTransactionItems$expense_release",
        "()Ljava/util/List;",
        "currentYear",
        "getCurrentYear$expense_release",
        "()I",
        "setCurrentYear$expense_release",
        "(I)V",
        "currentDate",
        "monthName",
        "monthNumber",
        "getMonthNumber$expense_release",
        "setMonthNumber$expense_release",
        "isFetching",
        "transactionSummaryViewModel",
        "Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;",
        "getTransactionSummaryViewModel$expense_release",
        "()Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;",
        "transactionSummaryViewModel$delegate",
        "screenName",
        "getScreenName",
        "()Ljava/lang/String;",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "observeProStatusChanges",
        "onDestroyView",
        "setupSearchListener",
        "updateAdapterWithTransactions",
        "forceRefreshAds",
        "filterItems",
        "query",
        "loadInitialData",
        "resetData",
        "setupView",
        "setClickListeners",
        "openReportsFragment",
        "setupRecyclerView",
        "observeViewModel",
        "updateViewVisibility",
        "loading",
        "empty",
        "updateViewVisibility$expense_release",
        "showEmptyStateViews",
        "hideEmptyStateViews",
        "loadMoreData",
        "groupExpensesByDate",
        "",
        "response",
        "Lcom/laborbook/expense/model/TransactionsResponseModel;",
        "appendNewItems",
        "newItems",
        "openTransactionDetails",
        "id",
        "transactionType",
        "date",
        "amount",
        "reason",
        "paymentMethod",
        "openCashEntryBottomSheet",
        "handleExpenseAddition",
        "transaction",
        "Lcom/laborbook/expense/model/Transaction;",
        "handleExpenseAddition$expense_release",
        "handleExpenseUpdate",
        "handleExpenseUpdate$expense_release",
        "handleExpenseDeletion",
        "expenseId",
        "handleExpenseDeletion$expense_release",
        "getCurrentDateInfo",
        "openMonthYearChooser",
        "getFormattedMonthYear",
        "changeMonthAndGetExpenses",
        "changeMonth",
        "selectedMonth",
        "selectedYear",
        "hideHeader",
        "onCreate",
        "Companion",
        "expense_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ARG_HIDE_HEADER:Ljava/lang/String; = "hide_header"

.field public static final Companion:Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;


# instance fields
.field private final adUnitId:Ljava/lang/String;

.field private final allTransactionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/expense/model/TransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field private calendar:Ljava/util/Calendar;

.field private currentDate:I

.field private currentPage:I

.field private currentYear:I

.field private expenseAdapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

.field private final expenseObserverUtil$delegate:Lkotlin/Lazy;

.field private hideHeader:Z

.field private isFetching:Z

.field private isLastPage:Z

.field private monthName:Ljava/lang/String;

.field private monthNumber:I

.field private final transactionSummaryViewModel$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$3-ocF5iRBFm4987Hmp4AC2OpIYY(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/databinding/FragmentExpenseBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->setClickListeners$lambda$6$lambda$4(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/databinding/FragmentExpenseBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$98CTFMY1E8KBAyDPVnisws-b9cw(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openTransactionDetails$lambda$19(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BKL2NZmxUdqfU3rZmQGgTHQ0Njg(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->observeViewModel$lambda$13(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CEYfjfZO1NmRnsWBEt-C_zBk4N0(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openTransactionDetails$lambda$20(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/DeleteTransactionResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OizVtlb4-4-BjObqXRUJD3RYrHw(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->setupRecyclerView$lambda$10(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TxaxrsG8qMBkhFpkqo_zNiuxluo(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->observeViewModel$lambda$14(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V12omb90BfZrYl9uxA0NyeX2hOc(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openCashEntryBottomSheet$lambda$22(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/DeleteTransactionResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WvzFlA8R0yzdtjxnGQGdGuz-Ug8(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->setClickListeners$lambda$6$lambda$5(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZA3gJKavtpkESmrBThLpQiLKxxA(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openCashEntryBottomSheet$lambda$21(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_R4otJDReY8RnrKINcbD2s8gt8Y(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->handleExpenseAddition$lambda$23(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eG2I_VTuiYRhz9eOmWm1qYLgT5k(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->setupRecyclerView$lambda$9(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tVvt1m_JU-TlWuRaxC-y5YPJubk(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;II)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openMonthYearChooser$lambda$28(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u3eQdl4jZYcIMgOAvCNHHunHhgo(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->setClickListeners$lambda$6$lambda$3(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v4nXANijMHY61-9SAmHVcH3qWuk(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->observeViewModel$lambda$11(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y7gtVNrsRr8oa2O--9qyhc-QaVQ(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->handleExpenseUpdate$lambda$25(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->Companion:Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 48
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    .line 51
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 512
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 515
    new-instance v2, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$special$$inlined$viewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 52
    move-object v1, p0

    check-cast v1, Landroid/content/ComponentCallbacks;

    .line 518
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 520
    new-instance v4, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$special$$inlined$inject$default$1;

    invoke-direct {v4, v1, v3, v3}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v4}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseObserverUtil$delegate:Lkotlin/Lazy;

    .line 54
    const-string v1, "ca-app-pub-4991346658410627/8368376961"

    iput-object v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->adUnitId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 55
    iput v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentPage:I

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    const/16 v2, 0x7e8

    .line 58
    iput v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    .line 59
    iput v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentDate:I

    .line 60
    const-string v2, "Jan"

    iput-object v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthName:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    .line 523
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 526
    new-instance v2, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$special$$inlined$viewModel$default$2;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$special$$inlined$viewModel$default$2;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->transactionSummaryViewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$filterItems(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->filterItems(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getExpenseAdapter$p(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseAdapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    return-object p0
.end method

.method private final appendNewItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/laborbook/expense/model/TransactionItem;",
            ">;)V"
        }
    .end annotation

    .line 329
    check-cast p1, Ljava/lang/Iterable;

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 574
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 575
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 330
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 333
    invoke-static {p0, v1, p1, v0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateAdapterWithTransactions$default(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method private final changeMonthAndGetExpenses()V
    .locals 4

    .line 466
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->resetData()V

    .line 467
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getTransactionSummaryViewModel$expense_release()Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object v0

    .line 468
    iget v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 469
    iget v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-virtual {v0, v1, v2}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getViewModel()Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;

    move-result-object v0

    .line 472
    iget v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    iget v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 474
    iget v3, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentPage:I

    .line 471
    invoke-virtual {v0, v1, v2, v3}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;->getTransactions(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final filterItems(Ljava/lang/String;)V
    .locals 8

    .line 143
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 145
    invoke-static {p0, v2, p1, v1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateAdapterWithTransactions$default(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;ZILjava/lang/Object;)V

    goto :goto_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 542
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 543
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/laborbook/expense/model/TransactionItem;

    .line 149
    instance-of v6, v5, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    invoke-virtual {v5}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/laborbook/expense/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    .line 150
    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    invoke-static {v5, v6, v2, v7, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 543
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    :cond_2
    check-cast v3, Ljava/util/List;

    .line 152
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseAdapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->submitList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method private final getCurrentDateInfo()V
    .locals 6

    .line 437
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    .line 438
    const-string v2, "calendar"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    .line 439
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v3, v3, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthName:Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    .line 441
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentDate:I

    return-void
.end method

.method private final getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseObserverUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/util/ExpenseObserverUtil;

    return-object v0
.end method

.method private final getFormattedMonthYear()Ljava/lang/String;
    .locals 3

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;

    return-object v0
.end method

.method private final groupExpensesByDate(Lcom/laborbook/expense/model/TransactionsResponseModel;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/expense/model/TransactionsResponseModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/laborbook/expense/model/TransactionItem;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 321
    invoke-virtual {p1}, Lcom/laborbook/expense/model/TransactionsResponseModel;->getTransactions()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 563
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laborbook/expense/model/Transaction;

    .line 322
    new-instance v2, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    invoke-direct {v2, v1}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;-><init>(Lcom/laborbook/expense/model/Transaction;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final handleExpenseAddition$lambda$23(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private static final handleExpenseUpdate$lambda$25(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private final hideEmptyStateViews()V
    .locals 9

    .line 305
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz v0, :cond_0

    .line 306
    iget-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvAddFirstEntry:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    const-string v2, "tvAddFirstEntry"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 307
    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->ivArrow:Landroid/widget/ImageView;

    const-string v1, "ivArrow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final loadInitialData()V
    .locals 4

    .line 159
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->resetData()V

    .line 160
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getViewModel()Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;

    move-result-object v0

    iget v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentPage:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;->getTransactions(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getTransactionSummaryViewModel$expense_release()Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object v0

    iget v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final loadMoreData()V
    .locals 4

    .line 312
    iget-boolean v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isLastPage:Z

    if-nez v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getViewModel()Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;

    move-result-object v0

    iget v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentPage:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;->getTransactions(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static final newInstance()Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->Companion:Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;->newInstance()Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;

    move-result-object v0

    return-object v0
.end method

.method public static final newInstance(Z)Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->Companion:Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;->newInstance(Z)Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;

    move-result-object p0

    return-object p0
.end method

.method private final observeProStatusChanges()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v0

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$observeProStatusChanges$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$observeProStatusChanges$1;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 107
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final observeViewModel()V
    .locals 4

    .line 239
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getViewModel()Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda14;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    new-instance v3, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 262
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getTransactionSummaryViewModel$expense_release()Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    new-instance v3, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 275
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;

    move-result-object v0

    new-instance v1, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/expense/util/ExpenseObserverUtil;->setClearExpenseSearchText(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final observeViewModel$lambda$11(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    instance-of v0, p1, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$LOADING;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentPage:I

    if-ne p1, v3, :cond_5

    const/4 p1, 0x2

    invoke-static {p0, v3, v2, p1, v1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateViewVisibility$expense_release$default(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;ZZILjava/lang/Object;)V

    goto :goto_1

    .line 242
    :cond_0
    instance-of v0, p1, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$SUCCESS;

    if-eqz v0, :cond_4

    .line 243
    check-cast p1, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$SUCCESS;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/model/TransactionsResponseModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/laborbook/expense/model/TransactionsResponseModel;->getTransactions()Ljava/util/List;

    move-result-object v1

    :cond_1
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentPage:I

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateViewVisibility$expense_release(ZZ)V

    .line 244
    iput-boolean v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isFetching:Z

    .line 245
    invoke-virtual {p1}, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/model/TransactionsResponseModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/laborbook/expense/model/TransactionsResponseModel;->getTransactions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    .line 246
    invoke-virtual {p1}, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/model/TransactionsResponseModel;

    invoke-direct {p0, v0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->groupExpensesByDate(Lcom/laborbook/expense/model/TransactionsResponseModel;)Ljava/util/List;

    move-result-object v0

    .line 247
    invoke-direct {p0, v0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->appendNewItems(Ljava/util/List;)V

    .line 248
    invoke-virtual {p1}, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/model/TransactionsResponseModel;

    invoke-virtual {p1}, Lcom/laborbook/expense/model/TransactionsResponseModel;->isLastPage()Z

    move-result p1

    iput-boolean p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isLastPage:Z

    .line 250
    iget p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentPage:I

    if-ne p1, v3, :cond_5

    .line 251
    invoke-direct {p0, v3}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateAdapterWithTransactions(Z)V

    goto :goto_1

    .line 255
    :cond_4
    instance-of p1, p1, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$ERROR;

    if-eqz p1, :cond_6

    .line 256
    invoke-virtual {p0, v2, v3}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateViewVisibility$expense_release(ZZ)V

    .line 257
    iput-boolean v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isFetching:Z

    .line 260
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 240
    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final observeViewModel$lambda$13(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    instance-of v0, p1, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$SUCCESS;

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz p0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvTotalCashOut:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u20b9 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$SUCCESS;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laborbook/expense/model/TransactionSummaryResponseModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/laborbook/expense/model/TransactionSummaryResponseModel;->getTotalDebit()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object p0, p0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvTotalEntries:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/model/TransactionSummaryResponseModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/laborbook/expense/model/TransactionSummaryResponseModel;->getTotalEntriesCount()I

    move-result v3

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 270
    :cond_2
    instance-of p0, p1, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$LOADING;

    if-nez p0, :cond_4

    .line 271
    instance-of p0, p1, Lcom/laborbook/expense/screen/home/uistate/TransactionUiState$ERROR;

    if-eqz p0, :cond_3

    goto :goto_1

    .line 263
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 273
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final observeViewModel$lambda$14(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Z)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->etSearchExpense:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->etSearchExpense:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    const-string p1, ""

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openCashEntryBottomSheet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 358
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    sget-object v1, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;->Companion:Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {v0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 359
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;

    move-result-object p1

    new-instance p2, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    invoke-virtual {p1, p2}, Lcom/laborbook/expense/util/ExpenseObserverUtil;->setOnExpenseAddedOrUpdated(Lkotlin/jvm/functions/Function2;)V

    .line 372
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;

    move-result-object p1

    new-instance p2, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda6;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    invoke-virtual {p1, p2}, Lcom/laborbook/expense/util/ExpenseObserverUtil;->setOnExpenseDeleted(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static synthetic openCashEntryBottomSheet$default(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 357
    invoke-direct/range {v0 .. v6}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openCashEntryBottomSheet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final openCashEntryBottomSheet$lambda$21(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expense"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->handleExpenseUpdate$expense_release(Lcom/laborbook/expense/model/Transaction;)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->handleExpenseAddition$expense_release(Lcom/laborbook/expense/model/Transaction;)V

    .line 365
    :goto_0
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateViewVisibility$expense_release(ZZ)V

    .line 366
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getTransactionSummaryViewModel$expense_release()Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object v0

    iget v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$openCashEntryBottomSheet$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$openCashEntryBottomSheet$1$1;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 371
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openCashEntryBottomSheet$lambda$22(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteTransaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lcom/laborbook/expense/model/DeleteTransactionResponseModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->handleExpenseDeletion$expense_release(Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateViewVisibility$expense_release(ZZ)V

    .line 375
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getTransactionSummaryViewModel$expense_release()Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object p1

    iget v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openMonthYearChooser()V
    .locals 3

    .line 445
    sget-object v0, Lcom/laborbook/expense/screen/monthchooser/MonthYearChooserFragment;->Companion:Lcom/laborbook/expense/screen/monthchooser/MonthYearChooserFragment$Companion;

    iget v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/expense/screen/monthchooser/MonthYearChooserFragment$Companion;->newInstance(II)Lcom/laborbook/expense/screen/monthchooser/MonthYearChooserFragment;

    move-result-object v0

    .line 446
    new-instance v1, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda8;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/expense/screen/monthchooser/MonthYearChooserFragment;->setOnSelectionCallback(Lkotlin/jvm/functions/Function2;)V

    .line 458
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "MonthYearChooserFragment"

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/expense/screen/monthchooser/MonthYearChooserFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final openMonthYearChooser$lambda$28(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;II)Lkotlin/Unit;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x1

    .line 447
    iput v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    .line 448
    iput p2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    .line 449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x2

    .line 451
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x1

    .line 452
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 453
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, v1, v1, p1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 449
    iput-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthName:Ljava/lang/String;

    .line 455
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getFormattedMonthYear()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setText(Ljava/lang/CharSequence;)V

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->changeMonthAndGetExpenses()V

    .line 457
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openReportsFragment()V
    .locals 6

    .line 204
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 554
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 545
    check-cast v1, Ljava/lang/Iterable;

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 557
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 558
    check-cast v2, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    .line 206
    invoke-virtual {v2}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v2

    .line 558
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 559
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 556
    check-cast v0, Ljava/lang/Iterable;

    .line 560
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 561
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "DEBIT"

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/laborbook/expense/model/Transaction;

    .line 207
    invoke-virtual {v4}, Lcom/laborbook/expense/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 561
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 562
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v1

    .line 211
    sget-object v2, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->Companion:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$Companion;

    .line 214
    iget v4, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    .line 215
    iget v5, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    .line 211
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$Companion;->newInstance(Ljava/util/ArrayList;Ljava/lang/String;II)Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 210
    invoke-virtual {v1, v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private final openTransactionDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 339
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;

    move-result-object v0

    new-instance v1, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/expense/util/ExpenseObserverUtil;->setOnExpenseAddedOrUpdated(Lkotlin/jvm/functions/Function2;)V

    .line 348
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;

    move-result-object v0

    new-instance v1, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/expense/util/ExpenseObserverUtil;->setOnExpenseDeleted(Lkotlin/jvm/functions/Function1;)V

    .line 354
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    sget-object v1, Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment;->Companion:Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {v0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    return-void
.end method

.method static synthetic openTransactionDetails$default(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 336
    invoke-direct/range {v0 .. v6}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openTransactionDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final openTransactionDetails$lambda$19(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expense"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->handleExpenseUpdate$expense_release(Lcom/laborbook/expense/model/Transaction;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->handleExpenseAddition$expense_release(Lcom/laborbook/expense/model/Transaction;)V

    .line 345
    :goto_0
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateViewVisibility$expense_release(ZZ)V

    .line 346
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getTransactionSummaryViewModel$expense_release()Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object p1

    iget p2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openTransactionDetails$lambda$20(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteTransaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lcom/laborbook/expense/model/DeleteTransactionResponseModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->handleExpenseDeletion$expense_release(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateViewVisibility$expense_release(ZZ)V

    .line 351
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getTransactionSummaryViewModel$expense_release()Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object p1

    iget v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final resetData()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 167
    iput v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentPage:I

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isLastPage:Z

    .line 169
    iput-boolean v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isFetching:Z

    .line 170
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->etSearchExpense:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final setClickListeners()V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz v0, :cond_0

    .line 186
    iget-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->btnCashOut:Lcom/boilerplate/uikit/views/buttons/RoundedRedButton;

    new-instance v2, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda9;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/RoundedRedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    new-instance v2, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda10;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/databinding/FragmentExpenseBinding;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvViewReports:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    new-instance v1, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda11;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final setClickListeners$lambda$6$lambda$3(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Landroid/view/View;)V
    .locals 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-object p1, Lcom/laborbook/expense/util/Utils;->Companion:Lcom/laborbook/expense/util/Utils$Companion;

    invoke-virtual {p1}, Lcom/laborbook/expense/util/Utils$Companion;->getCurrentTimeInISOFormat()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x20

    const/4 v8, 0x0

    const-string v1, ""

    const-string v2, "DEBIT"

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openCashEntryBottomSheet$default(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 188
    new-array p1, p1, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    const-string v1, "expense_type"

    const-string v2, "DEBIT"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "cash_out"

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private static final setClickListeners$lambda$6$lambda$4(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/databinding/FragmentExpenseBinding;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openMonthYearChooser()V

    const/4 p2, 0x1

    .line 193
    new-array p2, p2, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    invoke-virtual {p1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "current_month"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v0, p2, p1

    invoke-static {p2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "change_expense_month"

    invoke-virtual {p0, p2, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private static final setClickListeners$lambda$6$lambda$5(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openReportsFragment()V

    .line 198
    check-cast p0, Lcom/laborbook/base/BaseFragment;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "view_reports"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupRecyclerView()V
    .locals 4

    .line 221
    new-instance v0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    new-instance v1, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda12;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    new-instance v2, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda13;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    .line 232
    iget-object v3, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->adUnitId:Ljava/lang/String;

    .line 221
    invoke-direct {v0, v1, v2, v3}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseAdapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    .line 235
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseAdapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method private static final setupRecyclerView$lambda$10(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-boolean v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isLastPage:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isFetching:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->isFetching:Z

    .line 229
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->loadMoreData()V

    .line 231
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setupRecyclerView$lambda$9(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;I)Lkotlin/Unit;
    .locals 7

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "transaction"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getPaymentMethod()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->openTransactionDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 224
    new-array p2, p2, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    const-string v1, "expense_type"

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v0, p2, p1

    invoke-static {p2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "view_expense"

    invoke-virtual {p0, p2, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 225
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setupSearchListener()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->etSearchExpense:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$setupSearchListener$1;

    invoke-direct {v1, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$setupSearchListener$1;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private final setupView()V
    .locals 4

    .line 174
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz v0, :cond_2

    .line 175
    iget-boolean v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->hideHeader:Z

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvExpense:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;->setVisibility(I)V

    .line 177
    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    invoke-virtual {v0, v2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setVisibility(I)V

    goto :goto_1

    .line 179
    :cond_0
    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthName:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final showEmptyStateViews()V
    .locals 9

    .line 298
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz v0, :cond_0

    .line 299
    iget-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->tvAddFirstEntry:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    const-string v2, "tvAddFirstEntry"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 300
    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->ivArrow:Landroid/widget/ImageView;

    const-string v1, "ivArrow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final updateAdapterWithTransactions(Z)V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 536
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 527
    check-cast v1, Ljava/lang/Iterable;

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 539
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 540
    check-cast v2, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    .line 136
    invoke-virtual {v2}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v2

    .line 540
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 541
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 137
    iget-object v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseAdapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->submitOriginalList(Ljava/util/List;Z)V

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseAdapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->submitList(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method static synthetic updateAdapterWithTransactions$default(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateAdapterWithTransactions(Z)V

    return-void
.end method

.method public static synthetic updateViewVisibility$expense_release$default(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 282
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateViewVisibility$expense_release(ZZ)V

    return-void
.end method


# virtual methods
.method public final changeMonth(II)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 479
    iput v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    .line 480
    iput p2, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    .line 481
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x2

    .line 483
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x1

    .line 484
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 485
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, v1, v1, p1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 481
    iput-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthName:Ljava/lang/String;

    .line 486
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->changeMonthAndGetExpenses()V

    return-void
.end method

.method public final getAllTransactionItems$expense_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/laborbook/expense/model/TransactionItem;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    return-object v0
.end method

.method public final getCurrentYear$expense_release()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    return v0
.end method

.method public final getMonthNumber$expense_release()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    return v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "expense"

    return-object v0
.end method

.method public final getTransactionSummaryViewModel$expense_release()Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->transactionSummaryViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/expense/databinding/FragmentExpenseBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 73
    invoke-static {p1, p2, p3}, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    move-result-object p1

    return-object p1
.end method

.method public final handleExpenseAddition$expense_release(Lcom/laborbook/expense/model/Transaction;)V
    .locals 3

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    new-instance v0, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    invoke-direct {v0, p1}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;-><init>(Lcom/laborbook/expense/model/Transaction;)V

    .line 383
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 386
    invoke-static {p0, v1, p1, v0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->updateAdapterWithTransactions$default(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;ZILjava/lang/Object;)V

    .line 389
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda7;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final handleExpenseDeletion$expense_release(Ljava/lang/String;)V
    .locals 5

    const-string v0, "expenseId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    .line 584
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 585
    check-cast v2, Lcom/laborbook/expense/model/TransactionItem;

    .line 425
    instance-of v4, v2, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    if-eqz v4, :cond_0

    check-cast v2, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    invoke-virtual {v2}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laborbook/expense/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-eq v1, v3, :cond_2

    .line 429
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 432
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseAdapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->submitList(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final handleExpenseUpdate$expense_release(Lcom/laborbook/expense/model/Transaction;)V
    .locals 6

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    new-instance v0, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    invoke-direct {v0, p1}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;-><init>(Lcom/laborbook/expense/model/Transaction;)V

    .line 400
    iget-object v1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    .line 577
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 578
    check-cast v3, Lcom/laborbook/expense/model/TransactionItem;

    .line 401
    instance-of v5, v3, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    if-eqz v5, :cond_0

    check-cast v3, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    invoke-virtual {v3}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/laborbook/expense/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-eq v2, v4, :cond_3

    .line 406
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseAdapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->submitList(Ljava/util/List;)V

    .line 412
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 419
    :cond_3
    sget-object v0, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expense with ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not found for update."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/laborbook/base/Logger;->i(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 506
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 507
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "hide_header"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->hideHeader:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/laborbook/base/BaseFragment;->onDestroyView()V

    .line 112
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->expenseAdapter:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->releaseAds()V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getViewModel()Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionsViewModel;->clearState()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$onViewCreated$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$onViewCreated$1;-><init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 84
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getCurrentDateInfo()V

    .line 85
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->setClickListeners()V

    .line 86
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->setupView()V

    .line 87
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->setupRecyclerView()V

    .line 88
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->observeViewModel()V

    .line 89
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->loadInitialData()V

    .line 90
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->setupSearchListener()V

    .line 93
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->observeProStatusChanges()V

    return-void
.end method

.method public final setCurrentYear$expense_release(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->currentYear:I

    return-void
.end method

.method public final setMonthNumber$expense_release(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->monthNumber:I

    return-void
.end method

.method public final updateViewVisibility$expense_release(ZZ)V
    .locals 5

    .line 283
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;

    if-eqz v0, :cond_8

    .line 284
    iget-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    iget-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 286
    iget-object v1, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->llTableHeader:Landroid/widget/LinearLayout;

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentExpenseBinding;->dividerHeader:Landroid/view/View;

    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_7

    .line 290
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->showEmptyStateViews()V

    goto :goto_5

    .line 292
    :cond_7
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->hideEmptyStateViews()V

    :cond_8
    :goto_5
    return-void
.end method

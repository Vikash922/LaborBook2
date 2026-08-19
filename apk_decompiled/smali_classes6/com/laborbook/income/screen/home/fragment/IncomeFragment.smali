.class public final Lcom/laborbook/income/screen/home/fragment/IncomeFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "IncomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/income/screen/home/fragment/IncomeFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/income/databinding/FragmentIncomeBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomeFragment.kt\ncom/laborbook/income/screen/home/fragment/IncomeFragment\n+ 2 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 3 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,677:1\n35#2,6:678\n35#2,6:689\n50#3,5:684\n808#4,11:695\n1557#4:706\n1628#4,3:707\n774#4:710\n865#4,2:711\n1863#4,2:713\n808#4,11:715\n360#4,7:726\n360#4,7:733\n*S KotlinDebug\n*F\n+ 1 IncomeFragment.kt\ncom/laborbook/income/screen/home/fragment/IncomeFragment\n*L\n53#1:678,6\n65#1:689,6\n54#1:684,5\n138#1:695,11\n139#1:706\n139#1:707,3\n151#1:710\n151#1:711,2\n438#1:713,2\n446#1:715,11\n567#1:726,7\n593#1:733,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 v2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001vB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u00102\u001a\u0004\u0018\u00010\u00022\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u001a\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u0008\u0010=\u001a\u00020:H\u0002J\u0008\u0010>\u001a\u00020:H\u0016J\u0008\u0010?\u001a\u00020:H\u0002J\u0012\u0010@\u001a\u00020:2\u0008\u0008\u0002\u0010A\u001a\u00020\u0019H\u0002J\u0010\u0010B\u001a\u00020:2\u0006\u0010C\u001a\u00020\u0015H\u0002J\u0008\u0010D\u001a\u00020:H\u0002J\u0008\u0010E\u001a\u00020:H\u0002J\u0008\u0010F\u001a\u00020:H\u0002J\u0008\u0010G\u001a\u00020:H\u0002J\u0008\u0010H\u001a\u00020:H\u0002J\u0008\u0010I\u001a\u00020:H\u0002J\u0008\u0010J\u001a\u00020:H\u0002J\u0008\u0010K\u001a\u00020:H\u0002J\u0010\u0010L\u001a\u00020:2\u0006\u0010M\u001a\u00020\u0019H\u0002J\u0008\u0010N\u001a\u00020:H\u0002J!\u0010O\u001a\u00020:2\u0008\u0008\u0002\u0010P\u001a\u00020\u00192\u0008\u0008\u0002\u0010Q\u001a\u00020\u0019H\u0000\u00a2\u0006\u0002\u0008RJ\u0008\u0010S\u001a\u00020:H\u0002J\u0008\u0010T\u001a\u00020:H\u0002J\u0008\u0010U\u001a\u00020:H\u0002J\u0016\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u001c0W2\u0006\u0010X\u001a\u00020YH\u0002J\u0016\u0010Z\u001a\u00020:2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u001c0WH\u0002J<\u0010\\\u001a\u00020:2\u0006\u0010]\u001a\u00020\u00152\u0006\u0010^\u001a\u00020\u00152\u0006\u0010_\u001a\u00020\u00152\u0006\u0010`\u001a\u00020\u00152\u0006\u0010a\u001a\u00020\u00152\n\u0008\u0002\u0010b\u001a\u0004\u0018\u00010\u0015H\u0002J<\u0010c\u001a\u00020:2\u0006\u0010]\u001a\u00020\u00152\u0006\u0010^\u001a\u00020\u00152\u0006\u0010_\u001a\u00020\u00152\u0006\u0010`\u001a\u00020\u00152\u0006\u0010a\u001a\u00020\u00152\n\u0008\u0002\u0010b\u001a\u0004\u0018\u00010\u0015H\u0002J\u0015\u0010d\u001a\u00020:2\u0006\u0010e\u001a\u00020fH\u0000\u00a2\u0006\u0002\u0008gJ\u0015\u0010h\u001a\u00020:2\u0006\u0010e\u001a\u00020fH\u0000\u00a2\u0006\u0002\u0008iJ\u0015\u0010j\u001a\u00020:2\u0006\u0010k\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008lJ\u0008\u0010m\u001a\u00020:H\u0002J\u0008\u0010n\u001a\u00020:H\u0002J\u0008\u0010o\u001a\u00020\u0015H\u0002J\u0008\u0010p\u001a\u00020:H\u0002J\u0016\u0010q\u001a\u00020:2\u0006\u0010r\u001a\u00020\u00172\u0006\u0010s\u001a\u00020\u0017J\u0012\u0010u\u001a\u00020:2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u000e\u0010$\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010!\"\u0004\u0008(\u0010#R\u000e\u0010)\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010*\u001a\u00020+8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\u000c\u001a\u0004\u0008,\u0010-R\u0014\u0010/\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u000e\u0010t\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006w"
    }
    d2 = {
        "Lcom/laborbook/income/screen/home/fragment/IncomeFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/income/databinding/FragmentIncomeBinding;",
        "<init>",
        "()V",
        "calendar",
        "Ljava/util/Calendar;",
        "viewModel",
        "Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;",
        "getViewModel",
        "()Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "incomeObserverUtil",
        "Lcom/laborbook/income/util/IncomeObserverUtil;",
        "getIncomeObserverUtil",
        "()Lcom/laborbook/income/util/IncomeObserverUtil;",
        "incomeObserverUtil$delegate",
        "expenseAdapter",
        "Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;",
        "adUnitId",
        "",
        "currentPage",
        "",
        "isLastPage",
        "",
        "allTransactionItems",
        "",
        "Lcom/laborbook/income/model/TransactionItem;",
        "getAllTransactionItems$income_release",
        "()Ljava/util/List;",
        "currentYear",
        "getCurrentYear$income_release",
        "()I",
        "setCurrentYear$income_release",
        "(I)V",
        "currentDate",
        "monthName",
        "monthNumber",
        "getMonthNumber$income_release",
        "setMonthNumber$income_release",
        "isFetching",
        "transactionSummaryViewModel",
        "Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;",
        "getTransactionSummaryViewModel$income_release",
        "()Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;",
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
        "togglePrivacyMode",
        "setupRecyclerView",
        "setupPrivacyMode",
        "updatePrivacyModeUI",
        "isPrivacyModeEnabled",
        "observeViewModel",
        "updateViewVisibility",
        "loading",
        "empty",
        "updateViewVisibility$income_release",
        "showEmptyStateViews",
        "hideEmptyStateViews",
        "loadMoreData",
        "groupExpensesByDate",
        "",
        "response",
        "Lcom/laborbook/income/model/TransactionsResponseModel;",
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
        "Lcom/laborbook/income/model/Transaction;",
        "handleExpenseAddition$income_release",
        "handleExpenseUpdate",
        "handleExpenseUpdate$income_release",
        "handleExpenseDeletion",
        "expenseId",
        "handleExpenseDeletion$income_release",
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
        "income_release"
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

.field public static final Companion:Lcom/laborbook/income/screen/home/fragment/IncomeFragment$Companion;


# instance fields
.field private final adUnitId:Ljava/lang/String;

.field private final allTransactionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/income/model/TransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field private calendar:Ljava/util/Calendar;

.field private currentDate:I

.field private currentPage:I

.field private currentYear:I

.field private expenseAdapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

.field private hideHeader:Z

.field private final incomeObserverUtil$delegate:Lkotlin/Lazy;

.field private isFetching:Z

.field private isLastPage:Z

.field private monthName:Ljava/lang/String;

.field private monthNumber:I

.field private final transactionSummaryViewModel$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2uogs4g9qxvpDCpsVFQOzL5wZzU(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openCashEntryBottomSheet$lambda$22(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6q8ojhANX_NtyXlgq7wbsi--PYw(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->observeViewModel$lambda$11(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6z6H0TwMVoYG49GpTTshnMSB2DI(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openCashEntryBottomSheet$lambda$21(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MN6Fxbef8vt7dr9Sx47q9fAL5TM(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openTransactionDetails$lambda$19(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O4O0nOQn_VIOMlXkfPaDeCGR_DI(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;II)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openMonthYearChooser$lambda$28(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Y9KrnvY1Yk_IkNBrfVfWEf-U9kE(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->handleExpenseUpdate$lambda$25(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bLnFn4we6c9lThLCxNUcxQFq0TI(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/databinding/FragmentIncomeBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setClickListeners$lambda$10$lambda$4(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/databinding/FragmentIncomeBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eM8sm0G3aLWoGGrqj3-obYyrafA(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->observeViewModel$lambda$13(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fXOsPlmzAU7IxpXwXe8kFniAuVQ(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->handleExpenseAddition$lambda$23(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gBPWhM3LuSJfdlIq0e_R0rKJP1U(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setClickListeners$lambda$10$lambda$7(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lf_dA-xqn6TNuNSh6SlnrzY8K1g(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setClickListeners$lambda$10$lambda$3(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-U-wJwHjvIQb1qUcUGLHddPNPY(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openTransactionDetails$lambda$20(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w0W_7dsgjo4uhdX5yDsaT_ScXSA(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setClickListeners$lambda$10$lambda$9(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x7UDQhUC5mKSQ2YfthviP4cQ3RQ(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->observeViewModel$lambda$14(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z1PtkDytgY-ql7aNZiPUeu82faw(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setClickListeners$lambda$10$lambda$5(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zIJsDlEbkNWmLL9kz08dT3K3Qoc(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setClickListeners$lambda$10$lambda$8(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$znYDbsUKuZvQ9beP22A9Ikx12G8(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setClickListeners$lambda$10$lambda$6(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->Companion:Lcom/laborbook/income/screen/home/fragment/IncomeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 50
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    .line 53
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 680
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 683
    new-instance v2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$special$$inlined$viewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 54
    move-object v1, p0

    check-cast v1, Landroid/content/ComponentCallbacks;

    .line 686
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 688
    new-instance v4, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$special$$inlined$inject$default$1;

    invoke-direct {v4, v1, v3, v3}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v4}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->incomeObserverUtil$delegate:Lkotlin/Lazy;

    .line 56
    const-string v1, "ca-app-pub-4991346658410627/7055295298"

    iput-object v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->adUnitId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 57
    iput v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentPage:I

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    const/16 v2, 0x7e8

    .line 60
    iput v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    .line 61
    iput v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentDate:I

    .line 62
    const-string v2, "Jan"

    iput-object v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthName:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    .line 691
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 694
    new-instance v2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$special$$inlined$viewModel$default$2;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$special$$inlined$viewModel$default$2;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->transactionSummaryViewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$filterItems(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->filterItems(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAdUnitId$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->adUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getExpenseAdapter$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->expenseAdapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    return-object p0
.end method

.method public static final synthetic access$isFetching$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isFetching:Z

    return p0
.end method

.method public static final synthetic access$isLastPage$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isLastPage:Z

    return p0
.end method

.method public static final synthetic access$loadMoreData(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->loadMoreData()V

    return-void
.end method

.method public static final synthetic access$openTransactionDetails(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openTransactionDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setExpenseAdapter$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->expenseAdapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    return-void
.end method

.method public static final synthetic access$setFetching$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isFetching:Z

    return-void
.end method

.method public static final synthetic access$updatePrivacyModeUI(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updatePrivacyModeUI(Z)V

    return-void
.end method

.method private final appendNewItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/laborbook/income/model/TransactionItem;",
            ">;)V"
        }
    .end annotation

    .line 446
    check-cast p1, Ljava/lang/Iterable;

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 724
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 725
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 447
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 450
    invoke-static {p0, v1, p1, v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateAdapterWithTransactions$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method private final changeMonthAndGetExpenses()V
    .locals 4

    .line 634
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->resetData()V

    .line 635
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getTransactionSummaryViewModel$income_release()Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object v0

    .line 636
    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 637
    iget v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 635
    invoke-virtual {v0, v1, v2}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getViewModel()Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;

    move-result-object v0

    .line 640
    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 641
    iget v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 642
    iget v3, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentPage:I

    .line 639
    invoke-virtual {v0, v1, v2, v3}, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->getTransactions(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final filterItems(Ljava/lang/String;)V
    .locals 8

    .line 146
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 148
    invoke-static {p0, v2, p1, v1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateAdapterWithTransactions$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;ZILjava/lang/Object;)V

    goto :goto_1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 710
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 711
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

    check-cast v5, Lcom/laborbook/income/model/TransactionItem;

    .line 152
    instance-of v6, v5, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    invoke-virtual {v5}, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/income/model/Transaction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/laborbook/income/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    .line 153
    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    invoke-static {v5, v6, v2, v7, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 711
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 712
    :cond_2
    check-cast v3, Ljava/util/List;

    .line 155
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->expenseAdapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->submitList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method private final getCurrentDateInfo()V
    .locals 6

    .line 605
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    .line 606
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

    iput v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    .line 607
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v3, v3, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthName:Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    .line 609
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentDate:I

    return-void
.end method

.method private final getFormattedMonthYear()Ljava/lang/String;
    .locals 3

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthName:Ljava/lang/String;

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

    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->incomeObserverUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/util/IncomeObserverUtil;

    return-object v0
.end method

.method private final getViewModel()Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;

    return-object v0
.end method

.method private final groupExpensesByDate(Lcom/laborbook/income/model/TransactionsResponseModel;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/income/model/TransactionsResponseModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/laborbook/income/model/TransactionItem;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 438
    invoke-virtual {p1}, Lcom/laborbook/income/model/TransactionsResponseModel;->getTransactions()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 713
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laborbook/income/model/Transaction;

    .line 439
    new-instance v2, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    invoke-direct {v2, v1}, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;-><init>(Lcom/laborbook/income/model/Transaction;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final handleExpenseAddition$lambda$23(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private static final handleExpenseUpdate$lambda$25(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private final hideEmptyStateViews()V
    .locals 9

    .line 422
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz v0, :cond_0

    .line 423
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvAddFirstEntry:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    const-string v2, "tvAddFirstEntry"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 424
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->ivArrow:Landroid/widget/ImageView;

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

    .line 162
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->resetData()V

    .line 163
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getViewModel()Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;

    move-result-object v0

    .line 164
    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    iget v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    iget v3, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentPage:I

    .line 163
    invoke-virtual {v0, v1, v2, v3}, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->getTransactions(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getTransactionSummaryViewModel$income_release()Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object v0

    .line 169
    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    iget v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final loadMoreData()V
    .locals 4

    .line 429
    iget-boolean v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isLastPage:Z

    if-nez v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getViewModel()Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;

    move-result-object v0

    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentPage:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->getTransactions(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static final newInstance()Lcom/laborbook/income/screen/home/fragment/IncomeFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->Companion:Lcom/laborbook/income/screen/home/fragment/IncomeFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$Companion;->newInstance()Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    move-result-object v0

    return-object v0
.end method

.method public static final newInstance(Z)Lcom/laborbook/income/screen/home/fragment/IncomeFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->Companion:Lcom/laborbook/income/screen/home/fragment/IncomeFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$Companion;->newInstance(Z)Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    move-result-object p0

    return-object p0
.end method

.method private final observeProStatusChanges()V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v0

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$observeProStatusChanges$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$observeProStatusChanges$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 110
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

    .line 351
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getViewModel()Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    new-instance v3, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 378
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getTransactionSummaryViewModel$income_release()Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    new-instance v3, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 392
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object v0

    new-instance v1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda6;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/income/util/IncomeObserverUtil;->setClearIncomeSearchText(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final observeViewModel$lambda$11(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    instance-of v0, p1, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$LOADING;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentPage:I

    if-ne p1, v3, :cond_5

    const/4 p1, 0x2

    invoke-static {p0, v3, v2, p1, v1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateViewVisibility$income_release$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;ZZILjava/lang/Object;)V

    goto :goto_1

    .line 354
    :cond_0
    instance-of v0, p1, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;

    if-eqz v0, :cond_4

    .line 357
    check-cast p1, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/model/TransactionsResponseModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/laborbook/income/model/TransactionsResponseModel;->getTransactions()Ljava/util/List;

    move-result-object v1

    :cond_1
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentPage:I

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 355
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateViewVisibility$income_release(ZZ)V

    .line 359
    iput-boolean v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isFetching:Z

    .line 360
    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/model/TransactionsResponseModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/laborbook/income/model/TransactionsResponseModel;->getTransactions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    .line 361
    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/model/TransactionsResponseModel;

    invoke-direct {p0, v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->groupExpensesByDate(Lcom/laborbook/income/model/TransactionsResponseModel;)Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-direct {p0, v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->appendNewItems(Ljava/util/List;)V

    .line 363
    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/model/TransactionsResponseModel;

    invoke-virtual {p1}, Lcom/laborbook/income/model/TransactionsResponseModel;->isLastPage()Z

    move-result p1

    iput-boolean p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isLastPage:Z

    .line 365
    iget p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentPage:I

    if-ne p1, v3, :cond_5

    .line 366
    invoke-direct {p0, v3}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateAdapterWithTransactions(Z)V

    goto :goto_1

    .line 371
    :cond_4
    instance-of p1, p1, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$ERROR;

    if-eqz p1, :cond_6

    .line 372
    invoke-virtual {p0, v2, v3}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateViewVisibility$income_release(ZZ)V

    .line 373
    iput-boolean v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isFetching:Z

    .line 376
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 352
    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final observeViewModel$lambda$13(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/screen/home/uistate/TransactionUiState;)Lkotlin/Unit;
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    instance-of v0, p1, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;

    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvTotalCashIn:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u20b9 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laborbook/income/model/TransactionSummaryResponseModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/laborbook/income/model/TransactionSummaryResponseModel;->getTotalCredit()D

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

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object p0, p0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvTotalEntries:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/model/TransactionSummaryResponseModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/laborbook/income/model/TransactionSummaryResponseModel;->getTotalEntriesCount()I

    move-result v3

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 387
    :cond_2
    instance-of p0, p1, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$LOADING;

    if-nez p0, :cond_4

    .line 388
    instance-of p0, p1, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$ERROR;

    if-eqz p0, :cond_3

    goto :goto_1

    .line 379
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 390
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final observeViewModel$lambda$14(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Z)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->etSearchIncome:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->etSearchIncome:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    const-string p1, ""

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openCashEntryBottomSheet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 504
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 505
    sget-object v1, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->Companion:Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 504
    invoke-virtual {v0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 514
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object p1

    new-instance p2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {p1, p2}, Lcom/laborbook/income/util/IncomeObserverUtil;->setOnIncomeAddedOrUpdated(Lkotlin/jvm/functions/Function2;)V

    .line 536
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object p1

    new-instance p2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {p1, p2}, Lcom/laborbook/income/util/IncomeObserverUtil;->setOnIncomeDeleted(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static synthetic openCashEntryBottomSheet$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
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

    .line 496
    invoke-direct/range {v0 .. v6}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openCashEntryBottomSheet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final openCashEntryBottomSheet$lambda$21(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expense"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 516
    invoke-virtual {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->handleExpenseUpdate$income_release(Lcom/laborbook/income/model/Transaction;)V

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->handleExpenseAddition$income_release(Lcom/laborbook/income/model/Transaction;)V

    .line 520
    :goto_0
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateViewVisibility$income_release(ZZ)V

    .line 521
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getTransactionSummaryViewModel$income_release()Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object v0

    .line 522
    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 523
    iget v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-virtual {v0, v1, v2}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 535
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openCashEntryBottomSheet$lambda$22(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteTransaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Lcom/laborbook/income/model/DeleteTransactionResponseModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->handleExpenseDeletion$income_release(Ljava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateViewVisibility$income_release(ZZ)V

    .line 539
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getTransactionSummaryViewModel$income_release()Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object p1

    .line 540
    iget v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    iget p0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 539
    invoke-virtual {p1, v0, p0}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openMonthYearChooser()V
    .locals 3

    .line 613
    sget-object v0, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;->Companion:Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment$Companion;

    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment$Companion;->newInstance(II)Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;

    move-result-object v0

    .line 614
    new-instance v1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda7;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;->setOnSelectionCallback(Lkotlin/jvm/functions/Function2;)V

    .line 626
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "MonthYearChooserFragment"

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final openMonthYearChooser$lambda$28(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;II)Lkotlin/Unit;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x1

    .line 615
    iput v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    .line 616
    iput p2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    .line 617
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x2

    .line 619
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x1

    .line 620
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 621
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, v1, v1, p1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 617
    iput-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthName:Ljava/lang/String;

    .line 623
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getFormattedMonthYear()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setText(Ljava/lang/CharSequence;)V

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->changeMonthAndGetExpenses()V

    .line 625
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openReportsFragment()V
    .locals 7

    .line 247
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final openTransactionDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 463
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object v0

    new-instance v1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda15;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/income/util/IncomeObserverUtil;->setOnIncomeAddedOrUpdated(Lkotlin/jvm/functions/Function2;)V

    .line 475
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object v0

    new-instance v1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda16;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/income/util/IncomeObserverUtil;->setOnIncomeDeleted(Lkotlin/jvm/functions/Function1;)V

    .line 484
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 485
    sget-object v1, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;->Companion:Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 484
    invoke-virtual {v0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    return-void
.end method

.method static synthetic openTransactionDetails$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
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

    .line 453
    invoke-direct/range {v0 .. v6}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openTransactionDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final openTransactionDetails$lambda$19(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expense"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 465
    invoke-virtual {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->handleExpenseUpdate$income_release(Lcom/laborbook/income/model/Transaction;)V

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->handleExpenseAddition$income_release(Lcom/laborbook/income/model/Transaction;)V

    .line 469
    :goto_0
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateViewVisibility$income_release(ZZ)V

    .line 470
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getTransactionSummaryViewModel$income_release()Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object p1

    .line 471
    iget p2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 472
    iget p0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-virtual {p1, p2, p0}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openTransactionDetails$lambda$20(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteTransaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1}, Lcom/laborbook/income/model/DeleteTransactionResponseModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->handleExpenseDeletion$income_release(Ljava/lang/String;)V

    .line 477
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateViewVisibility$income_release(ZZ)V

    .line 478
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getTransactionSummaryViewModel$income_release()Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object p1

    .line 479
    iget v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    iget p0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 478
    invoke-virtual {p1, v0, p0}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final resetData()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 177
    iput v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentPage:I

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isLastPage:Z

    .line 179
    iput-boolean v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->isFetching:Z

    .line 180
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->etSearchIncome:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final setClickListeners()V
    .locals 3

    .line 195
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz v0, :cond_0

    .line 196
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->btnCashIn:Lcom/boilerplate/uikit/views/buttons/RoundedGreenButton;

    new-instance v2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda8;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/RoundedGreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    new-instance v2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda9;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/databinding/FragmentIncomeBinding;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->llTotalCashIn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda10;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvTotalCashIn:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;

    new-instance v2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda11;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->ivEyeOpenClose:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda12;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->llParentTotalCashIn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda13;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvViewReports:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    new-instance v1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda14;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final setClickListeners$lambda$10$lambda$3(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object p1, Lcom/laborbook/income/util/Utils;->Companion:Lcom/laborbook/income/util/Utils$Companion;

    invoke-virtual {p1}, Lcom/laborbook/income/util/Utils$Companion;->getCurrentTimeInISOFormat()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 197
    const-string v1, ""

    const-string v2, "CREDIT"

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openCashEntryBottomSheet$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 206
    new-array p1, p1, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    const-string v1, "income_type"

    const-string v2, "CREDIT"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 204
    const-string v0, "cash_in"

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private static final setClickListeners$lambda$10$lambda$4(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/databinding/FragmentIncomeBinding;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openMonthYearChooser()V

    const/4 p2, 0x1

    .line 215
    new-array p2, p2, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    .line 217
    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    invoke-virtual {p1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    const-string v1, "current_month"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v0, p2, p1

    .line 214
    invoke-static {p2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 212
    const-string p2, "change_income_month"

    invoke-virtual {p0, p2, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private static final setClickListeners$lambda$10$lambda$5(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->togglePrivacyMode()V

    return-void
.end method

.method private static final setClickListeners$lambda$10$lambda$6(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->togglePrivacyMode()V

    return-void
.end method

.method private static final setClickListeners$lambda$10$lambda$7(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->togglePrivacyMode()V

    return-void
.end method

.method private static final setClickListeners$lambda$10$lambda$8(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->togglePrivacyMode()V

    return-void
.end method

.method private static final setClickListeners$lambda$10$lambda$9(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openReportsFragment()V

    .line 241
    check-cast p0, Lcom/laborbook/base/BaseFragment;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "view_reports"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupPrivacyMode()V
    .locals 7

    .line 325
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupPrivacyMode$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupPrivacyMode$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setupRecyclerView()V
    .locals 7

    .line 293
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setupSearchListener()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->etSearchIncome:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupSearchListener$1;

    invoke-direct {v1, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupSearchListener$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private final setupView()V
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz v0, :cond_2

    .line 185
    iget-boolean v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->hideHeader:Z

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvExpense:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;->setVisibility(I)V

    .line 187
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    invoke-virtual {v0, v2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setVisibility(I)V

    goto :goto_1

    .line 189
    :cond_0
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthName:Ljava/lang/String;

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

    iget v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

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

    .line 415
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz v0, :cond_0

    .line 416
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvAddFirstEntry:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    const-string v2, "tvAddFirstEntry"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 417
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->ivArrow:Landroid/widget/ImageView;

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

.method private final togglePrivacyMode()V
    .locals 7

    .line 279
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final updateAdapterWithTransactions(Z)V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 695
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 704
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 705
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 695
    check-cast v1, Ljava/lang/Iterable;

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 707
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 708
    check-cast v2, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    .line 139
    invoke-virtual {v2}, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/income/model/Transaction;

    move-result-object v2

    .line 708
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 709
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 140
    iget-object v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->expenseAdapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p1}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->submitOriginalList(Ljava/util/List;Z)V

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->expenseAdapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->submitList(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method static synthetic updateAdapterWithTransactions$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateAdapterWithTransactions(Z)V

    return-void
.end method

.method private final updatePrivacyModeUI(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 334
    sget v0, Lcom/laborbook/income/R$drawable;->ic_eye_close:I

    goto :goto_0

    .line 336
    :cond_0
    sget v0, Lcom/laborbook/income/R$drawable;->ic_eye_open:I

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->ivEyeOpenClose:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    if-eqz p1, :cond_3

    .line 342
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvTotalCashIn:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 343
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->icHiddenAmount:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 345
    :cond_3
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->tvTotalCashIn:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;

    if-eqz p1, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 346
    :cond_4
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->icHiddenAmount:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic updateViewVisibility$income_release$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 399
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateViewVisibility$income_release(ZZ)V

    return-void
.end method


# virtual methods
.method public final changeMonth(II)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 647
    iput v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    .line 648
    iput p2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    .line 649
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x2

    .line 651
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x1

    .line 652
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 653
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, v1, v1, p1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 649
    iput-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthName:Ljava/lang/String;

    .line 654
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->changeMonthAndGetExpenses()V

    return-void
.end method

.method public final getAllTransactionItems$income_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/laborbook/income/model/TransactionItem;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    return-object v0
.end method

.method public final getCurrentYear$income_release()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    return v0
.end method

.method public final getMonthNumber$income_release()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    return v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "income"

    return-object v0
.end method

.method public final getTransactionSummaryViewModel$income_release()Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->transactionSummaryViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/income/databinding/FragmentIncomeBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 75
    invoke-static {p1, p2, p3}, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    move-result-object p1

    return-object p1
.end method

.method public final handleExpenseAddition$income_release(Lcom/laborbook/income/model/Transaction;)V
    .locals 3

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    new-instance v0, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    invoke-direct {v0, p1}, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;-><init>(Lcom/laborbook/income/model/Transaction;)V

    .line 550
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 553
    invoke-static {p0, v1, p1, v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateAdapterWithTransactions$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;ZILjava/lang/Object;)V

    .line 556
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final handleExpenseDeletion$income_release(Ljava/lang/String;)V
    .locals 6

    const-string v0, "expenseId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    .line 734
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 735
    check-cast v3, Lcom/laborbook/income/model/TransactionItem;

    .line 593
    instance-of v5, v3, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    if-eqz v5, :cond_0

    check-cast v3, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    invoke-virtual {v3}, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/income/model/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/laborbook/income/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-eq v2, v4, :cond_2

    .line 597
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 600
    invoke-static {p0, v1, v0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateAdapterWithTransactions$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;ZILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final handleExpenseUpdate$income_release(Lcom/laborbook/income/model/Transaction;)V
    .locals 7

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    new-instance v0, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    invoke-direct {v0, p1}, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;-><init>(Lcom/laborbook/income/model/Transaction;)V

    .line 567
    iget-object v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    .line 727
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 728
    check-cast v4, Lcom/laborbook/income/model/TransactionItem;

    .line 568
    instance-of v6, v4, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    if-eqz v6, :cond_0

    check-cast v4, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    invoke-virtual {v4}, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/income/model/Transaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laborbook/income/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_1
    if-eq v3, v5, :cond_2

    .line 573
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->allTransactionItems:Ljava/util/List;

    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 576
    invoke-static {p0, v2, v0, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->updateAdapterWithTransactions$default(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;ZILjava/lang/Object;)V

    .line 579
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v3}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 586
    :cond_2
    sget-object v0, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expense with ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not found for update."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/laborbook/base/Logger;->i(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 674
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 675
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "hide_header"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->hideHeader:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/laborbook/base/BaseFragment;->onDestroyView()V

    .line 115
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->expenseAdapter:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->releaseAds()V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getViewModel()Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->clearState()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$onViewCreated$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$onViewCreated$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 86
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getCurrentDateInfo()V

    .line 87
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setClickListeners()V

    .line 88
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setupView()V

    .line 89
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setupPrivacyMode()V

    .line 90
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setupRecyclerView()V

    .line 91
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->observeViewModel()V

    .line 92
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->loadInitialData()V

    .line 93
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setupSearchListener()V

    .line 96
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->observeProStatusChanges()V

    return-void
.end method

.method public final setCurrentYear$income_release(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->currentYear:I

    return-void
.end method

.method public final setMonthNumber$income_release(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->monthNumber:I

    return-void
.end method

.method public final updateViewVisibility$income_release(ZZ)V
    .locals 5

    .line 400
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz v0, :cond_8

    .line 401
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 403
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->llTableHeader:Landroid/widget/LinearLayout;

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

    .line 404
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->dividerHeader:Landroid/view/View;

    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_7

    .line 407
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->showEmptyStateViews()V

    goto :goto_5

    .line 409
    :cond_7
    invoke-direct {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->hideEmptyStateViews()V

    :cond_8
    :goto_5
    return-void
.end method

.class public final Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "CashbookFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/keep/databinding/FragmentCashbookBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCashbookFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CashbookFragment.kt\ncom/laborbook/keep/screen/home/fragment/CashbookFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,310:1\n50#2,5:311\n50#2,5:316\n*S KotlinDebug\n*F\n+ 1 CashbookFragment.kt\ncom/laborbook/keep/screen/home/fragment/CashbookFragment\n*L\n51#1:311,5\n52#1:316,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 ?2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001?B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u0010 \u001a\u0004\u0018\u00010\u00022\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u001a\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0008\u0010+\u001a\u00020(H\u0002J\u0008\u0010,\u001a\u00020(H\u0002J\u0008\u0010-\u001a\u00020(H\u0002J\u0008\u0010.\u001a\u00020(H\u0002J\u0008\u0010/\u001a\u00020(H\u0002J\u0008\u00100\u001a\u00020(H\u0002J\u0010\u00101\u001a\u00020(2\u0006\u00102\u001a\u000203H\u0002J\u0010\u00104\u001a\u00020(2\u0006\u00105\u001a\u00020\u0006H\u0002J\u0008\u00106\u001a\u00020(H\u0002J\u0008\u00107\u001a\u00020(H\u0002J\u0008\u00108\u001a\u00020(H\u0002J\u0010\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;H\u0002J\u0008\u0010<\u001a\u00020(H\u0002J\u0008\u0010=\u001a\u00020(H\u0002J\u0006\u0010>\u001a\u00020(R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u001a\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006@"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/keep/databinding/FragmentCashbookBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "currentYear",
        "",
        "monthName",
        "monthNumber",
        "currentPage",
        "isLastPage",
        "",
        "isLoading",
        "adapter",
        "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;",
        "api",
        "Lcom/laborbook/expense/network/TransactionApi;",
        "expenseObserverUtil",
        "Lcom/laborbook/expense/util/ExpenseObserverUtil;",
        "getExpenseObserverUtil",
        "()Lcom/laborbook/expense/util/ExpenseObserverUtil;",
        "expenseObserverUtil$delegate",
        "Lkotlin/Lazy;",
        "incomeObserverUtil",
        "Lcom/laborbook/income/util/IncomeObserverUtil;",
        "getIncomeObserverUtil",
        "()Lcom/laborbook/income/util/IncomeObserverUtil;",
        "incomeObserverUtil$delegate",
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
        "getCurrentDateInfo",
        "setupApi",
        "setupView",
        "setupSearch",
        "setClickListeners",
        "openMonthYearChooser",
        "openTransactionDetail",
        "transaction",
        "Lcom/laborbook/expense/model/Transaction;",
        "openAddTransaction",
        "type",
        "resetAndLoad",
        "loadData",
        "loadSummary",
        "updateSummary",
        "summary",
        "Lcom/laborbook/expense/model/TransactionSummaryResponseModel;",
        "loadTransactions",
        "openReports",
        "refreshData",
        "Companion",
        "keep_release"
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
.field public static final Companion:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$Companion;


# instance fields
.field private adapter:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

.field private api:Lcom/laborbook/expense/network/TransactionApi;

.field private currentPage:I

.field private currentYear:I

.field private final expenseObserverUtil$delegate:Lkotlin/Lazy;

.field private final incomeObserverUtil$delegate:Lkotlin/Lazy;

.field private isLastPage:Z

.field private isLoading:Z

.field private monthName:Ljava/lang/String;

.field private monthNumber:I


# direct methods
.method public static synthetic $r8$lambda$4mTYikrNyhK4muGyGkCcBOpeg_I(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->setClickListeners$lambda$5(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FksDF-Nmg2exKXQuDuWQ-2eGzqs(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->setClickListeners$lambda$2(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IKFe-UyuBk1RZep8IQ7vELa2dsM(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openTransactionDetail$lambda$11(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/DeleteTransactionResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KDRfmwfZ145i7cx2faHB-ak-Soo(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->setClickListeners$lambda$4(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Os3ehbaR-mNgXjZd1lROHt9nob8(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openAddTransaction$lambda$13(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UldgMChIfR-kJmz_Yt16DOIGaAA(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/Transaction;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->setupView$lambda$1$lambda$0(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/Transaction;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WlovH0pHbV0_XC-zSKUX0LKsSlk(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->setClickListeners$lambda$3(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aE9HPgUTJkba5V827kkNbYg32z8(Lcom/google/android/play/core/review/ReviewManager;Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openReports$lambda$15(Lcom/google/android/play/core/review/ReviewManager;Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dauCa7gDkZVnB82WtRcg1z4rK7Q(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openTransactionDetail$lambda$9(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pEXunPWj2AsIF63h0VnabDHmKhE(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openAddTransaction$lambda$12(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rw4rE1hLIe5J7LWUZt-mQK7CS30(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;II)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openMonthYearChooser$lambda$7(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uyFBORAO3rMkisNH-uGjE1O-8lY(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openTransactionDetail$lambda$8(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yCzIBWDCnij2EBuFWeae3NzoNIc(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openTransactionDetail$lambda$10(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 38
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    const/16 v0, 0x7e8

    .line 43
    iput v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentYear:I

    .line 44
    const-string v0, "Jan"

    iput-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthNumber:I

    .line 46
    iput v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentPage:I

    .line 51
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 313
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 315
    new-instance v2, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->expenseObserverUtil$delegate:Lkotlin/Lazy;

    .line 318
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 320
    new-instance v2, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$special$$inlined$inject$default$2;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->incomeObserverUtil$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->adapter:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    return-object p0
.end method

.method public static final synthetic access$getApi$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)Lcom/laborbook/expense/network/TransactionApi;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->api:Lcom/laborbook/expense/network/TransactionApi;

    return-object p0
.end method

.method public static final synthetic access$getCurrentPage$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentPage:I

    return p0
.end method

.method public static final synthetic access$getCurrentYear$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentYear:I

    return p0
.end method

.method public static final synthetic access$getMonthNumber$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthNumber:I

    return p0
.end method

.method public static final synthetic access$isLastPage$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->isLastPage:Z

    return p0
.end method

.method public static final synthetic access$isLoading$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->isLoading:Z

    return p0
.end method

.method public static final synthetic access$loadTransactions(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->loadTransactions()V

    return-void
.end method

.method public static final synthetic access$setCurrentPage$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentPage:I

    return-void
.end method

.method public static final synthetic access$setLastPage$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->isLastPage:Z

    return-void
.end method

.method public static final synthetic access$setLoading$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->isLoading:Z

    return-void
.end method

.method public static final synthetic access$updateSummary(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/TransactionSummaryResponseModel;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->updateSummary(Lcom/laborbook/expense/model/TransactionSummaryResponseModel;)V

    return-void
.end method

.method private final getCurrentDateInfo()V
    .locals 4

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthNumber:I

    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v1, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthName:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentYear:I

    return-void
.end method

.method private final getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->expenseObserverUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/util/ExpenseObserverUtil;

    return-object v0
.end method

.method private final getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->incomeObserverUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/util/IncomeObserverUtil;

    return-object v0
.end method

.method private final loadData()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->loadSummary()V

    .line 206
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->loadTransactions()V

    return-void
.end method

.method private final loadSummary()V
    .locals 7

    .line 210
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$loadSummary$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$loadSummary$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final loadTransactions()V
    .locals 7

    .line 235
    iget-boolean v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->isLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->isLoading:Z

    .line 238
    iget v1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentPage:I

    if-ne v1, v0, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvEmpty:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$loadTransactions$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$loadTransactions$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final newInstance()Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    move-result-object v0

    return-object v0
.end method

.method private final openAddTransaction(Ljava/lang/String;)V
    .locals 9

    .line 179
    :try_start_0
    const-string v0, "CREDIT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p1

    .line 181
    sget-object v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->Companion:Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;

    .line 182
    const-string v1, ""

    const-string v2, "CREDIT"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 181
    invoke-static/range {v0 .. v8}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;->newInstance$default(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 180
    invoke-virtual {p1, v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 185
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda7;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {p1, v0}, Lcom/laborbook/income/util/IncomeObserverUtil;->setOnIncomeAddedOrUpdated(Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p1

    .line 188
    sget-object v0, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;->Companion:Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;

    .line 189
    const-string v1, ""

    const-string v2, "DEBIT"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 188
    invoke-static/range {v0 .. v8}, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;->newInstance$default(Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 187
    invoke-virtual {p1, v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 192
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda8;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {p1, v0}, Lcom/laborbook/expense/util/ExpenseObserverUtil;->setOnExpenseAddedOrUpdated(Lkotlin/jvm/functions/Function2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private static final openAddTransaction$lambda$12(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->resetAndLoad()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openAddTransaction$lambda$13(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->resetAndLoad()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openMonthYearChooser()V
    .locals 3

    .line 137
    sget-object v0, Lcom/laborbook/keep/screen/monthchooser/MonthYearChooserFragment;->Companion:Lcom/laborbook/keep/screen/monthchooser/MonthYearChooserFragment$Companion;

    iget v1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthNumber:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentYear:I

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/keep/screen/monthchooser/MonthYearChooserFragment$Companion;->newInstance(II)Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;->setOnSelectionCallback(Lkotlin/jvm/functions/Function2;)V

    .line 150
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "MonthYearChooserFragment"

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final openMonthYearChooser$lambda$7(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;II)Lkotlin/Unit;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x1

    .line 139
    iput v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthNumber:I

    .line 140
    iput p2, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentYear:I

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x2

    .line 143
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x1

    .line 144
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 145
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, v1, v1, p1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 141
    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthName:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentYear:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->resetAndLoad()V

    .line 149
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openReports()V
    .locals 6

    .line 280
    move-object v0, p0

    check-cast v0, Lcom/laborbook/base/BaseFragment;

    const/4 v1, 0x2

    const-string v2, "view_reports"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/play/core/review/ReviewManager;Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :catch_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->adapter:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual {v3}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->getAllTransactions()Ljava/util/List;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v1

    .line 292
    sget-object v2, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->Companion:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$Companion;

    .line 293
    new-instance v3, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    iget v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthNumber:I

    .line 296
    iget v4, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentYear:I

    .line 292
    const-string v5, ""

    invoke-virtual {v2, v3, v5, v0, v4}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$Companion;->newInstance(Ljava/util/ArrayList;Ljava/lang/String;II)Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 291
    invoke-virtual {v1, v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private static final openReports$lambda$15(Lcom/google/android/play/core/review/ReviewManager;Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string v0, "$reviewManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :try_start_0
    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/review/ReviewInfo;

    invoke-interface {p0, p1, p2}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final openTransactionDetail(Lcom/laborbook/expense/model/Transaction;)V
    .locals 8

    .line 155
    :try_start_0
    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CREDIT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;->Companion:Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$Companion;

    .line 158
    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getDate()Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getAmount()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getPaymentMethod()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-virtual/range {v1 .. v7}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 156
    invoke-virtual {v0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 162
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda9;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {p1, v0}, Lcom/laborbook/income/util/IncomeObserverUtil;->setOnIncomeAddedOrUpdated(Lkotlin/jvm/functions/Function2;)V

    .line 163
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda10;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {p1, v0}, Lcom/laborbook/income/util/IncomeObserverUtil;->setOnIncomeDeleted(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment;->Companion:Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment$Companion;

    .line 167
    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getDate()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getAmount()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getPaymentMethod()Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual/range {v1 .. v7}, Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 165
    invoke-virtual {v0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 171
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda11;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {p1, v0}, Lcom/laborbook/expense/util/ExpenseObserverUtil;->setOnExpenseAddedOrUpdated(Lkotlin/jvm/functions/Function2;)V

    .line 172
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda12;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {p1, v0}, Lcom/laborbook/expense/util/ExpenseObserverUtil;->setOnExpenseDeleted(Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private static final openTransactionDetail$lambda$10(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->resetAndLoad()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openTransactionDetail$lambda$11(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->resetAndLoad()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openTransactionDetail$lambda$8(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/income/model/Transaction;Z)Lkotlin/Unit;
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->resetAndLoad()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openTransactionDetail$lambda$9(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->resetAndLoad()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final resetAndLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 198
    iput v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentPage:I

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->isLastPage:Z

    .line 200
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->adapter:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->clear()V

    .line 201
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->loadData()V

    return-void
.end method

.method private final setClickListeners()V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvReports:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->fabCashIn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->fabCashOut:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda6;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private static final setClickListeners$lambda$2(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openMonthYearChooser()V

    return-void
.end method

.method private static final setClickListeners$lambda$3(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openReports()V

    return-void
.end method

.method private static final setClickListeners$lambda$4(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    const-string p1, "CREDIT"

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openAddTransaction(Ljava/lang/String;)V

    return-void
.end method

.method private static final setClickListeners$lambda$5(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const-string p1, "DEBIT"

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openAddTransaction(Ljava/lang/String;)V

    return-void
.end method

.method private final setupApi()V
    .locals 3

    .line 81
    sget-object v0, Lcom/boilerplate/network/NetworkHandler;->Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

    invoke-virtual {v0}, Lcom/boilerplate/network/NetworkHandler$Companion;->getInstance()Lcom/boilerplate/network/NetworkHandler;

    move-result-object v0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://api.laborbook.app/"

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/boilerplate/network/NetworkHandler;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/laborbook/expense/network/TransactionApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/network/TransactionApi;

    iput-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->api:Lcom/laborbook/expense/network/TransactionApi;

    return-void
.end method

.method private final setupSearch()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->etSearch:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupSearch$1;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupSearch$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private final setupView()V
    .locals 6

    .line 85
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    if-eqz v0, :cond_2

    .line 86
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->monthName:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->currentYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v1, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    new-instance v2, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    invoke-direct {v1, v2}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->adapter:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    .line 92
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->rvTransactions:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->rvTransactions:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->adapter:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    if-nez v2, :cond_1

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->rvTransactions:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupView$1$2;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupView$1$2;-><init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2
    return-void
.end method

.method private static final setupView$lambda$1$lambda$0(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/expense/model/Transaction;)Lkotlin/Unit;
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    move-object v0, p0

    check-cast v0, Lcom/laborbook/base/BaseFragment;

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CREDIT"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "view_income"

    goto :goto_0

    :cond_0
    const-string v1, "view_expense"

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->openTransactionDetail(Lcom/laborbook/expense/model/Transaction;)V

    .line 91
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final updateSummary(Lcom/laborbook/expense/model/TransactionSummaryResponseModel;)V
    .locals 6

    .line 226
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvCashIn:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u20b9 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laborbook/expense/model/TransactionSummaryResponseModel;->getTotalCredit()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvCashOut:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laborbook/expense/model/TransactionSummaryResponseModel;->getTotalDebit()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p1}, Lcom/laborbook/expense/model/TransactionSummaryResponseModel;->getTotalCredit()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/laborbook/expense/model/TransactionSummaryResponseModel;->getTotalDebit()D

    move-result-wide v4

    sub-double/2addr v1, v4

    .line 230
    iget-object p1, v0, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->tvBalance:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "expense"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentCashbookBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 59
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/FragmentCashbookBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentCashbookBinding;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->getCurrentDateInfo()V

    .line 65
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->setupApi()V

    .line 66
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->setupView()V

    .line 67
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->setupSearch()V

    .line 68
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->setClickListeners()V

    .line 69
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->loadData()V

    return-void
.end method

.method public final refreshData()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->resetAndLoad()V

    return-void
.end method

.class public final Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;
.super Lcom/laborbook/base/BaseBottomsheetFragment;
.source "CashInOutBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;,
        Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$MaxDigitsInputFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseBottomsheetFragment<",
        "Lcom/laborbook/income/databinding/FragmentCashInBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCashInOutBottomSheetFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CashInOutBottomSheetFragment.kt\ncom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,391:1\n50#2,5:392\n35#3,6:397\n1#4:403\n*S KotlinDebug\n*F\n+ 1 CashInOutBottomSheetFragment.kt\ncom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment\n*L\n51#1:392,5\n56#1:397,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 82\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u000278B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0012\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J&\u0010!\u001a\u0004\u0018\u00010\u00022\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010&\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020(2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010)\u001a\u00020\u001dH\u0002J\u0008\u0010*\u001a\u00020\u001dH\u0002J\u0008\u0010+\u001a\u00020\u001dH\u0002J\u0008\u0010,\u001a\u00020\u001dH\u0002J\u0010\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\u000cH\u0002J\u0008\u0010/\u001a\u00020\u001dH\u0002J\u0008\u00100\u001a\u00020\u001dH\u0002J\u0008\u00101\u001a\u00020\u001dH\u0002J\u0008\u00102\u001a\u00020\u001dH\u0002J\u0010\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u000205H\u0002J\u0010\u00106\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u000cH\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\n\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;",
        "Lcom/laborbook/base/BaseBottomsheetFragment;",
        "Lcom/laborbook/income/databinding/FragmentCashInBinding;",
        "<init>",
        "()V",
        "incomeObserverUtil",
        "Lcom/laborbook/income/util/IncomeObserverUtil;",
        "getIncomeObserverUtil",
        "()Lcom/laborbook/income/util/IncomeObserverUtil;",
        "incomeObserverUtil$delegate",
        "Lkotlin/Lazy;",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "viewModel",
        "Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;",
        "getViewModel",
        "()Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;",
        "viewModel$delegate",
        "id",
        "amount",
        "date",
        "transactionType",
        "reason",
        "isUpdate",
        "",
        "paymentMethod",
        "onStart",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "viewModelObserver",
        "updateSaveButtonState",
        "setUpViews",
        "setupPaymentMethodToggle",
        "selectPaymentMethod",
        "method",
        "resetPaymentMethodBackgrounds",
        "setOnClickListeners",
        "showDeleteConfirmationDialog",
        "openDatePicker",
        "formatToISO",
        "calendar",
        "Ljava/util/Calendar;",
        "addOrUpdateExpenseAmount",
        "MaxDigitsInputFilter",
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
.field public static final Companion:Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;


# instance fields
.field private amount:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private final incomeObserverUtil$delegate:Lkotlin/Lazy;

.field private isUpdate:Z

.field private paymentMethod:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private transactionType:Ljava/lang/String;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4HHIAwR71QmBVtGucn-xNxC7hpw(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->viewModelObserver$lambda$1(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6NQAoTGNbW6Gvz5iFQiZ9_3C1S8(Ljava/util/Calendar;Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->openDatePicker$lambda$17(Ljava/util/Calendar;Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ayDMTfuXqo3E0aJEwcFlXL_oiM(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->showDeleteConfirmationDialog$lambda$14(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9vWvdM6V3LXpDaEZDiktNeOqLwo(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->setupPaymentMethodToggle$lambda$5$lambda$4(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cu-t--kmSWXp6-NGDcD3ZESzcO4(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->setOnClickListeners$lambda$12$lambda$11(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MJ7pNJu3u_ppSA3fny20Rtauf34(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->setupPaymentMethodToggle$lambda$5$lambda$3(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WRAIaUjn2mhj3Gv5cvIUBa3BXGw(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->setOnClickListeners$lambda$12$lambda$8(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_FJC5ZuSIcZD-8TfiITFJSkRfDE(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Lcom/laborbook/income/databinding/FragmentCashInBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->setOnClickListeners$lambda$12$lambda$9(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Lcom/laborbook/income/databinding/FragmentCashInBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$intxFlMWgbHd6876xmBdN05B7YE(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->showDeleteConfirmationDialog$lambda$15(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xWl08h_mxk27UBpZry8XrJhdCjs(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->setOnClickListeners$lambda$12$lambda$10(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->Companion:Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 49
    invoke-direct {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;-><init>()V

    .line 51
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 394
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 396
    new-instance v2, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->incomeObserverUtil$delegate:Lkotlin/Lazy;

    .line 56
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 399
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 402
    new-instance v2, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$special$$inlined$viewModel$default$1;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->id:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->amount:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->date:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->transactionType:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->reason:Ljava/lang/String;

    .line 63
    const-string v0, "cash"

    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->paymentMethod:Ljava/lang/String;

    return-void
.end method

.method private final addOrUpdateExpenseAmount(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/laborbook/income/databinding/FragmentCashInBinding;->etDescription:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->reason:Ljava/lang/String;

    move-object/from16 v2, p1

    .line 310
    iput-object v2, v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->amount:Ljava/lang/String;

    .line 312
    check-cast v1, Ljava/lang/CharSequence;

    const-string v8, "Income"

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iput-object v8, v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->reason:Ljava/lang/String;

    .line 315
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    const/4 v9, 0x0

    if-nez v1, :cond_3

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Please enter a valid amount"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 322
    const-string v3, "."

    const-string v4, ""

    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "-"

    const-string v12, ""

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_4

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Maximum 8 digits allowed"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 328
    :cond_4
    new-instance v10, Lcom/laborbook/income/model/TransactionRequest;

    .line 329
    iget-object v2, v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->reason:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object v3, v8

    goto :goto_1

    :cond_5
    move-object v3, v2

    .line 330
    :goto_1
    iget-object v2, v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->date:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 332
    iget-object v7, v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->transactionType:Ljava/lang/String;

    .line 333
    iget-object v1, v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->paymentMethod:Ljava/lang/String;

    const-string v2, "online"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "UPI"

    goto :goto_2

    :cond_6
    const-string v1, "CASH"

    :goto_2
    move-object v8, v1

    .line 334
    iget-object v9, v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->paymentMethod:Ljava/lang/String;

    move-object v2, v10

    .line 328
    invoke-direct/range {v2 .. v9}, Lcom/laborbook/income/model/TransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-boolean v1, v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->isUpdate:Z

    if-eqz v1, :cond_7

    .line 338
    iget-object v1, v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->id:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getViewModel()Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    move-result-object v2

    invoke-virtual {v2, v1, v10}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->updateExpense(Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;)V

    goto :goto_3

    .line 340
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getViewModel()Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->createExpense(Lcom/laborbook/income/model/TransactionRequest;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private final formatToISO(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 304
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 305
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->incomeObserverUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/util/IncomeObserverUtil;

    return-object v0
.end method

.method private final getViewModel()Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->Companion:Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    move-result-object p0

    return-object p0
.end method

.method private final openDatePicker()V
    .locals 8

    .line 280
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 282
    iget-object v2, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->date:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 284
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 286
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    :cond_1
    :goto_0
    new-instance v1, Landroid/app/DatePickerDialog;

    .line 291
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    .line 300
    new-instance v4, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0, p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda9;-><init>(Ljava/util/Calendar;Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;)V

    const/4 v2, 0x1

    .line 297
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v2, 0x2

    .line 298
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v2, 0x5

    .line 299
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v2, v1

    .line 290
    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 300
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private static final openDatePicker$lambda$17(Ljava/util/Calendar;Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, p3, p4, p5}, Ljava/util/Calendar;->set(III)V

    .line 294
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->formatToISO(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->date:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->date:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/laborbook/base/BaseExtensionKt;->toReadableDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private final resetPaymentMethodBackgrounds()V
    .locals 4

    .line 221
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v0, :cond_0

    .line 222
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbOnline:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/laborbook/income/R$drawable;->toggle_button_left:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbOnline:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/laborbook/income/R$color;->color_primary:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbCash:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/laborbook/income/R$drawable;->toggle_button_right:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbCash:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/laborbook/income/R$color;->color_primary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private final selectPaymentMethod(Ljava/lang/String;)V
    .locals 4

    .line 203
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v0, :cond_1

    .line 204
    iput-object p1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->paymentMethod:Ljava/lang/String;

    .line 206
    const-string v1, "online"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const v1, 0x106000b

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbOnline:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/laborbook/income/R$drawable;->toggle_button_left_selected:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object p1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbOnline:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object p1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbCash:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/laborbook/income/R$drawable;->toggle_button_right:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object p1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbCash:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/laborbook/income/R$color;->color_primary:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbOnline:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/laborbook/income/R$drawable;->toggle_button_left:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object p1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbOnline:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/laborbook/income/R$color;->color_primary:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object p1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbCash:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/laborbook/income/R$drawable;->toggle_button_right_selected:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object p1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbCash:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setOnClickListeners()V
    .locals 3

    .line 231
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v0, :cond_0

    .line 232
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->btnSave:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    new-instance v2, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda6;-><init>(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Lcom/laborbook/income/databinding/FragmentCashInBinding;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->btnDelete:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldError14;

    new-instance v2, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda7;-><init>(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldError14;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->tvDateEdit:Landroid/widget/TextView;

    new-instance v1, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda8;-><init>(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final setOnClickListeners$lambda$12$lambda$10(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->showDeleteConfirmationDialog()V

    const/4 p1, 0x3

    .line 252
    new-array p1, p1, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    const-string v1, "income_type"

    iget-object v2, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->transactionType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 253
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->amount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amount"

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 254
    new-instance v0, Lkotlin/Pair;

    iget-boolean v1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->isUpdate:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_update_income"

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 251
    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 249
    const-string v0, "delete_income_try"

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private static final setOnClickListeners$lambda$12$lambda$11(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->openDatePicker()V

    .line 261
    check-cast p0, Lcom/laborbook/base/BaseBottomsheetFragment;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "edit_income_date"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/laborbook/base/BaseBottomsheetFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseBottomsheetFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setOnClickListeners$lambda$12$lambda$8(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->dismiss()V

    return-void
.end method

.method private static final setOnClickListeners$lambda$12$lambda$9(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Lcom/laborbook/income/databinding/FragmentCashInBinding;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentCashInBinding;->etAmount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->addOrUpdateExpenseAmount(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 239
    new-array p1, p1, [Lkotlin/Pair;

    new-instance p2, Lkotlin/Pair;

    const-string v0, "income_type"

    iget-object v1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->transactionType:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 240
    new-instance p2, Lkotlin/Pair;

    iget-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->amount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amount"

    invoke-direct {p2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 241
    new-instance p2, Lkotlin/Pair;

    iget-boolean v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->isUpdate:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_update_income"

    invoke-direct {p2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    aput-object p2, p1, v0

    .line 242
    new-instance p2, Lkotlin/Pair;

    iget-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->date:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    invoke-direct {p2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    aput-object p2, p1, v0

    .line 238
    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 236
    const-string p2, "save_income"

    invoke-virtual {p0, p2, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private final setUpViews()V
    .locals 11

    .line 157
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v0, :cond_4

    .line 158
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    iget-object v2, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->date:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/laborbook/base/BaseExtensionKt;->toReadableDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->tvTitle:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    .line 160
    iget-object v2, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->transactionType:Ljava/lang/String;

    const-string v3, "CREDIT"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/laborbook/income/R$string;->cash_in:I

    goto :goto_1

    .line 161
    :cond_1
    sget v2, Lcom/laborbook/income/R$string;->cash_out:I

    .line 160
    :goto_1
    invoke-virtual {p0, v2}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->amount:Ljava/lang/String;

    const-string v2, "btnDelete"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->amount:Ljava/lang/String;

    const-string v5, "0"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 164
    iput-boolean v3, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->isUpdate:Z

    .line 165
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->etAmount:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v5, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->amount:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->etAmount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 167
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->etAmount:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v5, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->etAmount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(I)V

    .line 169
    :cond_2
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->btnSave:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    invoke-virtual {v1, v3}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    .line 170
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->btnDelete:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldError14;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Landroid/view/View;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 172
    :cond_3
    iput-boolean v4, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->isUpdate:Z

    .line 173
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->btnSave:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    invoke-virtual {v1, v4}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    .line 174
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->btnDelete:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldError14;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Landroid/view/View;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 176
    :goto_2
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->etDescription:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->reason:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->etAmount:Lcom/google/android/material/textfield/TextInputEditText;

    new-array v2, v3, [Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$MaxDigitsInputFilter;

    new-instance v3, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$MaxDigitsInputFilter;

    const/16 v5, 0x8

    invoke-direct {v3, v5}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$MaxDigitsInputFilter;-><init>(I)V

    aput-object v3, v2, v4

    check-cast v2, [Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 179
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getViewModel()Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    move-result-object v1

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->etAmount:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, "etAmount"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->attachExpenseTextWatcher(Landroid/widget/TextView;)V

    .line 182
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->setupPaymentMethodToggle()V

    :cond_4
    return-void
.end method

.method private final setupPaymentMethodToggle()V
    .locals 3

    .line 187
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->resetPaymentMethodBackgrounds()V

    .line 190
    iget-object v1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->paymentMethod:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->selectPaymentMethod(Ljava/lang/String;)V

    .line 192
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbOnline:Landroid/widget/TextView;

    new-instance v2, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->rbCash:Landroid/widget/TextView;

    new-instance v1, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final setupPaymentMethodToggle$lambda$5$lambda$3(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    const-string p1, "online"

    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->selectPaymentMethod(Ljava/lang/String;)V

    return-void
.end method

.method private static final setupPaymentMethodToggle$lambda$5$lambda$4(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    const-string p1, "cash"

    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->selectPaymentMethod(Ljava/lang/String;)V

    return-void
.end method

.method private final showDeleteConfirmationDialog()V
    .locals 3

    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    sget v1, Lcom/laborbook/income/R$string;->delete_expense:I

    invoke-virtual {p0, v1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    sget v1, Lcom/laborbook/income/R$string;->are_you_sure_you_want_to_delete_this_expense:I

    invoke-virtual {p0, v1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 270
    sget v1, Lcom/laborbook/income/R$string;->delete:I

    invoke-virtual {p0, v1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    sget v1, Lcom/laborbook/income/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final showDeleteConfirmationDialog$lambda$14(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->id:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getViewModel()Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->deleteExpense(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final showDeleteConfirmationDialog$lambda$15(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 275
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private final updateSaveButtonState()V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->etAmount:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->btnSave:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private final viewModelObserver()V
    .locals 4

    .line 118
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getViewModel()Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;)V

    new-instance v3, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragmentKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragmentKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final viewModelObserver$lambda$1(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState;)Lkotlin/Unit;
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    instance-of v0, p1, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->updateSaveButtonState()V

    goto/16 :goto_0

    .line 122
    :cond_0
    instance-of v0, p1, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$ERROR;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->dismiss()V

    .line 125
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    check-cast p1, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$ERROR;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$ERROR;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 128
    :cond_2
    instance-of v0, p1, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$LOADING;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_c

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 129
    :cond_3
    instance-of v0, p1, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$CREATE_SUCCESS;

    const-string v2, "null cannot be cast to non-null type com.laborbook.income.model.Transaction"

    if-eqz v0, :cond_6

    .line 130
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 131
    :cond_4
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/income/util/IncomeObserverUtil;->getOnIncomeAddedOrUpdated()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast p1, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$CREATE_SUCCESS;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$CREATE_SUCCESS;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/laborbook/income/model/Transaction;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_5
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->dismiss()V

    goto/16 :goto_0

    .line 135
    :cond_6
    instance-of v0, p1, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;

    if-eqz v0, :cond_9

    .line 136
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 137
    :cond_7
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/income/util/IncomeObserverUtil;->getOnIncomeAddedOrUpdated()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/laborbook/income/model/Transaction;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_8
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->dismiss()V

    goto :goto_0

    .line 141
    :cond_9
    instance-of v0, p1, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$DELETE_SUCCESS;

    if-eqz v0, :cond_d

    .line 142
    move-object v0, p0

    check-cast v0, Lcom/laborbook/base/BaseBottomsheetFragment;

    const-string v1, "delete_income_confirm"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/laborbook/base/BaseBottomsheetFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseBottomsheetFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 143
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentCashInBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 144
    :cond_a
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/income/util/IncomeObserverUtil;->getOnIncomeDeleted()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast p1, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$DELETE_SUCCESS;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState$DELETE_SUCCESS;->getData()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.laborbook.income.model.DeleteTransactionResponseModel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/laborbook/income/model/DeleteTransactionResponseModel;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_b
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->dismiss()V

    .line 148
    :cond_c
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 119
    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "cash_in_out_bs"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/income/databinding/FragmentCashInBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/income/databinding/FragmentCashInBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 100
    invoke-static {p1, p2, p3}, Lcom/laborbook/income/databinding/FragmentCashInBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/FragmentCashInBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseBottomsheetFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->id:Ljava/lang/String;

    .line 81
    const-string v0, "transaction_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->transactionType:Ljava/lang/String;

    .line 82
    const-string v0, "date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->date:Ljava/lang/String;

    .line 83
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->amount:Ljava/lang/String;

    .line 84
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->reason:Ljava/lang/String;

    .line 85
    const-string v0, "payment_method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    const-string p1, "cash"

    .line 86
    :goto_1
    iput-object p1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->paymentMethod:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 66
    invoke-super {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;->onStart()V

    .line 67
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 69
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    const-string v3, "from(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x3

    .line 72
    invoke-virtual {v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 74
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseBottomsheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    iget-object p1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->date:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 106
    :cond_0
    sget-object p1, Lcom/laborbook/income/util/Utils;->Companion:Lcom/laborbook/income/util/Utils$Companion;

    invoke-virtual {p1}, Lcom/laborbook/income/util/Utils$Companion;->getCurrentTimeInISOFormat()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->date:Ljava/lang/String;

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->setUpViews()V

    .line 109
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->viewModelObserver()V

    .line 110
    invoke-direct {p0}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->setOnClickListeners()V

    .line 111
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;-><init>(Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

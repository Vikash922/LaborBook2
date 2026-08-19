.class public final Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "TransactionReportsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionReportsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionReportsFragment.kt\ncom/laborbook/income/screen/reports/fragment/TransactionReportsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,665:1\n774#2:666\n865#2,2:667\n1863#2,2:669\n1#3:671\n157#4,8:672\n*S KotlinDebug\n*F\n+ 1 TransactionReportsFragment.kt\ncom/laborbook/income/screen/reports/fragment/TransactionReportsFragment\n*L\n255#1:666\n255#1:667,2\n397#1:669,2\n133#1:672,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 H2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001HB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J&\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001a\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010$\u001a\u00020\u0019H\u0002J\u0008\u0010%\u001a\u00020\u0019H\u0002J\u0008\u0010&\u001a\u00020\u0019H\u0002J\u0008\u0010\'\u001a\u00020\u0019H\u0002J\u0010\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0016H\u0002J\u0008\u0010*\u001a\u00020\u0019H\u0002J\u0008\u0010+\u001a\u00020\u0019H\u0002J\u0008\u0010,\u001a\u00020\u0019H\u0002J\u0008\u0010-\u001a\u00020\u0019H\u0002J\u0008\u0010.\u001a\u00020\u0019H\u0002J\u0008\u0010/\u001a\u00020\u0019H\u0002J\u0010\u00100\u001a\u00020\u00192\u0006\u00101\u001a\u000202H\u0002J\u0008\u00103\u001a\u00020\u0019H\u0002J\u0008\u00104\u001a\u00020\u0006H\u0002J\u0010\u00105\u001a\u0004\u0018\u00010#H\u0082@\u00a2\u0006\u0002\u00106J\u0010\u00107\u001a\u00020#2\u0006\u00108\u001a\u00020\u000bH\u0002J\u0008\u00109\u001a\u00020\u0019H\u0002J\u0010\u0010:\u001a\u0004\u0018\u00010;H\u0082@\u00a2\u0006\u0002\u00106J\u000e\u0010<\u001a\u0004\u0018\u00010;*\u00020#H\u0002J\u000e\u0010=\u001a\u0004\u0018\u00010;*\u00020>H\u0002J)\u0010?\u001a\u00020;2\u0006\u0010@\u001a\u00020\u00132\u0012\u0010A\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020;0B\"\u00020;H\u0002\u00a2\u0006\u0002\u0010CJ\u0012\u0010D\u001a\u0004\u0018\u0001022\u0006\u0010E\u001a\u00020;H\u0002J\u0012\u0010F\u001a\u0004\u0018\u00010G2\u0006\u0010E\u001a\u00020;H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\u000cj\u0008\u0012\u0004\u0012\u00020\u000b`\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR \u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\u000cj\u0008\u0012\u0004\u0012\u00020\u000b`\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "transactions",
        "Lkotlin/collections/ArrayList;",
        "Lcom/laborbook/income/model/Transaction;",
        "Ljava/util/ArrayList;",
        "Ljava/util/ArrayList;",
        "filteredTransactions",
        "transactionType",
        "adapter",
        "Lcom/laborbook/income/screen/reports/adapter/TransactionReportsAdapter;",
        "selectedMonth",
        "",
        "selectedYear",
        "fromDate",
        "Ljava/util/Calendar;",
        "toDate",
        "onCreate",
        "",
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
        "setupViews",
        "setupEdgeToEdge",
        "initializeDates",
        "updateDateDisplay",
        "formatDateForPicker",
        "calendar",
        "setupRecyclerView",
        "setupClickListeners",
        "openFromDatePicker",
        "openToDatePicker",
        "filterTransactions",
        "generateAndSharePdf",
        "sharePdfFile",
        "pdfFile",
        "Ljava/io/File;",
        "shareOnWhatsApp",
        "buildReportText",
        "createFormattedReportView",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createTransactionItemView",
        "transaction",
        "openPlayStore",
        "captureFormattedReportScreenshot",
        "Landroid/graphics/Bitmap;",
        "getBitmapWithoutChanges",
        "getBitmapFromRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "combineBitmapsWithBackground",
        "backgroundColorRes",
        "bitmaps",
        "",
        "(I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;",
        "convertBitmapToPdf",
        "bitmap",
        "saveBitmapToMediaStore",
        "Landroid/net/Uri;",
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
.field private static final ARG_MONTH:Ljava/lang/String; = "month"

.field private static final ARG_TRANSACTIONS:Ljava/lang/String; = "transactions"

.field private static final ARG_TRANSACTION_TYPE:Ljava/lang/String; = "transaction_type"

.field private static final ARG_YEAR:Ljava/lang/String; = "year"

.field public static final Companion:Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$Companion;


# instance fields
.field private adapter:Lcom/laborbook/income/screen/reports/adapter/TransactionReportsAdapter;

.field private filteredTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/laborbook/income/model/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private fromDate:Ljava/util/Calendar;

.field private selectedMonth:I

.field private selectedYear:I

.field private toDate:Ljava/util/Calendar;

.field private transactionType:Ljava/lang/String;

.field private transactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/laborbook/income/model/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$LGtTPmiuKzgA5U0-90R1_RpwD4Y(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->setupClickListeners$lambda$12$lambda$10(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bKked4U3U4OF8qgNOJR8qgw32S8(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->createFormattedReportView$lambda$23(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cRCW-anqNGhA0ALK8Qcyjvpz2s8(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->setupEdgeToEdge$lambda$3$lambda$2(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gT0RNAWTU4gY_P6GYTd_apUN52k(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->setupClickListeners$lambda$12$lambda$9(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$raKddsl7lh_R_CuS1U2SNU7Hc-4(Ljava/util/Calendar;Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->openToDatePicker$lambda$16(Ljava/util/Calendar;Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$rvQvhU0nX6eUMsr85eY3ojZt-Bg(Ljava/util/Calendar;Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->openFromDatePicker$lambda$13(Ljava/util/Calendar;Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEMSXPsNPRMwix17YD_wnMNwNIo(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->setupClickListeners$lambda$12$lambda$11(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->Companion:Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->transactions:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->filteredTransactions:Ljava/util/ArrayList;

    .line 61
    const-string v0, "CREDIT"

    iput-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->transactionType:Ljava/lang/String;

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->selectedMonth:I

    const/16 v0, 0x7e8

    .line 64
    iput v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->selectedYear:I

    return-void
.end method

.method public static final synthetic access$buildReportText(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->buildReportText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$captureFormattedReportScreenshot(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->captureFormattedReportScreenshot(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertBitmapToPdf(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->convertBitmapToPdf(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createFormattedReportView(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->createFormattedReportView(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveBitmapToMediaStore(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->saveBitmapToMediaStore(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sharePdfFile(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Ljava/io/File;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->sharePdfFile(Ljava/io/File;)V

    return-void
.end method

.method private final buildReportText()Ljava/lang/String;
    .locals 2

    .line 371
    sget v0, Lcom/laborbook/base/R$string;->refer_friend_whatsapp_message:I

    invoke-virtual {p0, v0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final captureFormattedReportScreenshot(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;

    iget v1, v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;-><init>(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 513
    iget v2, v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 515
    :try_start_2
    iput v4, v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;->label:I

    invoke-direct {p0, v0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->createFormattedReportView(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_5

    return-object v5

    .line 517
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$2;

    invoke-direct {v4, p1, v5}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$2;-><init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$captureFormattedReportScreenshot$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, p1

    goto :goto_4

    .line 528
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error capturing screenshot: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "TransactionReportsFragment"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-object v5
.end method

.method private final varargs combineBitmapsWithBackground(I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 592
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x0

    .line 593
    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 594
    array-length v2, p2

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, p2, v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 596
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 598
    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 601
    array-length p1, p2

    move v3, v0

    :goto_1
    if-ge v0, p1, :cond_1

    aget-object v4, p2, v0

    int-to-float v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 602
    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 603
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private final convertBitmapToPdf(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 7

    const-string v0, "Transaction_Report_"

    const/4 v1, 0x0

    .line 610
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".pdf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 613
    new-instance v0, Landroid/graphics/pdf/PdfDocument;

    invoke-direct {v0}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    .line 614
    new-instance v3, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v3

    .line 615
    invoke-virtual {v0, v3}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 617
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    const/4 v5, 0x0

    .line 618
    invoke-virtual {v4, p1, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 619
    invoke-virtual {v0, v3}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 621
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, p1

    check-cast v3, Ljava/io/FileOutputStream;

    .line 622
    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 623
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    :try_start_2
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 624
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 621
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error converting to PDF: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "TransactionReportsFragment"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method private final createFormattedReportView(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Phone number: "

    const-string v1, "Name: "

    instance-of v2, p1, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;

    iget v3, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget p1, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->label:I

    sub-int/2addr p1, v4

    iput p1, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;

    invoke-direct {v2, p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;-><init>(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 374
    iget v4, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;

    iget-object v5, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    iget-object v2, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v4, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;

    iget-object v6, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    iget-object v8, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 376
    :try_start_2
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 377
    sget v4, Lcom/laborbook/income/R$layout;->layout_report_template:I

    invoke-virtual {p1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 378
    invoke-static {p1}, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->bind(Landroid/view/View;)Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;

    move-result-object v4

    const-string v8, "bind(...)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v8

    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$userName$1;

    invoke-direct {v9, p0, v7}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$userName$1;-><init>(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object p0, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$0:Ljava/lang/Object;

    iput-object p1, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$2:Ljava/lang/Object;

    iput v6, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->label:I

    invoke-static {v8, v9, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_4

    return-object v3

    :cond_4
    move-object v8, p0

    move-object v12, v6

    move-object v6, p1

    move-object p1, v12

    .line 374
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 384
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v9

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$userPhone$1;

    invoke-direct {v10, v8, v7}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$userPhone$1;-><init>(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iput-object v8, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$2:Ljava/lang/Object;

    iput-object p1, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$createFormattedReportView$1;->label:I

    invoke-static {v9, v10, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_5

    return-object v3

    :cond_5
    move-object v3, p1

    move-object p1, v2

    move-object v5, v6

    move-object v2, v8

    .line 374
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 389
    iget-object v6, v4, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvNameLabel:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v1, v4, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvPhoneLabel:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object p1, v4, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->llTransactionItems:Landroid/widget/LinearLayout;

    const-string v0, "llTransactionItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 396
    new-instance v0, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    .line 397
    iget-object v1, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->filteredTransactions:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 669
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laborbook/income/model/Transaction;

    .line 398
    invoke-direct {v2, v3}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->createTransactionItemView(Lcom/laborbook/income/model/Transaction;)Landroid/view/View;

    move-result-object v6

    .line 399
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    iget-wide v8, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-virtual {v3}, Lcom/laborbook/income/model/Transaction;->getAmount()D

    move-result-wide v10

    add-double/2addr v8, v10

    iput-wide v8, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    goto :goto_3

    .line 404
    :cond_6
    iget-object p1, v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->transactionType:Ljava/lang/String;

    const-string v1, "CREDIT"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 405
    sget p1, Lcom/laborbook/income/R$string;->total_in:I

    invoke-virtual {v2, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 407
    :cond_7
    sget p1, Lcom/laborbook/income/R$string;->total_out:I

    invoke-virtual {v2, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 404
    :goto_4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 409
    iget-object v1, v4, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvTotalLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    .line 412
    new-instance p1, Ljava/util/Locale;

    const-string v1, "en"

    const-string v3, "IN"

    invoke-direct {p1, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    iget-wide v0, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 413
    iget-object v0, v4, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvTotalAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {v2}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/boilerplate/uikit/R$color;->white:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 417
    iget-object v0, v4, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvReportGeneratedBy:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;->setTextColor(I)V

    .line 418
    iget-object v0, v4, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->tvDownloadApp:Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;

    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewRegular12;->setTextColor(I)V

    .line 421
    iget-object p1, v4, Lcom/laborbook/income/databinding/LayoutReportTemplateBinding;->llMarketingFooter:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    invoke-virtual {v2}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 427
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v0, 0x0

    .line 431
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 426
    invoke-virtual {v5, p1, v1}, Landroid/view/View;->measure(II)V

    .line 433
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v5, v0, v0, p1, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v5

    goto :goto_5

    :catch_0
    move-exception p1

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error creating report view: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "TransactionReportsFragment"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-object v7
.end method

.method private static final createFormattedReportView$lambda$23(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->openPlayStore()V

    return-void
.end method

.method private final createTransactionItemView(Lcom/laborbook/income/model/Transaction;)Landroid/view/View;
    .locals 12

    .line 443
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 444
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 445
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 452
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/boilerplate/uikit/R$dimen;->margin_48:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 453
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/boilerplate/uikit/R$dimen;->margin_8:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 456
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 457
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3f19999a    # 0.6f

    invoke-direct {v5, v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const v6, 0x800013

    .line 458
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 457
    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laborbook/base/BaseExtensionKt;->toReadableDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 461
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 462
    invoke-virtual {v4, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 463
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 464
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 465
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/laborbook/income/R$drawable;->table_cell_border_right_bottom:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 469
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 470
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-direct {v8, v1, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 471
    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 470
    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 475
    invoke-virtual {v7, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 476
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, 0x2

    .line 477
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 478
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 479
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 480
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/laborbook/income/R$drawable;->table_cell_border_right_bottom:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 484
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 485
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const v10, 0x3f99999a    # 1.2f

    invoke-direct {v9, v1, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 486
    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 485
    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    new-instance v9, Ljava/util/Locale;

    const-string v10, "en"

    const-string v11, "IN"

    invoke-direct {v9, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getAmount()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 490
    invoke-virtual {v8, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 491
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 492
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 493
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/laborbook/income/R$drawable;->table_cell_border_bottom:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 496
    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    check-cast v7, Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    check-cast v8, Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final filterTransactions()V
    .locals 12

    .line 253
    const-string v0, "null cannot be cast to non-null type java.util.Calendar"

    iget-object v1, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->fromDate:Ljava/util/Calendar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->toDate:Ljava/util/Calendar;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->transactions:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 666
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 667
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/laborbook/income/model/Transaction;

    .line 257
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 258
    invoke-virtual {v4}, Lcom/laborbook/income/model/Transaction;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 260
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 261
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v4, 0xb

    const/4 v6, 0x0

    .line 262
    invoke-virtual {v5, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 263
    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 264
    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xe

    .line 265
    invoke-virtual {v5, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 267
    iget-object v10, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->fromDate:Ljava/util/Calendar;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/util/Calendar;

    .line 268
    invoke-virtual {v10, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 269
    invoke-virtual {v10, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 270
    invoke-virtual {v10, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 271
    invoke-virtual {v10, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 273
    iget-object v6, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->toDate:Ljava/util/Calendar;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/util/Calendar;

    const/16 v11, 0x17

    .line 274
    invoke-virtual {v6, v4, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0x3b

    .line 275
    invoke-virtual {v6, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 276
    invoke-virtual {v6, v8, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0x3e7

    .line 277
    invoke-virtual {v6, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 279
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-ltz v4, :cond_1

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 667
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 668
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 255
    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->filteredTransactions:Ljava/util/ArrayList;

    .line 286
    iget-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->adapter:Lcom/laborbook/income/screen/reports/adapter/TransactionReportsAdapter;

    if-eqz v0, :cond_3

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/laborbook/income/screen/reports/adapter/TransactionReportsAdapter;->submitList(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final formatDateForPicker(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 177
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final generateAndSharePdf()V
    .locals 7

    .line 290
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;-><init>(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getBitmapFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/Bitmap;
    .locals 15

    const/4 v1, 0x0

    .line 548
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 549
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 552
    :cond_1
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v6, v5, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v5

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    .line 557
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    .line 558
    :goto_2
    const-string v10, "createBitmap(...)"

    if-ge v8, v2, :cond_4

    .line 559
    :try_start_1
    move-object/from16 v11, p1

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    const-string v12, "createViewHolder(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0, v11, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 561
    iget-object v12, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v13, 0x40000000    # 2.0f

    .line 562
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 563
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 561
    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 565
    iget-object v12, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v13, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget-object v14, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v12, v7, v7, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 567
    iget-object v12, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    iget-object v13, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 569
    invoke-virtual {v10, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 570
    iget-object v13, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 571
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v10, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 575
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 577
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 580
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    int-to-float v8, v7

    .line 581
    invoke-virtual {v2, v5, v6, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 582
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v7, v5

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error capturing RecyclerView: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "TransactionReportsFragment"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-object v1
.end method

.method private final getBitmapWithoutChanges(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 535
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 538
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting bitmap: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "TransactionReportsFragment"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private final initializeDates()V
    .locals 9

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 142
    iget v1, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->selectedYear:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 143
    iget v1, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->selectedMonth:I

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 145
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 146
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    .line 147
    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xe

    .line 148
    invoke-virtual {v0, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 141
    iput-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->fromDate:Ljava/util/Calendar;

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    iget v5, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->selectedYear:I

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 153
    iget v5, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->selectedMonth:I

    sub-int/2addr v5, v2

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x17

    .line 155
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x3b

    .line 156
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 157
    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x3e7

    .line 158
    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 151
    iput-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->toDate:Ljava/util/Calendar;

    .line 161
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->updateDateDisplay()V

    return-void
.end method

.method private final openFromDatePicker()V
    .locals 8

    .line 213
    iget-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->fromDate:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 214
    :cond_0
    new-instance v7, Landroid/app/DatePickerDialog;

    .line 215
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 225
    new-instance v3, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda4;-><init>(Ljava/util/Calendar;Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;)V

    const/4 v1, 0x1

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x2

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x5

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, v7

    .line 214
    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 226
    iget-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->toDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 229
    :cond_1
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private static final openFromDatePicker$lambda$13(Ljava/util/Calendar;Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, p3, p4, p5}, Ljava/util/Calendar;->set(III)V

    .line 218
    iput-object p0, p1, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->fromDate:Ljava/util/Calendar;

    .line 219
    invoke-direct {p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->updateDateDisplay()V

    .line 220
    invoke-direct {p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->filterTransactions()V

    return-void
.end method

.method private final openPlayStore()V
    .locals 3

    .line 504
    const-string v0, "android.intent.action.VIEW"

    .line 505
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "market://details?id=com.laborbook"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 506
    invoke-virtual {p0, v1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://play.google.com/store/apps/details?id=com.laborbook"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 509
    invoke-virtual {p0, v1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private final openToDatePicker()V
    .locals 8

    .line 233
    iget-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->toDate:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 234
    :cond_0
    new-instance v7, Landroid/app/DatePickerDialog;

    .line 235
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 245
    new-instance v3, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda6;-><init>(Ljava/util/Calendar;Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;)V

    const/4 v1, 0x1

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x2

    .line 243
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x5

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, v7

    .line 234
    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 246
    iget-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->fromDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 249
    :cond_1
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private static final openToDatePicker$lambda$16(Ljava/util/Calendar;Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, p3, p4, p5}, Ljava/util/Calendar;->set(III)V

    .line 238
    iput-object p0, p1, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->toDate:Ljava/util/Calendar;

    .line 239
    invoke-direct {p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->updateDateDisplay()V

    .line 240
    invoke-direct {p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->filterTransactions()V

    return-void
.end method

.method private final saveBitmapToMediaStore(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 9

    const-string v0, "report_"

    const/4 v1, 0x0

    .line 635
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 636
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".png"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v0, "mime_type"

    const-string v3, "image/png"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "is_pending"

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_0

    const/4 v0, 0x1

    .line 639
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 644
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 643
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 648
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v6, v5

    check-cast v6, Ljava/io/OutputStream;

    if-eqz v6, :cond_1

    .line 649
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 648
    :cond_1
    :try_start_3
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 651
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_2

    .line 652
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const/4 p1, 0x0

    .line 653
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 648
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v5, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    :goto_0
    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error saving bitmap: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "TransactionReportsFragment"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method private final setupClickListeners()V
    .locals 3

    .line 187
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->btnSharePdf:Landroid/widget/Button;

    new-instance v2, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->btnShareWhatsapp:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldWhite16;

    new-instance v1, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldWhite16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final setupClickListeners$lambda$12$lambda$10(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    move-object p1, p0

    check-cast p1, Lcom/laborbook/base/BaseFragment;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "share_pdf_report"

    invoke-static {p1, v2, v0, v1, v0}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 202
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->generateAndSharePdf()V

    return-void
.end method

.method private static final setupClickListeners$lambda$12$lambda$11(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    move-object p1, p0

    check-cast p1, Lcom/laborbook/base/BaseFragment;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "share_whatsapp_report"

    invoke-static {p1, v2, v0, v1, v0}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 207
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->shareOnWhatsApp()V

    return-void
.end method

.method private static final setupClickListeners$lambda$12$lambda$9(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->goBack()V

    return-void
.end method

.method private final setupEdgeToEdge()V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->llShareButtons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 131
    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method private static final setupEdgeToEdge$lambda$3$lambda$2(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 673
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 674
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 675
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 678
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private final setupRecyclerView()V
    .locals 3

    .line 181
    new-instance v0, Lcom/laborbook/income/screen/reports/adapter/TransactionReportsAdapter;

    invoke-direct {v0}, Lcom/laborbook/income/screen/reports/adapter/TransactionReportsAdapter;-><init>()V

    iput-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->adapter:Lcom/laborbook/income/screen/reports/adapter/TransactionReportsAdapter;

    .line 182
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->rvTransactions:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->rvTransactions:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->adapter:Lcom/laborbook/income/screen/reports/adapter/TransactionReportsAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method

.method private final setupViews()V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->tvTitle:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    iget-object v1, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->transactionType:Ljava/lang/String;

    const-string v2, "CREDIT"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget v1, Lcom/laborbook/income/R$string;->cash_in_reports:I

    invoke-virtual {p0, v1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 124
    :cond_0
    sget v1, Lcom/laborbook/income/R$string;->cash_out_reports:I

    invoke-virtual {p0, v1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    .line 121
    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private final shareOnWhatsApp()V
    .locals 7

    .line 339
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$shareOnWhatsApp$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$shareOnWhatsApp$1;-><init>(Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final sharePdfFile(Ljava/io/File;)V
    .locals 3

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 320
    const-string v1, "com.laborbook.provider"

    .line 318
    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    const-string v1, "application/pdf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v1, "android.intent.extra.STREAM"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 327
    const-string p1, "android.intent.extra.SUBJECT"

    const-string v1, "Transaction Report"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 328
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    const-string p1, "Share PDF"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error sharing PDF: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "TransactionReportsFragment"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to share PDF: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private final updateDateDisplay()V
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->fromDate:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 167
    iget-object v2, v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->tvFromDate:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    invoke-direct {p0, v1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->formatDateForPicker(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->toDate:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    .line 170
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->tvToDate:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    invoke-direct {p0, v1}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->formatDateForPicker(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "income_transaction_details"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 106
    invoke-static {p1, p2, p3}, Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 91
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 94
    const-string v0, "transactions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->transactions:Ljava/util/ArrayList;

    .line 95
    const-string v0, "transaction_type"

    const-string v1, "CREDIT"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->transactionType:Ljava/lang/String;

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "month"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->selectedMonth:I

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v1, "year"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->selectedYear:I

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->setupViews()V

    .line 112
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->setupRecyclerView()V

    .line 113
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->setupClickListeners()V

    .line 114
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->initializeDates()V

    .line 115
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->filterTransactions()V

    .line 116
    invoke-direct {p0}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->setupEdgeToEdge()V

    return-void
.end method

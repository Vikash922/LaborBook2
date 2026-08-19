.class public final Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TransactionReportsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionReportsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionReportsAdapter.kt\ncom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/laborbook/income/databinding/ItemTransactionReportBinding;",
        "<init>",
        "(Lcom/laborbook/income/databinding/ItemTransactionReportBinding;)V",
        "bind",
        "",
        "transaction",
        "Lcom/laborbook/income/model/Transaction;",
        "extractDayNumber",
        "",
        "dateString",
        "extractDayOfWeek",
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


# instance fields
.field private final binding:Lcom/laborbook/income/databinding/ItemTransactionReportBinding;


# direct methods
.method public constructor <init>(Lcom/laborbook/income/databinding/ItemTransactionReportBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/laborbook/income/databinding/ItemTransactionReportBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p1, p0, Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;->binding:Lcom/laborbook/income/databinding/ItemTransactionReportBinding;

    return-void
.end method

.method private final extractDayNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 58
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 59
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    const/4 v0, 0x5

    .line 62
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    invoke-static {p1}, Lcom/laborbook/base/BaseExtensionKt;->toReadableDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final extractDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 70
    const-string v0, ""

    .line 71
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 72
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 78
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v2, 0x7

    const/4 v3, 0x1

    .line 75
    invoke-virtual {v1, v2, v3, p1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    .line 80
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final bind(Lcom/laborbook/income/model/Transaction;)V
    .locals 3

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;->extractDayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;->extractDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;->binding:Lcom/laborbook/income/databinding/ItemTransactionReportBinding;

    iget-object v2, v2, Lcom/laborbook/income/databinding/ItemTransactionReportBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;->binding:Lcom/laborbook/income/databinding/ItemTransactionReportBinding;

    iget-object v0, v0, Lcom/laborbook/income/databinding/ItemTransactionReportBinding;->tvDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;->binding:Lcom/laborbook/income/databinding/ItemTransactionReportBinding;

    iget-object v0, v0, Lcom/laborbook/income/databinding/ItemTransactionReportBinding;->tvNotes:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u20b9 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;->binding:Lcom/laborbook/income/databinding/ItemTransactionReportBinding;

    iget-object v1, v1, Lcom/laborbook/income/databinding/ItemTransactionReportBinding;->tvAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DEBIT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;->binding:Lcom/laborbook/income/databinding/ItemTransactionReportBinding;

    invoke-virtual {p1}, Lcom/laborbook/income/databinding/ItemTransactionReportBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/laborbook/income/R$color;->error_state_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;->binding:Lcom/laborbook/income/databinding/ItemTransactionReportBinding;

    invoke-virtual {p1}, Lcom/laborbook/income/databinding/ItemTransactionReportBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/laborbook/income/R$color;->button_green_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;->binding:Lcom/laborbook/income/databinding/ItemTransactionReportBinding;

    iget-object v0, v0, Lcom/laborbook/income/databinding/ItemTransactionReportBinding;->tvAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setTextColor(I)V

    return-void
.end method

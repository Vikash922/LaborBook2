.class public final Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TransactionListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExpenseViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionListAdapter.kt\ncom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n1#2:544\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/laborbook/income/databinding/ItemIncomeBinding;",
        "onExpenseClick",
        "Lkotlin/Function2;",
        "Lcom/laborbook/income/model/Transaction;",
        "",
        "",
        "<init>",
        "(Lcom/laborbook/income/databinding/ItemIncomeBinding;Lkotlin/jvm/functions/Function2;)V",
        "bind",
        "transaction",
        "position",
        "isPrivacyModeEnabled",
        "",
        "extractDayNumber",
        "",
        "dateStr",
        "extractDayOfWeek",
        "dateString",
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
.field private final binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

.field private final onExpenseClick:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/laborbook/income/model/Transaction;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$qIDRPo6Ynt7dEDAiPBedoAFk7lU(Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;Lcom/laborbook/income/model/Transaction;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->bind$lambda$0(Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;Lcom/laborbook/income/model/Transaction;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/laborbook/income/databinding/ItemIncomeBinding;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/income/databinding/ItemIncomeBinding;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/laborbook/income/model/Transaction;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onExpenseClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/laborbook/income/databinding/ItemIncomeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 179
    iput-object p1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    .line 180
    iput-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->onExpenseClick:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;Lcom/laborbook/income/model/Transaction;ILandroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$transaction"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->onExpenseClick:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final extractDayNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 221
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " "

    aput-object v3, v1, v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final extractDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 225
    const-string v0, ""

    .line 226
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 227
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 228
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 233
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v2, 0x7

    const/4 v3, 0x1

    .line 230
    invoke-virtual {v1, v2, v3, p1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    .line 235
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
.method public final bind(Lcom/laborbook/income/model/Transaction;IZ)V
    .locals 6

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getDateStr()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->extractDayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object v1, v1, Lcom/laborbook/income/databinding/ItemIncomeBinding;->tvIncomeDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->extractDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object v1, v1, Lcom/laborbook/income/databinding/ItemIncomeBinding;->tvIncomeDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object v0, v0, Lcom/laborbook/income/databinding/ItemIncomeBinding;->tvIncomeReason:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CREDIT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getAmount()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 197
    iget-object p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object p3, p3, Lcom/laborbook/income/databinding/ItemIncomeBinding;->tvCashInAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;

    invoke-virtual {p3, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;->setVisibility(I)V

    .line 198
    iget-object p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object p3, p3, Lcom/laborbook/income/databinding/ItemIncomeBinding;->ivSecretAmount:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object p3, p3, Lcom/laborbook/income/databinding/ItemIncomeBinding;->llAmountWithArrow:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object p3, p3, Lcom/laborbook/income/databinding/ItemIncomeBinding;->tvCashInAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u20b9"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getAmount()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object p3, p3, Lcom/laborbook/income/databinding/ItemIncomeBinding;->tvCashInAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;

    invoke-virtual {p3, v0}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldGreen14;->setVisibility(I)V

    .line 204
    iget-object p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object p3, p3, Lcom/laborbook/income/databinding/ItemIncomeBinding;->llAmountWithArrow:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object p3, p3, Lcom/laborbook/income/databinding/ItemIncomeBinding;->ivSecretAmount:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object p3, p3, Lcom/laborbook/income/databinding/ItemIncomeBinding;->llAmountWithArrow:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object p3, p3, Lcom/laborbook/income/databinding/ItemIncomeBinding;->ivSecretAmount:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :goto_0
    iget-object p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->binding:Lcom/laborbook/income/databinding/ItemIncomeBinding;

    iget-object p3, p3, Lcom/laborbook/income/databinding/ItemIncomeBinding;->container:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;Lcom/laborbook/income/model/Transaction;I)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.class public final Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CashbookTransactionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TransactionViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCashbookTransactionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CashbookTransactionAdapter.kt\ncom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;",
        "<init>",
        "(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;",
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


# instance fields
.field private final binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

.field final synthetic this$0:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;


# direct methods
.method public static synthetic $r8$lambda$CqBtlzoh4dtMh3y4lLbgz8W4J04(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/expense/model/Transaction;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->bind$lambda$1(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/expense/model/Transaction;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->this$0:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    .line 124
    invoke-virtual {p2}, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 123
    iput-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    return-void
.end method

.method private static final bind$lambda$1(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/expense/model/Transaction;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$txn"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {p0}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->access$getOnTransactionClick$p(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;)V
    .locals 6

    const-string v0, ""

    const-string v1, "item"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CREDIT"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 128
    iget-object v2, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    invoke-virtual {v2}, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 132
    :try_start_0
    invoke-static {}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->access$getIsoFormat$cp()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 133
    iget-object v4, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvDateDay:Landroid/widget/TextView;

    invoke-static {}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->access$getDayFormat$cp()Ljava/text/SimpleDateFormat;

    move-result-object v5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvDateWeekday:Landroid/widget/TextView;

    invoke-static {}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->access$getWeekdayFormat$cp()Ljava/text/SimpleDateFormat;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    iget-object v3, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    iget-object v3, v3, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvDateDay:Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v3, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    iget-object v3, v3, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvDateWeekday:Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    iget-object v3, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    iget-object v3, v3, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvReason:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getTransactionMode()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getPaymentMethod()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v3

    :goto_1
    move-object v3, v0

    :cond_1
    check-cast v3, Ljava/lang/String;

    .line 145
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvMode:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvMode:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvMode:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_2
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvAmount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u20b9"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laborbook/expense/model/Transaction;->getAmount()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->tvAmount:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 155
    sget v1, Lcom/laborbook/keep/R$color;->green:I

    goto :goto_3

    :cond_3
    sget v1, Lcom/laborbook/keep/R$color;->absent:I

    :goto_3
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    invoke-virtual {v0}, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->this$0:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    new-instance v2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/expense/model/Transaction;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

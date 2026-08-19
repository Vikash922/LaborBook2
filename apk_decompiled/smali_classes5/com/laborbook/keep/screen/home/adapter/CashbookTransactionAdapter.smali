.class public final Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CashbookTransactionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;,
        Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$Companion;,
        Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;,
        Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TableHeaderViewHolder;,
        Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCashbookTransactionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CashbookTransactionAdapter.kt\ncom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n808#2,11:164\n1557#2:175\n1628#2,3:176\n808#2,11:179\n774#2:190\n865#2,2:191\n*S KotlinDebug\n*F\n+ 1 CashbookTransactionAdapter.kt\ncom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter\n*L\n87#1:164,11\n87#1:175\n87#1:176,3\n101#1:179,11\n102#1:190\n102#1:191,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u001f !\"#B\u001b\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0016\u001a\u00020\u000eH\u0016J\u0014\u0010\u0017\u001a\u00020\u00062\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0019J\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0019J\u0006\u0010\u001b\u001a\u00020\u0006J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onTransactionClick",
        "Lkotlin/Function1;",
        "Lcom/laborbook/expense/model/Transaction;",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "items",
        "",
        "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;",
        "allItems",
        "getItemViewType",
        "",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "getItemCount",
        "addTransactions",
        "transactions",
        "",
        "getAllTransactions",
        "clear",
        "filter",
        "query",
        "",
        "CashbookItem",
        "Companion",
        "TableHeaderViewHolder",
        "DateHeaderViewHolder",
        "TransactionViewHolder",
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
.field public static final Companion:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$Companion;

.field private static final TYPE_DATE_HEADER:I = 0x1

.field private static final TYPE_TABLE_HEADER:I = 0x0

.field private static final TYPE_TRANSACTION:I = 0x2

.field private static final dayFormat:Ljava/text/SimpleDateFormat;

.field private static final isoFormat:Ljava/text/SimpleDateFormat;

.field private static final weekdayFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private allItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransactionClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/laborbook/expense/model/Transaction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->Companion:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$Companion;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->isoFormat:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->dayFormat:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->weekdayFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/laborbook/expense/model/Transaction;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onTransactionClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->onTransactionClick:Lkotlin/jvm/functions/Function1;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->allItems:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getDayFormat$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 15
    sget-object v0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->dayFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static final synthetic access$getIsoFormat$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 15
    sget-object v0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->isoFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static final synthetic access$getOnTransactionClick$p(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->onTransactionClick:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getWeekdayFormat$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 15
    sget-object v0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->weekdayFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public final addTransactions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/expense/model/Transaction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "transactions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    sget-object v1, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TableHeader;->INSTANCE:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TableHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->allItems:Ljava/util/List;

    sget-object v1, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TableHeader;->INSTANCE:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TableHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/model/Transaction;

    .line 80
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    new-instance v2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;

    invoke-direct {v2, v0}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;-><init>(Lcom/laborbook/expense/model/Transaction;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->allItems:Ljava/util/List;

    new-instance v2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;

    invoke-direct {v2, v0}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;-><init>(Lcom/laborbook/expense/model/Transaction;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->allItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final filter(Ljava/lang/String;)V
    .locals 7

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 99
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->allItems:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->allItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 188
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 179
    check-cast v1, Ljava/lang/Iterable;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 191
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;

    .line 103
    invoke-virtual {v3}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laborbook/expense/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 104
    invoke-virtual {v3}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/laborbook/expense/model/Transaction;->getAmount()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, p1, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 106
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 107
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    sget-object v1, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TableHeader;->INSTANCE:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TableHeader;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :goto_2
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getAllTransactions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/laborbook/expense/model/Transaction;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->allItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 164
    check-cast v1, Ljava/lang/Iterable;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 176
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 177
    check-cast v2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;

    .line 87
    invoke-virtual {v2}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v2

    .line 177
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    :cond_2
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;

    .line 39
    instance-of v0, p1, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TableHeader;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p1, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$DateHeader;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    instance-of p1, p1, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    :goto_0
    return p1

    .line 38
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;

    .line 64
    instance-of v0, p2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TableHeader;

    if-nez v0, :cond_2

    .line 65
    instance-of v0, p2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$DateHeader;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;

    check-cast p2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$DateHeader;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;->bind(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$DateHeader;)V

    goto :goto_0

    .line 66
    :cond_0
    instance-of v0, p2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;

    check-cast p2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->bind(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;)V

    goto :goto_0

    .line 63
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-string v0, "inflate(...)"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance p2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;-><init>(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance p2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;-><init>(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/laborbook/keep/databinding/ItemCashbookTableHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemCashbookTableHeaderBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p2, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TableHeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TableHeaderViewHolder;-><init>(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/keep/databinding/ItemCashbookTableHeaderBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2
.end method

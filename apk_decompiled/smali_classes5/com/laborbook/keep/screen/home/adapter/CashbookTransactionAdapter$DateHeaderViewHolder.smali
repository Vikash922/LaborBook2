.class public final Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CashbookTransactionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DateHeaderViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;",
        "<init>",
        "(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$DateHeader;",
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
.field private final binding:Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;

.field final synthetic this$0:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;->this$0:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    .line 117
    invoke-virtual {p2}, Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;->getRoot()Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 116
    iput-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$DateHeader;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$DateHeader;->getDate()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

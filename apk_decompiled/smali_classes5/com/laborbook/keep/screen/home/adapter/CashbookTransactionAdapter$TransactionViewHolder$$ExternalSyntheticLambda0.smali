.class public final synthetic Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

.field public final synthetic f$1:Lcom/laborbook/expense/model/Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/expense/model/Transaction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    iput-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/laborbook/expense/model/Transaction;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/laborbook/expense/model/Transaction;

    invoke-static {v0, v1, p1}, Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;->$r8$lambda$CqBtlzoh4dtMh3y4lLbgz8W4J04(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/expense/model/Transaction;Landroid/view/View;)V

    return-void
.end method

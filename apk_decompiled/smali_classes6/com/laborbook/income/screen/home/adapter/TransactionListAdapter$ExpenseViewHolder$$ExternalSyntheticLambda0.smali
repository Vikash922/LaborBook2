.class public final synthetic Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;

.field public final synthetic f$1:Lcom/laborbook/income/model/Transaction;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;Lcom/laborbook/income/model/Transaction;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;

    iput-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/laborbook/income/model/Transaction;

    iput p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;

    iget-object v1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/laborbook/income/model/Transaction;

    iget v2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->$r8$lambda$qIDRPo6Ynt7dEDAiPBedoAFk7lU(Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;Lcom/laborbook/income/model/Transaction;ILandroid/view/View;)V

    return-void
.end method

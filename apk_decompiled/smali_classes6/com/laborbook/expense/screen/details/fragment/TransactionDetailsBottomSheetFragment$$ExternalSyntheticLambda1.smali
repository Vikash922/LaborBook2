.class public final synthetic Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda1;->f$0:Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda1;->f$0:Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;

    check-cast p1, Lcom/laborbook/expense/model/DeleteTransactionResponseModel;

    invoke-static {v0, p1}, Lcom/laborbook/expense/screen/details/fragment/TransactionDetailsBottomSheetFragment;->$r8$lambda$GuLHUIAagskPV4Kpbm0uXs2oyCg(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/DeleteTransactionResponseModel;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

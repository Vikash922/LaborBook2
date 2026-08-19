.class public final synthetic Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda1;->f$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$$ExternalSyntheticLambda1;->f$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    check-cast p1, Lcom/laborbook/income/model/DeleteTransactionResponseModel;

    invoke-static {v0, p1}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;->$r8$lambda$RYnqIuDQsZ-Xt26kic6kiW5CQpw(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

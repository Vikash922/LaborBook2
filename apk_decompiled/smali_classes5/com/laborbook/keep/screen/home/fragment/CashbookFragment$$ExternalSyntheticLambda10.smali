.class public final synthetic Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda10;->f$0:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda10;->f$0:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    check-cast p1, Lcom/laborbook/income/model/DeleteTransactionResponseModel;

    invoke-static {v0, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->$r8$lambda$dauCa7gDkZVnB82WtRcg1z4rK7Q(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/laborbook/income/model/DeleteTransactionResponseModel;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

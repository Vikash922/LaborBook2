.class public final synthetic Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    check-cast p1, Lcom/laborbook/income/model/Transaction;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->$r8$lambda$-eFDT-tjA6l0Icslc4zZxMI-AHk(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

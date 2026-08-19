.class public final synthetic Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;

    check-cast p1, Lcom/laborbook/expense/model/Transaction;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->$r8$lambda$ZA3gJKavtpkESmrBThLpQiLKxxA(Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;Lcom/laborbook/expense/model/Transaction;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

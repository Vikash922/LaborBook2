.class public final synthetic Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic f$0:Ljava/util/Calendar;

.field public final synthetic f$1:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Calendar;Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda1;->f$0:Ljava/util/Calendar;

    iput-object p2, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda1;->f$1:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda1;->f$0:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$$ExternalSyntheticLambda1;->f$1:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->$r8$lambda$clxhf48OWaDz6tGu0WoO_2EzFFU(Ljava/util/Calendar;Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method

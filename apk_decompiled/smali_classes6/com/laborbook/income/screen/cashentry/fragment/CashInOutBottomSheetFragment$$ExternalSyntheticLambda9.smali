.class public final synthetic Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic f$0:Ljava/util/Calendar;

.field public final synthetic f$1:Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Calendar;Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda9;->f$0:Ljava/util/Calendar;

    iput-object p2, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda9;->f$1:Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda9;->f$0:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment$$ExternalSyntheticLambda9;->f$1:Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;->$r8$lambda$6NQAoTGNbW6Gvz5iFQiZ9_3C1S8(Ljava/util/Calendar;Lcom/laborbook/income/screen/cashentry/fragment/CashInOutBottomSheetFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method

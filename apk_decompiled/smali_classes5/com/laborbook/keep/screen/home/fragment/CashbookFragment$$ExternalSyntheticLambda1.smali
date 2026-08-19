.class public final synthetic Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/play/core/review/ReviewManager;

.field public final synthetic f$1:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/review/ReviewManager;Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/play/core/review/ReviewManager;

    iput-object p2, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda1;->f$1:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/play/core/review/ReviewManager;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$$ExternalSyntheticLambda1;->f$1:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    invoke-static {v0, v1, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->$r8$lambda$aE9HPgUTJkba5V827kkNbYg32z8(Lcom/google/android/play/core/review/ReviewManager;Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

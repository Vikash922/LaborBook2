.class public final Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$Companion;
.super Ljava/lang/Object;
.source "TransactionReportsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J;\u0010\t\u001a\u00020\n2\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000ej\u0008\u0012\u0004\u0012\u00020\r`\u000c2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$Companion;",
        "",
        "<init>",
        "()V",
        "ARG_TRANSACTIONS",
        "",
        "ARG_TRANSACTION_TYPE",
        "ARG_MONTH",
        "ARG_YEAR",
        "newInstance",
        "Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;",
        "transactions",
        "Lkotlin/collections/ArrayList;",
        "Lcom/laborbook/expense/model/Transaction;",
        "Ljava/util/ArrayList;",
        "transactionType",
        "month",
        "",
        "year",
        "(Ljava/util/ArrayList;Ljava/lang/String;II)Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;",
        "expense_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/util/ArrayList;Ljava/lang/String;II)Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/laborbook/expense/model/Transaction;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;"
        }
    .end annotation

    const-string v0, "transactions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transactionType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-direct {v1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;-><init>()V

    .line 81
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 82
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    const-string p1, "transaction_type"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string p1, "month"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string p1, "year"

    invoke-virtual {v2, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {v1, v2}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

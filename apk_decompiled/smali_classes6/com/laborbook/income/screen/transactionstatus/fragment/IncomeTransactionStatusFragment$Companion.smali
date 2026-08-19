.class public final Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;
.super Ljava/lang/Object;
.source "IncomeTransactionStatusFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;",
        "",
        "<init>",
        "()V",
        "newInstance",
        "Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;",
        "type",
        "",
        "amount",
        "isUpdate",
        "",
        "income_release"
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

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 194
    const-string p2, ""

    .line 193
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    new-instance v1, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    invoke-direct {v1}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;-><init>()V

    .line 195
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 196
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string p1, "amount"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string p1, "is_update"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    invoke-virtual {v1, v2}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.class public final Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;
.super Ljava/lang/Object;
.source "ExpenseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;",
        "",
        "<init>",
        "()V",
        "ARG_HIDE_HEADER",
        "",
        "newInstance",
        "Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;",
        "hideHeader",
        "",
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

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance()Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 493
    new-instance v0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;

    invoke-direct {v0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;-><init>()V

    return-object v0
.end method

.method public final newInstance(Z)Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 496
    new-instance v0, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;

    invoke-direct {v0}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;-><init>()V

    .line 497
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 498
    const-string v2, "hide_header"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 497
    invoke-virtual {v0, v1}, Lcom/laborbook/expense/screen/home/fragment/ExpenseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

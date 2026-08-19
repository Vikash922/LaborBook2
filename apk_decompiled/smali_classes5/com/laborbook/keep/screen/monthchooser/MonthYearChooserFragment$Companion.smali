.class public final Lcom/laborbook/keep/screen/monthchooser/MonthYearChooserFragment$Companion;
.super Ljava/lang/Object;
.source "MonthYearChooserFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/monthchooser/MonthYearChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/monthchooser/MonthYearChooserFragment$Companion;",
        "",
        "<init>",
        "()V",
        "newInstance",
        "Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;",
        "currentMonth",
        "",
        "currentYear",
        "keep_release"
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/keep/screen/monthchooser/MonthYearChooserFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(II)Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;
    .locals 3

    .line 28
    new-instance v0, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;

    invoke-direct {v0}, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    const-string v2, "currentMonth"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string p1, "currentYear"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

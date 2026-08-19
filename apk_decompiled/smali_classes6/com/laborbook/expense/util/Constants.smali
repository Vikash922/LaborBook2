.class public final Lcom/laborbook/expense/util/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/expense/util/Constants$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/laborbook/expense/util/Constants;",
        "",
        "<init>",
        "()V",
        "Companion",
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


# static fields
.field public static final CASH:Ljava/lang/String; = "CASH"

.field public static final CASH_IN:Ljava/lang/String; = "Cash In"

.field public static final CASH_OUT:Ljava/lang/String; = "Cash Out"

.field public static final CREDIT:Ljava/lang/String; = "CREDIT"

.field public static final Companion:Lcom/laborbook/expense/util/Constants$Companion;

.field public static final DEBIT:Ljava/lang/String; = "DEBIT"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/expense/util/Constants$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/expense/util/Constants$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/expense/util/Constants;->Companion:Lcom/laborbook/expense/util/Constants$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final Lcom/laborbook/expense/model/TransactionItem$TableHeader;
.super Lcom/laborbook/expense/model/TransactionItem;
.source "TransactionItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/expense/model/TransactionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TableHeader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/laborbook/expense/model/TransactionItem$TableHeader;",
        "Lcom/laborbook/expense/model/TransactionItem;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/laborbook/expense/model/TransactionItem$TableHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/expense/model/TransactionItem$TableHeader;

    invoke-direct {v0}, Lcom/laborbook/expense/model/TransactionItem$TableHeader;-><init>()V

    sput-object v0, Lcom/laborbook/expense/model/TransactionItem$TableHeader;->INSTANCE:Lcom/laborbook/expense/model/TransactionItem$TableHeader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/laborbook/expense/model/TransactionItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

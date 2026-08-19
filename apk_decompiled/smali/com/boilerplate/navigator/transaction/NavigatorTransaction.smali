.class public final Lcom/boilerplate/navigator/transaction/NavigatorTransaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boilerplate/navigator/transaction/NavigatorTransaction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/boilerplate/navigator/transaction/NavigatorTransaction;",
        "",
        "transactionType",
        "Lcom/boilerplate/navigator/transaction/TransactionType;",
        "<init>",
        "(Lcom/boilerplate/navigator/transaction/TransactionType;)V",
        "getTransactionType",
        "()Lcom/boilerplate/navigator/transaction/TransactionType;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "navigator_release"
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
.field public static final ATTACH_DETACH:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

.field public static final Companion:Lcom/boilerplate/navigator/transaction/NavigatorTransaction$Companion;

.field public static final SHOW_HIDE:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;


# instance fields
.field private final transactionType:Lcom/boilerplate/navigator/transaction/TransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boilerplate/navigator/transaction/NavigatorTransaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->Companion:Lcom/boilerplate/navigator/transaction/NavigatorTransaction$Companion;

    new-instance v0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    sget-object v1, Lcom/boilerplate/navigator/transaction/TransactionType;->ATTACH_DETACH:Lcom/boilerplate/navigator/transaction/TransactionType;

    invoke-direct {v0, v1}, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;-><init>(Lcom/boilerplate/navigator/transaction/TransactionType;)V

    sput-object v0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->ATTACH_DETACH:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    new-instance v0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    sget-object v1, Lcom/boilerplate/navigator/transaction/TransactionType;->SHOW_HIDE:Lcom/boilerplate/navigator/transaction/TransactionType;

    invoke-direct {v0, v1}, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;-><init>(Lcom/boilerplate/navigator/transaction/TransactionType;)V

    sput-object v0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->SHOW_HIDE:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    return-void
.end method

.method public constructor <init>(Lcom/boilerplate/navigator/transaction/TransactionType;)V
    .locals 1

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->transactionType:Lcom/boilerplate/navigator/transaction/TransactionType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/boilerplate/navigator/transaction/NavigatorTransaction;Lcom/boilerplate/navigator/transaction/TransactionType;ILjava/lang/Object;)Lcom/boilerplate/navigator/transaction/NavigatorTransaction;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->transactionType:Lcom/boilerplate/navigator/transaction/TransactionType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->copy(Lcom/boilerplate/navigator/transaction/TransactionType;)Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/boilerplate/navigator/transaction/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->transactionType:Lcom/boilerplate/navigator/transaction/TransactionType;

    return-object v0
.end method

.method public final copy(Lcom/boilerplate/navigator/transaction/TransactionType;)Lcom/boilerplate/navigator/transaction/NavigatorTransaction;
    .locals 1

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    invoke-direct {v0, p1}, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;-><init>(Lcom/boilerplate/navigator/transaction/TransactionType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    iget-object v1, p0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->transactionType:Lcom/boilerplate/navigator/transaction/TransactionType;

    iget-object p1, p1, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->transactionType:Lcom/boilerplate/navigator/transaction/TransactionType;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTransactionType()Lcom/boilerplate/navigator/transaction/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->transactionType:Lcom/boilerplate/navigator/transaction/TransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->transactionType:Lcom/boilerplate/navigator/transaction/TransactionType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavigatorTransaction(transactionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->transactionType:Lcom/boilerplate/navigator/transaction/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

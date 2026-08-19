.class public final Lcom/laborbook/expense/model/TransactionItem$DateHeader;
.super Lcom/laborbook/expense/model/TransactionItem;
.source "TransactionItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/expense/model/TransactionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DateHeader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/laborbook/expense/model/TransactionItem$DateHeader;",
        "Lcom/laborbook/expense/model/TransactionItem;",
        "date",
        "",
        "entryCount",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "getDate",
        "()Ljava/lang/String;",
        "getEntryCount",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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


# instance fields
.field private final date:Ljava/lang/String;

.field private final entryCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/laborbook/expense/model/TransactionItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->date:Ljava/lang/String;

    iput p2, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->entryCount:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/laborbook/expense/model/TransactionItem$DateHeader;Ljava/lang/String;IILjava/lang/Object;)Lcom/laborbook/expense/model/TransactionItem$DateHeader;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->date:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->entryCount:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->copy(Ljava/lang/String;I)Lcom/laborbook/expense/model/TransactionItem$DateHeader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->entryCount:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/laborbook/expense/model/TransactionItem$DateHeader;
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;

    invoke-direct {v0, p1, p2}, Lcom/laborbook/expense/model/TransactionItem$DateHeader;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/laborbook/expense/model/TransactionItem$DateHeader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/laborbook/expense/model/TransactionItem$DateHeader;

    iget-object v1, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->date:Ljava/lang/String;

    iget-object v3, p1, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->date:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->entryCount:I

    iget p1, p1, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->entryCount:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryCount()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->entryCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->date:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->entryCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DateHeader(date="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laborbook/expense/model/TransactionItem$DateHeader;->entryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;
.super Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;
.source "CashInOutUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UPDATE_SUCCESS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0019\u0012\u0006\u0010\u0003\u001a\u00028\u0001\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000c\u001a\u00028\u0001H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J(\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00028\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0013\u0010\u0003\u001a\u00028\u0001\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;",
        "T",
        "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;",
        "data",
        "isFromServer",
        "",
        "<init>",
        "(Ljava/lang/Object;Z)V",
        "getData",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "()Z",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Object;Z)Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final isFromServer:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->data:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->isFromServer:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;Ljava/lang/Object;ZILjava/lang/Object;)Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->data:Ljava/lang/Object;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->isFromServer:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->copy(Ljava/lang/Object;Z)Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->isFromServer:Z

    return v0
.end method

.method public final copy(Ljava/lang/Object;Z)Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;

    invoke-direct {v0, p1, p2}, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;

    iget-object v1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->data:Ljava/lang/Object;

    iget-object v3, p1, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->data:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->isFromServer:Z

    iget-boolean p1, p1, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->isFromServer:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->isFromServer:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isFromServer()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->isFromServer:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE_SUCCESS(data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromServer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;->isFromServer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/boilerplate/network/model/NetworkResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boilerplate/network/model/NetworkResult$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001a\u0008\u0086\u0008\u0018\u0000 $*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0001$B9\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u0019\u001a\u00020\u0004H\u00c6\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00018\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\tH\u00c6\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017JL\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u00002\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020\t2\u0008\u0010!\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\"\u001a\u00020\u000bH\u00d6\u0001J\t\u0010#\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0015R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lcom/boilerplate/network/model/NetworkResult;",
        "T",
        "",
        "status",
        "Lcom/boilerplate/network/model/NetworkResultStatus;",
        "data",
        "message",
        "",
        "isFromServer",
        "",
        "code",
        "",
        "<init>",
        "(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)V",
        "getStatus",
        "()Lcom/boilerplate/network/model/NetworkResultStatus;",
        "getData",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getMessage",
        "()Ljava/lang/String;",
        "()Z",
        "getCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)Lcom/boilerplate/network/model/NetworkResult;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Companion",
        "network_release"
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
.field public static final Companion:Lcom/boilerplate/network/model/NetworkResult$Companion;


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final isFromServer:Z

.field private final message:Ljava/lang/String;

.field private final status:Lcom/boilerplate/network/model/NetworkResultStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/boilerplate/network/model/NetworkResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boilerplate/network/model/NetworkResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/boilerplate/network/model/NetworkResult;->Companion:Lcom/boilerplate/network/model/NetworkResult$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/network/model/NetworkResultStatus;",
            "TT;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/boilerplate/network/model/NetworkResult;->status:Lcom/boilerplate/network/model/NetworkResultStatus;

    iput-object p2, p0, Lcom/boilerplate/network/model/NetworkResult;->data:Ljava/lang/Object;

    iput-object p3, p0, Lcom/boilerplate/network/model/NetworkResult;->message:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/boilerplate/network/model/NetworkResult;->isFromServer:Z

    iput-object p5, p0, Lcom/boilerplate/network/model/NetworkResult;->code:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    :cond_1
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/boilerplate/network/model/NetworkResult;-><init>(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/boilerplate/network/model/NetworkResult;Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/boilerplate/network/model/NetworkResult;->status:Lcom/boilerplate/network/model/NetworkResultStatus;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/boilerplate/network/model/NetworkResult;->data:Ljava/lang/Object;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/boilerplate/network/model/NetworkResult;->message:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/boilerplate/network/model/NetworkResult;->isFromServer:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/boilerplate/network/model/NetworkResult;->code:Ljava/lang/Integer;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/boilerplate/network/model/NetworkResult;->copy(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)Lcom/boilerplate/network/model/NetworkResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/boilerplate/network/model/NetworkResultStatus;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/model/NetworkResult;->status:Lcom/boilerplate/network/model/NetworkResultStatus;

    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/boilerplate/network/model/NetworkResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/model/NetworkResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/boilerplate/network/model/NetworkResult;->isFromServer:Z

    return v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/model/NetworkResult;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)Lcom/boilerplate/network/model/NetworkResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/network/model/NetworkResultStatus;",
            "TT;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/boilerplate/network/model/NetworkResult;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/boilerplate/network/model/NetworkResult;-><init>(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/boilerplate/network/model/NetworkResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/boilerplate/network/model/NetworkResult;

    iget-object v1, p0, Lcom/boilerplate/network/model/NetworkResult;->status:Lcom/boilerplate/network/model/NetworkResultStatus;

    iget-object v3, p1, Lcom/boilerplate/network/model/NetworkResult;->status:Lcom/boilerplate/network/model/NetworkResultStatus;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/boilerplate/network/model/NetworkResult;->data:Ljava/lang/Object;

    iget-object v3, p1, Lcom/boilerplate/network/model/NetworkResult;->data:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/boilerplate/network/model/NetworkResult;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/boilerplate/network/model/NetworkResult;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/boilerplate/network/model/NetworkResult;->isFromServer:Z

    iget-boolean v3, p1, Lcom/boilerplate/network/model/NetworkResult;->isFromServer:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/boilerplate/network/model/NetworkResult;->code:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/boilerplate/network/model/NetworkResult;->code:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/model/NetworkResult;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/boilerplate/network/model/NetworkResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/model/NetworkResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/boilerplate/network/model/NetworkResultStatus;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/model/NetworkResult;->status:Lcom/boilerplate/network/model/NetworkResultStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/boilerplate/network/model/NetworkResult;->status:Lcom/boilerplate/network/model/NetworkResultStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/boilerplate/network/model/NetworkResult;->data:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/boilerplate/network/model/NetworkResult;->message:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/boilerplate/network/model/NetworkResult;->isFromServer:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/boilerplate/network/model/NetworkResult;->code:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    return v1
.end method

.method public final isFromServer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/boilerplate/network/model/NetworkResult;->isFromServer:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkResult(status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/boilerplate/network/model/NetworkResult;->status:Lcom/boilerplate/network/model/NetworkResultStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/network/model/NetworkResult;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/network/model/NetworkResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromServer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/boilerplate/network/model/NetworkResult;->isFromServer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/network/model/NetworkResult;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

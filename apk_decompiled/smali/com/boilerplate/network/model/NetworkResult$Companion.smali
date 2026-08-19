.class public final Lcom/boilerplate/network/model/NetworkResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boilerplate/network/model/NetworkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u0001H\u0006\u00a2\u0006\u0002\u0010\u0008J5\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0006\u0010\u0007\u001a\u0002H\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ=\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0006\u0010\u0007\u001a\u0002H\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/boilerplate/network/model/NetworkResult$Companion;",
        "",
        "<init>",
        "()V",
        "loading",
        "Lcom/boilerplate/network/model/NetworkResult;",
        "T",
        "data",
        "(Ljava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;",
        "success",
        "code",
        "",
        "isFromServer",
        "",
        "(Ljava/lang/Object;Ljava/lang/Integer;Z)Lcom/boilerplate/network/model/NetworkResult;",
        "error",
        "message",
        "",
        "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;Z)Lcom/boilerplate/network/model/NetworkResult;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/boilerplate/network/model/NetworkResult$Companion;-><init>()V

    return-void
.end method

.method public static synthetic error$default(Lcom/boilerplate/network/model/NetworkResult$Companion;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/boilerplate/network/model/NetworkResult$Companion;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;Z)Lcom/boilerplate/network/model/NetworkResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic success$default(Lcom/boilerplate/network/model/NetworkResult$Companion;Ljava/lang/Object;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/boilerplate/network/model/NetworkResult$Companion;->success(Ljava/lang/Object;Ljava/lang/Integer;Z)Lcom/boilerplate/network/model/NetworkResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;Z)Lcom/boilerplate/network/model/NetworkResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Z)",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "TT;>;"
        }
    .end annotation

    sget-object v1, Lcom/boilerplate/network/model/NetworkResultStatus;->ERROR:Lcom/boilerplate/network/model/NetworkResultStatus;

    new-instance v6, Lcom/boilerplate/network/model/NetworkResult;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/boilerplate/network/model/NetworkResult;-><init>(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)V

    return-object v6
.end method

.method public final loading(Ljava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/boilerplate/network/model/NetworkResult;

    sget-object v1, Lcom/boilerplate/network/model/NetworkResultStatus;->LOADING:Lcom/boilerplate/network/model/NetworkResultStatus;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/boilerplate/network/model/NetworkResult;-><init>(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public final success(Ljava/lang/Object;Ljava/lang/Integer;Z)Lcom/boilerplate/network/model/NetworkResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Integer;",
            "Z)",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lcom/boilerplate/network/model/NetworkResult;

    sget-object v1, Lcom/boilerplate/network/model/NetworkResultStatus;->SUCCESS:Lcom/boilerplate/network/model/NetworkResultStatus;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/boilerplate/network/model/NetworkResult;-><init>(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)V

    return-object v6
.end method

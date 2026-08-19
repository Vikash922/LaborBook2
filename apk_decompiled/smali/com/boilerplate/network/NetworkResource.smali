.class public final Lcom/boilerplate/network/NetworkResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/boilerplate/network/RefreshControl$Listener;
.implements Lcom/boilerplate/network/ITimeLimitedResource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Output:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/boilerplate/network/RefreshControl$Listener;",
        "Lcom/boilerplate/network/ITimeLimitedResource;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u00022\u00020\u0003B=\u0012*\u0010\u0004\u001a&\u0008\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0018\u00010\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rBI\u0008\u0010\u0012*\u0010\u0004\u001a&\u0008\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0018\u00010\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u000c\u0010\u0010B\u00a7\u0001\u0008\u0016\u0012*\u0010\u0004\u001a&\u0008\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0018\u00010\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u0012$\u0010\u0011\u001a \u0008\u0001\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00120\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u0012\"\u0010\u0013\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0014\u0012\u001c\u0010\u0016\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\u0017J&\u0010\u001d\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001f0\u001e2\u0008\u0008\u0002\u0010 \u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010!J\u0017\u0010\"\u001a\u00020\u000f2\u0008\u0010#\u001a\u0004\u0018\u00018\u0000H\u0002\u00a2\u0006\u0002\u0010$J\u000e\u0010%\u001a\u00020\u0015H\u0096@\u00a2\u0006\u0002\u0010&J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0015H\u0082@\u00a2\u0006\u0002\u0010&J\u0010\u0010(\u001a\u0004\u0018\u00018\u0000H\u0082@\u00a2\u0006\u0002\u0010&J\u0016\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001fH\u0082@\u00a2\u0006\u0002\u0010&J,\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001f2\u0014\u0010+\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0018\u00010\u0007H\u0082@\u00a2\u0006\u0002\u0010,J\u0016\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001fH\u0086@\u00a2\u0006\u0002\u0010&J\u000e\u0010.\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010&J\u0016\u0010/\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u000fH\u0096A\u00a2\u0006\u0002\u0010!R4\u0010\u0004\u001a&\u0008\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0018\u00010\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R0\u0010\u0011\u001a\"\u0008\u0001\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00120\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0018R.\u0010\u0013\u001a \u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0019R(\u0010\u0016\u001a\u001a\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0012\u0010\u001a\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000b\u00100\u001a\u0004\u0018\u000101X\u0096\u0005R\t\u00102\u001a\u000203X\u0096\u000f\u00a8\u00064"
    }
    d2 = {
        "Lcom/boilerplate/network/NetworkResource;",
        "Output",
        "Lcom/boilerplate/network/RefreshControl$Listener;",
        "Lcom/boilerplate/network/ITimeLimitedResource;",
        "remoteFetch",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "Lretrofit2/Response;",
        "Lcom/boilerplate/network/model/DataResponse;",
        "",
        "refreshControl",
        "Lcom/boilerplate/network/RefreshControl;",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;)V",
        "isCallingGenerateAccessToken",
        "",
        "(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;Z)V",
        "localFetch",
        "",
        "localStore",
        "Lkotlin/Function2;",
        "",
        "localDelete",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;)V",
        "Lkotlin/jvm/functions/Function1;",
        "Lkotlin/jvm/functions/Function2;",
        "localData",
        "Ljava/lang/Object;",
        "isAccessTokenAPICalled",
        "query",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/boilerplate/network/model/NetworkResult;",
        "force",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isSameAsCached",
        "output",
        "(Ljava/lang/Object;)Z",
        "cleanup",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteLocal",
        "fetchFromLocal",
        "fetchFromRemote",
        "getDataFromResponse",
        "response",
        "(Lretrofit2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "queryWithoutFlow",
        "generateAccessToken",
        "evict",
        "lastUpdate",
        "Ljava/util/Date;",
        "refreshRate",
        "",
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


# instance fields
.field private isAccessTokenAPICalled:Z

.field private isCallingGenerateAccessToken:Z

.field private localData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutput;"
        }
    .end annotation
.end field

.field private localDelete:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private localFetch:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TOutput;>;>;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private localStore:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-TOutput;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshControl:Lcom/boilerplate/network/RefreshControl;

.field private final remoteFetch:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "TOutput;>;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "TOutput;>;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/boilerplate/network/RefreshControl;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "remoteFetch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/boilerplate/network/NetworkResource;->remoteFetch:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/boilerplate/network/NetworkResource;->refreshControl:Lcom/boilerplate/network/RefreshControl;

    invoke-virtual {p2, p0}, Lcom/boilerplate/network/RefreshControl;->addListener(Lcom/boilerplate/network/RefreshControl$Listener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 2
    new-instance p2, Lcom/boilerplate/network/RefreshControl;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/boilerplate/network/RefreshControl;-><init>(JLjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/boilerplate/network/NetworkResource;-><init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "TOutput;>;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/boilerplate/network/RefreshControl;",
            "Z)V"
        }
    .end annotation

    .line 3
    const-string v0, "remoteFetch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/boilerplate/network/NetworkResource;-><init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;)V

    iput-boolean p3, p0, Lcom/boilerplate/network/NetworkResource;->isCallingGenerateAccessToken:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 4
    new-instance p2, Lcom/boilerplate/network/RefreshControl;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/boilerplate/network/RefreshControl;-><init>(JLjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/boilerplate/network/NetworkResource;-><init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;Z)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "TOutput;>;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TOutput;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TOutput;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/boilerplate/network/RefreshControl;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "remoteFetch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localFetch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDelete"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshControl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p5}, Lcom/boilerplate/network/NetworkResource;-><init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;)V

    iput-object p2, p0, Lcom/boilerplate/network/NetworkResource;->localFetch:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/boilerplate/network/NetworkResource;->localStore:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/boilerplate/network/NetworkResource;->localDelete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/boilerplate/network/RefreshControl;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/boilerplate/network/RefreshControl;-><init>(JLjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p5

    :goto_0
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Lcom/boilerplate/network/NetworkResource;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;)V

    return-void
.end method

.method public static final synthetic access$deleteLocal(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/boilerplate/network/NetworkResource;->deleteLocal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchFromLocal(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/boilerplate/network/NetworkResource;->fetchFromLocal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchFromRemote(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/boilerplate/network/NetworkResource;->fetchFromRemote(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateAccessToken(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/boilerplate/network/NetworkResource;->generateAccessToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDataFromResponse(Lcom/boilerplate/network/NetworkResource;Lretrofit2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/boilerplate/network/NetworkResource;->getDataFromResponse(Lretrofit2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLocalData$p(Lcom/boilerplate/network/NetworkResource;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/boilerplate/network/NetworkResource;->localData:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getLocalDelete$p(Lcom/boilerplate/network/NetworkResource;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/boilerplate/network/NetworkResource;->localDelete:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getLocalFetch$p(Lcom/boilerplate/network/NetworkResource;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/boilerplate/network/NetworkResource;->localFetch:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getLocalStore$p(Lcom/boilerplate/network/NetworkResource;)Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/boilerplate/network/NetworkResource;->localStore:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getRefreshControl$p(Lcom/boilerplate/network/NetworkResource;)Lcom/boilerplate/network/RefreshControl;
    .locals 0

    iget-object p0, p0, Lcom/boilerplate/network/NetworkResource;->refreshControl:Lcom/boilerplate/network/RefreshControl;

    return-object p0
.end method

.method public static final synthetic access$getRemoteFetch$p(Lcom/boilerplate/network/NetworkResource;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/boilerplate/network/NetworkResource;->remoteFetch:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$isSameAsCached(Lcom/boilerplate/network/NetworkResource;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/boilerplate/network/NetworkResource;->isSameAsCached(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setLocalData$p(Lcom/boilerplate/network/NetworkResource;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/boilerplate/network/NetworkResource;->localData:Ljava/lang/Object;

    return-void
.end method

.method private final deleteLocal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/boilerplate/network/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/boilerplate/network/a;

    iget v1, v0, Lcom/boilerplate/network/a;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/boilerplate/network/a;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/boilerplate/network/a;

    invoke-direct {v0, p0, p1}, Lcom/boilerplate/network/a;-><init>(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/boilerplate/network/a;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/boilerplate/network/a;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v2, Lcom/boilerplate/network/b;

    invoke-direct {v2, p0, v3}, Lcom/boilerplate/network/b;-><init>(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/boilerplate/network/a;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, p1

    :goto_3
    return-object v3
.end method

.method private final fetchFromLocal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TOutput;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/boilerplate/network/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/boilerplate/network/c;

    iget v1, v0, Lcom/boilerplate/network/c;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/boilerplate/network/c;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/boilerplate/network/c;

    invoke-direct {v0, p0, p1}, Lcom/boilerplate/network/c;-><init>(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/boilerplate/network/c;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/boilerplate/network/c;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v2, Lcom/boilerplate/network/d;

    invoke-direct {v2, p0, v3}, Lcom/boilerplate/network/d;-><init>(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/boilerplate/network/c;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, p1

    :goto_3
    return-object v3
.end method

.method private final fetchFromRemote(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "+TOutput;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/boilerplate/network/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/boilerplate/network/e;

    iget v1, v0, Lcom/boilerplate/network/e;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/boilerplate/network/e;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/boilerplate/network/e;

    invoke-direct {v0, p0, p1}, Lcom/boilerplate/network/e;-><init>(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/boilerplate/network/e;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/boilerplate/network/e;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/boilerplate/network/e;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lcom/boilerplate/network/e;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/boilerplate/network/NetworkResource;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v5, Lcom/boilerplate/network/f;

    const/4 v6, 0x0

    invoke-direct {v5, p1, p0, v2, v6}, Lcom/boilerplate/network/f;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/boilerplate/network/NetworkResource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/boilerplate/network/e;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/boilerplate/network/e;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/boilerplate/network/e;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, v2

    :goto_1
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/boilerplate/network/model/NetworkResult;

    if-nez p1, :cond_4

    sget-object v1, Lcom/boilerplate/network/model/NetworkResult;->Companion:Lcom/boilerplate/network/model/NetworkResult$Companion;

    iget-object v2, v0, Lcom/boilerplate/network/NetworkResource;->localData:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v3, ""

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/boilerplate/network/model/NetworkResult$Companion;->error$default(Lcom/boilerplate/network/model/NetworkResult$Companion;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method private final generateAccessToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/boilerplate/network/g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/boilerplate/network/g;

    iget v1, v0, Lcom/boilerplate/network/g;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/boilerplate/network/g;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/boilerplate/network/g;

    invoke-direct {v0, p0, p1}, Lcom/boilerplate/network/g;-><init>(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/boilerplate/network/g;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/boilerplate/network/g;->label:I

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object v1, v0, Lcom/boilerplate/network/g;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;

    iget-object v0, v0, Lcom/boilerplate/network/g;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/boilerplate/network/NetworkHandler;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/boilerplate/network/NetworkHandler;->Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

    invoke-virtual {p1}, Lcom/boilerplate/network/NetworkHandler$Companion;->getInstance()Lcom/boilerplate/network/NetworkHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/boilerplate/network/NetworkHandler;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "https://api-sbox.a4b.io/"

    goto :goto_1

    :cond_3
    const-string v2, "https://api.a4b.io/"

    :goto_1
    invoke-virtual {p1}, Lcom/boilerplate/network/NetworkHandler;->getDefaultAuthCallback$network_release()Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;

    move-result-object v6

    invoke-virtual {p1}, Lcom/boilerplate/network/NetworkHandler;->getRefreshToken$network_release()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    move-object v7, v3

    :cond_4
    new-instance v8, Lcom/boilerplate/network/auth/data/repository/AuthRepositoryImpl;

    invoke-direct {v8}, Lcom/boilerplate/network/auth/data/repository/AuthRepositoryImpl;-><init>()V

    const-string v9, "refresh_token"

    invoke-static {v9, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-array v9, v5, [Lkotlin/Pair;

    aput-object v7, v9, v4

    invoke-static {v9}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v7

    iput-object p1, v0, Lcom/boilerplate/network/g;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/boilerplate/network/g;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/boilerplate/network/g;->label:I

    invoke-virtual {v8, v2, v7, v0}, Lcom/boilerplate/network/auth/data/repository/AuthRepositoryImpl;->generateAccessToken(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, v6

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    :goto_2
    check-cast p1, Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getStatus()Lcom/boilerplate/network/model/NetworkResultStatus;

    move-result-object v2

    sget-object v6, Lcom/boilerplate/network/model/NetworkResultStatus;->SUCCESS:Lcom/boilerplate/network/model/NetworkResultStatus;

    const/4 v7, 0x0

    if-ne v2, v6, :cond_c

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boilerplate/network/auth/model/FixTokenResponse;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/boilerplate/network/auth/model/FixTokenResponse;->getToken()Lcom/boilerplate/network/auth/model/FixToken;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/boilerplate/network/auth/model/FixToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v2

    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Lcom/boilerplate/network/NetworkHandler;->setAccessToken(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boilerplate/network/auth/model/FixTokenResponse;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/boilerplate/network/auth/model/FixTokenResponse;->getToken()Lcom/boilerplate/network/auth/model/FixToken;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/boilerplate/network/auth/model/FixToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v7

    :goto_4
    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boilerplate/network/auth/model/FixTokenResponse;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/boilerplate/network/auth/model/FixTokenResponse;->getToken()Lcom/boilerplate/network/auth/model/FixToken;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/boilerplate/network/auth/model/FixToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_9
    move-object v2, v7

    :goto_5
    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/boilerplate/network/auth/model/FixTokenResponse;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/boilerplate/network/auth/model/FixTokenResponse;->getToken()Lcom/boilerplate/network/auth/model/FixToken;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/boilerplate/network/auth/model/FixToken;->getRefreshExpiresIn()Ljava/lang/Long;

    move-result-object v7

    :cond_a
    invoke-interface {v1, v0, v2, v7}, Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;->onNewAccessTokenGenerated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_b
    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;->onRefreshTokenFailed()V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_d
    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final getDataFromResponse(Lretrofit2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "TOutput;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "+TOutput;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/boilerplate/network/h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/boilerplate/network/h;

    iget v1, v0, Lcom/boilerplate/network/h;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/boilerplate/network/h;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/boilerplate/network/h;

    invoke-direct {v0, p0, p2}, Lcom/boilerplate/network/h;-><init>(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/boilerplate/network/h;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/boilerplate/network/h;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/boilerplate/network/h;->L$1:Ljava/lang/Object;

    check-cast p1, Lretrofit2/Response;

    iget-object v2, v0, Lcom/boilerplate/network/h;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/boilerplate/network/NetworkResource;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p2

    if-ne p2, v4, :cond_5

    sget-object p2, Lcom/boilerplate/network/model/NetworkResult;->Companion:Lcom/boilerplate/network/model/NetworkResult$Companion;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boilerplate/network/model/DataResponse;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/boilerplate/network/model/DataResponse;->getData()Ljava/lang/Object;

    move-result-object v5

    :cond_4
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v5, p1, v4}, Lcom/boilerplate/network/model/NetworkResult$Companion;->success(Ljava/lang/Object;Ljava/lang/Integer;Z)Lcom/boilerplate/network/model/NetworkResult;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p2

    const/16 v2, 0x191

    if-ne p2, v2, :cond_8

    iget-boolean p2, p0, Lcom/boilerplate/network/NetworkResource;->isAccessTokenAPICalled:Z

    if-nez p2, :cond_8

    iput-object p0, v0, Lcom/boilerplate/network/h;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/boilerplate/network/h;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/boilerplate/network/h;->label:I

    invoke-direct {p0, v0}, Lcom/boilerplate/network/NetworkResource;->generateAccessToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    iput-object v5, v0, Lcom/boilerplate/network/h;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/boilerplate/network/h;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/boilerplate/network/h;->label:I

    invoke-direct {v2, v0}, Lcom/boilerplate/network/NetworkResource;->fetchFromRemote(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    return-object p2

    :cond_8
    move-object v2, p0

    :cond_9
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    move-object v0, v5

    :goto_3
    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v5

    :goto_4
    if-eqz v0, :cond_e

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move-object v1, v5

    :goto_5
    if-eqz v1, :cond_d

    const-string v0, "error"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    move-object v0, v5

    :goto_6
    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_7
    sget-object v6, Lcom/boilerplate/network/model/NetworkResult;->Companion:Lcom/boilerplate/network/model/NetworkResult$Companion;

    iget-object v7, v2, Lcom/boilerplate/network/NetworkResource;->localData:Ljava/lang/Object;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_f
    move-object v9, v5

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/boilerplate/network/model/NetworkResult$Companion;->error$default(Lcom/boilerplate/network/model/NetworkResult$Companion;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;

    move-result-object p1

    return-object p1
.end method

.method private final isSameAsCached(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutput;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/boilerplate/network/NetworkResource;->localData:Ljava/lang/Object;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/boilerplate/network/utils/NetworkUtils;->INSTANCE:Lcom/boilerplate/network/utils/NetworkUtils;

    invoke-virtual {v2, p1, v1}, Lcom/boilerplate/network/utils/NetworkUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static synthetic query$default(Lcom/boilerplate/network/NetworkResource;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/network/NetworkResource;->query(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cleanup(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/boilerplate/network/NetworkResource;->deleteLocal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public evict(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/boilerplate/network/NetworkResource;->refreshControl:Lcom/boilerplate/network/RefreshControl;

    invoke-virtual {v0, p1, p2}, Lcom/boilerplate/network/RefreshControl;->evict(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLastUpdate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/NetworkResource;->refreshControl:Lcom/boilerplate/network/RefreshControl;

    invoke-virtual {v0}, Lcom/boilerplate/network/RefreshControl;->getLastUpdate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshRate()J
    .locals 2

    iget-object v0, p0, Lcom/boilerplate/network/NetworkResource;->refreshControl:Lcom/boilerplate/network/RefreshControl;

    invoke-virtual {v0}, Lcom/boilerplate/network/RefreshControl;->getRefreshRate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final query(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "+TOutput;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/boilerplate/network/j;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lcom/boilerplate/network/j;-><init>(ZLcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public final queryWithoutFlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "+TOutput;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/boilerplate/network/NetworkResource;->fetchFromRemote(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshRate(J)V
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/NetworkResource;->refreshControl:Lcom/boilerplate/network/RefreshControl;

    invoke-virtual {v0, p1, p2}, Lcom/boilerplate/network/RefreshControl;->setRefreshRate(J)V

    return-void
.end method

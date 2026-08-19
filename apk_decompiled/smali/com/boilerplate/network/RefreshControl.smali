.class public final Lcom/boilerplate/network/RefreshControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/boilerplate/network/ITimeLimitedResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boilerplate/network/RefreshControl$Companion;,
        Lcom/boilerplate/network/RefreshControl$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u001d\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u0000J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\nJ\u0006\u0010\u001c\u001a\u00020\u0015J\u0006\u0010\u001d\u001a\u00020\u0017R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lcom/boilerplate/network/RefreshControl;",
        "Lcom/boilerplate/network/ITimeLimitedResource;",
        "rate",
        "",
        "lastUpdateDate",
        "Ljava/util/Date;",
        "<init>",
        "(JLjava/util/Date;)V",
        "listeners",
        "",
        "Lcom/boilerplate/network/RefreshControl$Listener;",
        "children",
        "refreshRate",
        "getRefreshRate",
        "()J",
        "setRefreshRate",
        "(J)V",
        "lastUpdate",
        "getLastUpdate",
        "()Ljava/util/Date;",
        "evict",
        "",
        "cleanup",
        "",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createChild",
        "addListener",
        "listener",
        "refresh",
        "isExpired",
        "Companion",
        "Listener",
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
.field public static final Companion:Lcom/boilerplate/network/RefreshControl$Companion;

.field private static final DEFAULT_REFRESH_RATE_MS:J


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/boilerplate/network/RefreshControl;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdateDate:Ljava/util/Date;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/boilerplate/network/RefreshControl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private refreshRate:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/boilerplate/network/RefreshControl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boilerplate/network/RefreshControl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/boilerplate/network/RefreshControl;->Companion:Lcom/boilerplate/network/RefreshControl$Companion;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/boilerplate/network/RefreshControl;->DEFAULT_REFRESH_RATE_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/boilerplate/network/RefreshControl;-><init>(JLjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/Date;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/boilerplate/network/RefreshControl;->lastUpdateDate:Ljava/util/Date;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/boilerplate/network/RefreshControl;->listeners:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/boilerplate/network/RefreshControl;->children:Ljava/util/List;

    iput-wide p1, p0, Lcom/boilerplate/network/RefreshControl;->refreshRate:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 3
    sget-wide p1, Lcom/boilerplate/network/RefreshControl;->DEFAULT_REFRESH_RATE_MS:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/boilerplate/network/RefreshControl;-><init>(JLjava/util/Date;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_REFRESH_RATE_MS$cp()J
    .locals 2

    sget-wide v0, Lcom/boilerplate/network/RefreshControl;->DEFAULT_REFRESH_RATE_MS:J

    return-wide v0
.end method


# virtual methods
.method public final addListener(Lcom/boilerplate/network/RefreshControl$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/network/RefreshControl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final createChild()Lcom/boilerplate/network/RefreshControl;
    .locals 4

    new-instance v0, Lcom/boilerplate/network/RefreshControl;

    invoke-virtual {p0}, Lcom/boilerplate/network/RefreshControl;->getRefreshRate()J

    move-result-wide v1

    iget-object v3, p0, Lcom/boilerplate/network/RefreshControl;->lastUpdateDate:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3}, Lcom/boilerplate/network/RefreshControl;-><init>(JLjava/util/Date;)V

    iget-object v1, p0, Lcom/boilerplate/network/RefreshControl;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public evict(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p2, Lcom/boilerplate/network/k;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/boilerplate/network/k;

    iget v1, v0, Lcom/boilerplate/network/k;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/boilerplate/network/k;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/boilerplate/network/k;

    invoke-direct {v0, p0, p2}, Lcom/boilerplate/network/k;-><init>(Lcom/boilerplate/network/RefreshControl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/boilerplate/network/k;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/boilerplate/network/k;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/boilerplate/network/k;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v0, Lcom/boilerplate/network/k;->Z$0:Z

    iget-object v2, v0, Lcom/boilerplate/network/k;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v0, Lcom/boilerplate/network/k;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/boilerplate/network/RefreshControl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/boilerplate/network/RefreshControl;->lastUpdateDate:Ljava/util/Date;

    iget-object p2, p0, Lcom/boilerplate/network/RefreshControl;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, p0

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/boilerplate/network/RefreshControl;

    iput-object v6, v0, Lcom/boilerplate/network/k;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/boilerplate/network/k;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/boilerplate/network/k;->Z$0:Z

    iput v4, v0, Lcom/boilerplate/network/k;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/boilerplate/network/RefreshControl;->evict(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_5
    if-eqz p1, :cond_7

    iget-object p1, v6, Lcom/boilerplate/network/RefreshControl;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/boilerplate/network/RefreshControl$Listener;

    iput-object p1, v0, Lcom/boilerplate/network/k;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/boilerplate/network/k;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/boilerplate/network/k;->label:I

    invoke-interface {p2, v0}, Lcom/boilerplate/network/RefreshControl$Listener;->cleanup(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getLastUpdate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/RefreshControl;->lastUpdateDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRefreshRate()J
    .locals 2

    iget-wide v0, p0, Lcom/boilerplate/network/RefreshControl;->refreshRate:J

    return-wide v0
.end method

.method public final isExpired()Z
    .locals 5

    iget-object v0, p0, Lcom/boilerplate/network/RefreshControl;->lastUpdateDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/boilerplate/network/RefreshControl;->getRefreshRate()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final refresh()V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/boilerplate/network/RefreshControl;->lastUpdateDate:Ljava/util/Date;

    return-void
.end method

.method public setRefreshRate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/boilerplate/network/RefreshControl;->refreshRate:J

    return-void
.end method

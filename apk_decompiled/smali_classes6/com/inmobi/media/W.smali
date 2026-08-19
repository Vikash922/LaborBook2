.class public final Lcom/inmobi/media/W;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "mAdType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/W;->a:Ljava/lang/String;

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lcom/inmobi/media/W;->b:J

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/inmobi/media/W;->f:Ljava/lang/String;

    .line 6
    const-string p1, ""

    iput-object p1, p0, Lcom/inmobi/media/W;->g:Ljava/lang/String;

    .line 10
    const-string p1, "activity"

    iput-object p1, p0, Lcom/inmobi/media/W;->i:Ljava/lang/String;

    return-void
.end method

.method private static synthetic b()V
    .locals 0

    return-void
.end method

.method private static synthetic c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/inmobi/media/W;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/media/W;->b:J

    return-object p0
.end method

.method public final a(Lcom/inmobi/media/Y;)Lcom/inmobi/media/W;
    .locals 2

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/inmobi/media/Y;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/media/W;->b:J

    .line 3
    invoke-virtual {p1}, Lcom/inmobi/media/Y;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/media/W;->i:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/inmobi/media/Y;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/media/W;->c:Ljava/util/Map;

    .line 5
    invoke-virtual {p1}, Lcom/inmobi/media/Y;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/W;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/inmobi/media/W;
    .locals 1

    const-string v0, "adSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/inmobi/media/W;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/inmobi/media/W;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/inmobi/media/W;"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/inmobi/media/W;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final a(Z)Lcom/inmobi/media/W;
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/inmobi/media/W;->h:Z

    return-object p0
.end method

.method public final a()Lcom/inmobi/media/Y;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 9
    iget-wide v1, p0, Lcom/inmobi/media/W;->b:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 13
    new-instance v7, Lcom/inmobi/media/Y;

    .line 15
    iget-object v0, p0, Lcom/inmobi/media/W;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 16
    const-string v3, "tp"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    move-object v3, v0

    .line 17
    iget-object v4, p0, Lcom/inmobi/media/W;->a:Ljava/lang/String;

    .line 18
    iget-object v5, p0, Lcom/inmobi/media/W;->e:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/inmobi/media/Y;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iget-object v0, p0, Lcom/inmobi/media/W;->d:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/inmobi/media/Y;->b(Lcom/inmobi/media/Y;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/inmobi/media/W;->c:Ljava/util/Map;

    invoke-virtual {v7, v0}, Lcom/inmobi/media/Y;->a(Ljava/util/Map;)V

    .line 27
    iget-object v0, p0, Lcom/inmobi/media/W;->g:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/inmobi/media/Y;->a(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/inmobi/media/W;->i:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/inmobi/media/Y;->b(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/inmobi/media/W;->f:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/inmobi/media/Y;->c(Lcom/inmobi/media/Y;Ljava/lang/String;)V

    .line 30
    iget-boolean v0, p0, Lcom/inmobi/media/W;->h:Z

    invoke-static {v7, v0}, Lcom/inmobi/media/Y;->a(Lcom/inmobi/media/Y;Z)V

    .line 31
    iget-object v0, p0, Lcom/inmobi/media/W;->j:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/inmobi/media/Y;->a(Lcom/inmobi/media/Y;Ljava/lang/String;)V

    return-object v7

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "When the integration type is IM, IM-Plc can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/inmobi/media/W;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/W;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/inmobi/media/W;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/W;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/inmobi/media/W;
    .locals 1

    const-string v0, "m10Context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/W;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/inmobi/media/W;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/W;->e:Ljava/lang/String;

    return-object p0
.end method

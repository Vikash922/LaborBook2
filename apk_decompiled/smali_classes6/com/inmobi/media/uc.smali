.class public final Lcom/inmobi/media/uc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/lc;

.field public final b:Lcom/inmobi/media/Eb;

.field public final c:Lcom/inmobi/media/vc;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/lc;Ljava/util/List;)V
    .locals 3

    const-string v0, "telemetryConfigMetaData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samplingEvents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/uc;->a:Lcom/inmobi/media/lc;

    .line 8
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 9
    new-instance v2, Lcom/inmobi/media/Eb;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/inmobi/media/Eb;-><init>(Lcom/inmobi/media/lc;DLjava/util/List;)V

    iput-object v2, p0, Lcom/inmobi/media/uc;->b:Lcom/inmobi/media/Eb;

    .line 10
    new-instance p2, Lcom/inmobi/media/vc;

    invoke-direct {p2, p1, v0, v1}, Lcom/inmobi/media/vc;-><init>(Lcom/inmobi/media/lc;D)V

    iput-object p2, p0, Lcom/inmobi/media/uc;->c:Lcom/inmobi/media/vc;

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/mc;Ljava/lang/String;)I
    .locals 2

    const-string v0, "telemetryEventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/uc;->c:Lcom/inmobi/media/vc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-wide v0, p1, Lcom/inmobi/media/vc;->b:D

    iget-object p1, p1, Lcom/inmobi/media/vc;->a:Lcom/inmobi/media/lc;

    .line 21
    iget-wide p1, p1, Lcom/inmobi/media/lc;->g:D

    cmpg-double p1, v0, p1

    if-gez p1, :cond_2

    .line 22
    sget-object p1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/uc;->b:Lcom/inmobi/media/Eb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p1, Lcom/inmobi/media/Eb;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 87
    iget-wide v0, p1, Lcom/inmobi/media/Eb;->b:D

    iget-object p1, p1, Lcom/inmobi/media/Eb;->a:Lcom/inmobi/media/lc;

    .line 88
    iget-wide p1, p1, Lcom/inmobi/media/lc;->g:D

    cmpg-double p1, v0, p1

    if-gez p1, :cond_2

    .line 89
    sget-object p1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    :goto_0
    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

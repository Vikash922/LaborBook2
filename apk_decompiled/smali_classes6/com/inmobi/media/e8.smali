.class public final Lcom/inmobi/media/e8;
.super Lcom/inmobi/media/Ic;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/C7;)V
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/inmobi/media/Ic;-><init>(Lcom/inmobi/media/Q0;B)V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/media/e8;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/inmobi/media/e8;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/C7;

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 43
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Ic;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Q0;->c(Lcom/inmobi/media/E0;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Ic;->b(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/e8;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/C7;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    const/4 p1, 0x4

    .line 6
    invoke-virtual {v0, p1}, Lcom/inmobi/media/Q0;->d(B)V

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->k()Lcom/inmobi/media/x;

    move-result-object p1

    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v2

    .line 10
    instance-of v3, p1, Lcom/inmobi/media/t7;

    const-string v4, "TAG"

    const-string v5, "C7"

    if-eqz v3, :cond_1

    .line 11
    check-cast p1, Lcom/inmobi/media/t7;

    .line 12
    iput-object v1, p1, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    .line 13
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->T()B

    move-result v1

    .line 14
    iput-byte v1, p1, Lcom/inmobi/media/t7;->K:B

    .line 15
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->s()Lcom/inmobi/media/S0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/inmobi/media/S0;->i:J

    .line 17
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->u0()V

    .line 18
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->z0()V

    if-eqz v2, :cond_3

    .line 20
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v2}, Lcom/inmobi/media/Q0;->f(Lcom/inmobi/media/E0;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    .line 22
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {v2, v0, p1}, Lcom/inmobi/media/E0;->a(Lcom/inmobi/media/Q0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 37
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 40
    invoke-virtual {v0, v1, p1, v2}, Lcom/inmobi/media/Q0;->a(Ljava/lang/ref/WeakReference;SLcom/inmobi/ads/InMobiAdRequestStatus;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/E1;->c()V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/e8;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/C7;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->LOW_MEMORY:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/E0;->a(Lcom/inmobi/media/Q0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    :cond_1
    return-void
.end method

.class public final Lcom/inmobi/media/J0;
.super Lcom/inmobi/media/ab;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Q0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Q0;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/J0;->a:Lcom/inmobi/media/Q0;

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/ab;-><init>()V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/Q0;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    const/16 v2, 0x2b

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    return-void
.end method

.method public static final b(Lcom/inmobi/media/Q0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Q0;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->f()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/rc;)V
    .locals 1

    const-string v0, "telemetryOnAdImpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/J0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/rc;)V

    return-void
.end method

.method public final f(Lcom/inmobi/media/Ya;)V
    .locals 1

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/J0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {p1}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/J0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {p1}, Lcom/inmobi/media/Q0;->q0()V

    :cond_0
    return-void
.end method

.method public final g(Lcom/inmobi/media/Ya;)V
    .locals 2

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/inmobi/media/J0;->a:Lcom/inmobi/media/Q0;

    new-instance v1, Lcom/inmobi/media/J0$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/inmobi/media/J0$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/Q0;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h(Lcom/inmobi/media/Ya;)V
    .locals 2

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/J0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {p1}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/inmobi/media/J0;->a:Lcom/inmobi/media/Q0;

    new-instance v1, Lcom/inmobi/media/J0$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/inmobi/media/J0$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/Q0;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

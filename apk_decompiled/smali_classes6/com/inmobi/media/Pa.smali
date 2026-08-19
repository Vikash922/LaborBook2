.class public final Lcom/inmobi/media/Pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/c2;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Ya;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    .line 546
    iget-object v0, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 547
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 548
    const-string v2, "access$getTAG$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "onCCTScreenDismissed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->w()V

    .line 550
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    const-string v3, "customTabClose"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/Ya;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(IIIII)V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    .line 552
    iget-object v0, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 553
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 554
    const-string v2, "access$getTAG$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "onCCTLayout"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    .line 556
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 557
    const-string v2, "event"

    const-string v3, "customTabLayout"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 559
    invoke-static {p1}, Lcom/inmobi/media/y2;->a(I)I

    move-result p1

    const-string v3, "left"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 560
    invoke-static {p2}, Lcom/inmobi/media/y2;->a(I)I

    move-result p1

    const-string p2, "top"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 561
    invoke-static {p3}, Lcom/inmobi/media/y2;->a(I)I

    move-result p1

    const-string p2, "right"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 562
    invoke-static {p4}, Lcom/inmobi/media/y2;->a(I)I

    move-result p1

    const-string p2, "bottom"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 563
    const-string p1, "state"

    invoke-virtual {v2, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 564
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 565
    const-string p1, "layout"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Ya;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "landingPageFunnelState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v1, "funnelState"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    new-instance v1, Lcom/inmobi/media/n6;

    invoke-direct {v1, v0}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/media/o6;)V

    invoke-static {p1, p2, p3, v1}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/media/o6;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 4
    const-string v2, "access$getTAG$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "onCCTScreenDisplayed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/ab;->e(Lcom/inmobi/media/Ya;)V

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    const-string v3, "customTabOpen"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/Ya;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 4
    const-string v2, "access$getTAG$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "onCCTPageLoadedSuccessfully"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Pa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->m()V

    return-void
.end method

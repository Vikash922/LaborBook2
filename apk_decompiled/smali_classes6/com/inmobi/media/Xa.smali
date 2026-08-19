.class public final Lcom/inmobi/media/Xa;
.super Lcom/inmobi/media/Md;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Ya;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/Xa;->a:Lcom/inmobi/media/Ya;

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/Md;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/I9;Lcom/inmobi/media/Od;)V
    .locals 6

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "finalInsets"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/Xa;->a:Lcom/inmobi/media/Ya;

    .line 3
    iget-object v2, v1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_0

    .line 4
    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 5
    const-string v4, "TAG"

    const-string v5, "fireOnSafeAreaChanged "

    invoke-static {v1, v3, v4, v5}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.imraid.broadcastEvent(\'onSafeAreaChange\', "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v3, "<this>"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 267
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    iget-object v4, p2, Lcom/inmobi/media/Od;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/Nd;

    if-eqz v4, :cond_1

    .line 481
    invoke-virtual {v4}, Lcom/inmobi/media/Nd;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 482
    invoke-static {p1}, Lcom/inmobi/media/J9;->a(Lcom/inmobi/media/I9;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v4, v3

    .line 483
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {v1, v2}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/inmobi/media/Xa;->a:Lcom/inmobi/media/Ya;

    .line 486
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    iget-object p2, p2, Lcom/inmobi/media/Od;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/Nd;

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 701
    :cond_2
    iget p2, p1, Lcom/inmobi/media/Nd;->b:I

    if-nez p2, :cond_3

    .line 702
    iget p2, p1, Lcom/inmobi/media/Nd;->c:I

    if-nez p2, :cond_3

    goto/16 :goto_4

    .line 703
    :cond_3
    invoke-virtual {v1, p1}, Lcom/inmobi/media/Ya;->setCloseAssetArea(Lcom/inmobi/media/Nd;)V

    .line 704
    const-string p1, "renderView"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    iget-object p1, v1, Lcom/inmobi/media/Ya;->M0:Lcom/inmobi/media/Nd;

    .line 706
    const-string p2, "insets"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    const v0, 0xfffb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    instance-of v2, p2, Lcom/inmobi/media/t3;

    if-eqz v2, :cond_4

    check-cast p2, Lcom/inmobi/media/t3;

    goto :goto_1

    :cond_4
    move-object p2, v3

    :goto_1
    if-nez p2, :cond_5

    goto :goto_4

    .line 779
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/t3;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/inmobi/media/t3;

    goto :goto_2

    :cond_6
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_7

    goto :goto_4

    .line 781
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v1, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_8

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_3

    :cond_8
    move-object p2, v3

    :goto_3
    if-nez p2, :cond_9

    goto :goto_4

    .line 782
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_a

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    :cond_a
    if-nez v3, :cond_b

    goto :goto_4

    .line 783
    :cond_b
    iget v0, p1, Lcom/inmobi/media/Nd;->b:I

    .line 784
    iget v1, p1, Lcom/inmobi/media/Nd;->c:I

    const/4 v2, 0x0

    .line 785
    invoke-virtual {p2, v2, v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 786
    iget p2, p1, Lcom/inmobi/media/Nd;->b:I

    .line 787
    iget p1, p1, Lcom/inmobi/media/Nd;->c:I

    .line 788
    invoke-virtual {v3, v2, p2, p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_4
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Xa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getViewState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hidden"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

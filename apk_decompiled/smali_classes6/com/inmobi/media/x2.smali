.class public final Lcom/inmobi/media/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Ya;

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/inmobi/media/f5;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;ZZLcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    .line 3
    iput-boolean p2, p0, Lcom/inmobi/media/x2;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/inmobi/media/x2;->c:Z

    .line 5
    iput-object p4, p0, Lcom/inmobi/media/x2;->d:Lcom/inmobi/media/f5;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/x2;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    :try_start_0
    iget-object p0, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    const-string p0, "InMobi"

    const-string p1, "SDK encountered unexpected error in processing close request"

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/x2;Landroid/view/ViewGroup;Lcom/inmobi/media/Nd;)V
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/x2;->a()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    iget-boolean v2, p0, Lcom/inmobi/media/x2;->b:Z

    const-string v3, "getContext(...)"

    const v4, 0xfffc

    const-string v5, "CloseButtonHandler"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v7

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/inmobi/media/x2;->d:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_7

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "Close button already present, not adding again"

    invoke-virtual {v2, v5, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 9
    :cond_1
    new-instance v2, Lcom/inmobi/media/t3;

    .line 10
    iget-object v8, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v9, p0, Lcom/inmobi/media/x2;->d:Lcom/inmobi/media/f5;

    .line 13
    invoke-direct {v2, v8, v6, v9}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    .line 18
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 19
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v4, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v4}, Lcom/inmobi/media/Ya;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object v4

    sget-object v8, Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v4, v2, v8}, Lcom/inmobi/media/md;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :cond_2
    iget v2, p2, Lcom/inmobi/media/Nd;->b:I

    .line 23
    iget v4, p2, Lcom/inmobi/media/Nd;->c:I

    .line 24
    invoke-virtual {v0, v6, v2, v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 25
    :cond_3
    iget-object v2, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 27
    iget-object v4, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v4}, Lcom/inmobi/media/Ya;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/inmobi/media/md;->a(Landroid/view/View;)V

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v8, v4, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_4
    move-object v4, v7

    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_5
    move-object v2, v7

    :goto_2
    if-nez v2, :cond_7

    .line 29
    :cond_6
    iget-object v2, p0, Lcom/inmobi/media/x2;->d:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_7

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "Close button not present, not removing"

    invoke-virtual {v2, v5, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    :cond_7
    :goto_3
    iget-boolean v2, p0, Lcom/inmobi/media/x2;->c:Z

    const v4, 0xfffb

    if-eqz v2, :cond_b

    if-eqz p1, :cond_8

    .line 31
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    :cond_8
    if-eqz v7, :cond_9

    .line 32
    iget-object p0, p0, Lcom/inmobi/media/x2;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_f

    check-cast p0, Lcom/inmobi/media/g5;

    const-string p1, "Close region already present, not adding again"

    invoke-virtual {p0, v5, p1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 35
    :cond_9
    new-instance v2, Lcom/inmobi/media/t3;

    .line 36
    iget-object v5, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v3, p0, Lcom/inmobi/media/x2;->d:Lcom/inmobi/media/f5;

    const/4 v7, 0x1

    .line 39
    invoke-direct {v2, v5, v7, v3}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    .line 44
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 45
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p0, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object p0

    sget-object v1, Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/media/md;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    if-eqz p1, :cond_a

    .line 47
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    :cond_a
    iget p0, p2, Lcom/inmobi/media/Nd;->b:I

    .line 49
    iget p1, p2, Lcom/inmobi/media/Nd;->c:I

    .line 50
    invoke-virtual {v0, v6, p0, p1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_5

    .line 51
    :cond_b
    iget-object p1, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 53
    iget-object p2, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p2}, Lcom/inmobi/media/Ya;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/inmobi/media/md;->a(Landroid/view/View;)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_4

    :cond_c
    move-object p2, v7

    :goto_4
    if-eqz p2, :cond_d

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_d
    if-nez v7, :cond_f

    .line 55
    :cond_e
    iget-object p0, p0, Lcom/inmobi/media/x2;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_f

    check-cast p0, Lcom/inmobi/media/g5;

    const-string p1, "Close region not present, not removing"

    invoke-virtual {p0, v5, p1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_f
    :goto_5
    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Pair;
    .locals 4

    .line 56
    invoke-static {}, Lcom/inmobi/media/N3;->d()Lcom/inmobi/media/O3;

    move-result-object v0

    .line 57
    iget v0, v0, Lcom/inmobi/media/O3;->c:F

    .line 58
    new-instance v1, Lcom/inmobi/media/x2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/inmobi/media/x2$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/x2;)V

    .line 73
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x32

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 77
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/inmobi/media/Nd;)V
    .locals 3

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0xfffe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/inmobi/media/x2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lcom/inmobi/media/x2$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/x2;Landroid/view/ViewGroup;Lcom/inmobi/media/Nd;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

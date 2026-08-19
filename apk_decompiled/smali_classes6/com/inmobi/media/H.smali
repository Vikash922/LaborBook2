.class public final Lcom/inmobi/media/H;
.super Lcom/inmobi/media/Md;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/I;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/I;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/H;->a:Lcom/inmobi/media/I;

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/Md;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/WindowInsets;)V
    .locals 12

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v0}, Lcom/inmobi/media/E3;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    const/4 v4, 0x2

    .line 9
    invoke-virtual {p1, v4}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    const/4 v6, 0x3

    .line 11
    invoke-virtual {p1, v6}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v7

    goto :goto_3

    :cond_4
    move v7, v0

    .line 13
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v8

    .line 15
    :goto_4
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v2

    goto :goto_5

    :cond_6
    move-object v2, v8

    .line 17
    :goto_5
    invoke-virtual {p1, v4}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v4

    goto :goto_6

    :cond_7
    move-object v4, v8

    .line 19
    :goto_6
    invoke-virtual {p1, v6}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object p1

    goto :goto_7

    :cond_8
    move-object p1, v8

    :goto_7
    if-lez v1, :cond_9

    if-eqz v0, :cond_9

    .line 23
    new-instance v6, Landroid/graphics/RectF;

    .line 24
    iget v9, v0, Landroid/graphics/Point;->x:I

    sub-int v10, v9, v1

    int-to-float v10, v10

    .line 25
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v11, v0, v1

    int-to-float v11, v11

    int-to-float v9, v9

    int-to-float v0, v0

    .line 26
    invoke-direct {v6, v10, v11, v9, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_8

    :cond_9
    move-object v6, v8

    :goto_8
    if-lez v3, :cond_a

    if-eqz v2, :cond_a

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    .line 36
    iget v9, v2, Landroid/graphics/Point;->x:I

    int-to-float v10, v9

    .line 37
    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v1

    int-to-float v1, v1

    add-int/2addr v9, v3

    int-to-float v3, v9

    int-to-float v2, v2

    .line 38
    invoke-direct {v0, v10, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_9

    :cond_a
    move-object v0, v8

    :goto_9
    if-lez v7, :cond_b

    if-eqz p1, :cond_b

    .line 48
    new-instance v1, Landroid/graphics/RectF;

    .line 49
    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int v3, v2, v7

    int-to-float v3, v3

    .line 50
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float v9, p1

    int-to-float v2, v2

    add-int/2addr p1, v7

    int-to-float p1, p1

    .line 51
    invoke-direct {v1, v3, v9, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_a

    :cond_b
    move-object v1, v8

    :goto_a
    if-lez v5, :cond_c

    if-eqz v4, :cond_c

    .line 61
    new-instance v8, Landroid/graphics/RectF;

    .line 62
    iget p1, v4, Landroid/graphics/Point;->x:I

    int-to-float v2, p1

    .line 63
    iget v3, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v3

    add-int/2addr p1, v5

    int-to-float p1, p1

    add-int/2addr v3, v5

    int-to-float v3, v3

    .line 64
    invoke-direct {v8, v2, v4, p1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 72
    :cond_c
    iget-object p1, p0, Lcom/inmobi/media/H;->a:Lcom/inmobi/media/I;

    new-instance v2, Lcom/inmobi/media/B;

    invoke-direct {v2, v6, v0, v1, v8}, Lcom/inmobi/media/B;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 73
    iput-object v2, p1, Lcom/inmobi/media/I;->f:Lcom/inmobi/media/B;

    return-void
.end method

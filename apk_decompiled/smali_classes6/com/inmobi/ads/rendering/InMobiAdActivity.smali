.class public final Lcom/inmobi/ads/rendering/InMobiAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/inmobi/ads/rendering/InMobiAdActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "com/inmobi/media/S4",
        "media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final k:Landroid/util/SparseArray;

.field public static l:Lcom/inmobi/media/Ya;

.field public static m:Lcom/inmobi/media/ab;


# instance fields
.field public a:Lcom/inmobi/media/R4;

.field public b:Lcom/inmobi/media/P4;

.field public c:Lcom/inmobi/media/Ya;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcom/inmobi/media/f5;

.field public i:Lcom/inmobi/media/Pd;

.field public j:Landroid/window/OnBackInvokedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final a(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a()V

    return-void
.end method

.method public static final a(Lcom/inmobi/ads/rendering/InMobiAdActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const p2, -0x777778

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p1, Lcom/inmobi/media/Ya;->o0:Lcom/inmobi/media/U3;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/16 v0, 0xc

    const/4 v2, 0x5

    .line 112
    invoke-static {p1, v2, v1, p2, v0}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    .line 113
    :cond_0
    iput-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 116
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_2

    const p0, -0xff0001

    .line 117
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return v1
.end method

.method public static final b(Lcom/inmobi/ads/rendering/InMobiAdActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const p2, -0x777778

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/inmobi/media/Ya;->o0:Lcom/inmobi/media/U3;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/16 v0, 0xc

    const/4 v2, 0x6

    .line 5
    invoke-static {p1, v2, v1, p2, v0}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    :cond_1
    return v1

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_3

    const p0, -0xff0001

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return v1
.end method

.method public static final c(Lcom/inmobi/ads/rendering/InMobiAdActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const p2, -0x777778

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p1, Lcom/inmobi/media/Ya;->o0:Lcom/inmobi/media/U3;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const/16 v0, 0xc

    const/4 v2, 0x5

    .line 8
    invoke-static {p1, v2, v1, p2, v0}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return v1

    .line 13
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_4

    const p0, -0xff0001

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    return v1
.end method

.method public static final d(Lcom/inmobi/ads/rendering/InMobiAdActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const p2, -0x777778

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return v1

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_2

    const p0, -0xff0001

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "InMobiAdActivity"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "onBackPressed"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    const/16 v3, 0x66

    if-ne v0, v3, :cond_2

    .line 120
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "back pressed on ad"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    if-eqz v0, :cond_5

    .line 122
    iget-object v0, v0, Lcom/inmobi/media/P4;->c:Lcom/inmobi/media/P;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/inmobi/media/P;->a()V

    goto :goto_0

    :cond_2
    const/16 v3, 0x64

    if-ne v0, v3, :cond_5

    .line 123
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "back pressed in browser"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, v0, Lcom/inmobi/media/Ya;->o0:Lcom/inmobi/media/U3;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x7

    .line 126
    invoke-static {v0, v4, v1, v2, v3}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    .line 127
    :cond_4
    iput-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 6

    .line 2
    invoke-static {}, Lcom/inmobi/media/N3;->d()Lcom/inmobi/media/O3;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/inmobi/media/O3;->c:F

    .line 4
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x30

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0xfffd

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const v0, 0x108009a

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, -0x777778

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0xc

    .line 14
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15
    invoke-static {p0}, Lcom/inmobi/media/y2;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->i:Lcom/inmobi/media/Pd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/Pd;->a()V

    .line 18
    :cond_0
    new-instance v0, Lcom/inmobi/media/Pd;

    new-instance v4, Lcom/inmobi/media/T4;

    invoke-direct {v4, v2}, Lcom/inmobi/media/T4;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 24
    iget-object v5, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    .line 25
    invoke-direct {v0, p0, v4, v5}, Lcom/inmobi/media/Pd;-><init>(Landroid/app/Activity;Lcom/inmobi/media/Md;Lcom/inmobi/media/f5;)V

    iput-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->i:Lcom/inmobi/media/Pd;

    .line 33
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x41c80000    # 25.0f

    .line 37
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 39
    new-instance v0, Lcom/inmobi/media/t3;

    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v2}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    .line 40
    new-instance v2, Lcom/inmobi/ads/rendering/InMobiAdActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/rendering/InMobiAdActivity$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v0, Lcom/inmobi/media/t3;

    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v3, v2}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    .line 57
    new-instance v2, Lcom/inmobi/ads/rendering/InMobiAdActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/rendering/InMobiAdActivity$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Lcom/inmobi/media/t3;

    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3, v2}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    .line 73
    new-instance v2, Lcom/inmobi/ads/rendering/InMobiAdActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/rendering/InMobiAdActivity$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v0, Lcom/inmobi/media/t3;

    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    const/4 v3, 0x6

    invoke-direct {v0, p0, v3, v2}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    .line 94
    new-instance v2, Lcom/inmobi/ads/rendering/InMobiAdActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/rendering/InMobiAdActivity$$ExternalSyntheticLambda3;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "InMobiAdActivity"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "onConfigChanged"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/R4;

    if-eqz p1, :cond_2

    if-nez p1, :cond_1

    .line 4
    const-string p1, "orientationHandler"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/media/R4;->b()V

    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 34

    move-object/from16 v13, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    const-string v14, "TAG"

    const-string v15, "InMobiAdActivity"

    if-eqz v0, :cond_0

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "onCreate called"

    invoke-virtual {v0, v15, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Kb;->q()Z

    move-result v0

    const/4 v12, 0x2

    if-nez v0, :cond_2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 10
    iget-object v0, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "session not found. close"

    invoke-virtual {v0, v15, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    const-string v0, "InMobi"

    const-string v1, "Session not found, AdActivity will be closed"

    invoke-static {v12, v0, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->f:Z

    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/inmobi/media/N3;->b(Landroid/content/Context;)V

    .line 23
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    .line 24
    new-instance v1, Lcom/inmobi/media/R4;

    invoke-direct {v1, v13}, Lcom/inmobi/media/R4;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    iput-object v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/R4;

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "loggerCacheKey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    if-eqz v1, :cond_6

    .line 26
    sget-object v2, Lcom/inmobi/media/S4;->a:Ljava/util/HashMap;

    .line 27
    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    :try_start_0
    sget-object v2, Lcom/inmobi/media/S4;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    move-object/from16 v1, v16

    :goto_0
    if-nez v1, :cond_5

    :catch_0
    move-object/from16 v1, v16

    .line 608
    :cond_5
    check-cast v1, Lcom/inmobi/media/f5;

    iput-object v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    .line 610
    :cond_6
    iget v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    const/16 v2, 0x64

    const-string v17, "orientationHandler"

    const-string v11, "orientationListener"

    if-eq v1, v2, :cond_a

    if-eq v1, v3, :cond_7

    goto/16 :goto_a

    .line 689
    :cond_7
    new-instance v0, Lcom/inmobi/media/P4;

    invoke-direct {v0, v13}, Lcom/inmobi/media/P4;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    .line 690
    iget-object v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_8

    .line 691
    const-string v2, "logger"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    iput-object v1, v0, Lcom/inmobi/media/P4;->h:Lcom/inmobi/media/f5;

    .line 799
    :cond_8
    iget-object v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/R4;

    if-nez v1, :cond_9

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v1, v16

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    iget-object v2, v1, Lcom/inmobi/media/R4;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-virtual {v1}, Lcom/inmobi/media/R4;->a()V

    .line 837
    iput-object v0, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    .line 841
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "getIntent(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/P4;->a(Landroid/content/Intent;Landroid/util/SparseArray;)V

    goto/16 :goto_a

    .line 842
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "placementId"

    const-wide/high16 v3, -0x8000000000000000L

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 845
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 846
    const-string v2, "viewTouchTimestamp"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 850
    const-string v4, "allowAutoRedirection"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 853
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "impressionId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 854
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "creativeId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 855
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "supportLockScreen"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 857
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0x21

    const-string v12, "lpTelemetryControlInfo"

    if-lt v3, v4, :cond_b

    .line 858
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 859
    const-class v4, Lcom/inmobi/media/t6;

    .line 860
    invoke-virtual {v3, v12, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/t6;

    goto :goto_1

    .line 865
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 867
    invoke-virtual {v3, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v4, v3, Lcom/inmobi/media/t6;

    if-eqz v4, :cond_c

    check-cast v3, Lcom/inmobi/media/t6;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v12, v3

    goto :goto_2

    :catch_1
    :cond_c
    move-object/from16 v12, v16

    :goto_2
    if-eqz v0, :cond_e

    .line 868
    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 870
    sget-object v0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v0}, Lcom/inmobi/media/E3;->w()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 871
    invoke-virtual {v13, v3}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    goto :goto_3

    .line 873
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v3, 0x80000

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 874
    :cond_e
    :goto_3
    sget-object v0, Lcom/inmobi/media/Ya;->O0:Lcom/inmobi/media/Ga;

    .line 877
    sget-object v3, Lcom/inmobi/ads/rendering/InMobiAdActivity;->l:Lcom/inmobi/media/Ya;

    if-eqz v3, :cond_f

    .line 878
    invoke-virtual {v3}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    .line 879
    invoke-virtual {v3}, Lcom/inmobi/media/Ya;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v3

    .line 880
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :cond_f
    move-object/from16 v3, v16

    move-object v4, v3

    :goto_4
    if-nez v4, :cond_10

    .line 885
    sget-object v3, Lcom/inmobi/media/y3;->a:Ljava/util/HashMap;

    .line 886
    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v3

    .line 887
    const-string v4, "ads"

    invoke-static {v3, v4}, Lcom/inmobi/media/y3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 890
    sget-object v4, Lcom/inmobi/ads/rendering/InMobiAdActivity;->m:Lcom/inmobi/media/ab;

    if-eqz v4, :cond_10

    .line 891
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    :cond_10
    move-object v4, v0

    :goto_5
    move-object v0, v3

    .line 896
    :try_start_3
    new-instance v3, Lcom/inmobi/media/Ya;

    const-wide/16 v18, 0x4

    add-long v18, v1, v18

    .line 902
    iget-object v2, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v20, 0xa4

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v1, v3

    move-object/from16 v26, v2

    move-object/from16 v2, p0

    move-object/from16 v27, v3

    move/from16 v3, v21

    move-object/from16 v28, v4

    move-object/from16 v4, v22

    move-object/from16 v29, v6

    move/from16 v6, v23

    move/from16 v30, v7

    move-object/from16 v7, v24

    move-wide/from16 v31, v8

    move-wide/from16 v8, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v25

    move-object/from16 v33, v11

    move-object/from16 v11, v26

    move-object/from16 v19, v14

    move-object/from16 p1, v15

    const/4 v15, 0x2

    move-object v14, v12

    move/from16 v12, v20

    .line 903
    :try_start_4
    invoke-direct/range {v1 .. v12}, Lcom/inmobi/media/Ya;-><init>(Landroid/content/Context;BLjava/util/Set;Ljava/lang/String;ZLjava/lang/String;JLcom/inmobi/media/bb;Lcom/inmobi/media/f5;I)V

    move-object/from16 v1, v27

    iput-object v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    move-wide/from16 v2, v31

    .line 911
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/Ya;->setPlacementId(J)V

    .line 912
    iget-object v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-nez v1, :cond_11

    goto :goto_6

    :cond_11
    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Lcom/inmobi/media/Ya;->setCreativeId(Ljava/lang/String;)V

    .line 913
    :goto_6
    iget-object v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-nez v1, :cond_12

    goto :goto_7

    :cond_12
    move/from16 v2, v30

    invoke-virtual {v1, v2}, Lcom/inmobi/media/Ya;->setAllowAutoRedirection(Z)V

    .line 914
    :goto_7
    iget-object v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz v1, :cond_14

    if-nez v0, :cond_13

    const-string v0, "adConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v0, v16

    :cond_13
    move-object/from16 v4, v28

    .line 915
    :try_start_5
    invoke-virtual {v1, v4, v0}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/ab;Lcom/inmobi/commons/core/configs/AdConfig;)V

    goto :goto_8

    :cond_14
    move-object/from16 v4, v28

    .line 916
    :goto_8
    iget-object v0, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v14}, Lcom/inmobi/media/Ya;->setLandingPageTelemetryControlInfoOnWebViewClient(Lcom/inmobi/media/t6;)V

    .line 917
    :cond_15
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 918
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 921
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v3, 0xfffd

    .line 922
    invoke-virtual {v1, v15, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 925
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 926
    iget-object v2, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    invoke-virtual {v13, v0}, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a(Landroid/widget/RelativeLayout;)V

    .line 928
    invoke-virtual {v13, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 929
    iget-object v0, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_16

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 930
    :cond_16
    iget-object v0, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v13}, Lcom/inmobi/media/Ya;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 931
    :cond_17
    iget-object v0, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/R4;

    if-nez v0, :cond_18

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v16

    .line 932
    :cond_18
    iget-object v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, v33

    .line 933
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 968
    iget-object v2, v0, Lcom/inmobi/media/R4;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 969
    invoke-virtual {v0}, Lcom/inmobi/media/R4;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v4, v28

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v19, v14

    move-object/from16 p1, v15

    .line 970
    :goto_9
    iget-object v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_19

    move-object/from16 v3, p1

    move-object/from16 v2, v19

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "Exception while initializing In-App browser"

    invoke-virtual {v1, v3, v2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 971
    :cond_19
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 972
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 973
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 974
    invoke-virtual {v4}, Lcom/inmobi/media/ab;->c()V

    .line 975
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :goto_a
    return-void
.end method

.method public final onDestroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "InMobiAdActivity"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    const/16 v1, 0x66

    const-string v2, "orientationHandler"

    const-string v3, "orientationListener"

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-eqz v0, :cond_a

    .line 3
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    if-ne v4, v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    invoke-interface {v0, v1}, Lcom/inmobi/media/w;->b(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->b()V

    .line 8
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/R4;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v2, v0, Lcom/inmobi/media/R4;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v0}, Lcom/inmobi/media/R4;->a()V

    .line 52
    iput-object v5, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_2
    if-ne v1, v0, :cond_13

    .line 58
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    if-eqz v0, :cond_9

    .line 59
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/R4;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v2, v1, Lcom/inmobi/media/R4;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v1}, Lcom/inmobi/media/R4;->a()V

    .line 102
    iget-object v1, v0, Lcom/inmobi/media/P4;->c:Lcom/inmobi/media/P;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/inmobi/media/P;->b()V

    .line 103
    :cond_4
    iget-object v1, v0, Lcom/inmobi/media/P4;->d:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 104
    :cond_5
    iget-object v1, v0, Lcom/inmobi/media/P4;->e:Lcom/inmobi/media/Q3;

    if-eqz v1, :cond_8

    .line 105
    iget-object v2, v1, Lcom/inmobi/media/Q3;->c:Lcom/inmobi/media/Y3;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 106
    :cond_6
    iput-object v5, v1, Lcom/inmobi/media/Q3;->c:Lcom/inmobi/media/Y3;

    .line 107
    iput-object v5, v1, Lcom/inmobi/media/Q3;->d:Lcom/inmobi/media/T3;

    .line 108
    iput-object v5, v1, Lcom/inmobi/media/Q3;->e:Lcom/inmobi/media/Vc;

    .line 109
    iget-object v2, v1, Lcom/inmobi/media/Q3;->g:Lcom/inmobi/media/Pd;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/inmobi/media/Pd;->a()V

    .line 110
    :cond_7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 111
    :cond_8
    iget-object v1, v0, Lcom/inmobi/media/P4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 112
    iput-object v5, v0, Lcom/inmobi/media/P4;->b:Lcom/inmobi/media/x;

    .line 113
    iput-object v5, v0, Lcom/inmobi/media/P4;->c:Lcom/inmobi/media/P;

    .line 114
    iput-object v5, v0, Lcom/inmobi/media/P4;->d:Landroid/widget/RelativeLayout;

    .line 115
    iput-object v5, v0, Lcom/inmobi/media/P4;->e:Lcom/inmobi/media/Q3;

    .line 116
    :cond_9
    iput-object v5, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    goto :goto_0

    .line 127
    :cond_a
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    if-eq v4, v0, :cond_12

    if-ne v1, v0, :cond_12

    .line 129
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    if-eqz v0, :cond_11

    .line 130
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/R4;

    if-nez v1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v2, v1, Lcom/inmobi/media/R4;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v1}, Lcom/inmobi/media/R4;->a()V

    .line 173
    iget-object v1, v0, Lcom/inmobi/media/P4;->c:Lcom/inmobi/media/P;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/inmobi/media/P;->b()V

    .line 174
    :cond_c
    iget-object v1, v0, Lcom/inmobi/media/P4;->d:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    :cond_d
    iget-object v1, v0, Lcom/inmobi/media/P4;->e:Lcom/inmobi/media/Q3;

    if-eqz v1, :cond_10

    .line 176
    iget-object v2, v1, Lcom/inmobi/media/Q3;->c:Lcom/inmobi/media/Y3;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 177
    :cond_e
    iput-object v5, v1, Lcom/inmobi/media/Q3;->c:Lcom/inmobi/media/Y3;

    .line 178
    iput-object v5, v1, Lcom/inmobi/media/Q3;->d:Lcom/inmobi/media/T3;

    .line 179
    iput-object v5, v1, Lcom/inmobi/media/Q3;->e:Lcom/inmobi/media/Vc;

    .line 180
    iget-object v2, v1, Lcom/inmobi/media/Q3;->g:Lcom/inmobi/media/Pd;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/inmobi/media/Pd;->a()V

    .line 181
    :cond_f
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 182
    :cond_10
    iget-object v1, v0, Lcom/inmobi/media/P4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 183
    iput-object v5, v0, Lcom/inmobi/media/P4;->b:Lcom/inmobi/media/x;

    .line 184
    iput-object v5, v0, Lcom/inmobi/media/P4;->c:Lcom/inmobi/media/P;

    .line 185
    iput-object v5, v0, Lcom/inmobi/media/P4;->d:Landroid/widget/RelativeLayout;

    .line 186
    iput-object v5, v0, Lcom/inmobi/media/P4;->e:Lcom/inmobi/media/Q3;

    .line 187
    :cond_11
    iput-object v5, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    .line 190
    :cond_12
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    if-ne v4, v0, :cond_13

    .line 191
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_13

    .line 192
    iget-object v0, v0, Lcom/inmobi/media/Ya;->o0:Lcom/inmobi/media/U3;

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    const/16 v2, 0xc

    const/16 v3, 0x9

    .line 193
    invoke-static {v0, v3, v1, v5, v2}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    .line 194
    :catch_0
    :cond_13
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->i:Lcom/inmobi/media/Pd;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/inmobi/media/Pd;->a()V

    .line 195
    :cond_14
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "InMobiAdActivity"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "multiWindow mode - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p1, Lcom/inmobi/media/P4;->b:Lcom/inmobi/media/x;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6
    instance-of v1, p1, Lcom/inmobi/media/Ya;

    if-eqz v1, :cond_1

    .line 7
    check-cast p1, Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getOrientationProperties()Lcom/inmobi/media/K9;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/R4;

    if-eqz v1, :cond_3

    if-nez v1, :cond_2

    .line 9
    const-string v1, "orientationHandler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/inmobi/media/R4;->a(Lcom/inmobi/media/K9;)V

    :cond_3
    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/rendering/InMobiAdActivity;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    const-string v2, "TAG"

    const-string v3, "InMobiAdActivity"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "onNewIntent"

    invoke-virtual {v1, v3, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->f:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 6
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adContainers"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1, p1, v2}, Lcom/inmobi/media/P4;->a(Landroid/content/Intent;Landroid/util/SparseArray;)V

    .line 200
    iget-object p1, v1, Lcom/inmobi/media/P4;->c:Lcom/inmobi/media/P;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/P;->g()V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "InMobiAdActivity"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "onResume"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3
    iget-boolean v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    if-nez v0, :cond_2

    .line 4
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    const/16 v1, 0x64

    if-ne v1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->f:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->f:Z

    .line 9
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/Ya;

    invoke-interface {v0, v1}, Lcom/inmobi/media/w;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/16 v1, 0x66

    if-ne v1, v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, v0, Lcom/inmobi/media/P4;->c:Lcom/inmobi/media/P;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/P;->c()V

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "InMobiAdActivity"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "onStart"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 3
    sget-object v0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v0}, Lcom/inmobi/media/E3;->B()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->j:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/inmobi/ads/rendering/InMobiAdActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/rendering/InMobiAdActivity$$ExternalSyntheticLambda4;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    iput-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->j:Landroid/window/OnBackInvokedCallback;

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    .line 10
    iget-object v4, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->j:Landroid/window/OnBackInvokedCallback;

    if-nez v4, :cond_2

    const-string v4, "backInvokedCallback"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    .line 11
    :cond_2
    invoke-interface {v1, v3, v4}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 12
    :cond_3
    iget-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    if-nez v1, :cond_7

    .line 13
    iget v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    const/16 v4, 0x66

    if-ne v4, v1, :cond_7

    .line 14
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    if-eqz v1, :cond_7

    .line 15
    iget-object v4, v1, Lcom/inmobi/media/P4;->c:Lcom/inmobi/media/P;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/inmobi/media/P;->g()V

    .line 16
    :cond_4
    iget-object v4, v1, Lcom/inmobi/media/P4;->b:Lcom/inmobi/media/x;

    if-eqz v4, :cond_7

    .line 17
    instance-of v5, v4, Lcom/inmobi/media/Ya;

    if-nez v5, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    check-cast v4, Lcom/inmobi/media/Ya;

    .line 19
    iget-boolean v3, v4, Lcom/inmobi/media/Ya;->H0:Z

    :goto_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 20
    invoke-virtual {v0}, Lcom/inmobi/media/E3;->z()Z

    move-result v3

    if-nez v3, :cond_7

    .line 21
    invoke-virtual {v0}, Lcom/inmobi/media/E3;->F()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    iget-object v0, v1, Lcom/inmobi/media/P4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    if-eqz v1, :cond_6

    move-object v2, v0

    check-cast v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1606

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_7
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "InMobiAdActivity"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "onStop"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3
    sget-object v0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v0}, Lcom/inmobi/media/E3;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->j:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->j:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_1

    const-string v1, "backInvokedCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/P4;

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, v0, Lcom/inmobi/media/P4;->c:Lcom/inmobi/media/P;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/media/P;->d()V

    :cond_3
    return-void
.end method

.class public final Lcom/inmobi/media/Q3;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public b:I

.field public c:Lcom/inmobi/media/Y3;

.field public d:Lcom/inmobi/media/T3;

.field public e:Lcom/inmobi/media/Vc;

.field public f:Lcom/inmobi/media/f5;

.field public g:Lcom/inmobi/media/Pd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/inmobi/media/Q3;->a:Landroid/app/Activity;

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/inmobi/media/Q3;->b:I

    return-void
.end method

.method public static final a(Lcom/inmobi/media/Q3;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/inmobi/media/Q3;->c:Lcom/inmobi/media/Y3;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 25
    iget-object p0, p0, Lcom/inmobi/media/Q3;->d:Lcom/inmobi/media/T3;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/inmobi/media/O4;

    .line 26
    iget-object p0, p0, Lcom/inmobi/media/O4;->a:Lcom/inmobi/media/P4;

    invoke-static {p0}, Lcom/inmobi/media/P4;->a(Lcom/inmobi/media/P4;)V

    :cond_0
    return v1

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    const p2, -0x777778

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 31
    :cond_2
    iget-object p0, p0, Lcom/inmobi/media/Q3;->d:Lcom/inmobi/media/T3;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/inmobi/media/O4;

    .line 32
    iget-object p0, p0, Lcom/inmobi/media/O4;->a:Lcom/inmobi/media/P4;

    invoke-static {p0}, Lcom/inmobi/media/P4;->a(Lcom/inmobi/media/P4;)V

    :cond_3
    :goto_0
    return v1

    .line 33
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_5

    const p0, -0xff0001

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    return v1
.end method

.method public static final b(Lcom/inmobi/media/Q3;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const p2, -0x777778

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    iget-object p1, p0, Lcom/inmobi/media/Q3;->c:Lcom/inmobi/media/Y3;

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p1, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/U3;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/16 v0, 0xc

    const/4 v2, 0x5

    .line 20
    invoke-static {p1, v2, v1, p2, v0}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/Q3;->d:Lcom/inmobi/media/T3;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/inmobi/media/O4;

    .line 22
    iget-object p0, p0, Lcom/inmobi/media/O4;->a:Lcom/inmobi/media/P4;

    invoke-static {p0}, Lcom/inmobi/media/P4;->a(Lcom/inmobi/media/P4;)V

    :cond_1
    return v1

    .line 23
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_3

    const p0, -0xff0001

    .line 24
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return v1
.end method

.method public static final c(Lcom/inmobi/media/Q3;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/inmobi/media/Q3;->c:Lcom/inmobi/media/Y3;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    const p2, -0x777778

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p0}, Landroid/webkit/WebView;->goForward()V

    :cond_1
    return v0

    .line 27
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_3

    const p0, -0xff0001

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return v0
.end method

.method public static final d(Lcom/inmobi/media/Q3;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const p2, -0x777778

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    iget-object p1, p0, Lcom/inmobi/media/Q3;->c:Lcom/inmobi/media/Y3;

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p1, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/U3;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/16 v0, 0xc

    const/4 v2, 0x6

    .line 20
    invoke-static {p1, v2, v1, p2, v0}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/Q3;->c:Lcom/inmobi/media/Y3;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    :cond_1
    return v1

    .line 23
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_3

    const p0, -0xff0001

    .line 24
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return v1
.end method


# virtual methods
.method public final a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/media/t3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/Q3;->f:Lcom/inmobi/media/f5;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    const v1, 0xffdf

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v1, Lcom/inmobi/media/Q3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/inmobi/media/Q3$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/Q3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/media/t3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/Q3;->f:Lcom/inmobi/media/f5;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    const v1, 0xffec

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v1, Lcom/inmobi/media/Q3$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/inmobi/media/Q3$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/media/Q3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/media/t3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/Q3;->f:Lcom/inmobi/media/f5;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    const v1, 0xffedb

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v1, Lcom/inmobi/media/Q3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/inmobi/media/Q3$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/Q3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/media/t3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/Q3;->f:Lcom/inmobi/media/f5;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    const v1, 0xffde

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v1, Lcom/inmobi/media/Q3$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/inmobi/media/Q3$$ExternalSyntheticLambda3;-><init>(Lcom/inmobi/media/Q3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getUserLeftApplicationListener()Lcom/inmobi/media/Vc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q3;->e:Lcom/inmobi/media/Vc;

    return-object v0
.end method

.method public final setEmbeddedBrowserUpdateListener(Lcom/inmobi/media/T3;)V
    .locals 1

    const-string v0, "browserUpdateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Q3;->d:Lcom/inmobi/media/T3;

    return-void
.end method

.method public final setLogger(Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Q3;->f:Lcom/inmobi/media/f5;

    return-void
.end method

.method public final setUserLeftApplicationListener(Lcom/inmobi/media/Vc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Q3;->e:Lcom/inmobi/media/Vc;

    return-void
.end method

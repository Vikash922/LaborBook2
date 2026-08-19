.class public final Lcom/inmobi/media/f7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Ya;

.field public final b:Lcom/inmobi/media/f5;

.field public c:Lcom/inmobi/media/V6;

.field public d:Lcom/inmobi/media/S6;

.field public e:Lcom/inmobi/media/S6;

.field public f:Lcom/inmobi/media/S6;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;Lcom/inmobi/media/f5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/f7;->a:Lcom/inmobi/media/Ya;

    iput-object p2, p0, Lcom/inmobi/media/f7;->b:Lcom/inmobi/media/f5;

    return-void
.end method

.method public static final a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static final a(Lcom/inmobi/media/f7;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    if-ne p1, p2, :cond_1

    .line 61
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 62
    iget-object p0, p0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/media/V6;->b()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/media/AudioManager;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/inmobi/media/f7;->b:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "MraidMediaProcessor"

    const-string v2, "deviceVolume"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/f7;->a:Lcom/inmobi/media/Ya;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getEnablePubMuteControl()Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 66
    invoke-static {}, Lcom/inmobi/media/Kb;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    .line 69
    :cond_3
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/media/AudioManager;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/media/AudioManager;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    const/4 v1, 0x3

    .line 70
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    :cond_5
    return v1
.end method

.method public final a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/f7;->b:Lcom/inmobi/media/f5;

    const-string v1, "MraidMediaProcessor"

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "doPlayMedia"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance v0, Lcom/inmobi/media/V6;

    iget-object v2, p0, Lcom/inmobi/media/f7;->b:Lcom/inmobi/media/f5;

    invoke-direct {v0, p2, v2}, Lcom/inmobi/media/V6;-><init>(Landroid/app/Activity;Lcom/inmobi/media/f5;)V

    iput-object v0, p0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/media/V6;->setPlaybackData(Ljava/lang/String;)V

    const p1, 0x1020002

    .line 6
    invoke-virtual {p2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 11
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    iget-object v3, p0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :goto_0
    new-instance v0, Lcom/inmobi/media/W6;

    invoke-direct {v0, p2}, Lcom/inmobi/media/W6;-><init>(Landroid/app/Activity;)V

    .line 14
    new-instance p2, Lcom/inmobi/media/f7$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/inmobi/media/f7$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 p2, -0x1000000

    .line 15
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 16
    iget-object p2, p0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    iget-object p2, p0, Lcom/inmobi/media/f7;->b:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_2

    check-cast p2, Lcom/inmobi/media/g5;

    const-string v3, "adding media view on top"

    invoke-virtual {p2, v1, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object p1, p0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/inmobi/media/V6;->setViewContainer(Landroid/view/ViewGroup;)V

    .line 29
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 30
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/inmobi/media/f7$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/inmobi/media/f7$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/f7;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 38
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p2, Lcom/inmobi/media/e7;

    invoke-direct {p2, p0}, Lcom/inmobi/media/e7;-><init>(Lcom/inmobi/media/f7;)V

    invoke-virtual {p1, p2}, Lcom/inmobi/media/V6;->setListener(Lcom/inmobi/media/U6;)V

    .line 59
    :goto_2
    iget-object p1, p0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/inmobi/media/V6;->a()V

    :cond_7
    return-void
.end method

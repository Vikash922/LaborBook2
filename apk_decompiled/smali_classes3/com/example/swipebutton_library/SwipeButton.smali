.class public Lcom/example/swipebutton_library/SwipeButton;
.super Landroid/widget/RelativeLayout;
.source "SwipeButton.java"


# static fields
.field private static final CENTER:I = 0x1

.field private static final END:I = 0x2

.field private static final START:I


# instance fields
.field private background:Landroid/view/ViewGroup;

.field private centerText:Landroid/widget/TextView;

.field private collapsedHeight:I

.field private collapsedWidth:I

.field private context:Landroid/content/Context;

.field private hasActiveStatus:Z

.field private hasFinishAnimation:Z

.field private isActive:Z

.field private onActiveListener:Lcom/example/swipebutton_library/OnActiveListener;

.field private swipeBtn:Landroid/widget/ImageView;

.field private trail:Landroid/view/ViewGroup;

.field private trailEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->trailEnabled:Z

    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->hasActiveStatus:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/example/swipebutton_library/SwipeButton;->hasFinishAnimation:Z

    .line 37
    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->isActive:Z

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 41
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/example/swipebutton_library/SwipeButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->trailEnabled:Z

    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->hasActiveStatus:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/example/swipebutton_library/SwipeButton;->hasFinishAnimation:Z

    .line 37
    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->isActive:Z

    const/4 v0, -0x1

    .line 46
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/example/swipebutton_library/SwipeButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->trailEnabled:Z

    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->hasActiveStatus:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/example/swipebutton_library/SwipeButton;->hasFinishAnimation:Z

    .line 37
    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->isActive:Z

    const/4 v0, -0x1

    .line 51
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/example/swipebutton_library/SwipeButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->trailEnabled:Z

    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->hasActiveStatus:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/example/swipebutton_library/SwipeButton;->hasFinishAnimation:Z

    .line 37
    iput-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->isActive:Z

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/example/swipebutton_library/SwipeButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/example/swipebutton_library/SwipeButton;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/example/swipebutton_library/SwipeButton;->isTouchOutsideInitialPosition(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/example/swipebutton_library/SwipeButton;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/example/swipebutton_library/SwipeButton;->activateButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/example/swipebutton_library/SwipeButton;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/example/swipebutton_library/SwipeButton;->moveButtonBack()V

    return-void
.end method

.method static synthetic access$200(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/example/swipebutton_library/SwipeButton;->centerText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/example/swipebutton_library/SwipeButton;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/example/swipebutton_library/SwipeButton;->expandTrail()V

    return-void
.end method

.method static synthetic access$400(Lcom/example/swipebutton_library/SwipeButton;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/example/swipebutton_library/SwipeButton;->isActive:Z

    return p0
.end method

.method static synthetic access$402(Lcom/example/swipebutton_library/SwipeButton;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/example/swipebutton_library/SwipeButton;->isActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/example/swipebutton_library/SwipeButton;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/example/swipebutton_library/SwipeButton;->hasFinishAnimation:Z

    return p0
.end method

.method static synthetic access$600(Lcom/example/swipebutton_library/SwipeButton;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/example/swipebutton_library/SwipeButton;->deactivateButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/example/swipebutton_library/SwipeButton;)Lcom/example/swipebutton_library/OnActiveListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/example/swipebutton_library/SwipeButton;->onActiveListener:Lcom/example/swipebutton_library/OnActiveListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/example/swipebutton_library/SwipeButton;)Landroid/view/ViewGroup;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lcom/example/swipebutton_library/SwipeButton;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/example/swipebutton_library/SwipeButton;->hasActiveStatus:Z

    return p0
.end method

.method private activateButton()V
    .locals 7

    .line 300
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 301
    new-instance v3, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda2;-><init>(Lcom/example/swipebutton_library/SwipeButton;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 307
    iget v3, p0, Lcom/example/swipebutton_library/SwipeButton;->collapsedWidth:I

    iget-object v5, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    .line 309
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    filled-new-array {v3, v5}, [I

    move-result-object v3

    .line 307
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 312
    new-instance v5, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v3}, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda3;-><init>(Lcom/example/swipebutton_library/SwipeButton;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 319
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 320
    new-instance v6, Lcom/example/swipebutton_library/SwipeButton$2;

    invoke-direct {v6, p0}, Lcom/example/swipebutton_library/SwipeButton$2;-><init>(Lcom/example/swipebutton_library/SwipeButton;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v4

    aput-object v3, v2, v0

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 329
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private deactivateButton()V
    .locals 7

    .line 333
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    .line 334
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/example/swipebutton_library/SwipeButton;->collapsedWidth:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 333
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 338
    new-instance v1, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda1;-><init>(Lcom/example/swipebutton_library/SwipeButton;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 345
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 346
    new-instance v2, Lcom/example/swipebutton_library/SwipeButton$3;

    invoke-direct {v2, p0}, Lcom/example/swipebutton_library/SwipeButton$3;-><init>(Lcom/example/swipebutton_library/SwipeButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 354
    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton;->centerText:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const-string v6, "alpha"

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x2

    .line 356
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v5

    aput-object v0, v4, v3

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 357
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private expandTrail()V
    .locals 3

    .line 361
    iget-boolean v0, p0, Lcom/example/swipebutton_library/SwipeButton;->trailEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->trail:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iget v2, p0, Lcom/example/swipebutton_library/SwipeButton;->collapsedWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 364
    iget-object v1, p0, Lcom/example/swipebutton_library/SwipeButton;->trail:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getButtonTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 251
    new-instance v0, Lcom/example/swipebutton_library/SwipeButton$1;

    invoke-direct {v0, p0}, Lcom/example/swipebutton_library/SwipeButton$1;-><init>(Lcom/example/swipebutton_library/SwipeButton;)V

    return-object v0
.end method

.method private isTouchOutsideInitialPosition(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v0, p2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private moveButtonBack()V
    .locals 7

    .line 368
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 369
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    new-instance v4, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda0;-><init>(Lcom/example/swipebutton_library/SwipeButton;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 375
    iget-object v4, p0, Lcom/example/swipebutton_library/SwipeButton;->centerText:Landroid/widget/TextView;

    new-array v5, v0, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v3

    const-string v6, "alpha"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0xc8

    .line 376
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 377
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 378
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v4, v1, v3

    aput-object v2, v1, v0

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 379
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method convertPixelsToSp(FLandroid/content/Context;)F
    .locals 0

    .line 387
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, p2

    return p1
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 165
    iput-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->context:Landroid/content/Context;

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    .line 167
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 168
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 169
    iget-object v4, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, v0}, Lcom/example/swipebutton_library/SwipeButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    iput-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->centerText:Landroid/widget/TextView;

    const/16 v4, 0x11

    .line 173
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 174
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    invoke-virtual {v4, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 176
    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    if-ne p3, v1, :cond_4

    if-ne p4, v1, :cond_4

    .line 181
    sget-object p4, Lcom/example/swipebutton_library/R$styleable;->SwipeButton:[I

    sget v2, Lcom/example/swipebutton_library/R$style;->default_swipe_button_style:I

    invoke-virtual {p1, p2, p4, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 183
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_outer_background_drawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/example/swipebutton_library/SwipeButton;->setOuterBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_outer_background_tint:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/example/swipebutton_library/SwipeButton;->setOuterBackgroundTint(I)V

    .line 185
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_outer_background_height:I

    const/high16 p4, -0x40000000    # -2.0f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/example/swipebutton_library/SwipeButton;->setOuterBackgroundHeight(F)V

    .line 188
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_inner_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_inner_text_color:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_inner_text_padding:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 192
    sget v3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_inner_text_left_padding:I

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 193
    sget v5, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_inner_text_top_padding:I

    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 194
    sget v6, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_inner_text_right_padding:I

    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 195
    sget v7, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_inner_text_bottom_padding:I

    invoke-virtual {p2, v7, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_0

    float-to-int p3, p3

    .line 197
    invoke-virtual {v0, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    float-to-int p3, v3

    float-to-int v2, v5

    float-to-int v3, v6

    float-to-int v5, v7

    .line 199
    invoke-virtual {v0, p3, v2, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 201
    :goto_0
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_inner_text_size:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3, p1}, Lcom/example/swipebutton_library/SwipeButton;->convertPixelsToSp(FLandroid/content/Context;)F

    move-result p3

    cmpl-float v2, p3, v4

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    :cond_1
    const/high16 p3, 0x41400000    # 12.0f

    .line 204
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 205
    :goto_1
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_inner_text_gravity:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/example/swipebutton_library/SwipeButton;->setInnerTextGravity(I)V

    .line 208
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_button_width:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/example/swipebutton_library/SwipeButton;->collapsedWidth:I

    .line 209
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_button_height:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/example/swipebutton_library/SwipeButton;->collapsedHeight:I

    .line 211
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_button_background_drawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/example/swipebutton_library/SwipeButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_button_background_tint:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/example/swipebutton_library/SwipeButton;->setButtonBackgroundTint(I)V

    .line 213
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_button_background_src:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/example/swipebutton_library/SwipeButton;->setButtonBackgroundImage(Landroid/graphics/drawable/Drawable;)V

    .line 215
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget p4, p0, Lcom/example/swipebutton_library/SwipeButton;->collapsedWidth:I

    iget v2, p0, Lcom/example/swipebutton_library/SwipeButton;->collapsedHeight:I

    invoke-direct {p3, p4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0x9

    .line 216
    invoke-virtual {p3, p4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    .line 217
    invoke-virtual {p3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 218
    iget-object v3, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, p3}, Lcom/example/swipebutton_library/SwipeButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_button_background_padding:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p0, p3}, Lcom/example/swipebutton_library/SwipeButton;->setButtonPadding(I)V

    .line 220
    iget-object p3, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setElevation(F)V

    .line 223
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_trail_enabled:I

    const/4 v3, 0x0

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/example/swipebutton_library/SwipeButton;->trailEnabled:Z

    .line 224
    sget p3, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_trail_background_tint:I

    invoke-virtual {p0}, Lcom/example/swipebutton_library/SwipeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/example/swipebutton_library/R$color;->gray:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 225
    sget v5, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_outer_background_drawable:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 227
    iget-boolean v6, p0, Lcom/example/swipebutton_library/SwipeButton;->trailEnabled:Z

    if-eqz v6, :cond_3

    .line 228
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/example/swipebutton_library/SwipeButton;->trail:Landroid/view/ViewGroup;

    .line 229
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/example/swipebutton_library/SwipeButton;->collapsedWidth:I

    iget v8, p0, Lcom/example/swipebutton_library/SwipeButton;->collapsedHeight:I

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    invoke-virtual {v6, p4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    invoke-virtual {v6, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 232
    iget-object p4, p0, Lcom/example/swipebutton_library/SwipeButton;->trail:Landroid/view/ViewGroup;

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 233
    iget-object p3, p0, Lcom/example/swipebutton_library/SwipeButton;->trail:Landroid/view/ViewGroup;

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->setElevation(F)V

    if-eqz v5, :cond_2

    .line 235
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->trail:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 237
    :cond_2
    iget-object p3, p0, Lcom/example/swipebutton_library/SwipeButton;->trail:Landroid/view/ViewGroup;

    sget p4, Lcom/example/swipebutton_library/R$drawable;->rounded_background:I

    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :goto_2
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->trail:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v6}, Lcom/example/swipebutton_library/SwipeButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    :cond_3
    sget p1, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_has_active_status:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/example/swipebutton_library/SwipeButton;->hasActiveStatus:Z

    .line 244
    sget p1, Lcom/example/swipebutton_library/R$styleable;->SwipeButton_has_finish_animation:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/example/swipebutton_library/SwipeButton;->hasFinishAnimation:Z

    .line 245
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    :cond_4
    invoke-direct {p0}, Lcom/example/swipebutton_library/SwipeButton;->getButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/example/swipebutton_library/SwipeButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method synthetic lambda$activateButton$0$com-example-swipebutton_library-SwipeButton(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 302
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 303
    iget-object p2, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setX(F)V

    return-void
.end method

.method synthetic lambda$activateButton$1$com-example-swipebutton_library-SwipeButton(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 313
    iget-object p2, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 314
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 315
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method synthetic lambda$deactivateButton$2$com-example-swipebutton_library-SwipeButton(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 339
    iget-object p2, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 340
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 341
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    invoke-direct {p0}, Lcom/example/swipebutton_library/SwipeButton;->expandTrail()V

    return-void
.end method

.method synthetic lambda$moveButtonBack$3$com-example-swipebutton_library-SwipeButton(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 371
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 372
    iget-object p2, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setX(F)V

    .line 373
    invoke-direct {p0}, Lcom/example/swipebutton_library/SwipeButton;->expandTrail()V

    return-void
.end method

.method public setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->context:Landroid/content/Context;

    sget v1, Lcom/example/swipebutton_library/R$drawable;->swipe_btn_background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setButtonBackgroundImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonBackgroundTint(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setButtonHeight(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setButtonPadding(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method public setButtonWidth(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 141
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->swipeBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInnerText(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInnerTextColor(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setInnerTextGravity(I)V
    .locals 4

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x20

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x15

    .line 96
    invoke-virtual {v0, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    .line 92
    invoke-virtual {v0, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    .line 87
    invoke-virtual {v0, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 88
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_0
    const/16 p1, 0xf

    .line 101
    invoke-virtual {v0, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 102
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/example/swipebutton_library/SwipeButton;->centerText:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInnerTextPadding(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setInnerTextPaddings(IIII)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setInnerTextSize(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->centerText:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setOnActiveListener(Lcom/example/swipebutton_library/OnActiveListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->onActiveListener:Lcom/example/swipebutton_library/OnActiveListener;

    return-void
.end method

.method public setOuterBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->context:Landroid/content/Context;

    sget v1, Lcom/example/swipebutton_library/R$drawable;->rounded_background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setOuterBackgroundHeight(F)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int p1, p1

    .line 119
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOuterBackgroundTint(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->background:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTrailBackgroundTint(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton;->trail:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTrailEnabled(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/example/swipebutton_library/SwipeButton;->trailEnabled:Z

    return-void
.end method

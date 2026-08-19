.class Lcom/example/swipebutton_library/SwipeButton$1;
.super Ljava/lang/Object;
.source "SwipeButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/swipebutton_library/SwipeButton;->getButtonTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/swipebutton_library/SwipeButton;


# direct methods
.method constructor <init>(Lcom/example/swipebutton_library/SwipeButton;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 254
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 258
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {v2}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {v2}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-virtual {v2}, Lcom/example/swipebutton_library/SwipeButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    .line 259
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {v3}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 260
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$200(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {v2}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {v3}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-virtual {v3}, Lcom/example/swipebutton_library/SwipeButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 264
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {v2}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-virtual {v2}, Lcom/example/swipebutton_library/SwipeButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {v2}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-virtual {v2}, Lcom/example/swipebutton_library/SwipeButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    .line 265
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-virtual {v2}, Lcom/example/swipebutton_library/SwipeButton;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {v3}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 268
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p2}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    div-int/2addr p2, v1

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    .line 269
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setX(F)V

    .line 271
    :cond_3
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$300(Lcom/example/swipebutton_library/SwipeButton;)V

    return v0

    .line 274
    :cond_4
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$400(Lcom/example/swipebutton_library/SwipeButton;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 275
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$500(Lcom/example/swipebutton_library/SwipeButton;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 276
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$600(Lcom/example/swipebutton_library/SwipeButton;)V

    .line 277
    :cond_5
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$700(Lcom/example/swipebutton_library/SwipeButton;)Lcom/example/swipebutton_library/OnActiveListener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 278
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$700(Lcom/example/swipebutton_library/SwipeButton;)Lcom/example/swipebutton_library/OnActiveListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/example/swipebutton_library/OnActiveListener;->onActive()V

    goto :goto_0

    .line 280
    :cond_6
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p2}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    iget-object v1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {v1}, Lcom/example/swipebutton_library/SwipeButton;->access$800(Lcom/example/swipebutton_library/SwipeButton;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v1, v3

    cmpl-double p1, p1, v1

    if-lez p1, :cond_9

    .line 281
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$900(Lcom/example/swipebutton_library/SwipeButton;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 282
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$1000(Lcom/example/swipebutton_library/SwipeButton;)V

    goto :goto_0

    .line 284
    :cond_7
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$700(Lcom/example/swipebutton_library/SwipeButton;)Lcom/example/swipebutton_library/OnActiveListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 285
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$700(Lcom/example/swipebutton_library/SwipeButton;)Lcom/example/swipebutton_library/OnActiveListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/example/swipebutton_library/OnActiveListener;->onActive()V

    .line 286
    :cond_8
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$500(Lcom/example/swipebutton_library/SwipeButton;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 287
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$1100(Lcom/example/swipebutton_library/SwipeButton;)V

    goto :goto_0

    .line 290
    :cond_9
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$1100(Lcom/example/swipebutton_library/SwipeButton;)V

    :cond_a
    :goto_0
    return v0

    .line 256
    :cond_b
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$1;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-static {p1}, Lcom/example/swipebutton_library/SwipeButton;->access$000(Lcom/example/swipebutton_library/SwipeButton;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/example/swipebutton_library/SwipeButton;->access$100(Lcom/example/swipebutton_library/SwipeButton;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

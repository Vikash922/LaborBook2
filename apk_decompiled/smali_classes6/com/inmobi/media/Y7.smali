.class public final Lcom/inmobi/media/Y7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/d8;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/inmobi/media/D7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/d8;Ljava/util/ArrayList;Lcom/inmobi/media/D7;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/Y7;->a:Lcom/inmobi/media/d8;

    iput-object p2, p0, Lcom/inmobi/media/Y7;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/inmobi/media/Y7;->c:Lcom/inmobi/media/D7;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Y7;->a:Lcom/inmobi/media/d8;

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/d8;->l:Lcom/inmobi/media/Z0;

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/Y7;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/Z0;->a(Ljava/util/ArrayList;)V

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/Y7;->a:Lcom/inmobi/media/d8;

    .line 7
    iget-object p1, p1, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 8
    iget-object v0, p1, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 9
    iget-object v1, p0, Lcom/inmobi/media/Y7;->c:Lcom/inmobi/media/D7;

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/P7;Lcom/inmobi/media/D7;)Lcom/inmobi/media/D7;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/Y7;->c:Lcom/inmobi/media/D7;

    .line 15
    iget-object v1, p0, Lcom/inmobi/media/Y7;->a:Lcom/inmobi/media/d8;

    .line 16
    iget-object v1, v1, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    if-nez p1, :cond_0

    move-object p1, v0

    .line 17
    :cond_0
    invoke-virtual {v1, p1}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Lcom/inmobi/media/Y7;->a:Lcom/inmobi/media/d8;

    .line 18
    iget-object v1, v1, Lcom/inmobi/media/d8;->f:Lcom/inmobi/media/f5;

    .line 19
    const-string v2, "creativeView"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/Y7;->a:Lcom/inmobi/media/d8;

    .line 3
    iget-object p1, p1, Lcom/inmobi/media/d8;->l:Lcom/inmobi/media/Z0;

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/Y7;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/Y0;

    .line 6
    iget-object v2, v2, Lcom/inmobi/media/Y0;->a:Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/inmobi/media/Z0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :goto_1
    return-void
.end method

.class public final Lcom/inmobi/media/Ld;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/media/Ld;->a:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/media/Ld;->b:Ljava/lang/ref/WeakReference;

    .line 7
    sget-object v0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v0}, Lcom/inmobi/media/E3;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/inmobi/media/Ld$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/inmobi/media/Ld$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/Ld;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Ld;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    const-string v0, "WindowInsetsHandler"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<anonymous parameter 0>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "windowInsets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/inmobi/media/Ld;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/Ld;->a:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/Kd;

    .line 38
    check-cast v1, Lcom/inmobi/media/Pd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v2, v1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Md;

    invoke-virtual {v2, p2}, Lcom/inmobi/media/Md;->a(Landroid/view/WindowInsets;)V

    .line 180
    :try_start_0
    iget-object v2, v1, Lcom/inmobi/media/Pd;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 182
    iget-object v3, v1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Md;

    invoke-virtual {v3}, Lcom/inmobi/media/Md;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 183
    iget-object v2, v1, Lcom/inmobi/media/Pd;->b:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_1

    const-string v3, "listener is not interested in computing insets, skipping"

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v0, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 187
    iget-object v2, v1, Lcom/inmobi/media/Pd;->b:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_1

    const-string v3, "Activity is null, skipping safeArea computation"

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v0, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_3
    invoke-static {v2}, Lcom/inmobi/media/y2;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    invoke-static {p2}, Lcom/inmobi/media/hb;->b(Landroid/view/WindowInsets;)Lcom/inmobi/media/Nd;

    move-result-object v2

    goto :goto_1

    .line 195
    :cond_4
    invoke-static {p2}, Lcom/inmobi/media/hb;->a(Landroid/view/WindowInsets;)Lcom/inmobi/media/Nd;

    move-result-object v2

    .line 197
    :goto_1
    invoke-static {}, Lcom/inmobi/media/N3;->f()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 198
    :cond_5
    invoke-static {p2}, Lcom/inmobi/media/N3;->a(Landroid/view/WindowInsets;)I

    move-result v3

    .line 199
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/media/N3;->a(Ljava/lang/Integer;)V

    .line 200
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/Pd;->a(Lcom/inmobi/media/Nd;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 204
    iget-object v1, v1, Lcom/inmobi/media/Pd;->b:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in getting safeArea "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    .line 205
    iget-object v1, v1, Lcom/inmobi/media/Pd;->b:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "Exception in getting safeArea"

    invoke-virtual {v1, v0, v3, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_6
    return-object p2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/inmobi/media/Ld;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    sget-object v0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v0}, Lcom/inmobi/media/E3;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/inmobi/media/Ld;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

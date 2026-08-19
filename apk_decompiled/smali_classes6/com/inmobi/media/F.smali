.class public final Lcom/inmobi/media/F;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/I;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/I;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/F;->a:Lcom/inmobi/media/I;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/I;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    new-instance v0, Lcom/inmobi/media/E;

    invoke-direct {v0, p0}, Lcom/inmobi/media/E;-><init>(Lcom/inmobi/media/I;)V

    invoke-static {v0}, Lcom/inmobi/media/z2;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object p0, p0, Lcom/inmobi/media/I;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error calculating exposure metrics - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lcom/inmobi/media/g5;

    const-string v1, "AdExposureTracker"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/F;->a:Lcom/inmobi/media/I;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v1}, Lcom/inmobi/media/E3;->A()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/inmobi/media/I;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_5

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "AdExposureTracker"

    const-string v2, "Cannot calculate curved areas for this Android OS"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :cond_0
    new-instance v2, Lcom/inmobi/media/Pd;

    iget-object v3, v0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    iget-object v4, v0, Lcom/inmobi/media/I;->l:Lcom/inmobi/media/H;

    iget-object v5, v0, Lcom/inmobi/media/I;->d:Lcom/inmobi/media/f5;

    .line 8
    const-string v6, "view"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "windowInsetListener"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 61
    invoke-direct {v2, v6, v4, v5}, Lcom/inmobi/media/Pd;-><init>(Landroid/app/Activity;Lcom/inmobi/media/Md;Lcom/inmobi/media/f5;)V

    .line 62
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->F()Z

    move-result v1

    const-string v4, "WindowInsetsHandler"

    if-eqz v1, :cond_3

    .line 63
    iput-object v3, v2, Lcom/inmobi/media/Pd;->c:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 64
    move-object v1, v5

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v6, "startListeningToInsets"

    invoke-virtual {v1, v4, v6}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    sget-object v1, Lcom/inmobi/media/Pd;->g:Ljava/util/WeakHashMap;

    .line 178
    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 179
    new-instance v4, Lcom/inmobi/media/Ld;

    invoke-direct {v4, v3}, Lcom/inmobi/media/Ld;-><init>(Landroid/view/View;)V

    .line 294
    invoke-virtual {v1, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_2
    check-cast v4, Lcom/inmobi/media/Ld;

    .line 296
    const-string v3, "listener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget-object v3, v4, Lcom/inmobi/media/Ld;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_4

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " created - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v5, Lcom/inmobi/media/g5;

    const-string v3, "WindowInsetsHandler_INSTANCE"

    invoke-virtual {v5, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 329
    check-cast v5, Lcom/inmobi/media/g5;

    const-string v1, "WindowInsetsHandler is not supported for this version"

    invoke-virtual {v5, v4, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_4
    :goto_0
    iput-object v2, v0, Lcom/inmobi/media/I;->k:Lcom/inmobi/media/Pd;

    .line 331
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/F;->a:Lcom/inmobi/media/I;

    .line 332
    iget-object v1, v0, Lcom/inmobi/media/I;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 333
    new-instance v2, Lcom/inmobi/media/F$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/inmobi/media/F$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/I;)V

    .line 335
    iget-object v3, p0, Lcom/inmobi/media/F;->a:Lcom/inmobi/media/I;

    .line 336
    iget-wide v5, v3, Lcom/inmobi/media/I;->b:J

    .line 337
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    .line 338
    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 339
    iput-object v1, v0, Lcom/inmobi/media/I;->j:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/F;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

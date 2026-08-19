.class public final Lcom/inmobi/media/d7;
.super Landroid/database/ContentObserver;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/R6;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public c:I

.field public final synthetic d:Lcom/inmobi/media/f7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/f7;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "mJsCallbackNamespace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/d7;->d:Lcom/inmobi/media/f7;

    .line 5
    invoke-direct {p0, p4}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    iput-object p2, p0, Lcom/inmobi/media/d7;->a:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/inmobi/media/d7;->b:Landroid/content/Context;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/inmobi/media/d7;->c:I

    return-void
.end method

.method public static final a(Lcom/inmobi/media/d7;Lcom/inmobi/media/f7;Z)V
    .locals 5

    const-string v0, "MraidMediaProcessor"

    const-string v1, "volume change detected - "

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$1"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Lcom/inmobi/media/d7;->b:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 2
    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/media/AudioManager;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/media/AudioManager;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 5
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 6
    iget v3, p0, Lcom/inmobi/media/d7;->c:I

    if-eq v2, v3, :cond_3

    .line 7
    iput v2, p0, Lcom/inmobi/media/d7;->c:I

    .line 8
    iget-object v3, p1, Lcom/inmobi/media/f7;->b:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v0, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p0, p0, Lcom/inmobi/media/d7;->a:Ljava/lang/String;

    .line 11
    iget-object p2, p1, Lcom/inmobi/media/f7;->b:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_2

    .line 12
    const-string v1, "fireDeviceVolumeChangeEvent"

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p2, p1, Lcom/inmobi/media/f7;->a:Lcom/inmobi/media/Ya;

    if-eqz p2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fireDeviceVolumeChangeEvent("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 14
    iget-object p1, p1, Lcom/inmobi/media/f7;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 15
    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "Unexpected error in volume listener"

    invoke-virtual {p1, v0, p2, p0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 16
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onChange(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    sget v0, Lcom/inmobi/media/m4;->a:I

    .line 3
    sget-object v0, Lcom/inmobi/media/m4;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 4
    iget-object v1, p0, Lcom/inmobi/media/d7;->d:Lcom/inmobi/media/f7;

    new-instance v2, Lcom/inmobi/media/d7$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/inmobi/media/d7$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/d7;Lcom/inmobi/media/f7;Z)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

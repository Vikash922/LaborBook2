.class public final Lcom/inmobi/media/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

.field public final b:Lcom/inmobi/media/f5;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public g:Lcom/inmobi/adquality/models/AdQualityControl;

.field public h:Lcom/inmobi/media/qd;

.field public i:Lcom/inmobi/adquality/models/AdQualityResult;

.field public j:Ljava/lang/String;

.field public k:Lorg/json/JSONObject;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "adQualityConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/n0;->a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/n0;->b:Lcom/inmobi/media/f5;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/inmobi/media/n0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/inmobi/media/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/inmobi/media/n0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/n0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    sget-object p1, Lcom/inmobi/media/qd;->a:Lcom/inmobi/media/qd;

    iput-object p1, p0, Lcom/inmobi/media/n0;->h:Lcom/inmobi/media/qd;

    .line 15
    const-string p1, ""

    iput-object p1, p0, Lcom/inmobi/media/n0;->j:Ljava/lang/String;

    .line 16
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/n0;->k:Lorg/json/JSONObject;

    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/inmobi/media/n0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/n0;Landroid/app/Activity;JZLcom/inmobi/media/La;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const-string v0, "activity is visible"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "getWindow(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/inmobi/media/S9;

    iget-object v1, p0, Lcom/inmobi/media/n0;->a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    invoke-direct {v0, p1, v1}, Lcom/inmobi/media/S9;-><init>(Landroid/view/Window;Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;)V

    if-nez p4, :cond_0

    .line 111
    iget-object p1, p0, Lcom/inmobi/media/n0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    new-instance p1, Lcom/inmobi/media/l0;

    invoke-direct {p1, p0, v0, p4, p5}, Lcom/inmobi/media/l0;-><init>(Lcom/inmobi/media/n0;Lcom/inmobi/media/T1;ZLcom/inmobi/media/La;)V

    .line 117
    new-instance p5, Lcom/inmobi/media/m0;

    invoke-direct {p5, p0}, Lcom/inmobi/media/m0;-><init>(Lcom/inmobi/media/n0;)V

    .line 118
    const-string v1, "process"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shouldProcess"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/inmobi/media/e0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/inmobi/media/d;

    invoke-direct {v1, p5, v0, p1}, Lcom/inmobi/media/d;-><init>(Lkotlin/jvm/functions/Function0;Lcom/inmobi/media/o0;Lcom/inmobi/media/X9;)V

    invoke-static {p2, p3, v1}, Lcom/inmobi/media/e0;->a(JLcom/inmobi/media/d;)V

    .line 139
    iget-object p0, p0, Lcom/inmobi/media/n0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/n0;Landroid/view/View;JZLcom/inmobi/media/La;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-string v0, "tag"

    const-string v1, "AdQualityManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    const-string v2, "starting capture - draw"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/inmobi/media/Gb;

    iget-object v1, p0, Lcom/inmobi/media/n0;->a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    invoke-direct {v0, p1, v1}, Lcom/inmobi/media/Gb;-><init>(Landroid/view/View;Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;)V

    if-nez p4, :cond_0

    .line 66
    iget-object p1, p0, Lcom/inmobi/media/n0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    new-instance p1, Lcom/inmobi/media/l0;

    invoke-direct {p1, p0, v0, p4, p5}, Lcom/inmobi/media/l0;-><init>(Lcom/inmobi/media/n0;Lcom/inmobi/media/T1;ZLcom/inmobi/media/La;)V

    .line 72
    new-instance p5, Lcom/inmobi/media/m0;

    invoke-direct {p5, p0}, Lcom/inmobi/media/m0;-><init>(Lcom/inmobi/media/n0;)V

    .line 73
    const-string v1, "process"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shouldProcess"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/inmobi/media/e0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/inmobi/media/d;

    invoke-direct {v1, p5, v0, p1}, Lcom/inmobi/media/d;-><init>(Lkotlin/jvm/functions/Function0;Lcom/inmobi/media/o0;Lcom/inmobi/media/X9;)V

    invoke-static {p2, p3, v1}, Lcom/inmobi/media/e0;->a(JLcom/inmobi/media/d;)V

    .line 94
    iget-object p0, p0, Lcom/inmobi/media/n0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;JZLcom/inmobi/media/La;)V
    .locals 9

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isCapture started - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/media/n0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isReporting - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/inmobi/media/n0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    const-string p1, "Screenshot process already in progress... skipping..."

    const/4 p2, 0x0

    .line 106
    invoke-virtual {p0, p2, p1}, Lcom/inmobi/media/n0;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v8, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/media/n0$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/n0;Landroid/app/Activity;JZLcom/inmobi/media/La;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final a(Lcom/inmobi/adquality/models/AdQualityResult;Z)V
    .locals 2

    .line 18
    invoke-virtual {p1}, Lcom/inmobi/adquality/models/AdQualityResult;->getBeaconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const-string p1, "beacon is empty"

    invoke-virtual {p0, p1}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/inmobi/media/xa;

    invoke-direct {v0, p1}, Lcom/inmobi/media/xa;-><init>(Lcom/inmobi/adquality/models/AdQualityResult;)V

    new-instance p1, Lcom/inmobi/media/h0;

    invoke-direct {p1, p0, p2}, Lcom/inmobi/media/h0;-><init>(Lcom/inmobi/media/n0;Z)V

    sget-object p2, Lcom/inmobi/media/i0;->a:Lcom/inmobi/media/i0;

    .line 23
    const-string v1, "process"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shouldProcess"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v1, Lcom/inmobi/media/e0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/inmobi/media/d;

    invoke-direct {v1, p2, v0, p1}, Lcom/inmobi/media/d;-><init>(Lkotlin/jvm/functions/Function0;Lcom/inmobi/media/o0;Lcom/inmobi/media/X9;)V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v1}, Lcom/inmobi/media/e0;->a(JLcom/inmobi/media/d;)V

    return-void
.end method

.method public final a(Lcom/inmobi/media/Ya;JZLcom/inmobi/media/La;)V
    .locals 8

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isCapture started - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/media/n0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isReporting - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/inmobi/media/n0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    const-string p1, "Screenshot process already in progress... skipping..."

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p2, p1}, Lcom/inmobi/media/n0;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    new-instance v7, Lcom/inmobi/media/n0$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/media/n0$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/n0;Landroid/view/View;JZLcom/inmobi/media/La;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AdQualityManager"

    if-eqz p1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/inmobi/media/n0;->b:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v0, p2, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/n0;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    .line 232
    const-string v1, "Error with null exception : "

    invoke-static {v1, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 655
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/inmobi/media/n0;->b:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "AdQualityManager"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;[BZ)V
    .locals 2

    .line 140
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/adQuality/screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/inmobi/media/Wb;

    invoke-direct {v1, v0, p2}, Lcom/inmobi/media/Wb;-><init>(Ljava/lang/String;[B)V

    if-nez p3, :cond_0

    .line 144
    iget-object p2, p0, Lcom/inmobi/media/n0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    new-instance p2, Lcom/inmobi/media/j0;

    invoke-direct {p2, p0, p3, v1, p1}, Lcom/inmobi/media/j0;-><init>(Lcom/inmobi/media/n0;ZLcom/inmobi/media/Wb;Ljava/lang/String;)V

    sget-object p1, Lcom/inmobi/media/k0;->a:Lcom/inmobi/media/k0;

    .line 147
    const-string p3, "process"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "shouldProcess"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object p3, Lcom/inmobi/media/e0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lcom/inmobi/media/d;

    invoke-direct {p3, p1, v1, p2}, Lcom/inmobi/media/d;-><init>(Lkotlin/jvm/functions/Function0;Lcom/inmobi/media/o0;Lcom/inmobi/media/X9;)V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p3}, Lcom/inmobi/media/e0;->a(JLcom/inmobi/media/d;)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 12

    .line 169
    const-string v0, "AdQualityManager"

    const-string v1, "tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "checking for trigger"

    const-string v3, "message"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/inmobi/media/n0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/inmobi/adquality/models/AdQualityControl;->getBeacon()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 178
    iget-object v2, p0, Lcom/inmobi/media/n0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/n0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    iget-object p1, p0, Lcom/inmobi/media/n0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    const-string p1, "session end - queuing result"

    invoke-virtual {p0, p1}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/inmobi/media/n0;->i:Lcom/inmobi/adquality/models/AdQualityResult;

    if-nez p1, :cond_0

    new-instance p1, Lcom/inmobi/adquality/models/AdQualityResult;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-string v5, "null"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/adquality/models/AdQualityResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 183
    :cond_0
    invoke-virtual {p0, p1, v11}, Lcom/inmobi/media/n0;->a(Lcom/inmobi/adquality/models/AdQualityResult;Z)V

    return-void

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    .line 185
    iget-object p1, p0, Lcom/inmobi/media/n0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    .line 186
    iget-object p1, p0, Lcom/inmobi/media/n0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    const-string p1, "session stop - queuing result"

    invoke-virtual {p0, p1}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    .line 188
    sget-object p1, Lcom/inmobi/media/e0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_2

    .line 189
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 191
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    :catch_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 198
    const-string v0, "AdQualityComponent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shutdown fail"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 211
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/n0;->i:Lcom/inmobi/adquality/models/AdQualityResult;

    if-nez p1, :cond_3

    new-instance p1, Lcom/inmobi/adquality/models/AdQualityResult;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-string v5, "null"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/adquality/models/AdQualityResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 212
    :cond_3
    invoke-virtual {p0, p1, v11}, Lcom/inmobi/media/n0;->a(Lcom/inmobi/adquality/models/AdQualityResult;Z)V

    return-void

    .line 217
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "list size - "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/n0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " session end triggered - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 218
    iget-object v2, p0, Lcom/inmobi/media/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 219
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " queue triggered - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 220
    iget-object v2, p0, Lcom/inmobi/media/n0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 221
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " waiting"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/n0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "ad quality session is already in progress. skipping..."

    invoke-virtual {p0, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/n0;->a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    const-string v0, "config kill switch - false. ad quality will skip"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    return v1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/n0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    if-nez v0, :cond_2

    .line 12
    const-string v0, "setup not done. skipping"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    return v1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/n0;->h:Lcom/inmobi/media/qd;

    sget-object v2, Lcom/inmobi/media/qd;->a:Lcom/inmobi/media/qd;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/inmobi/media/qd;->b:Lcom/inmobi/media/qd;

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    .line 17
    :cond_4
    :goto_0
    const-string v0, "ad view is not visible. skipping"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    return v1
.end method

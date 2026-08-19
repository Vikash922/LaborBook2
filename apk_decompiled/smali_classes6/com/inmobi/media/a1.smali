.class public final Lcom/inmobi/media/a1;
.super Lcom/inmobi/media/z3;
.source "SourceFile"


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:J

.field public final d:I

.field public final e:Landroid/app/ActivityManager;

.field public final f:Lcom/inmobi/media/e6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/A3;JI)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lcom/inmobi/media/z3;-><init>(Lcom/inmobi/media/A3;)V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/a1;->b:Landroid/content/Context;

    .line 4
    iput-wide p3, p0, Lcom/inmobi/media/a1;->c:J

    .line 5
    iput p5, p0, Lcom/inmobi/media/a1;->d:I

    .line 10
    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/inmobi/media/a1;->e:Landroid/app/ActivityManager;

    .line 11
    sget-object p2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p2, "appClose"

    invoke-static {p1, p2}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/a1;->f:Lcom/inmobi/media/e6;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/a1;)V
    .locals 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/inmobi/media/a1;->e:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/inmobi/media/a1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    const-string v1, "getHistoricalProcessExitReasons(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/inmobi/media/a1;->f:Lcom/inmobi/media/e6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    const-string v2, "key"

    const-string v3, "exitReasonTimestamp"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 486
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v5, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    .line 487
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v7

    cmp-long v4, v7, v1

    if-lez v4, :cond_0

    .line 489
    iget-wide v7, p0, Lcom/inmobi/media/a1;->c:J

    new-instance v4, Lcom/inmobi/media/a1$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Lcom/inmobi/media/a1$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/a1;Landroid/app/ApplicationExitInfo;)V

    sget-object v9, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 490
    const-string v9, "runnable"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    sget-object v9, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v4, v7, v8, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 681
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_0

    .line 682
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v5

    goto :goto_0

    .line 686
    :cond_1
    iget-object v3, p0, Lcom/inmobi/media/a1;->f:Lcom/inmobi/media/e6;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "exitReasonTimestamp"

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;JZILjava/lang/Object;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/a1;Landroid/app/ApplicationExitInfo;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/inmobi/media/z3;->a:Lcom/inmobi/media/A3;

    .line 2
    new-instance v2, Lcom/inmobi/media/b1;

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v3

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget v0, v0, Lcom/inmobi/media/a1;->d:I

    .line 6
    const-string v6, "startMarker"

    const-string v7, "\"main\""

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "endMarker"

    const-string v8, "ZygoteInit.java"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_6

    .line 187
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move v11, v0

    move v12, v5

    .line 190
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_5

    const-string v14, "\n"

    if-lez v0, :cond_0

    if-nez v12, :cond_0

    .line 192
    :try_start_2
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v15, 0x0

    move/from16 p0, v0

    const/4 v0, 0x2

    move/from16 p1, v12

    .line 195
    invoke-static {v13, v7, v5, v0, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    const/4 v0, 0x1

    if-ne v12, v0, :cond_1

    .line 197
    invoke-static {v9}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move v12, v0

    goto :goto_1

    :cond_1
    move/from16 v12, p1

    :goto_1
    if-eqz v12, :cond_2

    add-int/lit8 v11, v11, -0x1

    .line 201
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v0, 0x2

    .line 203
    invoke-static {v13, v8, v5, v0, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_3

    goto :goto_2

    :cond_3
    if-gtz v11, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v0, p0

    goto :goto_0

    .line 209
    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 212
    const-string v5, "CommonExt"

    const-string v7, "Error reading from input stream"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v5, "toString(...)"

    if-nez v0, :cond_7

    .line 216
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 218
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    :goto_4
    invoke-direct {v2, v4, v3, v0}, Lcom/inmobi/media/b1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    invoke-virtual {v1, v2}, Lcom/inmobi/media/A3;->a(Lcom/inmobi/media/x5;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 221
    new-instance v0, Lcom/inmobi/media/a1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/inmobi/media/a1$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/a1;)V

    sget-object v1, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 222
    const-string v1, "runnable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    sget-object v1, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

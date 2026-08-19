.class public final Lcom/inmobi/media/Da;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lcom/inmobi/media/Da;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/Da;

    invoke-direct {v0}, Lcom/inmobi/media/Da;-><init>()V

    sput-object v0, Lcom/inmobi/media/Da;->a:Lcom/inmobi/media/Da;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Lcom/inmobi/media/b2;

    .line 2
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, p1, Lcom/inmobi/media/b2;->a:I

    const-string v1, "message"

    const-string v2, "tag"

    const-string v3, "logLevel"

    const-string v4, "LOGGER CRASH"

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 4
    :pswitch_0
    iget-object v0, p1, Lcom/inmobi/media/b2;->c:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 5
    const-string v6, "data"

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_5

    .line 6
    iget-object p1, p1, Lcom/inmobi/media/b2;->c:Ljava/util/Map;

    .line 7
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.incident.IncidentEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/x5;

    .line 8
    sget-object v0, Lcom/inmobi/media/Ea;->a:Lcom/inmobi/media/B6;

    .line 9
    const-string v0, "incident"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    instance-of v0, p1, Lcom/inmobi/media/h3;

    if-nez v0, :cond_1

    instance-of v5, p1, Lcom/inmobi/media/zd;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    sget-object v0, Lcom/inmobi/media/Ea;->e:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getReportToLogs()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Lcom/inmobi/media/b1;

    if-eqz v0, :cond_5

    .line 374
    new-instance v1, Lcom/inmobi/media/E5;

    .line 375
    sget-object v0, Lcom/inmobi/media/Ea;->e:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getIncompleteLogThresholdTime()J

    move-result-wide v2

    .line 376
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/E5;-><init>(J)V

    .line 377
    iget-object v2, p1, Lcom/inmobi/media/S1;->a:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Lcom/inmobi/media/S1;->a()Ljava/lang/String;

    move-result-object v3

    .line 379
    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/b1;

    .line 380
    iget v4, v0, Lcom/inmobi/media/b1;->g:I

    .line 381
    iget-wide v5, p1, Lcom/inmobi/media/S1;->b:J

    .line 382
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/E5;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_3

    .line 383
    :cond_1
    :goto_0
    invoke-static {}, Lcom/inmobi/media/j5;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 458
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/inmobi/media/vb;

    .line 459
    sget-object v7, Lcom/inmobi/media/B6;->c:Lcom/inmobi/media/B6;

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TYPE - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    iget-object v9, p1, Lcom/inmobi/media/S1;->a:Ljava/lang/String;

    .line 463
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", TIMESTAMP - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 464
    iget-wide v9, p1, Lcom/inmobi/media/S1;->b:J

    .line 465
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", PAYLOAD - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/inmobi/media/S1;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 466
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iget-object v9, v6, Lcom/inmobi/media/vb;->a:Lcom/inmobi/media/Ca;

    invoke-virtual {v9, v7, v4, v8}, Lcom/inmobi/media/Ca;->a(Lcom/inmobi/media/B6;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 479
    iget-object v6, v6, Lcom/inmobi/media/vb;->a:Lcom/inmobi/media/Ca;

    invoke-virtual {v6}, Lcom/inmobi/media/Ca;->b()V

    goto :goto_1

    .line 480
    :cond_3
    sget-object p1, Lcom/inmobi/media/Ea;->a:Lcom/inmobi/media/B6;

    .line 481
    invoke-static {}, Lcom/inmobi/media/j5;->a()Ljava/util/ArrayList;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/vb;

    .line 531
    sget-object v6, Lcom/inmobi/media/B6;->c:Lcom/inmobi/media/B6;

    .line 533
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SYSTEM SHUTDOWN RECEIVED - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 534
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    iget-object v8, v5, Lcom/inmobi/media/vb;->a:Lcom/inmobi/media/Ca;

    invoke-virtual {v8, v6, v4, v7}, Lcom/inmobi/media/Ca;->a(Lcom/inmobi/media/B6;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v5, v5, Lcom/inmobi/media/vb;->a:Lcom/inmobi/media/Ca;

    invoke-virtual {v5}, Lcom/inmobi/media/Ca;->b()V

    goto :goto_2

    .line 547
    :cond_4
    sget-object p1, Lcom/inmobi/media/Ea;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 548
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v1

    sget-object v2, Lcom/inmobi/media/Ea;->g:Lcom/inmobi/media/Da;

    invoke-virtual {v1, v2}, Lcom/inmobi/media/h7;->a(Lkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x0

    .line 549
    sput-object v1, Lcom/inmobi/media/Ea;->b:Lcom/inmobi/media/G6;

    .line 550
    sget-object v3, Lcom/inmobi/media/Ea;->a:Lcom/inmobi/media/B6;

    .line 551
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 552
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/inmobi/media/h7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 553
    sput-object v1, Lcom/inmobi/media/Ea;->b:Lcom/inmobi/media/G6;

    .line 554
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

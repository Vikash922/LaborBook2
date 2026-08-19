.class public final Lcom/inmobi/media/X5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Ya;

.field public final b:I

.field public c:Lcom/inmobi/media/K9;

.field public d:Lcom/inmobi/media/f5;


# direct methods
.method public constructor <init>(ILcom/inmobi/media/Ya;)V
    .locals 1

    const-string v0, "mRenderView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    iput p1, p0, Lcom/inmobi/media/X5;->b:I

    return-void
.end method

.method public static final a(Lcom/inmobi/media/X5;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2700
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getEmbeddedBrowserJSCallbacks()Lcom/inmobi/media/S3;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2701
    iget-object p0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    .line 2702
    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2703
    check-cast p0, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of EmbeddedBrowserJSCallback instance to closeCustomExpand"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2709
    :cond_1
    iget-object p0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getEmbeddedBrowserJSCallbacks()Lcom/inmobi/media/S3;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/inmobi/media/N4;

    .line 2710
    iget-object p0, p0, Lcom/inmobi/media/N4;->a:Lcom/inmobi/media/P4;

    invoke-static {p0}, Lcom/inmobi/media/P4;->a(Lcom/inmobi/media/P4;)V

    :cond_2
    return-void
.end method

.method public static final a(Lcom/inmobi/media/X5;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4390
    iget-object p0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/X5;Lcom/inmobi/media/t6;Ljava/lang/String;ILjava/lang/String;FZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    move-object/from16 v11, p4

    const-string v12, "customExpand"

    const-string v13, "access$getTAG$p(...)"

    const-string v14, "funnelState"

    const-string v8, "processCustomExpandRequest: "

    const-string v2, "Custom expand called. Url: "

    const-string v3, "this$0"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$expandInput"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v3, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v3}, Lcom/inmobi/media/Ya;->getEmbeddedBrowserJSCallbacks()Lcom/inmobi/media/S3;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6
    iget-object v0, v1, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 7
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string v3, "Found a null instance of EmbeddedBrowserJSCallback instance to customExpand"

    .line 9
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v0, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v0

    .line 14
    sget-object v2, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    const/16 v3, 0x1f42

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    new-instance v4, Lcom/inmobi/media/n6;

    invoke-direct {v4, v0}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/media/o6;)V

    invoke-static {v2, v10, v3, v4}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 560
    :cond_1
    iget-object v3, v1, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_2

    sget-object v4, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_2
    invoke-static {}, Lcom/inmobi/media/R3;->values()[Lcom/inmobi/media/R3;

    move-result-object v2

    aget-object v9, v2, p3

    .line 562
    sget-object v2, Lcom/inmobi/media/R3;->a:Lcom/inmobi/media/R3;

    const/4 v15, 0x0

    if-ne v9, v2, :cond_6

    .line 564
    iget-object v2, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v2

    .line 565
    const-string v3, "customExpand"

    const/4 v7, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    .line 566
    invoke-virtual/range {v2 .. v7}, Lcom/inmobi/media/o6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;Lcom/inmobi/media/g2;)I

    move-result v2

    .line 573
    iget-object v3, v1, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 575
    iget-object v2, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/Ya;->getEmbeddedBrowserJSCallbacks()Lcom/inmobi/media/S3;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 580
    iget-object v3, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v3}, Lcom/inmobi/media/Ya;->getViewTouchTimestamp()J

    move-result-wide v7

    .line 581
    check-cast v2, Lcom/inmobi/media/N4;

    move-object/from16 v3, p2

    move-object v4, v9

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/inmobi/media/N4;->a(Ljava/lang/String;Lcom/inmobi/media/R3;FZJLcom/inmobi/media/t6;)V

    .line 589
    :cond_4
    iget-object v2, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v2

    .line 590
    sget-object v3, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 591
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    new-instance v4, Lcom/inmobi/media/n6;

    invoke-direct {v4, v2}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/media/o6;)V

    invoke-static {v3, v10, v15, v4}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 1134
    iget-object v2, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v2

    .line 1135
    iget-object v2, v2, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz v2, :cond_8

    .line 1137
    iget-object v2, v2, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-static {v2, v12, v11, v0}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1138
    :cond_5
    iget-object v0, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getEmbeddedBrowserJSCallbacks()Lcom/inmobi/media/S3;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Lcom/inmobi/media/N4;

    .line 1139
    iget-object v0, v0, Lcom/inmobi/media/N4;->a:Lcom/inmobi/media/P4;

    invoke-static {v0}, Lcom/inmobi/media/P4;->a(Lcom/inmobi/media/P4;)V

    goto/16 :goto_0

    .line 1140
    :cond_6
    iget-object v2, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/Ya;->getEmbeddedBrowserJSCallbacks()Lcom/inmobi/media/S3;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1145
    iget-object v3, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v3}, Lcom/inmobi/media/Ya;->getViewTouchTimestamp()J

    move-result-wide v7

    .line 1146
    check-cast v2, Lcom/inmobi/media/N4;

    move-object/from16 v3, p2

    move-object v4, v9

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/inmobi/media/N4;->a(Ljava/lang/String;Lcom/inmobi/media/R3;FZJLcom/inmobi/media/t6;)V

    .line 1154
    :cond_7
    iget-object v2, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v2

    .line 1155
    sget-object v3, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 1156
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1157
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1698
    new-instance v4, Lcom/inmobi/media/n6;

    invoke-direct {v4, v2}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/media/o6;)V

    invoke-static {v3, v10, v15, v4}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 1699
    iget-object v2, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v2

    .line 1700
    iget-object v2, v2, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz v2, :cond_8

    .line 1702
    iget-object v2, v2, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-static {v2, v12, v11, v0}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1703
    iget-object v2, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    invoke-virtual {v2, v11, v3, v12}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    iget-object v2, v1, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v2

    .line 1705
    sget-object v3, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    const/16 v4, 0x9

    .line 1707
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1708
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1709
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2250
    new-instance v5, Lcom/inmobi/media/n6;

    invoke-direct {v5, v2}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/media/o6;)V

    invoke-static {v3, v10, v4, v5}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 2251
    const-string v2, "InMobi"

    const-string v3, "Failed to custom expand ad; SDK encountered an unexpected error"

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 2255
    iget-object v1, v1, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_8

    .line 2256
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2257
    const-string v3, "SDK encountered unexpected error in handling customExpand() request; "

    invoke-static {v2, v13, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2258
    invoke-static {v0, v3}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2693
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/X5;Ljava/lang/String;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2711
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getReferenceContainer()Lcom/inmobi/media/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/inmobi/media/x;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2713
    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v2, "Unexpected error"

    const-string v3, "close"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    const-string p1, "InMobi"

    const-string v1, "Failed to close ad; SDK encountered an unexpected error"

    const/4 v2, 0x1

    invoke-static {v2, p1, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 2719
    iget-object p0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    .line 2720
    sget-object p1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2721
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "SDK encountered an expected error in handling the close() request from creative; "

    invoke-static {p1, v1, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2722
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 3478
    check-cast p0, Lcom/inmobi/media/g5;

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/X5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const-string v1, "open"

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;ZI)Lcom/inmobi/media/m6;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/X5;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3485
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Ya;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3487
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v1, "Unexpected error"

    const-string v2, "disableCloseRegion"

    invoke-virtual {v0, p2, v1, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    iget-object p0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    .line 3489
    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 3490
    const-string v0, "access$getTAG$p(...)"

    const-string v1, "SDK encountered unexpected error in handling disableCloseRegion() request from creative; "

    invoke-static {p2, v0, v1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3491
    invoke-static {p1, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 4383
    check-cast p0, Lcom/inmobi/media/g5;

    invoke-virtual {p0, p2, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final b(Lcom/inmobi/media/X5;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    iget-object p0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    .line 140
    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 141
    const-string v2, "access$getTAG$p(...)"

    const-string v3, "SDK encountered unexpected error in getting/setting current position; "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    invoke-static {v0, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 411
    check-cast p0, Lcom/inmobi/media/g5;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final b(Lcom/inmobi/media/X5;Ljava/lang/String;)V
    .locals 7

    const-string v0, "right"

    const-string v1, "optString(...)"

    const-string v2, "<set-?>"

    const-string v3, "this$0"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$orientationPropertiesString"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    iget-object v3, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v3}, Lcom/inmobi/media/Ya;->getOrientationProperties()Lcom/inmobi/media/K9;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 419
    const-string v4, "json"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "op"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    new-instance v4, Lcom/inmobi/media/K9;

    invoke-direct {v4}, Lcom/inmobi/media/K9;-><init>()V

    .line 433
    iput-object p1, v4, Lcom/inmobi/media/K9;->d:Ljava/lang/String;

    .line 434
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 437
    const-string p1, "forceOrientation"

    .line 438
    iget-object v6, v3, Lcom/inmobi/media/K9;->b:Ljava/lang/String;

    .line 439
    invoke-virtual {v5, p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iput-object p1, v4, Lcom/inmobi/media/K9;->b:Ljava/lang/String;

    .line 484
    const-string p1, "allowOrientationChange"

    .line 485
    iget-boolean v6, v3, Lcom/inmobi/media/K9;->a:Z

    .line 486
    invoke-virtual {v5, p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 487
    iput-boolean p1, v4, Lcom/inmobi/media/K9;->a:Z

    .line 488
    const-string p1, "direction"

    .line 489
    iget-object v3, v3, Lcom/inmobi/media/K9;->c:Ljava/lang/String;

    .line 490
    invoke-virtual {v5, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iput-object p1, v4, Lcom/inmobi/media/K9;->c:Ljava/lang/String;

    .line 536
    iget-object p1, v4, Lcom/inmobi/media/K9;->b:Ljava/lang/String;

    .line 537
    const-string v1, "portrait"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 538
    iget-object p1, v4, Lcom/inmobi/media/K9;->b:Ljava/lang/String;

    .line 539
    const-string v1, "landscape"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 540
    const-string p1, "none"

    .line 541
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    iput-object p1, v4, Lcom/inmobi/media/K9;->b:Ljava/lang/String;

    .line 585
    :cond_0
    iget-object p1, v4, Lcom/inmobi/media/K9;->c:Ljava/lang/String;

    .line 586
    const-string v1, "left"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 587
    iget-object p1, v4, Lcom/inmobi/media/K9;->c:Ljava/lang/String;

    .line 588
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 590
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    iput-object v0, v4, Lcom/inmobi/media/K9;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    .line 635
    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/inmobi/media/X5;->c:Lcom/inmobi/media/K9;

    .line 639
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/X5;->c:Lcom/inmobi/media/K9;

    if-eqz p1, :cond_3

    .line 640
    iget-object p0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->setOrientationProperties(Lcom/inmobi/media/K9;)V

    :cond_3
    return-void
.end method

.method public static final b(Lcom/inmobi/media/X5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "openEmbedded"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/inmobi/media/o6;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v2, "Unexpected error"

    invoke-virtual {v1, p1, v2, v0}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string p1, "InMobi"

    const-string v0, "Failed to open URL; SDK encountered unexpected error"

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    .line 14
    sget-object p1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 15
    const-string v0, "access$getTAG$p(...)"

    const-string v1, "SDK encountered unexpected error in handling openEmbedded() request from creative; "

    invoke-static {p1, v0, v1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    invoke-static {p2, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 130
    check-cast p0, Lcom/inmobi/media/g5;

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final b(Lcom/inmobi/media/X5;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Ya;->e(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 643
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v1, "Unexpected error"

    const-string v2, "useCustomClose"

    invoke-virtual {v0, p2, v1, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object p0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    .line 645
    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 646
    const-string v0, "access$getTAG$p(...)"

    const-string v1, "SDK encountered internal error in handling useCustomClose() request from creative; "

    invoke-static {p2, v0, v1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 647
    invoke-static {p1, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 1231
    check-cast p0, Lcom/inmobi/media/g5;

    invoke-virtual {p0, p2, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final c(Lcom/inmobi/media/X5;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object p0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    .line 5
    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 6
    const-string v2, "access$getTAG$p(...)"

    const-string v3, "SDK encountered unexpected error in getting/setting default position; "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7
    invoke-static {v0, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 246
    check-cast p0, Lcom/inmobi/media/g5;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final c(Lcom/inmobi/media/X5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v0

    const/4 v5, 0x1

    const/16 v6, 0x8

    const-string v1, "openWithoutTracker"

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;ZI)Lcom/inmobi/media/m6;

    return-void
.end method

.method public static final d(Lcom/inmobi/media/X5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 994
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-gt v4, v2, :cond_5

    if-nez v5, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v2

    .line 999
    :goto_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 1000
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_1

    move v6, v0

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    if-nez v5, :cond_3

    if-nez v6, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v2, v0

    .line 2013
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2014
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2015
    invoke-virtual {v1, p1, p2}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 2017
    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v2, "Unexpected error"

    const-string v3, "playVideo"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    const-string p1, "InMobi"

    const-string v1, "Error playing video; SDK encountered an unexpected error"

    invoke-static {v0, p1, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 2023
    iget-object p0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_6

    .line 2024
    sget-object p1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2025
    const-string v0, "access$getTAG$p(...)"

    const-string v1, "SDK encountered unexpected error in handling playVideo() request from creative; "

    invoke-static {p1, v0, v1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2026
    invoke-static {p2, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 2646
    check-cast p0, Lcom/inmobi/media/g5;

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;IFZLcom/inmobi/media/t6;)V
    .locals 11

    move-object/from16 v2, p6

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-string v0, "IN_CUSTOM"

    .line 3
    iput-object v0, v2, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 4
    :goto_0
    new-instance v8, Landroid/os/Handler;

    move-object v9, p0

    iget-object v0, v9, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lcom/inmobi/media/X5$$ExternalSyntheticLambda5;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda5;-><init>(Lcom/inmobi/media/X5;Lcom/inmobi/media/t6;Ljava/lang/String;ILjava/lang/String;FZ)V

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final asyncPing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v3, "asyncPing called: "

    invoke-static {v2, v1, v3, p2}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 848
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_0
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "asyncPing"

    if-nez v0, :cond_1

    .line 850
    iget-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v0, "Invalid url"

    invoke-virtual {p2, p1, v0, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 854
    :cond_1
    :try_start_0
    new-instance v0, Lcom/inmobi/media/l9;

    iget-object v3, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    invoke-direct {v0, p2, v3}, Lcom/inmobi/media/l9;-><init>(Ljava/lang/String;Lcom/inmobi/media/f5;)V

    const/4 p2, 0x0

    .line 855
    iput-boolean p2, v0, Lcom/inmobi/media/l9;->x:Z

    .line 856
    iput-boolean p2, v0, Lcom/inmobi/media/l9;->t:Z

    .line 857
    iput-boolean p2, v0, Lcom/inmobi/media/l9;->u:Z

    .line 858
    new-instance p2, Lcom/inmobi/media/u1;

    new-instance v3, Lcom/inmobi/media/W5;

    invoke-direct {v3, p0}, Lcom/inmobi/media/W5;-><init>(Lcom/inmobi/media/X5;)V

    invoke-direct {p2, v0, v3}, Lcom/inmobi/media/u1;-><init>(Lcom/inmobi/media/l9;Lcom/inmobi/media/W5;)V

    .line 859
    new-instance v3, Lcom/inmobi/media/t1;

    invoke-direct {v3, p2}, Lcom/inmobi/media/t1;-><init>(Lcom/inmobi/media/u1;)V

    invoke-virtual {v0, v3}, Lcom/inmobi/media/l9;->a(Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 860
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    invoke-virtual {v0, p1, v3, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    .line 862
    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 863
    const-string v2, "SDK encountered internal error in handling asyncPing() request from creative; "

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 864
    invoke-static {p2, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 1732
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final cancelSaveContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "mediaId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "cancelSaveContent called. mediaId:"

    invoke-static {v0, v1, v2, p2}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1057
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final close(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "close called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 3
    iget-boolean v0, v0, Lcom/inmobi/media/Ya;->z0:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "close called on unloaded ad"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/X5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/X5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final closeAll(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "closeAll is called"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 3
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 5
    const-string v2, "TAG"

    const-string v3, "closeAll "

    invoke-static {p1, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/inmobi/media/Z;->b()V

    .line 8
    :cond_2
    iget-object p1, p1, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method public final closeCustomExpand(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "closeCustomExpand called."

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget p1, p0, Lcom/inmobi/media/X5;->b:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 4
    const-string v2, "closeCustomExpand called in incorrect Ad type: "

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    iget v2, p0, Lcom/inmobi/media/X5;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 511
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_4

    .line 512
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 516
    :cond_4
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/inmobi/media/X5$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda6;-><init>(Lcom/inmobi/media/X5;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final customExpand(Ljava/lang/String;Ljava/lang/String;IFZZ)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p5, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p5, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/inmobi/media/g5;

    const-string v2, "customExpand called"

    invoke-virtual {p5, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p5, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 3
    iget-boolean p5, p5, Lcom/inmobi/media/Ya;->z0:Z

    if-eqz p5, :cond_2

    .line 4
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p3, "customExpand called on unloaded ad"

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    iget p5, p0, Lcom/inmobi/media/X5;->b:I

    const/4 v1, 0x1

    if-eq p5, v1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 10
    const-string p3, "customExpand called in incorrect Ad type: "

    invoke-static {p2, v0, p3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 469
    iget p4, p0, Lcom/inmobi/media/X5;->b:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const-string p5, "customExpand"

    if-eqz p2, :cond_12

    .line 1569
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_a

    if-nez v4, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v0

    .line 1574
    :goto_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 1575
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_6

    move v5, v1

    goto :goto_2

    :cond_6
    move v5, v2

    :goto_2
    if-nez v4, :cond_8

    if-nez v5, :cond_7

    move v4, v1

    goto :goto_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-nez v5, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_a
    :goto_3
    add-int/2addr v0, v1

    .line 2692
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2693
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2694
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_8

    :cond_b
    if-ltz p3, :cond_11

    .line 2698
    invoke-static {}, Lcom/inmobi/media/R3;->values()[Lcom/inmobi/media/R3;

    move-result-object v0

    array-length v0, v0

    if-lt p3, v0, :cond_c

    goto/16 :goto_7

    :cond_c
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_d

    goto :goto_6

    .line 2708
    :cond_d
    iget-object p5, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p5}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object p5

    .line 2709
    iget-object p5, p5, Lcom/inmobi/media/o6;->f:Lcom/inmobi/media/u6;

    if-eqz p5, :cond_e

    .line 2710
    new-instance v0, Lcom/inmobi/media/t6;

    .line 2712
    invoke-static {p2}, Lcom/inmobi/media/l6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2713
    iget-object v3, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v3}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v3

    .line 2714
    iget v4, v3, Lcom/inmobi/media/o6;->h:I

    add-int/2addr v4, v1

    .line 2715
    iput v4, v3, Lcom/inmobi/media/o6;->h:I

    const/16 v1, 0x8

    .line 2716
    invoke-direct {v0, p5, v2, v4, v1}, Lcom/inmobi/media/t6;-><init>(Lcom/inmobi/media/u6;Ljava/lang/String;II)V

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    :goto_4
    move-object v7, v0

    if-nez v7, :cond_f

    goto :goto_5

    .line 2722
    :cond_f
    const-string p5, "IN_CUSTOM"

    .line 2723
    iput-object p5, v7, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 2724
    :goto_5
    iget-object p5, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p5}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object p5

    .line 2725
    sget-object v0, Lcom/inmobi/media/h6;->d:Lcom/inmobi/media/h6;

    const/16 v1, 0x1f48

    .line 2727
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2728
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2729
    const-string v2, "funnelState"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3270
    new-instance v2, Lcom/inmobi/media/n6;

    invoke-direct {v2, p5}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/media/o6;)V

    invoke-static {v0, v7, v1, v2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    .line 3271
    invoke-virtual/range {v1 .. v7}, Lcom/inmobi/media/X5;->a(Ljava/lang/String;Ljava/lang/String;IFZLcom/inmobi/media/t6;)V

    return-void

    .line 3272
    :cond_10
    :goto_6
    iget-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string p3, "Invalid screenPercentage"

    invoke-virtual {p2, p1, p3, p5}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3273
    :cond_11
    :goto_7
    iget-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string p3, "Invalid inputType"

    invoke-virtual {p2, p1, p3, p5}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3274
    :cond_12
    :goto_8
    iget-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p6, "Invalid "

    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p5}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final customExpandInNative(Ljava/lang/String;Ljava/lang/String;FZ)V
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "customExpandInNative called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 3
    iget-boolean v2, v0, Lcom/inmobi/media/Ya;->z0:Z

    if-eqz v2, :cond_2

    .line 4
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p3, "customExpandInNative called on unloaded ad"

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    iget v2, p0, Lcom/inmobi/media/X5;->b:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 8
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 9
    const-string p3, "customExpandInNative called in incorrect Ad type: "

    invoke-static {p2, v1, p3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 308
    iget p4, p0, Lcom/inmobi/media/X5;->b:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-ltz v2, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v2

    if-lez v2, :cond_5

    goto/16 :goto_2

    .line 321
    :cond_5
    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v0

    .line 322
    iget-object v0, v0, Lcom/inmobi/media/o6;->f:Lcom/inmobi/media/u6;

    if-eqz v0, :cond_6

    .line 323
    new-instance v2, Lcom/inmobi/media/t6;

    .line 325
    invoke-static {p2}, Lcom/inmobi/media/l6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 326
    iget-object v5, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v5}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v5

    .line 327
    iget v6, v5, Lcom/inmobi/media/o6;->h:I

    add-int/2addr v6, v3

    .line 328
    iput v6, v5, Lcom/inmobi/media/o6;->h:I

    const/16 v5, 0x8

    .line 329
    invoke-direct {v2, v0, v4, v6, v5}, Lcom/inmobi/media/t6;-><init>(Lcom/inmobi/media/u6;Ljava/lang/String;II)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    move-object v10, v2

    if-nez v10, :cond_7

    goto :goto_1

    .line 335
    :cond_7
    const-string v0, "IN_NATIVE"

    .line 336
    iput-object v0, v10, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 337
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v0

    .line 338
    sget-object v2, Lcom/inmobi/media/h6;->d:Lcom/inmobi/media/h6;

    const/16 v4, 0x1f4a

    .line 340
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 341
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    const-string v5, "funnelState"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    new-instance v5, Lcom/inmobi/media/n6;

    invoke-direct {v5, v0}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/media/o6;)V

    invoke-static {v2, v10, v4, v5}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 884
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v4

    .line 889
    new-instance v9, Lcom/inmobi/media/g2;

    invoke-direct {v9, p3, p4}, Lcom/inmobi/media/g2;-><init>(FZ)V

    .line 890
    const-string v5, "customExpandInNative"

    move-object v6, p1

    move-object v7, p2

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/inmobi/media/o6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;Lcom/inmobi/media/g2;)I

    move-result v0

    .line 897
    iget-object v2, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_8

    sget-object v4, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 898
    const-string v5, "customExpandInNativeRequest: "

    invoke-static {v4, v1, v5, v0}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1231
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v4, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1236
    sget-object v0, Lcom/inmobi/media/R3;->a:Lcom/inmobi/media/R3;

    const/4 v7, 0x0

    xor-int/lit8 v9, p4, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    .line 1237
    invoke-virtual/range {v4 .. v10}, Lcom/inmobi/media/X5;->a(Ljava/lang/String;Ljava/lang/String;IFZLcom/inmobi/media/t6;)V

    :cond_9
    return-void

    .line 1238
    :cond_a
    :goto_2
    const-string p2, "Invalid screenPercentage"

    const-string p3, "customExpandInNative"

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final disableBackButton(Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "disableBackButton called"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->setDisableBackButton(Z)V

    return-void
.end method

.method public final disableCloseRegion(Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "disableCloseRegion called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/X5$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2, p1}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda10;-><init>(Lcom/inmobi/media/X5;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final fireAdFailed(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "access$getTAG$p(...)"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fireAdFailed called."

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "fireAdFailed"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 6
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 7
    const-string v3, "SDK encountered unexpected error in handling fireAdFailed() signal from creative; "

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-static {v1, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 227
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final fireAdReady(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "access$getTAG$p(...)"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fireAdReady called."

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "fireAdReady"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 7
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 8
    const-string v3, "SDK encountered unexpected error in handling fireAdReady() signal from creative; "

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-static {v1, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 214
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final fireComplete(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "fireComplete is called"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_3

    .line 5
    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 6
    const-string v3, "completeFromInterActive "

    invoke-static {p1, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    iget-object v0, p1, Lcom/inmobi/media/Ya;->I0:Lcom/inmobi/media/Z2;

    if-eqz v0, :cond_4

    .line 9
    iget-object v2, v0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    .line 10
    iget-object v2, v0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    const/4 v3, 0x1

    .line 11
    iput v3, v2, Lcom/inmobi/media/d3;->i:I

    .line 12
    iget-object v0, v0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    :cond_4
    iget-object p1, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "completeFromInterActive"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final fireSkip(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "fireSkip is called"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 6
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_2

    .line 7
    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 8
    const-string v3, "skipFromInterActive "

    invoke-static {p1, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/inmobi/media/Ya;->I0:Lcom/inmobi/media/Z2;

    if-eqz v0, :cond_3

    .line 11
    iget-object v2, v0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    iget-object v2, v0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    const/4 v3, 0x1

    .line 13
    iput v3, v2, Lcom/inmobi/media/d3;->h:I

    .line 14
    iget-object v0, v0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    :cond_3
    iget-object p1, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "skipFromInterActive"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final getAdContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "getAdContext is called"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getAdPodHandler()Lcom/inmobi/media/Z;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    check-cast p1, Lcom/inmobi/media/Q0;

    invoke-virtual {p1}, Lcom/inmobi/media/Q0;->K()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getBlob(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "getBlob is called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v1, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_3

    .line 5
    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "getBlob"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 7
    iget-object v1, v0, Lcom/inmobi/media/Ya;->R:Lcom/inmobi/media/Z1;

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getImpressionId()Ljava/lang/String;

    move-result-object v2

    .line 9
    check-cast v1, Lcom/inmobi/media/Q0;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/inmobi/media/Q0;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/a2;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final getCurrentPosition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "getCurrentPosition called"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    const-string p1, ""

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getCurrentPositionMonitor()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/inmobi/media/Ya;->w:Z

    .line 9
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/X5$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda8;-><init>(Lcom/inmobi/media/X5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 20
    iget-boolean v1, v0, Lcom/inmobi/media/Ya;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 21
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getCurrentPositionMonitor()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :cond_3
    :try_start_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    monitor-exit p1

    .line 47
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getCurrentPosition()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p1

    throw v0
.end method

.method public final getCurrentRenderingIndex(Ljava/lang/String;)I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "getCurrentRenderingIndex is called"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getCurrentRenderingPodAdIndex()I

    move-result p1

    return p1
.end method

.method public final getDefaultPosition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "getDefaultPosition called"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getDefaultPositionMonitor()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/inmobi/media/Ya;->v:Z

    .line 9
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/X5$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda12;-><init>(Lcom/inmobi/media/X5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 20
    iget-boolean v1, v0, Lcom/inmobi/media/Ya;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 21
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getDefaultPositionMonitor()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :cond_3
    :try_start_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    monitor-exit p1

    .line 47
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getDefaultPosition()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p1

    throw v0
.end method

.method public final getDeviceVolume(Ljava/lang/String;)I
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "getDeviceVolume called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const/4 v2, -0x1

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getMediaProcessor()Lcom/inmobi/media/f7;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/f7;->a()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 11
    iget-object v3, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v4, "Unexpected error"

    const-string v5, "getDeviceVolume"

    invoke-virtual {v3, p1, v4, v5}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 13
    sget-object v3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 14
    const-string v4, "SDK encountered unexpected error in handling getDeviceVolume() request from creative; "

    invoke-static {v3, v1, v4}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v3, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v2
.end method

.method public final getMaxDeviceVolume(Ljava/lang/String;)I
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "getMaxDeviceVolume called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v0}, Lcom/inmobi/media/E3;->m()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 5
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "getMaxDeviceVolume"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 7
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 8
    const-string v3, "SDK encountered unexpected error in handling getMaxDeviceVolume() request from creative; "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getMaxSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "getMaxSize called:"

    iget-object v1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v3, "access$getTAG$p(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "getMaxSize called"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/inmobi/media/X5;->getScreenSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    :cond_3
    const v3, 0x1020002

    .line 15
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 17
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/inmobi/media/y2;->b(F)I

    move-result v3

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 19
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/inmobi/media/y2;->b(F)I

    move-result v4

    .line 20
    iget-object v5, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v5}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_4

    if-nez v4, :cond_5

    .line 21
    :cond_4
    new-instance v3, Lcom/inmobi/media/V5;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    invoke-direct {v3, v2, v4}, Lcom/inmobi/media/V5;-><init>(Landroid/widget/FrameLayout;Lcom/inmobi/media/f5;)V

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 23
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 25
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 26
    :catch_0
    :goto_1
    :try_start_2
    iget v4, v3, Lcom/inmobi/media/V5;->c:I

    .line 27
    iget v3, v3, Lcom/inmobi/media/V5;->d:I

    .line 28
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :try_start_3
    monitor-exit v2

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_3

    :goto_2
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 40
    :cond_5
    :goto_3
    :try_start_4
    const-string v2, "width"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v2, "height"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_1
    move-exception v2

    .line 43
    :try_start_5
    iget-object v3, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_6

    sget-object v4, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v5, "access$getTAG$p(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Error while creating max size Json."

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v5, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_7

    sget-object v3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v4, "access$getTAG$p(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 47
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "getMaxSize"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_7

    .line 49
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 50
    const-string v3, "access$getTAG$p(...)"

    const-string v4, "SDK encountered unexpected error in handling getMaxSize() request from creative; "

    invoke-static {v2, v3, v4}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51
    invoke-static {v0, v3}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 755
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_7
    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getOrientation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "getOrientation called"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/inmobi/media/N3;->g()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    const-string p1, "0"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 9
    const-string p1, "90"

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 13
    const-string p1, "180"

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 17
    const-string p1, "270"

    goto :goto_0

    .line 20
    :cond_4
    const-string p1, "-1"

    :goto_0
    return-object p1
.end method

.method public final getOrientationProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->c:Lcom/inmobi/media/K9;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/K9;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 4
    const-string v2, "access$getTAG$p(...)"

    const-string v3, "getOrientationProperties called: "

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getPlacementType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "getPlacementType called"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget p1, p0, Lcom/inmobi/media/X5;->b:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 3
    const-string p1, "interstitial"

    goto :goto_0

    .line 5
    :cond_1
    const-string p1, "inline"

    :goto_0
    return-object p1
.end method

.method public final getPlatform(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "getPlatform. Platform:android"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    const-string p1, "android"

    return-object p1
.end method

.method public final getPlatformVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 3
    const-string v2, "access$getTAG$p(...)"

    const-string v3, "getPlatformVersion. Version:"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final getRenderableAdIndexes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "getRenderableAdIndexes is called"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getRenderableAdIndexes()Lorg/json/JSONArray;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "renderableAdIndexes called:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getSafeArea(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getSafeArea()Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSafeArea called:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getScreenSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "access$getTAG$p(...)"

    .line 1
    const-string v1, "Message:Width x Height : "

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v3, "width"

    invoke-static {}, Lcom/inmobi/media/N3;->h()Lcom/inmobi/media/O3;

    move-result-object v4

    .line 4
    iget v4, v4, Lcom/inmobi/media/O3;->a:I

    .line 5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    const-string v3, "height"

    invoke-static {}, Lcom/inmobi/media/N3;->h()Lcom/inmobi/media/O3;

    move-result-object v4

    .line 7
    iget v4, v4, Lcom/inmobi/media/O3;->b:I

    .line 8
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    iget-object v3, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_0

    .line 10
    sget-object v4, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/media/N3;->h()Lcom/inmobi/media/O3;

    move-result-object v1

    .line 12
    iget v1, v1, Lcom/inmobi/media/O3;->a:I

    .line 13
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x78

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/media/N3;->h()Lcom/inmobi/media/O3;

    move-result-object v5

    .line 14
    iget v5, v5, Lcom/inmobi/media/O3;->b:I

    .line 15
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 23
    iget-object v3, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v4, "Unexpected error"

    const-string v5, "getScreenSize"

    invoke-virtual {v3, p1, v4, v5}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 25
    sget-object v3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 26
    const-string v4, "SDK encountered unexpected error while getting screen dimensions; "

    invoke-static {v3, v0, v4}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 27
    invoke-static {v1, v4}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 676
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v3, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :catch_1
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 683
    const-string v3, "getScreenSize called:"

    invoke-static {v2, v0, v3, p1}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1338
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final getSdkVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "getSdkVersion called. Version:10.8.3"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    const-string p1, "10.8.3"

    return-object p1
.end method

.method public final getShowTimeStamp(Ljava/lang/String;)J
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "getShowTimeStamp is called"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getShowTimeStamp()J

    move-result-wide v1

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getShowTimeStamp is "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v3, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-wide v1
.end method

.method public final getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getViewState()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "ENGLISH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 3
    const-string v2, "access$getTAG$p(...)"

    const-string v3, "getState called:"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 634
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "getVersion called. Version:2.0"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    const-string p1, "2.0"

    return-object p1
.end method

.method public final impressionFired(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "impressionFired is called"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 3
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    .line 4
    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 5
    const-string v3, "onImpressionFired "

    invoke-static {p1, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 8
    const-string v3, "recordContextualData "

    invoke-static {p1, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/inmobi/media/Ya;->I0:Lcom/inmobi/media/Z2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/media/Z2;->a()V

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getTelemetryOnAdImpression()Lcom/inmobi/media/rc;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/inmobi/media/ab;->a(Lcom/inmobi/media/rc;)V

    return-void
.end method

.method public final incentCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v3, "incentCompleted called. IncentData:"

    invoke-static {v2, v1, v3, p2}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 955
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "SDK encountered unexpected error in handling onUserInteraction() signal from creative; "

    const-string v2, "incentCompleted"

    const-string v3, "Unexpected error"

    if-nez p2, :cond_2

    .line 958
    :try_start_0
    iget-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p2}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object p2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v4}, Lcom/inmobi/media/ab;->b(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 960
    iget-object v4, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v4, p1, v3, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 962
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 963
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 964
    invoke-static {p2, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 1923
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 1932
    :cond_2
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1933
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1934
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const-string v6, "keys(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1935
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1936
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    .line 1937
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1938
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1941
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v4}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/inmobi/media/ab;->b(Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 1943
    :try_start_3
    iget-object v4, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v4, p1, v3, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-object v4, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_4

    .line 1945
    sget-object v5, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1946
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1947
    check-cast v4, Lcom/inmobi/media/g5;

    invoke-virtual {v4, v5, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1954
    :catch_2
    :try_start_4
    iget-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p2}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object p2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v4}, Lcom/inmobi/media/ab;->b(Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    .line 1956
    iget-object v4, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v4, p1, v3, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 1958
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 1959
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1960
    invoke-static {p2, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 2950
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final isBackButtonDisabled(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "isBackButtonDisabled called"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_2
    iget-boolean p1, p1, Lcom/inmobi/media/Ya;->B:Z

    return p1
.end method

.method public final isDeviceMuted(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "isDeviceMuted called"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    const-string p1, "false"

    return-object p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "JavaScript called: isDeviceMuted()"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getMediaProcessor()Lcom/inmobi/media/f7;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    iget-object v1, v1, Lcom/inmobi/media/f7;->b:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_4

    .line 11
    const-string v2, "MraidMediaProcessor"

    const-string v3, "isVolumeMuted"

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_4
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/media/AudioManager;

    if-eqz v2, :cond_6

    check-cast v1, Landroid/media/AudioManager;

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 15
    iget-object v2, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_7

    .line 16
    sget-object v3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 17
    const-string v4, "SDK encountered unexpected error in checking if device is muted; "

    invoke-static {v3, v0, v4}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :cond_7
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isHeadphonePlugged(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "isHeadphonePlugged called"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    const-string p1, "false"

    return-object p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "JavaScript called: isHeadphonePlugged()"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getMediaProcessor()Lcom/inmobi/media/f7;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/media/f7;->b()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    iget-object v1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_4

    .line 12
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 13
    const-string v3, "SDK encountered unexpected error in checking if headphones are plugged-in; "

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 1103
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    .line 1108
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isViewable(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    sget-object p1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v0, "access$getTAG$p(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {v1, p1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    .line 4
    :cond_1
    iget-object p1, v1, Lcom/inmobi/media/Ya;->z:Lcom/inmobi/media/qd;

    sget-object v0, Lcom/inmobi/media/qd;->c:Lcom/inmobi/media/qd;

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public final loadAd(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "loadAd is called with index - "

    invoke-static {v0, v1, v2, p2}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1431
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 1433
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    .line 1434
    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1435
    const-string v3, "loadPodAd "

    invoke-static {p1, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1436
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :cond_1
    iget-object v0, p1, Lcom/inmobi/media/Ya;->z:Lcom/inmobi/media/qd;

    sget-object v2, Lcom/inmobi/media/qd;->c:Lcom/inmobi/media/qd;

    if-ne v0, v2, :cond_2

    .line 1438
    iget-object v0, p1, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz v0, :cond_2

    .line 1439
    iget-object v0, p1, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1440
    iget-object v0, p1, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2, p1}, Lcom/inmobi/media/Z;->a(ILcom/inmobi/media/Ya;)V

    goto :goto_0

    .line 1442
    :cond_2
    iget-object p2, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_3

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string v1, "Cannot load index pod ad as the current ad is not viewable"

    invoke-virtual {p2, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p2, 0x0

    .line 1443
    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->a(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "Log called. Message:"

    invoke-static {v0, v1, v2, p2}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    sget-object v0, Lcom/inmobi/media/Ya;->N0:Lcom/inmobi/media/Ia;

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    sget-object v1, Lcom/inmobi/media/Ya;->Q0:Lcom/inmobi/media/v1;

    .line 187
    sget-object v2, Lcom/inmobi/media/Ia;->a:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/v1;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 188
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/inmobi/media/ab;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final logTelemetryEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "access$getTAG$p(...)"

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_0

    sget-object p3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string p1, "eventType is null"

    invoke-virtual {p2, p3, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "logTelemetryEvent is called: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "eventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2452
    iget-object p1, p1, Lcom/inmobi/media/Ya;->O:Lcom/inmobi/media/fb;

    if-eqz p1, :cond_8

    .line 2453
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2484
    iget-object v0, p1, Lcom/inmobi/media/fb;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 2488
    :cond_3
    iget-object v0, p1, Lcom/inmobi/media/fb;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_4

    .line 2489
    iget-object p2, p1, Lcom/inmobi/media/fb;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2490
    invoke-virtual {p1}, Lcom/inmobi/media/fb;->a()Ljava/util/Map;

    move-result-object p2

    .line 2491
    iget-wide v0, p1, Lcom/inmobi/media/fb;->b:J

    sget-object p1, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2492
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 2493
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "latency"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    sget-object p1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 2495
    sget-object p1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 2496
    const-string p3, "TemplateEventDropped"

    invoke-static {p3, p2, p1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    goto/16 :goto_1

    :cond_4
    if-eqz p3, :cond_5

    const/4 v0, 0x0

    .line 2497
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_5

    goto :goto_0

    :catch_0
    move-exception p3

    .line 2499
    sget-object v2, Lcom/inmobi/media/ic;->b:Ljava/lang/String;

    .line 2500
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing JSON: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p3, v0

    .line 2506
    :cond_5
    iget-object v0, p1, Lcom/inmobi/media/fb;->a:Lcom/inmobi/media/bb;

    .line 2507
    iget-object v0, v0, Lcom/inmobi/media/bb;->a:Lcom/inmobi/media/Y;

    .line 2508
    invoke-virtual {v0}, Lcom/inmobi/media/Y;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "plType"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 2509
    iget-object v2, p1, Lcom/inmobi/media/fb;->a:Lcom/inmobi/media/bb;

    .line 2510
    iget-object v2, v2, Lcom/inmobi/media/bb;->b:Ljava/lang/String;

    .line 2511
    const-string v3, "markupType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 2512
    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v3

    const-string v4, "networkType"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lkotlin/Pair;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v1

    const/4 v0, 0x2

    aput-object v3, v4, v0

    .line 2513
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    if-eqz p3, :cond_6

    .line 2520
    const-string v1, "payload"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2523
    :cond_6
    iget-object p3, p1, Lcom/inmobi/media/fb;->a:Lcom/inmobi/media/bb;

    .line 2524
    iget-object p3, p3, Lcom/inmobi/media/bb;->c:Ljava/lang/String;

    .line 2525
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_7

    .line 2526
    iget-object p1, p1, Lcom/inmobi/media/fb;->a:Lcom/inmobi/media/bb;

    .line 2527
    iget-object p1, p1, Lcom/inmobi/media/bb;->c:Ljava/lang/String;

    .line 2528
    const-string p3, "metadataBlob"

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    :cond_7
    sget-object p1, Lcom/inmobi/media/mc;->b:Lcom/inmobi/media/mc;

    .line 2535
    invoke-static {p2, v0, p1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final onAudioStateChanged(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "onAudioStateChanged is called: "

    invoke-static {v0, v1, v2, p2}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1471
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :cond_0
    sget-object p1, Lcom/inmobi/media/B1;->b:Lcom/inmobi/media/A1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1473
    sget-object p1, Lcom/inmobi/media/B1;->c:Landroid/util/SparseArray;

    .line 1474
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/B1;

    if-nez p1, :cond_1

    sget-object p1, Lcom/inmobi/media/B1;->d:Lcom/inmobi/media/B1;

    .line 1475
    :cond_1
    sget-object p2, Lcom/inmobi/media/B1;->d:Lcom/inmobi/media/B1;

    if-eq p1, p2, :cond_2

    .line 1476
    iget-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p2}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/inmobi/media/ab;->a(Lcom/inmobi/media/B1;)V

    :cond_2
    return-void
.end method

.method public final onOrientationChange(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, ">>> onOrientationChange() >>> This API is deprecated!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onUserAudioMuteInteraction(Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioMuteInteraction is called: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/inmobi/media/ab;->a(Z)V

    return-void
.end method

.method public final onUserInteraction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "onUserInteraction called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v2, "onUserInteraction"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 7
    const-string v4, "onUserInteraction called. Params:"

    invoke-static {v3, v1, v4, p2}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 914
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "SDK encountered unexpected error in handling onUserInteraction() signal from creative; "

    const-string v3, "Unexpected error"

    if-nez p2, :cond_4

    .line 917
    :try_start_0
    iget-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p2}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object p2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v4}, Lcom/inmobi/media/ab;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 919
    iget-object v4, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v4, p1, v3, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 921
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 922
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 923
    invoke-static {p2, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 1836
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 1844
    :cond_4
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1845
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1846
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const-string v6, "keys(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1847
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1848
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    .line 1849
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1850
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1853
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v4}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/inmobi/media/ab;->a(Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 1855
    :try_start_3
    iget-object v4, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v4, p1, v3, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    iget-object v4, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_6

    .line 1857
    sget-object v5, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1858
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1859
    check-cast v4, Lcom/inmobi/media/g5;

    invoke-virtual {v4, v5, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1866
    :catch_2
    :try_start_4
    iget-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p2}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object p2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v4}, Lcom/inmobi/media/ab;->a(Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    .line 1868
    iget-object v4, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v4, p1, v3, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_6

    .line 1870
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 1871
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1872
    invoke-static {p2, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 2815
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "open called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string p2, "open"

    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 7
    iget-boolean v2, v0, Lcom/inmobi/media/Ya;->z0:Z

    if-eqz v2, :cond_3

    .line 8
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "open called on unloaded ad"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->i()V

    .line 12
    new-instance v0, Lcom/inmobi/media/X5$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda4;-><init>(Lcom/inmobi/media/X5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inmobi/media/fc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final openEmbedded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "openEmbedded called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string p2, "openEmbedded"

    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 7
    iget-boolean v2, v0, Lcom/inmobi/media/Ya;->z0:Z

    if-eqz v2, :cond_3

    .line 8
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "openEmbedded called on unloaded ad"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->i()V

    .line 12
    new-instance v0, Lcom/inmobi/media/X5$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/X5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inmobi/media/fc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final openExternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "open External"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p3, "Found a null instance of render view!"

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->k()Z

    move-result v0

    const-string v2, "openExternal"

    if-nez v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->i()V

    .line 11
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 12
    const-string v4, "openExternal called with url: "

    invoke-static {v3, v1, v4, p2}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 836
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v0

    .line 840
    iget-object v0, v0, Lcom/inmobi/media/o6;->f:Lcom/inmobi/media/u6;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 841
    new-instance v3, Lcom/inmobi/media/t6;

    .line 843
    invoke-static {p2}, Lcom/inmobi/media/l6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 844
    iget-object v5, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v5}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v5

    .line 845
    iget v6, v5, Lcom/inmobi/media/o6;->h:I

    add-int/lit8 v6, v6, 0x1

    .line 846
    iput v6, v5, Lcom/inmobi/media/o6;->h:I

    const/16 v5, 0x8

    .line 847
    invoke-direct {v3, v0, v4, v6, v5}, Lcom/inmobi/media/t6;-><init>(Lcom/inmobi/media/u6;Ljava/lang/String;II)V

    goto :goto_0

    :cond_5
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_6

    goto :goto_1

    .line 853
    :cond_6
    const-string v0, "EX_NATIVE"

    .line 854
    iput-object v0, v3, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 855
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v0

    .line 856
    sget-object v4, Lcom/inmobi/media/h6;->d:Lcom/inmobi/media/h6;

    .line 857
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 858
    const-string v5, "funnelState"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    new-instance v6, Lcom/inmobi/media/n6;

    invoke-direct {v6, v0}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/media/o6;)V

    invoke-static {v4, v3, v1, v6}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 1400
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v0

    .line 1402
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1403
    const-string v4, "api"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 1868
    invoke-virtual {v0, p1, p2, p3, v3}, Lcom/inmobi/media/o6;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)V

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_8

    .line 1871
    invoke-virtual {v0, p1, p3, v1, v3}, Lcom/inmobi/media/o6;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)V

    goto :goto_2

    .line 1874
    :cond_8
    sget-object p2, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1875
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2416
    new-instance v1, Lcom/inmobi/media/n6;

    invoke-direct {v1, v0}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/media/o6;)V

    invoke-static {p2, v3, p3, v1}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 2417
    iget-object p2, v0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz p2, :cond_9

    .line 2418
    const-string p3, "message"

    const-string v1, "Empty url and fallback url"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2963
    iget-object p2, p2, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p2, p1, v1, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    :cond_9
    iget-object p1, v0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_a

    const-string p2, "TAG"

    const-string p3, "o6"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "Empty deeplink and fallback urls"

    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public final openWithoutTracker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "openWithoutTracker called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string p2, "openWithoutTracker"

    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 7
    iget-boolean v0, v0, Lcom/inmobi/media/Ya;->z0:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "openWithoutTracker called on unloaded ad"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 11
    :cond_3
    new-instance v0, Lcom/inmobi/media/X5$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda9;-><init>(Lcom/inmobi/media/X5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inmobi/media/fc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ping(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "ping called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p3, "Found a null instance of render view!"

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "ping"

    if-eqz p2, :cond_d

    .line 1390
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-gt v5, v2, :cond_8

    if-nez v6, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    move v7, v2

    .line 1395
    :goto_1
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    .line 1396
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    if-nez v6, :cond_6

    if-nez v7, :cond_5

    move v6, v3

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_8
    :goto_3
    add-int/2addr v2, v3

    .line 2800
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2801
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2802
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    .line 2806
    :cond_a
    iget-object v2, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_b

    sget-object v4, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JavaScript called ping() URL: >>> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v4, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    :cond_b
    :try_start_0
    sget-object v2, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    iget-object v4, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    invoke-virtual {v2, p2, p3, v4}, Lcom/inmobi/media/u2;->a(Ljava/lang/String;ZLcom/inmobi/media/f5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 2810
    iget-object p3, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v2, "Unexpected error"

    invoke-virtual {p3, p1, v2, v0}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    const-string p1, "InMobi"

    const-string p3, "Failed to fire ping; SDK encountered unexpected error"

    invoke-static {v3, p1, p3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 2816
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_c

    .line 2817
    sget-object p3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2818
    const-string v0, "SDK encountered unexpected error in handling ping() request from creative; "

    invoke-static {p3, v1, v0}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2819
    invoke-static {p2, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 2962
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    return-void

    .line 2963
    :cond_d
    :goto_5
    iget-object p3, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v0}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final pingInWebView(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "openInWebView called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p3, "Found a null instance of render view!"

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "pingInWebView"

    if-eqz p2, :cond_d

    .line 1385
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-gt v5, v2, :cond_8

    if-nez v6, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    move v7, v2

    .line 1390
    :goto_1
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    .line 1391
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    if-nez v6, :cond_6

    if-nez v7, :cond_5

    move v6, v3

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_8
    :goto_3
    add-int/2addr v2, v3

    .line 2790
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2791
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2792
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    .line 2796
    :cond_a
    iget-object v2, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_b

    sget-object v4, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JavaScript called pingInWebView() URL: >>> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v4, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    :cond_b
    :try_start_0
    sget-object v2, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    iget-object v4, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    invoke-virtual {v2, p2, p3, v4}, Lcom/inmobi/media/u2;->b(Ljava/lang/String;ZLcom/inmobi/media/f5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 2800
    iget-object p3, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v2, "Unexpected error"

    invoke-virtual {p3, p1, v2, v0}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    const-string p1, "InMobi"

    const-string p3, "Failed to fire ping; SDK encountered unexpected error"

    invoke-static {v3, p1, p3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 2806
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_c

    .line 2807
    sget-object p3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2808
    const-string v0, "SDK encountered unexpected error in handling pingInWebView() request from creative; "

    invoke-static {p3, v1, v0}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2809
    invoke-static {p2, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 2980
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    return-void

    .line 2981
    :cond_d
    :goto_5
    iget-object p3, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v0}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v1, "access$getTAG$p(...)"

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_b

    .line 989
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-gt v4, v0, :cond_7

    if-nez v5, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v0

    .line 994
    :goto_1
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 995
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    if-nez v5, :cond_5

    if-nez v6, :cond_4

    move v5, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    :goto_3
    add-int/2addr v0, v2

    .line 1999
    invoke-interface {p2, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2000
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2001
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "http"

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {p2, v0, v3, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "mp4"

    invoke-static {p2, v0, v3, v2, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "avi"

    invoke-static {p2, v0, v3, v2, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "m4v"

    invoke-static {p2, v0, v3, v2, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 2011
    :cond_9
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_a

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "JavaScript called: playVideo ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    :cond_a
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/X5$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda11;-><init>(Lcom/inmobi/media/X5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2013
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v0, "Null or empty or invalid media playback URL supplied"

    const-string v1, "playVideo"

    invoke-virtual {p2, p1, v0, v1}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final registerBackButtonPressedEventListener(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "registerBackButtonPressedEventListener called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    :try_start_0
    iget-object v2, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_3

    .line 5
    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "registerBackButtonPressedEventListener "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_3
    iput-object p1, v0, Lcom/inmobi/media/Ya;->C:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "registerBackButtonPressedEventListener"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 11
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 12
    const-string v3, "SDK encountered unexpected error in handling registerBackButtonPressedEventListener() request from creative; "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1314
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final registerDeviceMuteEventListener(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "registerDeviceMuteEventListener called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getMediaProcessor()Lcom/inmobi/media/f7;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    const-string v2, "jsCallbackNamespace"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v2, v0, Lcom/inmobi/media/f7;->d:Lcom/inmobi/media/S6;

    if-nez v2, :cond_3

    .line 206
    new-instance v2, Lcom/inmobi/media/S6;

    new-instance v3, Lcom/inmobi/media/c7;

    invoke-direct {v3, v0, p1}, Lcom/inmobi/media/c7;-><init>(Lcom/inmobi/media/f7;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/inmobi/media/S6;-><init>(Lcom/inmobi/media/R6;)V

    .line 207
    iput-object v2, v0, Lcom/inmobi/media/f7;->d:Lcom/inmobi/media/S6;

    .line 209
    invoke-virtual {v2}, Lcom/inmobi/media/S6;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "registerDeviceMuteEventListener"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 214
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 215
    const-string v3, "SDK encountered unexpected error in handling registerDeviceMuteEventListener() request from creative; "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final registerDeviceVolumeChangeEventListener(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "registerDeviceVolumeChangeEventListener called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getMediaProcessor()Lcom/inmobi/media/f7;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    const-string v2, "jsCallbackNamespace"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 218
    :cond_3
    iget-object v3, v0, Lcom/inmobi/media/f7;->e:Lcom/inmobi/media/S6;

    if-nez v3, :cond_4

    .line 219
    new-instance v3, Lcom/inmobi/media/S6;

    .line 220
    new-instance v4, Lcom/inmobi/media/d7;

    .line 223
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 224
    invoke-direct {v4, v0, p1, v2, v5}, Lcom/inmobi/media/d7;-><init>(Lcom/inmobi/media/f7;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 225
    invoke-direct {v3, v4}, Lcom/inmobi/media/S6;-><init>(Lcom/inmobi/media/R6;)V

    iput-object v3, v0, Lcom/inmobi/media/f7;->e:Lcom/inmobi/media/S6;

    .line 232
    invoke-virtual {v3}, Lcom/inmobi/media/S6;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 233
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "registerDeviceVolumeChangeEventListener"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 237
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 238
    const-string v3, "SDK encountered unexpected error in handling registerDeviceVolumeChangeEventListener() request from creative; "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1396
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final registerHeadphonePluggedEventListener(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "registerHeadphonePluggedEventListener called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getMediaProcessor()Lcom/inmobi/media/f7;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    const-string v2, "jsCallbackNamespace"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v2, v0, Lcom/inmobi/media/f7;->f:Lcom/inmobi/media/S6;

    if-nez v2, :cond_3

    .line 255
    new-instance v2, Lcom/inmobi/media/S6;

    new-instance v3, Lcom/inmobi/media/b7;

    invoke-direct {v3, v0, p1}, Lcom/inmobi/media/b7;-><init>(Lcom/inmobi/media/f7;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/inmobi/media/S6;-><init>(Lcom/inmobi/media/R6;)V

    .line 256
    iput-object v2, v0, Lcom/inmobi/media/f7;->f:Lcom/inmobi/media/S6;

    .line 258
    invoke-virtual {v2}, Lcom/inmobi/media/S6;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "registerHeadphonePluggedEventListener"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 263
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 264
    const-string v3, "SDK encountered unexpected error in handling registerHeadphonePluggedEventListener() request from creative; "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1503
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final saveBlob(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "saveBlob is called"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_3

    .line 5
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "saveBlob"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 7
    iget-object v0, p1, Lcom/inmobi/media/Ya;->R:Lcom/inmobi/media/Z1;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getImpressionId()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/inmobi/media/Q0;

    invoke-virtual {v0, p2, p1}, Lcom/inmobi/media/Q0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final saveContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    const-string v1, "access$getTAG$p(...)"

    if-eqz p2, :cond_3

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 21
    iget-object p3, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v0, "Unexpected error"

    const-string v2, "saveContent"

    invoke-virtual {p3, p1, v0, v2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    .line 23
    sget-object p3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 24
    const-string v0, "SDK encountered unexpected error in handling saveContent() request from creative; "

    invoke-static {p3, v1, v0}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    invoke-static {p2, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 1071
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 1072
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_4

    sget-object v3, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v1, "saveContent called with invalid parameters"

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1075
    :try_start_1
    const-string v2, "url"

    if-nez p3, :cond_5

    move-object p3, v0

    :cond_5
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1077
    const-string p3, "reason"

    const/16 v2, 0x8

    .line 1078
    invoke-virtual {v1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1084
    :catch_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string p3, "toString(...)"

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "\""

    const-string v5, "\\\""

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendSaveContentResult(\"saveContent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_6

    move-object p2, v0

    .line 1087
    :cond_6
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\", \'failed\', \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\");"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1089
    iget-object p3, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p3, p1, p2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAdContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "podAdContext"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "setAdContext is called "

    invoke-static {v0, v1, v2, p2}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1437
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getAdPodHandler()Lcom/inmobi/media/Z;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1439
    check-cast p1, Lcom/inmobi/media/Q0;

    invoke-virtual {p1, p2}, Lcom/inmobi/media/Q0;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setCloseEndCardTracker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "setCloseEndCardTracker is called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/inmobi/media/Ya;->setCloseEndCardTracker(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v2, "Unexpected error"

    const-string v3, "getDownloadStatus"

    invoke-virtual {v0, p1, v2, v3}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 11
    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 12
    const-string v2, "SDK encountered unexpected error in handling getDownloadStatus() request from creative; "

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    invoke-static {p2, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 1352
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setOrientationProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "orientationPropertiesString"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v2, "setOrientationProperties called: "

    invoke-static {v1, v0, v2, p2}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 538
    iget-boolean p1, p1, Lcom/inmobi/media/Ya;->z0:Z

    if-eqz p1, :cond_2

    .line 539
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "setOrientationProperties called on unloaded ad"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 543
    :cond_2
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/inmobi/media/X5$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/media/X5;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showAd(Ljava/lang/String;I)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "showAd is called with index "

    invoke-static {v0, v1, v2, p2}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1413
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 1415
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    .line 1416
    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showPodAdAtIndex "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_1
    iget-object v0, p1, Lcom/inmobi/media/Ya;->z:Lcom/inmobi/media/qd;

    sget-object v2, Lcom/inmobi/media/qd;->c:Lcom/inmobi/media/qd;

    if-ne v0, v2, :cond_2

    .line 1418
    iget-object v0, p1, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz v0, :cond_2

    .line 1419
    iget-object v0, p1, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1420
    iget-object v0, p1, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, p2, p1, v1}, Lcom/inmobi/media/Z;->a(ILcom/inmobi/media/Ya;Landroid/content/Context;)V

    goto :goto_0

    .line 1422
    :cond_2
    iget-object p2, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_3

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string v1, "Cannot show index pod ad as the current ad is not viewable"

    invoke-virtual {p2, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p2, 0x0

    .line 1423
    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->b(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "alert"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "showAlert: "

    invoke-static {v0, v1, v2, p2}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 879
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final showEndCard(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "showEndCard is called"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Found a null instance of render view!"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_3

    .line 5
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "showEndCardFromInterActive"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getReferenceContainer()Lcom/inmobi/media/x;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/inmobi/media/t7;

    if-eqz v0, :cond_4

    .line 8
    check-cast p1, Lcom/inmobi/media/t7;

    invoke-virtual {p1}, Lcom/inmobi/media/t7;->o()V

    :cond_4
    return-void
.end method

.method public final storePicture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v0, "access$getTAG$p(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "storePicture is deprecated and no-op. "

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final submitAdReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "adQualityUrl"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "enableUserAdReportScreenshot"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "templateInfo"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "submitAdReport called"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v0, "1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1, p2, p4, p3}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final supports(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "feature"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 2
    const-string v2, "Checking support for: "

    invoke-static {v1, v0, v2, p2}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 808
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->e(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 810
    iget-object v1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Message:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " support: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, p2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final timeSinceShow(Ljava/lang/String;)J
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "timeSinceShow is called"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    .line 3
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 5
    const-string v2, "TAG"

    const-string v3, "timeSincePodShow "

    invoke-static {p1, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/inmobi/media/Q0;

    invoke-virtual {p1}, Lcom/inmobi/media/Q0;->A0()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final unload(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "unload called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "unload"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string p1, "InMobi"

    const-string v2, "Failed to unload ad; SDK encountered an unexpected error"

    const/4 v3, 0x1

    invoke-static {v3, p1, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 12
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 13
    const-string v3, "SDK encountered an expected error in handling the unload() request from creative; "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 790
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final unregisterBackButtonPressedEventListener(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "unregisterBackButtonPressedEventListener called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    :try_start_0
    iget-object v2, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_3

    .line 5
    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unregisterBackButtonPressedEventListener "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/inmobi/media/Ya;->C:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "unregisterBackButtonPressedEventListener"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 11
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 12
    const-string v3, "SDK encountered unexpected error in handling unregisterBackButtonPressedEventListener() request from creative; "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1334
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final unregisterDeviceMuteEventListener(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "unregisterDeviceMuteEventListener called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "Unregister device mute event listener ..."

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getMediaProcessor()Lcom/inmobi/media/f7;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v2, v0, Lcom/inmobi/media/f7;->d:Lcom/inmobi/media/S6;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/inmobi/media/S6;->a()V

    :cond_4
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/inmobi/media/f7;->d:Lcom/inmobi/media/S6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "unRegisterDeviceMuteEventListener"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    .line 15
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 16
    const-string v3, "SDK encountered unexpected error in handling unregisterDeviceMuteEventListener() request from creative; "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final unregisterDeviceVolumeChangeEventListener(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "unregisterDeviceVolumeChangeEventListener called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "Unregister device volume change listener ..."

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getMediaProcessor()Lcom/inmobi/media/f7;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v2, v0, Lcom/inmobi/media/f7;->e:Lcom/inmobi/media/S6;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/inmobi/media/S6;->a()V

    :cond_4
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/inmobi/media/f7;->e:Lcom/inmobi/media/S6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "unregisterDeviceVolumeChangeEventListener"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    .line 15
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 16
    const-string v3, "SDK encountered unexpected error in handling unregisterDeviceVolumeChangeEventListener() request from creative; "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final unregisterHeadphonePluggedEventListener(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "unregisterHeadphonePluggedEventListener called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Found a null instance of render view!"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "Unregister headphone plugged event listener ..."

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getMediaProcessor()Lcom/inmobi/media/f7;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v2, v0, Lcom/inmobi/media/f7;->f:Lcom/inmobi/media/S6;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/inmobi/media/S6;->a()V

    :cond_4
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/inmobi/media/f7;->f:Lcom/inmobi/media/S6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v2, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    const-string v3, "Unexpected error"

    const-string v4, "unregisterHeadphonePluggedEventListener"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    .line 15
    sget-object v2, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    .line 16
    const-string v3, "SDK encountered unexpected error in handling unregisterHeadphonePluggedEventListener() request from creative; "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1276
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final useCustomClose(Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "useCustomClose called:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/media/X5;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/X5$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda3;-><init>(Lcom/inmobi/media/X5;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zoom(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "jsCallbackNamespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zoom is called "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance p1, Lcom/inmobi/media/X5$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p2}, Lcom/inmobi/media/X5$$ExternalSyntheticLambda7;-><init>(Lcom/inmobi/media/X5;I)V

    invoke-static {p1}, Lcom/inmobi/media/fc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

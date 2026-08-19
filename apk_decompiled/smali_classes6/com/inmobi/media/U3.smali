.class public final Lcom/inmobi/media/U3;
.super Lcom/inmobi/media/W1;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Lkotlin/jvm/internal/Lambda;

.field public final h:Lkotlin/jvm/internal/Lambda;

.field public i:Lcom/inmobi/media/t6;

.field public j:Lcom/inmobi/media/q6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUserLandingCompleted"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fireLandingPageTracker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Lcom/inmobi/media/W1;-><init>(Lcom/inmobi/media/f5;)V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/U3;->f:Ljava/lang/String;

    .line 3
    check-cast p2, Lkotlin/jvm/internal/Lambda;

    iput-object p2, p0, Lcom/inmobi/media/U3;->g:Lkotlin/jvm/internal/Lambda;

    .line 4
    check-cast p3, Lkotlin/jvm/internal/Lambda;

    iput-object p3, p0, Lcom/inmobi/media/U3;->h:Lkotlin/jvm/internal/Lambda;

    return-void
.end method

.method public static synthetic a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V
    .locals 1

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p3, v0

    .line 127
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/inmobi/media/U3;->a(IZLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a(IZLjava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    .line 128
    iget-object v0, p0, Lcom/inmobi/media/U3;->j:Lcom/inmobi/media/q6;

    if-eqz v0, :cond_8

    .line 129
    :try_start_0
    iget-boolean v1, v0, Lcom/inmobi/media/q6;->e:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 130
    :cond_0
    iget-object v1, v0, Lcom/inmobi/media/q6;->a:Lcom/inmobi/media/t6;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "IN_CUSTOM"

    .line 131
    iput-object v2, v1, Lcom/inmobi/media/t6;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v2, 0x1f46

    const/16 v3, 0x1fa4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "funnelState"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 132
    :pswitch_0
    :try_start_1
    iput-boolean v5, v0, Lcom/inmobi/media/q6;->e:Z

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x2134

    goto :goto_1

    :pswitch_2
    const/16 v3, 0x2198

    goto :goto_1

    :pswitch_3
    const/16 v3, 0x20d0

    goto :goto_1

    :pswitch_4
    const/16 v3, 0x206c

    goto :goto_1

    :pswitch_5
    const/16 v3, 0x2008

    .line 141
    :goto_1
    iget-object p2, v0, Lcom/inmobi/media/q6;->c:Ljava/util/LinkedHashSet;

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    add-int/2addr v3, p3

    .line 143
    iget-object p2, v0, Lcom/inmobi/media/q6;->b:Lcom/inmobi/media/U3;

    .line 144
    sget-object p3, Lcom/inmobi/media/h6;->j:Lcom/inmobi/media/h6;

    .line 145
    iget-object p4, v0, Lcom/inmobi/media/q6;->a:Lcom/inmobi/media/t6;

    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 147
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object p2, p2, Lcom/inmobi/media/U3;->h:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, p4, v1, p2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    goto/16 :goto_3

    :pswitch_6
    if-eqz p2, :cond_7

    .line 226
    iput-object p3, v0, Lcom/inmobi/media/q6;->d:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_7
    if-nez p2, :cond_3

    if-eqz p3, :cond_7

    .line 254
    iget-object p2, v0, Lcom/inmobi/media/q6;->d:Ljava/lang/String;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 257
    :cond_3
    iput-boolean v5, v0, Lcom/inmobi/media/q6;->e:Z

    .line 259
    iget-object p2, v0, Lcom/inmobi/media/q6;->c:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 260
    iget-object p2, v0, Lcom/inmobi/media/q6;->b:Lcom/inmobi/media/U3;

    .line 261
    sget-object p3, Lcom/inmobi/media/h6;->h:Lcom/inmobi/media/h6;

    .line 262
    iget-object v1, v0, Lcom/inmobi/media/q6;->a:Lcom/inmobi/media/t6;

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 264
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object p2, p2, Lcom/inmobi/media/U3;->h:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, v1, v2, p2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 343
    :cond_4
    iget-object p2, v0, Lcom/inmobi/media/q6;->b:Lcom/inmobi/media/U3;

    .line 344
    sget-object p3, Lcom/inmobi/media/h6;->j:Lcom/inmobi/media/h6;

    .line 345
    iget-object v1, v0, Lcom/inmobi/media/q6;->a:Lcom/inmobi/media/t6;

    if-eqz p4, :cond_5

    .line 346
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 347
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object p2, p2, Lcom/inmobi/media/U3;->h:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, v1, p4, p2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    goto :goto_3

    :pswitch_8
    if-eqz p2, :cond_7

    .line 426
    iput-object p3, v0, Lcom/inmobi/media/q6;->d:Ljava/lang/String;

    .line 427
    iput-boolean v5, v0, Lcom/inmobi/media/q6;->e:Z

    .line 429
    iget-object p2, v0, Lcom/inmobi/media/q6;->c:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 430
    iget-object p2, v0, Lcom/inmobi/media/q6;->b:Lcom/inmobi/media/U3;

    .line 431
    sget-object p3, Lcom/inmobi/media/h6;->h:Lcom/inmobi/media/h6;

    .line 432
    iget-object p4, v0, Lcom/inmobi/media/q6;->a:Lcom/inmobi/media/t6;

    .line 433
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 434
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    iget-object p2, p2, Lcom/inmobi/media/U3;->h:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, p4, v1, p2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 513
    :cond_6
    iget-object p2, v0, Lcom/inmobi/media/q6;->b:Lcom/inmobi/media/U3;

    .line 514
    iget-object p2, p2, Lcom/inmobi/media/U3;->g:Lkotlin/jvm/internal/Lambda;

    .line 515
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 516
    iget-object p2, v0, Lcom/inmobi/media/q6;->b:Lcom/inmobi/media/U3;

    .line 517
    sget-object p3, Lcom/inmobi/media/h6;->i:Lcom/inmobi/media/h6;

    .line 518
    iget-object p4, v0, Lcom/inmobi/media/q6;->a:Lcom/inmobi/media/t6;

    .line 519
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    iget-object p2, p2, Lcom/inmobi/media/U3;->h:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, p4, v4, p2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    goto :goto_3

    :pswitch_9
    if-eqz p2, :cond_7

    .line 598
    iput-object p3, v0, Lcom/inmobi/media/q6;->d:Ljava/lang/String;

    .line 600
    iget-object p2, v0, Lcom/inmobi/media/q6;->b:Lcom/inmobi/media/U3;

    .line 601
    sget-object p3, Lcom/inmobi/media/h6;->h:Lcom/inmobi/media/h6;

    .line 602
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    iget-object p2, p2, Lcom/inmobi/media/U3;->h:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, v1, v4, p2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 681
    :cond_7
    :goto_3
    iget-object p2, v0, Lcom/inmobi/media/q6;->c:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 683
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_8
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/W1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 4
    const-string v2, "onShouldOverrideUrlLoading: "

    invoke-static {v2, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "EmbeddedBrowserViewClient"

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    instance-of v0, p1, Lcom/inmobi/media/V1;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/V1;

    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/inmobi/media/U3;->f:Ljava/lang/String;

    .line 97
    iget-object v7, p0, Lcom/inmobi/media/U3;->i:Lcom/inmobi/media/t6;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v5, 0x0

    move-object v6, p2

    .line 98
    invoke-static/range {v3 .. v9}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;ZI)Lcom/inmobi/media/m6;

    move-result-object v0

    .line 99
    iget-object v3, v0, Lcom/inmobi/media/m6;->b:Ljava/lang/Integer;

    .line 100
    iget v0, v0, Lcom/inmobi/media/m6;->a:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move v0, v2

    :goto_0
    const/4 v4, 0x2

    if-eq v0, v1, :cond_5

    const/4 p1, 0x3

    if-eq v0, v4, :cond_3

    if-eq v0, p1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    .line 101
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    const/16 v0, 0xa

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/inmobi/media/U3;->a(IZLjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 102
    :cond_5
    instance-of v0, p1, Lcom/inmobi/media/Y3;

    if-eqz v0, :cond_6

    .line 103
    move-object v3, p1

    check-cast v3, Lcom/inmobi/media/Y3;

    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 105
    instance-of v5, v3, Lcom/inmobi/media/Q3;

    if-eqz v5, :cond_6

    .line 106
    check-cast v3, Lcom/inmobi/media/Q3;

    invoke-virtual {v3}, Lcom/inmobi/media/Q3;->getUserLeftApplicationListener()Lcom/inmobi/media/Vc;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/inmobi/media/Vc;->a()V

    .line 107
    :cond_6
    invoke-virtual {p0, p1}, Lcom/inmobi/media/W1;->a(Landroid/webkit/WebView;)V

    .line 109
    invoke-static {p2}, Lcom/inmobi/media/w2;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 110
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 112
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 115
    check-cast p1, Lcom/inmobi/media/Y3;

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 117
    instance-of v0, p1, Lcom/inmobi/media/Q3;

    if-eqz v0, :cond_8

    .line 118
    check-cast p1, Lcom/inmobi/media/Q3;

    .line 119
    iget-object p1, p1, Lcom/inmobi/media/Q3;->d:Lcom/inmobi/media/T3;

    if-eqz p1, :cond_8

    .line 120
    check-cast p1, Lcom/inmobi/media/O4;

    .line 121
    iget-object p1, p1, Lcom/inmobi/media/O4;->a:Lcom/inmobi/media/P4;

    invoke-static {p1}, Lcom/inmobi/media/P4;->a(Lcom/inmobi/media/P4;)V

    :cond_8
    :goto_2
    const/16 p1, 0x8

    .line 122
    invoke-static {p0, v4, v2, p2, p1}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    :goto_3
    return v1
.end method

.method public final onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 2
    const-string v0, "onPageCommitVisible: "

    invoke-static {v0, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "EmbeddedBrowserViewClient"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x4

    .line 164
    invoke-static {p0, v1, p1, p2, v0}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/W1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 3
    const-string v0, "onPageFinished: "

    invoke-static {v0, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "EmbeddedBrowserViewClient"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x2

    .line 160
    invoke-static {p0, v1, p1, p2, v0}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 3
    const-string p3, "onPageStarted: "

    invoke-static {p3, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 153
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "EmbeddedBrowserViewClient"

    invoke-virtual {p1, v0, p3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x8

    const/4 p3, 0x1

    .line 154
    invoke-static {p0, p3, p3, p2, p1}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "description"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "failingUrl"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/inmobi/media/U3;->a(IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 3
    const-string p2, "onReceivedError: "

    invoke-static {p2, p4}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 171
    check-cast p1, Lcom/inmobi/media/g5;

    const-string p3, "EmbeddedBrowserViewClient"

    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "EmbeddedBrowserViewClient"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 184
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/inmobi/media/U3;->a(IZLjava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/W1;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1f47

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/inmobi/media/U3;->a(IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 7
    const-string v0, "source"

    const-string v1, "embedded_browser"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "isCrashed"

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    aput-object p2, v1, v3

    .line 9
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 10
    sget-object v0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 11
    sget-object v0, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 12
    const-string v1, "WebViewRenderProcessGoneEvent"

    invoke-static {v1, p2, v0}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    :cond_0
    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "EmbeddedBrowserViewClient"

    const-string v2, "shouldOverrideUrlLoading Called"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/inmobi/media/E3;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    const-string p2, ""

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/U3;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 8
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "EmbeddedBrowserViewClient"

    const-string v2, "shouldOverrideUrlLoading Called"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/U3;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

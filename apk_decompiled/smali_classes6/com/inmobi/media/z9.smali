.class public final Lcom/inmobi/media/z9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

.field public c:Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;

.field public final d:Z

.field public e:B

.field public f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

.field public g:Lcom/inmobi/media/y;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iab/omid/library/inmobi/adsession/ImpressionType;Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;Z)V
    .locals 1

    const-string v0, "mAdSessionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/z9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/z9;->b:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/z9;->c:Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;

    .line 5
    iput-boolean p4, p0, Lcom/inmobi/media/z9;->d:Z

    return-void
.end method

.method public static a(BB)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 2
    new-instance v0, Lcom/inmobi/media/d2;

    .line 3
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Omid AdSession State Error currentState :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", expectedState :: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-direct {v0, v1}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 5
    const-string p0, "event"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object p0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->getAdSessionId()Ljava/lang/String;

    .line 654
    :cond_0
    iget-byte v0, p0, Lcom/inmobi/media/z9;->e:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/inmobi/media/z9;->a(BB)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->finish()V

    :cond_1
    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    const/4 v0, 0x3

    .line 657
    iput-byte v0, p0, Lcom/inmobi/media/z9;->e:B

    :cond_2
    return-void
.end method

.method public final a(IIFLcom/iab/omid/library/inmobi/adsession/media/VastProperties;)V
    .locals 4

    const-string v0, "vastProperties"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-byte v0, p0, Lcom/inmobi/media/z9;->e:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/inmobi/media/z9;->a(BB)Z

    move-result v0

    if-eqz v0, :cond_12

    int-to-byte p1, p1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 396
    sget-object v0, Lcom/iab/omid/library/inmobi/adsession/ErrorType;->VIDEO:Lcom/iab/omid/library/inmobi/adsession/ErrorType;

    .line 397
    const-string v2, "errorType"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "errorMsg"

    const-string v3, "Unknown Player error"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-byte v2, p0, Lcom/inmobi/media/z9;->e:B

    invoke-static {v2, v1}, Lcom/inmobi/media/z9;->a(BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    iget-object v2, p0, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v3}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->error(Lcom/iab/omid/library/inmobi/adsession/ErrorType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/inmobi/media/z9;->g:Lcom/inmobi/media/y;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, v0, Lcom/inmobi/media/y;->a:Lcom/iab/omid/library/inmobi/adsession/AdEvents;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iab/omid/library/inmobi/adsession/AdEvents;->impressionOccurred()V

    .line 480
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/z9;->g:Lcom/inmobi/media/y;

    if-eqz v0, :cond_12

    .line 481
    const-string v2, "vastProps"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iget-object v2, v0, Lcom/inmobi/media/y;->b:Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v3, 0x7

    if-ne p1, v3, :cond_3

    .line 524
    invoke-virtual {v2}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->pause()V

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x5

    if-ne p1, v3, :cond_4

    .line 527
    iget-object p1, v0, Lcom/inmobi/media/y;->a:Lcom/iab/omid/library/inmobi/adsession/AdEvents;

    if-eqz p1, :cond_12

    invoke-virtual {p1, p4}, Lcom/iab/omid/library/inmobi/adsession/AdEvents;->loaded(Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;)V

    goto/16 :goto_2

    :cond_4
    const/4 p4, 0x6

    if-ne p1, p4, :cond_5

    int-to-float p1, p2

    .line 530
    invoke-virtual {v2, p1, p3}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->start(FF)V

    goto/16 :goto_2

    :cond_5
    const/16 p2, 0x8

    if-ne p1, p2, :cond_6

    goto :goto_1

    :cond_6
    const/16 p2, 0x10

    if-ne p1, p2, :cond_7

    .line 534
    :goto_1
    invoke-virtual {v2}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->resume()V

    goto :goto_2

    :cond_7
    const/16 p2, 0xf

    if-ne p1, p2, :cond_8

    .line 537
    invoke-virtual {v2}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->skipped()V

    goto :goto_2

    :cond_8
    const/16 p2, 0x9

    if-ne p1, p2, :cond_9

    .line 540
    invoke-virtual {v2}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->firstQuartile()V

    goto :goto_2

    :cond_9
    const/16 p2, 0xa

    if-ne p1, p2, :cond_a

    .line 543
    invoke-virtual {v2}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->midpoint()V

    goto :goto_2

    :cond_a
    const/16 p2, 0xb

    if-ne p1, p2, :cond_b

    .line 546
    invoke-virtual {v2}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->thirdQuartile()V

    goto :goto_2

    :cond_b
    const/16 p2, 0xc

    if-ne p1, p2, :cond_c

    .line 549
    invoke-virtual {v2}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->complete()V

    goto :goto_2

    :cond_c
    const/16 p2, 0xd

    if-ne p1, p2, :cond_d

    const/4 p1, 0x0

    .line 552
    invoke-virtual {v2, p1}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->volumeChange(F)V

    goto :goto_2

    :cond_d
    const/16 p2, 0xe

    if-ne p1, p2, :cond_e

    .line 555
    invoke-virtual {v2, p3}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->volumeChange(F)V

    goto :goto_2

    :cond_e
    const/4 p2, 0x1

    if-ne p1, p2, :cond_f

    .line 558
    sget-object p1, Lcom/iab/omid/library/inmobi/adsession/media/PlayerState;->FULLSCREEN:Lcom/iab/omid/library/inmobi/adsession/media/PlayerState;

    invoke-virtual {v2, p1}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->playerStateChange(Lcom/iab/omid/library/inmobi/adsession/media/PlayerState;)V

    goto :goto_2

    :cond_f
    if-ne p1, v1, :cond_10

    .line 561
    sget-object p1, Lcom/iab/omid/library/inmobi/adsession/media/PlayerState;->NORMAL:Lcom/iab/omid/library/inmobi/adsession/media/PlayerState;

    invoke-virtual {v2, p1}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->playerStateChange(Lcom/iab/omid/library/inmobi/adsession/media/PlayerState;)V

    goto :goto_2

    :cond_10
    const/4 p2, 0x4

    if-ne p1, p2, :cond_11

    .line 564
    sget-object p1, Lcom/iab/omid/library/inmobi/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/inmobi/adsession/media/InteractionType;

    invoke-virtual {v2, p1}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/inmobi/adsession/media/InteractionType;)V

    goto :goto_2

    :cond_11
    const/16 p2, 0x12

    if-ne p1, p2, :cond_12

    .line 567
    sget-object p1, Lcom/iab/omid/library/inmobi/adsession/media/InteractionType;->INVITATION_ACCEPTED:Lcom/iab/omid/library/inmobi/adsession/media/InteractionType;

    invoke-virtual {v2, p1}, Lcom/iab/omid/library/inmobi/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/inmobi/adsession/media/InteractionType;)V

    :cond_12
    :goto_2
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V
    .locals 3

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obstructionCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iget-byte v0, p0, Lcom/inmobi/media/z9;->e:B

    if-lez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_0
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 571
    new-instance p1, Lcom/inmobi/media/d2;

    .line 572
    new-instance p2, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Omid AdSession State Error currentState :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expectedState :: 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-direct {p1, p2}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 574
    const-string p2, "event"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    sget-object p2, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p2, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Landroid/view/View;)V
    .locals 7

    const-string v0, "trackingView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/z9;->d:Z

    .line 88
    sget-object v2, Lcom/iab/omid/library/inmobi/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/inmobi/adsession/Owner;

    .line 90
    sget-object v3, Lcom/iab/omid/library/inmobi/adsession/CreativeType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/inmobi/adsession/CreativeType;

    .line 91
    iget-object v4, p0, Lcom/inmobi/media/z9;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "html_video_ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    sget-object v3, Lcom/iab/omid/library/inmobi/adsession/CreativeType;->VIDEO:Lcom/iab/omid/library/inmobi/adsession/CreativeType;

    goto :goto_0

    .line 106
    :sswitch_1
    const-string v5, "html_audio_ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    sget-object v3, Lcom/iab/omid/library/inmobi/adsession/CreativeType;->AUDIO:Lcom/iab/omid/library/inmobi/adsession/CreativeType;

    goto :goto_0

    .line 131
    :sswitch_2
    const-string v5, "native_video_ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 133
    :cond_3
    sget-object v2, Lcom/iab/omid/library/inmobi/adsession/Owner;->NATIVE:Lcom/iab/omid/library/inmobi/adsession/Owner;

    .line 135
    sget-object v3, Lcom/iab/omid/library/inmobi/adsession/CreativeType;->VIDEO:Lcom/iab/omid/library/inmobi/adsession/CreativeType;

    :goto_0
    move-object v4, v3

    move-object v3, v2

    goto :goto_2

    .line 136
    :sswitch_3
    const-string v5, "html_display_ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 154
    :cond_4
    sget-object v3, Lcom/iab/omid/library/inmobi/adsession/Owner;->NONE:Lcom/iab/omid/library/inmobi/adsession/Owner;

    .line 155
    sget-object v4, Lcom/iab/omid/library/inmobi/adsession/CreativeType;->HTML_DISPLAY:Lcom/iab/omid/library/inmobi/adsession/CreativeType;

    goto :goto_2

    .line 156
    :sswitch_4
    const-string v5, "native_display_ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 163
    :cond_5
    sget-object v2, Lcom/iab/omid/library/inmobi/adsession/Owner;->NATIVE:Lcom/iab/omid/library/inmobi/adsession/Owner;

    .line 164
    sget-object v3, Lcom/iab/omid/library/inmobi/adsession/Owner;->NONE:Lcom/iab/omid/library/inmobi/adsession/Owner;

    .line 165
    sget-object v4, Lcom/iab/omid/library/inmobi/adsession/CreativeType;->NATIVE_DISPLAY:Lcom/iab/omid/library/inmobi/adsession/CreativeType;

    goto :goto_2

    :goto_1
    const/4 v4, 0x0

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .line 185
    :goto_2
    iget-object v5, p0, Lcom/inmobi/media/z9;->b:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 186
    invoke-static {v4, v5, v2, v3, v0}, Lcom/iab/omid/library/inmobi/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/inmobi/adsession/CreativeType;Lcom/iab/omid/library/inmobi/adsession/ImpressionType;Lcom/iab/omid/library/inmobi/adsession/Owner;Lcom/iab/omid/library/inmobi/adsession/Owner;Z)Lcom/iab/omid/library/inmobi/adsession/AdSessionConfiguration;

    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/inmobi/media/z9;->c:Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;

    invoke-static {v0, v2}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/inmobi/adsession/AdSessionConfiguration;Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;)Lcom/iab/omid/library/inmobi/adsession/AdSession;

    move-result-object v0

    const-string v2, "createAdSession(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iput-object v0, p0, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    if-eqz v0, :cond_6

    .line 196
    new-instance v2, Lcom/inmobi/media/y;

    iget-object v3, p0, Lcom/inmobi/media/z9;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/inmobi/media/y;-><init>(Lcom/iab/omid/library/inmobi/adsession/AdSession;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/inmobi/media/z9;->g:Lcom/inmobi/media/y;

    .line 197
    iput-byte v1, p0, Lcom/inmobi/media/z9;->e:B

    .line 198
    :cond_6
    :goto_3
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    iget-byte v0, p0, Lcom/inmobi/media/z9;->e:B

    invoke-static {v0, v1}, Lcom/inmobi/media/z9;->a(BB)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 384
    iget-object v0, p0, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    :cond_7
    if-eqz p2, :cond_8

    .line 385
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p0, v3, v2}, Lcom/inmobi/media/z9;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    goto :goto_4

    :cond_8
    if-eqz p3, :cond_9

    .line 387
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 388
    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/z9;->a(Landroid/view/View;Ljava/util/Map;Landroid/view/ViewGroup;)V

    .line 389
    :cond_9
    iget-byte p1, p0, Lcom/inmobi/media/z9;->e:B

    invoke-static {p1, v1}, Lcom/inmobi/media/z9;->a(BB)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 390
    iget-object p1, p0, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->start()V

    :cond_a
    const/4 p1, 0x2

    .line 391
    iput-byte p1, p0, Lcom/inmobi/media/z9;->e:B

    .line 392
    :cond_b
    iget-object p1, p0, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->getAdSessionId()Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f829618 -> :sswitch_4
        -0x4f46122c -> :sswitch_3
        -0x47092e71 -> :sswitch_2
        0x15a5d740 -> :sswitch_1
        0x201b607b -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Landroid/view/ViewGroup;)V
    .locals 4

    .line 658
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 660
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 661
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_0

    .line 662
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 663
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p0, v2, v3}, Lcom/inmobi/media/z9;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    .line 665
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 666
    invoke-virtual {p0, p1, p2, v2}, Lcom/inmobi/media/z9;->a(Landroid/view/View;Ljava/util/Map;Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

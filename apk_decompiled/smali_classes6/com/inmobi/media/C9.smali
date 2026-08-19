.class public abstract Lcom/inmobi/media/C9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/inmobi/media/Ya;ZLjava/lang/String;BLjava/lang/String;)Lcom/inmobi/media/z9;
    .locals 3

    const-string v0, "creativeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object v1, Lcom/inmobi/media/G9;->a:Lcom/inmobi/media/H9;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v2, "webView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v1, v1, Lcom/inmobi/media/H9;->b:Lcom/iab/omid/library/inmobi/adsession/Partner;

    .line 39
    invoke-static {v1, p1, p3, p5}, Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/inmobi/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;

    move-result-object p1

    const-string p3, "createHtmlAdSessionContext(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 p3, 0x1

    if-ne p4, p3, :cond_1

    .line 40
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    goto :goto_1

    :cond_1
    const/4 p3, 0x2

    if-ne p4, p3, :cond_2

    .line 41
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->UNSPECIFIED:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    goto :goto_1

    :cond_2
    const/4 p3, 0x3

    if-ne p4, p3, :cond_3

    .line 42
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->LOADED:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    goto :goto_1

    :cond_3
    const/4 p3, 0x4

    if-ne p4, p3, :cond_4

    .line 43
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    goto :goto_1

    :cond_4
    const/4 p3, 0x5

    if-ne p4, p3, :cond_5

    .line 44
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->ONE_PIXEL:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    goto :goto_1

    :cond_5
    const/4 p3, 0x6

    if-ne p4, p3, :cond_6

    .line 45
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->VIEWABLE:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    goto :goto_1

    :cond_6
    const/4 p3, 0x7

    if-ne p4, p3, :cond_7

    .line 46
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->AUDIBLE:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    goto :goto_1

    :cond_7
    if-nez p4, :cond_8

    .line 47
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->OTHER:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    goto :goto_1

    .line 48
    :cond_8
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->OTHER:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 49
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p4

    const p5, -0x10fa53b6

    const-string v1, "access$getTAG$cp(...)"

    const-string v2, "D9"

    if-eq p4, p5, :cond_f

    const p5, 0x58d9bd6

    if-eq p4, p5, :cond_d

    const p5, 0x6b0147b

    if-eq p4, p5, :cond_b

    const p2, 0x54fa21ce

    if-eq p4, p2, :cond_9

    goto :goto_2

    :cond_9
    const-string p2, "nonvideo"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_2

    .line 51
    :cond_a
    new-instance v0, Lcom/inmobi/media/z9;

    .line 52
    const-string p0, "html_display_ad"

    const/4 p2, 0x0

    .line 53
    invoke-direct {v0, p0, p3, p1, p2}, Lcom/inmobi/media/z9;-><init>(Ljava/lang/String;Lcom/iab/omid/library/inmobi/adsession/ImpressionType;Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;Z)V

    goto :goto_3

    .line 54
    :cond_b
    const-string p4, "video"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_2

    .line 62
    :cond_c
    new-instance v0, Lcom/inmobi/media/z9;

    const-string p0, "html_video_ad"

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/inmobi/media/z9;-><init>(Ljava/lang/String;Lcom/iab/omid/library/inmobi/adsession/ImpressionType;Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;Z)V

    goto :goto_3

    .line 63
    :cond_d
    const-string p4, "audio"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_2

    .line 78
    :cond_e
    new-instance v0, Lcom/inmobi/media/z9;

    const-string p0, "html_audio_ad"

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/inmobi/media/z9;-><init>(Ljava/lang/String;Lcom/iab/omid/library/inmobi/adsession/ImpressionType;Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;Z)V

    goto :goto_3

    .line 79
    :cond_f
    const-string p1, "unknown"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    .line 105
    :goto_2
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 106
    :cond_10
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method

.class public final Lcom/inmobi/media/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/HashMap;


# instance fields
.field public final a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

.field public final b:Lcom/inmobi/media/f5;

.field public final c:Lcom/inmobi/media/jd;

.field public d:Z

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-string v0, "Error"

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 2
    const-string v1, "Impression"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 3
    const-string v2, "ClickTracking"

    const-string v3, "click"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 4
    const-string v3, "creativeView"

    invoke-static {v3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 5
    const-string v4, "start"

    invoke-static {v4, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 6
    const-string v5, "firstQuartile"

    invoke-static {v5, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 7
    const-string v6, "midpoint"

    invoke-static {v6, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 8
    const-string v7, "thirdQuartile"

    invoke-static {v7, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 9
    const-string v8, "complete"

    invoke-static {v8, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 10
    const-string v9, "mute"

    invoke-static {v9, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 11
    const-string v10, "unmute"

    invoke-static {v10, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 12
    const-string v11, "pause"

    invoke-static {v11, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    .line 13
    const-string v12, "resume"

    invoke-static {v12, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 14
    const-string v13, "fullscreen"

    invoke-static {v13, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    .line 15
    const-string v14, "exitFullscreen"

    invoke-static {v14, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    .line 16
    const-string v15, "closeEndCard"

    invoke-static {v15, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v16, v15

    const/16 v15, 0x10

    new-array v15, v15, [Lkotlin/Pair;

    const/16 v17, 0x0

    aput-object v0, v15, v17

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    aput-object v2, v15, v0

    const/4 v0, 0x3

    aput-object v3, v15, v0

    const/4 v0, 0x4

    aput-object v4, v15, v0

    const/4 v0, 0x5

    aput-object v5, v15, v0

    const/4 v0, 0x6

    aput-object v6, v15, v0

    const/4 v0, 0x7

    aput-object v7, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v9, v15, v0

    const/16 v0, 0xa

    aput-object v10, v15, v0

    const/16 v0, 0xb

    aput-object v11, v15, v0

    const/16 v0, 0xc

    aput-object v12, v15, v0

    const/16 v0, 0xd

    aput-object v13, v15, v0

    const/16 v0, 0xe

    aput-object v14, v15, v0

    const/16 v0, 0xf

    aput-object v16, v15, v0

    .line 17
    invoke-static {v15}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/ed;->f:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "mVastVideoConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/ed;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    iput-object p2, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    .line 78
    new-instance p2, Lcom/inmobi/media/jd;

    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-direct {p2, v0, p1}, Lcom/inmobi/media/jd;-><init>(Ljava/util/List;Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;)V

    .line 81
    iput-object p2, p0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    return-void
.end method

.method public static b(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/inmobi/media/jd;
    .locals 10

    const-string v0, "Ad"

    const-string v1, "VAST"

    const-string v2, "InLine"

    const-string v3, "Wrapper"

    const-string v4, "event"

    .line 1
    iget-object v5, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    const-string v6, "TAG"

    const-string v7, "ed"

    if-eqz v5, :cond_0

    .line 2
    const-string v8, "vastXML = "

    invoke-static {v7, v6, v8, p1}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 144
    check-cast v5, Lcom/inmobi/media/g5;

    invoke-virtual {v5, v7, v8}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v8, 0x12f

    if-eqz v5, :cond_1

    .line 147
    invoke-virtual {p0, v8}, Lcom/inmobi/media/ed;->c(I)V

    .line 148
    iget-object p1, p0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    return-object p1

    .line 150
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 152
    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const/4 p1, 0x2

    .line 153
    new-array p1, p1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, p1, v9

    const/4 v9, 0x1

    aput-object v2, p1, v9

    .line 154
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v1}, Lcom/inmobi/media/ed;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 156
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v9, 0x65

    if-eqz v1, :cond_7

    .line 157
    invoke-virtual {p0, v5, v0}, Lcom/inmobi/media/ed;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 159
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    invoke-virtual {p0, v5, p1}, Lcom/inmobi/media/ed;->a(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)V

    .line 163
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    invoke-virtual {p0, v5}, Lcom/inmobi/media/ed;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 168
    invoke-virtual {p0, v5}, Lcom/inmobi/media/ed;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VAST Schema validation error: InLine node or Wrapper node at appropriate hierarchy not found"

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v7, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_4
    invoke-virtual {p0, v9}, Lcom/inmobi/media/ed;->c(I)V

    goto :goto_0

    .line 177
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_6

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VAST Schema validation error: Ad node at appropriate hierarchy not found"

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v7, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_6
    invoke-virtual {p0, v8}, Lcom/inmobi/media/ed;->c(I)V

    goto :goto_0

    .line 182
    :cond_7
    iget-object p1, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_8

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VAST Schema validation error: VAST node at appropriate hierarchy not found"

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v7, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_8
    invoke-virtual {p0, v9}, Lcom/inmobi/media/ed;->c(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/16 v0, 0x384

    .line 190
    invoke-virtual {p0, v0}, Lcom/inmobi/media/ed;->c(I)V

    .line 191
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 192
    invoke-static {p1, v4}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 193
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const/16 v0, 0x64

    .line 194
    invoke-virtual {p0, v0}, Lcom/inmobi/media/ed;->c(I)V

    .line 195
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v0, Lcom/inmobi/media/d2;

    invoke-direct {v0, p1}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 196
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 275
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    return-object p1
.end method

.method public final a(I)V
    .locals 11

    .line 4375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4376
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[ERRORCODE]"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4377
    iget-object p1, p0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    .line 4378
    iget-object p1, p1, Lcom/inmobi/media/jd;->h:Ljava/util/ArrayList;

    .line 4379
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/u8;

    .line 4380
    const-string v2, "error"

    .line 4381
    iget-object v3, v1, Lcom/inmobi/media/u8;->b:Ljava/lang/String;

    .line 4382
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4383
    iget-object v2, v1, Lcom/inmobi/media/u8;->d:Ljava/lang/String;

    .line 4384
    sget-boolean v3, Lcom/inmobi/media/p9;->a:Z

    invoke-static {v2, v0}, Lcom/inmobi/media/p9;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    .line 4385
    sget-object v4, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    .line 4386
    iget-object v6, v1, Lcom/inmobi/media/u8;->c:Ljava/util/Map;

    .line 4387
    sget-object v9, Lcom/inmobi/media/V9;->c:Lcom/inmobi/media/V9;

    iget-object v10, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/inmobi/media/u2;->a(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/X1;Lcom/inmobi/media/V9;Lcom/inmobi/media/f5;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 4388
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    goto :goto_4

    .line 4634
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move v4, v2

    move v5, v4

    :goto_0
    if-gt v4, v0, :cond_6

    if-nez v5, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v0

    .line 4639
    :goto_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 4640
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4641
    :cond_6
    :goto_3
    invoke-static {v0, v3, p2, v4}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 4642
    :goto_4
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4643
    iget-object v0, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_7

    const-string v1, "TAG"

    const-string v2, "ed"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Malformed URL "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " Discarding this tracker"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4645
    :cond_7
    const-string p2, "Impression"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 4647
    :cond_8
    new-instance v0, Lcom/inmobi/media/u8;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p2, v2, p1, v1}, Lcom/inmobi/media/u8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 4648
    iget-object p1, p0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4649
    const-string p2, "tracker"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4897
    iget-object p1, p1, Lcom/inmobi/media/jd;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12

    .line 2972
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 2973
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVerifications"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 2974
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2975
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2976
    const-string v1, "Verification"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 2977
    const-string v2, "vendor"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 2978
    const-string v4, "vastParser"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3742
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move-object v4, v0

    move-object v5, v4

    .line 3743
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    .line 3770
    :cond_2
    invoke-static {v4}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3771
    new-instance v1, Lcom/inmobi/media/A9;

    .line 3774
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3775
    invoke-direct {v1, v3, v5, v4, v0}, Lcom/inmobi/media/A9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3783
    iget-object v0, p0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3784
    const-string v2, "tracker"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4032
    iget-object v0, v0, Lcom/inmobi/media/jd;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4033
    iget-object v0, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_11

    const-string v1, "TAG"

    const-string v2, "ed"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Omid JavaScript URL found inside VAST : "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 4034
    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-static {v2}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 4035
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4036
    const-string v6, "JavaScriptResource"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_c

    .line 4037
    const-string v2, "apiFramework"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 4038
    const-string v6, "omid"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v2, v6, v9, v8, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4039
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    if-ne v2, v7, :cond_10

    .line 4041
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 4042
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_8

    .line 4352
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    move v7, v9

    move v8, v7

    :goto_4
    if-gt v7, v4, :cond_a

    if-nez v8, :cond_5

    move v10, v7

    goto :goto_5

    :cond_5
    move v10, v4

    .line 4357
    :goto_5
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    .line 4358
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v10

    if-gtz v10, :cond_6

    move v10, v6

    goto :goto_6

    :cond_6
    move v10, v9

    :goto_6
    if-nez v8, :cond_8

    if-nez v10, :cond_7

    move v8, v6

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    if-nez v10, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 4359
    :cond_a
    :goto_7
    invoke-static {v4, v6, v2, v7}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_b
    :goto_8
    move-object v4, v0

    goto :goto_a

    .line 4360
    :cond_c
    const-string v6, "VerificationParameters"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4361
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    if-eq v2, v7, :cond_d

    const/4 v6, 0x5

    if-eq v2, v6, :cond_d

    goto :goto_a

    .line 4364
    :cond_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_9

    :cond_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getText(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_f
    :goto_9
    move-object v5, v0

    .line 4371
    :cond_10
    :goto_a
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto/16 :goto_2

    .line 4372
    :cond_11
    :goto_b
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 6

    .line 326
    iget-object v0, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "ed"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "name="

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 330
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 334
    iget-object v4, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_2

    .line 335
    const-string v5, "VAST Schema validation error: VAST node at appropriate hierarchy not found. "

    invoke-static {v2, v1, v5}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 662
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 663
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lcom/inmobi/media/g5;

    invoke-virtual {v4, v2, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 664
    iget-object v4, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_2

    .line 665
    const-string v5, "Parsing failed. "

    invoke-static {v2, v1, v5}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 989
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lcom/inmobi/media/g5;

    invoke-virtual {v4, v2, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 997
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return-void
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 8

    .line 1564
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 1565
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoClicks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1566
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1567
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1568
    const-string v1, "ClickThrough"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_b

    if-nez p2, :cond_2

    :cond_1
    return-void

    .line 1572
    :cond_2
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 1574
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1575
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_5

    .line 1576
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1999
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-gt v4, v1, :cond_9

    if-nez v5, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v1

    .line 2004
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 2005
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_5

    move v6, v2

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    if-nez v5, :cond_7

    if-nez v6, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2006
    :cond_9
    :goto_4
    invoke-static {v1, v2, v0, v4}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v0, 0x0

    .line 2529
    :goto_6
    iget-object v1, p0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    .line 2530
    iput-object v0, v1, Lcom/inmobi/media/jd;->k:Ljava/lang/String;

    goto :goto_7

    .line 2531
    :cond_b
    const-string v1, "ClickTracking"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2532
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 2534
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getText(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "click"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/ed;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    :cond_c
    :goto_7
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)V
    .locals 10

    const-string v0, "TAG"

    const-string v1, "ed"

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1004
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1008
    :catch_0
    iget-object v5, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v5, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/g5;

    const-string v6, "VAST Schema validation error: VAST node at appropriate hierarchy not found."

    invoke-virtual {v5, v1, v6}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :catch_1
    iget-object v5, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v5, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/g5;

    const-string v6, "Parsing failed."

    invoke-virtual {v5, v1, v6}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    goto :goto_3

    .line 1017
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1562
    array-length v6, p2

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, p2, v7

    .line 1563
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v4, :cond_0

    :goto_3
    return-void
.end method

.method public final b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Extensions"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 3
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "CompanionAdTracking"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 7
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 8
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TrackingEvents"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 13
    :cond_3
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    goto :goto_2

    .line 14
    :cond_4
    const-string v1, "Extension"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 15
    const-string v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    const-string v1, "AdVerifications"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 24
    :cond_5
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public final c(I)V
    .locals 1

    .line 5141
    iget-object v0, p0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    .line 5142
    iput p1, v0, Lcom/inmobi/media/jd;->l:I

    .line 5143
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->a(I)V

    return-void
.end method

.method public final c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "getAttributeValue(...)"

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x65

    const-string v9, "TAG"

    const-string v10, "ed"

    if-eqz v7, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "InLine"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v3}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    if-nez v6, :cond_3

    .line 38
    :cond_1
    iget-object v1, v0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_2

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "VAST Schema validation error: Creatives at appropriate hierarchy  not found"

    invoke-virtual {v1, v10, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_2
    invoke-virtual {v0, v8}, Lcom/inmobi/media/ed;->c(I)V

    :cond_3
    return-void

    .line 41
    :cond_4
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_96

    invoke-static {v3}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v3

    if-nez v3, :cond_96

    .line 42
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_96

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v11, "getText(...)"

    const/4 v12, 0x4

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_5b

    :sswitch_0
    const-string v7, "Impression"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_5b

    .line 44
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    if-ne v3, v12, :cond_6

    .line 47
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v3}, Lcom/inmobi/media/ed;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v1

    move-object/from16 v21, v2

    const/4 v6, 0x1

    goto/16 :goto_5d

    .line 49
    :cond_6
    iget-object v7, v0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v7, :cond_96

    .line 50
    const-string v8, "VAST Schema Error: VastAdTagUri at appropriate hierarchy not found or invalid - "

    invoke-static {v10, v9, v8, v3}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 334
    check-cast v7, Lcom/inmobi/media/g5;

    invoke-virtual {v7, v10, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 335
    :sswitch_1
    const-string v7, "Extensions"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_5b

    .line 360
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5b

    .line 361
    :sswitch_2
    const-string v7, "Error"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_5b

    .line 373
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 374
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "error"

    invoke-virtual {v0, v7, v3}, Lcom/inmobi/media/ed;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 375
    :sswitch_3
    const-string v7, "Creatives"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_5b

    .line 376
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 377
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_10

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v3}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    if-nez v5, :cond_c

    .line 397
    iget-object v3, v0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_b

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v4, "VAST Schema validation error: Creative at appropriate hierarchy not found"

    invoke-virtual {v3, v10, v4}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_b
    invoke-virtual {v0, v8}, Lcom/inmobi/media/ed;->c(I)V

    :cond_c
    if-nez v14, :cond_e

    .line 402
    iget-object v3, v0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_d

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v4, "VAST Schema validation error: Linear Node at appropriate hierarchy not found"

    invoke-virtual {v3, v10, v4}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/16 v3, 0xc9

    .line 404
    invoke-virtual {v0, v3}, Lcom/inmobi/media/ed;->c(I)V

    :cond_e
    if-eqz v5, :cond_f

    if-eqz v14, :cond_f

    if-eqz v15, :cond_f

    move-object v12, v1

    move-object/from16 v21, v2

    const/4 v5, 0x1

    goto/16 :goto_5d

    :cond_f
    return-void

    .line 405
    :cond_10
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_94

    invoke-static {v3}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v3

    if-nez v3, :cond_94

    .line 406
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_94

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v8, -0x785484bb

    const-string v13, "TrackingEvents"

    if-eq v4, v8, :cond_5c

    const v8, 0x44990624

    if-eq v4, v8, :cond_13

    const v8, 0x705bd3cf

    if-eq v4, v8, :cond_11

    goto :goto_4

    :cond_11
    const-string v4, "Creative"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_4

    :cond_12
    move-object v12, v1

    move-object/from16 v21, v2

    move/from16 v24, v6

    move-object/from16 v25, v7

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x4

    goto/16 :goto_5a

    :cond_13
    const-string v4, "CompanionAds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_14
    :goto_4
    move-object v12, v1

    move-object/from16 v21, v2

    move/from16 v20, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v27, v14

    move/from16 v28, v15

    goto/16 :goto_3b

    .line 407
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v8, 0x0

    .line 408
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-static {v3}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v12

    if-nez v12, :cond_16

    goto :goto_6

    .line 434
    :cond_16
    iget-object v3, v0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    .line 435
    iget-object v3, v3, Lcom/inmobi/media/jd;->i:Ljava/util/ArrayList;

    .line 436
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_17

    .line 437
    iget-boolean v4, v0, Lcom/inmobi/media/ed;->d:Z

    if-eqz v4, :cond_17

    const/16 v3, 0x25c

    .line 438
    invoke-virtual {v0, v3}, Lcom/inmobi/media/ed;->a(I)V

    goto :goto_4

    :cond_17
    if-lez v8, :cond_14

    if-nez v3, :cond_14

    const/16 v3, 0x258

    .line 440
    invoke-virtual {v0, v3}, Lcom/inmobi/media/ed;->a(I)V

    goto :goto_4

    .line 441
    :cond_18
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5b

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v4

    const-string v4, "Companion"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5a

    invoke-static {v3}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v12

    if-nez v12, :cond_5a

    add-int/lit8 v8, v8, 0x1

    .line 446
    :try_start_0
    const-string v12, "width"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v19, v3

    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v20, v5

    .line 447
    :try_start_2
    const-string v5, "height"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_0
    move/from16 v19, v3

    :catch_1
    move/from16 v20, v5

    const/4 v12, 0x0

    .line 449
    :catch_2
    iget-object v3, v0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_19

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v5, "Invalid width or height encountered for a companion and ignoring that."

    invoke-virtual {v3, v10, v5}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const/4 v3, 0x0

    :goto_7
    if-lez v12, :cond_59

    if-gtz v3, :cond_1a

    goto/16 :goto_37

    .line 455
    :cond_1a
    const-string v5, "ID"

    move-object/from16 v21, v2

    const/4 v2, 0x0

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 456
    new-instance v2, Lcom/inmobi/media/ad;

    invoke-direct {v2, v12, v3, v5}, Lcom/inmobi/media/ad;-><init>(IILjava/lang/String;)V

    .line 457
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v5, 0x0

    .line 462
    :goto_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-static {v3}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v12

    if-nez v12, :cond_1b

    goto :goto_9

    :cond_1b
    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v14

    goto/16 :goto_13

    .line 463
    :cond_1c
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_55

    invoke-static {v3}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v3

    if-nez v3, :cond_55

    .line 464
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    move-object/from16 v22, v4

    const-string v4, "; Discarding this tracker"

    move-object/from16 v23, v5

    const-string v5, "Malformed URL: "

    move/from16 v24, v6

    const-string v6, "tracker"

    move-object/from16 v25, v7

    const-string v7, "resource"

    sparse-switch v12, :sswitch_data_1

    :goto_a
    goto/16 :goto_32

    :sswitch_4
    const-string v4, "HTMLResource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_b

    .line 485
    :cond_1d
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_56

    .line 487
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 489
    new-instance v4, Lcom/inmobi/media/Zc;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v3}, Lcom/inmobi/media/Zc;-><init>(BLjava/lang/String;)V

    .line 490
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    iget-object v3, v2, Lcom/inmobi/media/ad;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 655
    :sswitch_5
    const-string v7, "CompanionClickTracking"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :goto_b
    goto :goto_a

    .line 699
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v7, 0x4

    if-ne v3, v7, :cond_56

    .line 701
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 702
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_11

    .line 1059
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    const/4 v12, 0x0

    const/16 v23, 0x0

    :goto_c
    move/from16 v26, v8

    if-gt v12, v7, :cond_25

    if-nez v23, :cond_20

    move v8, v12

    goto :goto_d

    :cond_20
    move v8, v7

    .line 1064
    :goto_d
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v27, v14

    const/16 v14, 0x20

    .line 1065
    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gtz v8, :cond_21

    const/4 v8, 0x1

    goto :goto_e

    :cond_21
    const/4 v8, 0x0

    :goto_e
    if-nez v23, :cond_23

    if-nez v8, :cond_22

    move/from16 v8, v26

    move/from16 v14, v27

    const/16 v23, 0x1

    goto :goto_c

    :cond_22
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_23
    if-nez v8, :cond_24

    goto :goto_10

    :cond_24
    add-int/lit8 v7, v7, -0x1

    :goto_f
    move/from16 v8, v26

    move/from16 v14, v27

    goto :goto_c

    :cond_25
    move/from16 v27, v14

    :goto_10
    const/4 v8, 0x1

    .line 1066
    invoke-static {v7, v8, v3, v12}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_26
    :goto_11
    move/from16 v26, v8

    move/from16 v27, v14

    const/4 v3, 0x0

    .line 1067
    :goto_12
    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 1068
    iget-object v6, v0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v6, :cond_27

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v6, Lcom/inmobi/media/g5;

    invoke-virtual {v6, v10, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :cond_27
    :goto_13
    iget-object v3, v2, Lcom/inmobi/media/ad;->e:Ljava/util/ArrayList;

    .line 1070
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    move-object/from16 v4, v18

    move/from16 v3, v19

    move/from16 v5, v20

    move-object/from16 v2, v21

    move/from16 v6, v24

    move-object/from16 v7, v25

    move/from16 v8, v26

    move/from16 v14, v27

    goto/16 :goto_5

    .line 1073
    :cond_28
    iget-object v3, v0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1074
    const-string v4, "companion"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1326
    iget-object v3, v3, Lcom/inmobi/media/jd;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v28, v15

    move/from16 v8, v26

    :goto_14
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_39

    .line 1327
    :cond_29
    new-instance v4, Lcom/inmobi/media/u8;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v3, v7, v5, v8}, Lcom/inmobi/media/u8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 1328
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1509
    iget-object v5, v2, Lcom/inmobi/media/ad;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v3

    move-object v12, v8

    move/from16 v28, v15

    goto/16 :goto_21

    :sswitch_6
    move/from16 v26, v8

    move/from16 v27, v14

    const/4 v8, 0x0

    .line 1510
    const-string v4, "StaticResource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object v12, v8

    move/from16 v28, v15

    goto/16 :goto_34

    .line 1512
    :cond_2a
    const-string v3, "creativeType"

    invoke-interface {v1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1513
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_33

    .line 1515
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 1516
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_19

    .line 1868
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_15
    if-gt v6, v5, :cond_31

    if-nez v8, :cond_2c

    move v12, v6

    goto :goto_16

    :cond_2c
    move v12, v5

    .line 1873
    :goto_16
    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x20

    .line 1874
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v12

    if-gtz v12, :cond_2d

    const/4 v12, 0x1

    goto :goto_17

    :cond_2d
    const/4 v12, 0x0

    :goto_17
    if-nez v8, :cond_2f

    if-nez v12, :cond_2e

    const/4 v8, 0x1

    goto :goto_15

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_2f
    if-nez v12, :cond_30

    goto :goto_18

    :cond_30
    add-int/lit8 v5, v5, -0x1

    goto :goto_15

    :cond_31
    :goto_18
    const/4 v8, 0x1

    .line 1875
    invoke-static {v5, v8, v4, v6}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    :cond_32
    :goto_19
    const/4 v8, 0x1

    const/4 v4, 0x0

    goto :goto_1a

    :cond_33
    const/4 v8, 0x1

    move-object/from16 v4, v23

    :goto_1a
    if-eqz v3, :cond_3c

    .line 1876
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-gt v6, v5, :cond_39

    if-nez v8, :cond_34

    move v12, v6

    goto :goto_1c

    :cond_34
    move v12, v5

    .line 1881
    :goto_1c
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x20

    .line 1882
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v12

    if-gtz v12, :cond_35

    const/4 v12, 0x1

    goto :goto_1d

    :cond_35
    const/4 v12, 0x0

    :goto_1d
    if-nez v8, :cond_37

    if-nez v12, :cond_36

    const/4 v8, 0x1

    goto :goto_1b

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_37
    if-nez v12, :cond_38

    goto :goto_1e

    :cond_38
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    :cond_39
    :goto_1e
    add-int/lit8 v5, v5, 0x1

    .line 2275
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2276
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2277
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3c

    .line 2278
    sget-object v5, Lcom/inmobi/media/ad;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1f
    if-ge v6, v5, :cond_3b

    .line 2280
    sget-object v8, Lcom/inmobi/media/ad;->h:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v3, v8, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 2281
    new-instance v3, Lcom/inmobi/media/Zc;

    invoke-direct {v3, v12, v4}, Lcom/inmobi/media/Zc;-><init>(BLjava/lang/String;)V

    .line 2282
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2446
    iget-object v5, v2, Lcom/inmobi/media/ad;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_3b
    const/4 v12, 0x1

    .line 2447
    iput-boolean v12, v0, Lcom/inmobi/media/ed;->d:Z

    :cond_3c
    :goto_20
    move-object v5, v4

    move/from16 v28, v15

    const/4 v12, 0x0

    :goto_21
    const/4 v14, 0x0

    goto/16 :goto_36

    :sswitch_7
    move/from16 v26, v8

    move/from16 v27, v14

    .line 2448
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_33

    .line 2449
    :cond_3d
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    .line 2450
    :goto_22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3e

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-static {v3}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v7

    if-nez v7, :cond_57

    .line 2451
    :cond_3e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tracking"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-static {v3}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v3

    if-nez v3, :cond_49

    .line 2452
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v7, 0x0

    :goto_23
    if-ge v7, v3, :cond_49

    .line 2454
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v12, "event"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 2455
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 2456
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_49

    .line 2458
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_45

    .line 2856
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    move v12, v8

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_24
    move/from16 v28, v15

    if-gt v8, v12, :cond_44

    if-nez v14, :cond_3f

    move v15, v8

    goto :goto_25

    :cond_3f
    move v15, v12

    .line 2861
    :goto_25
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v1, 0x20

    .line 2862
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_40

    const/4 v1, 0x1

    goto :goto_26

    :cond_40
    const/4 v1, 0x0

    :goto_26
    if-nez v14, :cond_42

    if-nez v1, :cond_41

    move-object/from16 v1, p1

    move/from16 v15, v28

    const/4 v14, 0x1

    goto :goto_24

    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    :cond_42
    if-nez v1, :cond_43

    goto :goto_28

    :cond_43
    add-int/lit8 v12, v12, -0x1

    :goto_27
    move-object/from16 v1, p1

    move/from16 v15, v28

    goto :goto_24

    :cond_44
    :goto_28
    const/4 v1, 0x1

    .line 2863
    invoke-static {v12, v1, v7, v8}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_29

    :cond_45
    move/from16 v28, v15

    const/4 v8, 0x0

    .line 2864
    :goto_29
    invoke-static {v8}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 2865
    iget-object v1, v0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_4a

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v10, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 2868
    :cond_46
    sget-object v1, Lcom/inmobi/media/ed;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_47

    .line 2869
    const-string v1, "unknown"

    .line 2870
    :cond_47
    new-instance v3, Lcom/inmobi/media/u8;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-direct {v3, v7, v14, v1, v12}, Lcom/inmobi/media/u8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 2871
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3052
    iget-object v1, v2, Lcom/inmobi/media/ad;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_48
    move/from16 v28, v15

    const/4 v12, 0x0

    const/4 v14, 0x0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_23

    :cond_49
    move/from16 v28, v15

    :cond_4a
    :goto_2a
    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 3053
    :goto_2b
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object/from16 v1, p1

    move/from16 v15, v28

    goto/16 :goto_22

    :sswitch_8
    move/from16 v26, v8

    move/from16 v27, v14

    move/from16 v28, v15

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 3054
    const-string v1, "CompanionClickThrough"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto/16 :goto_35

    .line 3111
    :cond_4b
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_58

    .line 3113
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 3114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_30

    .line 3481
    :cond_4c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v4, v14

    move v7, v4

    :goto_2c
    if-gt v7, v3, :cond_52

    if-nez v4, :cond_4d

    move v5, v7

    goto :goto_2d

    :cond_4d
    move v5, v3

    .line 3486
    :goto_2d
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 3487
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_4e

    const/4 v5, 0x1

    goto :goto_2e

    :cond_4e
    move v5, v14

    :goto_2e
    if-nez v4, :cond_50

    if-nez v5, :cond_4f

    const/4 v4, 0x1

    goto :goto_2c

    :cond_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_50
    if-nez v5, :cond_51

    goto :goto_2f

    :cond_51
    add-int/lit8 v3, v3, -0x1

    goto :goto_2c

    :cond_52
    :goto_2f
    const/4 v4, 0x1

    .line 3488
    invoke-static {v3, v4, v1, v7}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    :cond_53
    :goto_30
    move-object v3, v12

    .line 3489
    :goto_31
    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 3490
    iput-object v3, v2, Lcom/inmobi/media/ad;->c:Ljava/lang/String;

    goto :goto_35

    :sswitch_9
    move/from16 v26, v8

    move/from16 v27, v14

    move/from16 v28, v15

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 3491
    const-string v1, "IFrameResource"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_35

    .line 3525
    :cond_54
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_58

    .line 3527
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 3528
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 3529
    new-instance v3, Lcom/inmobi/media/Zc;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v1}, Lcom/inmobi/media/Zc;-><init>(BLjava/lang/String;)V

    .line 3530
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3694
    iget-object v1, v2, Lcom/inmobi/media/ad;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_55
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    :cond_56
    :goto_32
    move/from16 v26, v8

    move/from16 v27, v14

    :cond_57
    :goto_33
    move/from16 v28, v15

    const/4 v12, 0x0

    :goto_34
    const/4 v14, 0x0

    :cond_58
    :goto_35
    move-object/from16 v5, v23

    .line 3695
    :goto_36
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object/from16 v1, p1

    move-object/from16 v4, v22

    move/from16 v6, v24

    move-object/from16 v7, v25

    move/from16 v8, v26

    move/from16 v14, v27

    move/from16 v15, v28

    goto/16 :goto_8

    :cond_59
    :goto_37
    move-object/from16 v21, v2

    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v14

    move/from16 v28, v15

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 3696
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object/from16 v1, p1

    move-object/from16 v4, v18

    move/from16 v5, v20

    move-object/from16 v2, v21

    move/from16 v6, v24

    move-object/from16 v7, v25

    move/from16 v8, v26

    goto :goto_3a

    :cond_5a
    move-object/from16 v21, v2

    goto :goto_38

    :cond_5b
    move-object/from16 v21, v2

    move-object/from16 v18, v4

    :goto_38
    move/from16 v20, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v27, v14

    move/from16 v28, v15

    goto/16 :goto_14

    .line 3708
    :goto_39
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object/from16 v1, p1

    move-object/from16 v4, v18

    move/from16 v5, v20

    move-object/from16 v2, v21

    move/from16 v6, v24

    move-object/from16 v7, v25

    :goto_3a
    move/from16 v14, v27

    move/from16 v15, v28

    goto/16 :goto_5

    :cond_5c
    move-object/from16 v21, v2

    move/from16 v20, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v27, v14

    move/from16 v28, v15

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 3709
    const-string v1, "Linear"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    move-object/from16 v12, p1

    :goto_3b
    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v6, 0x4

    goto/16 :goto_59

    .line 3710
    :cond_5d
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move v3, v14

    move v4, v3

    move v7, v4

    .line 3714
    :goto_3c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_63

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-static {v2}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v5

    if-nez v5, :cond_5e

    goto :goto_3d

    :cond_5e
    if-eqz v3, :cond_5f

    if-nez v4, :cond_61

    .line 3749
    :cond_5f
    iget-object v1, v0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_60

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "VAST Schema Validation Error.Duration tag not found"

    invoke-virtual {v1, v10, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    const/16 v1, 0x65

    .line 3750
    invoke-virtual {v0, v1}, Lcom/inmobi/media/ed;->c(I)V

    :cond_61
    if-eqz v3, :cond_62

    if-eqz v4, :cond_62

    if-eqz v7, :cond_62

    move-object/from16 v12, p1

    const/16 v1, 0x65

    const/4 v6, 0x4

    const/4 v15, 0x1

    goto/16 :goto_54

    :cond_62
    move-object/from16 v12, p1

    move v15, v14

    const/16 v1, 0x65

    const/4 v6, 0x4

    goto/16 :goto_54

    .line 3751
    :cond_63
    :goto_3d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_93

    invoke-static {v2}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v2

    if-nez v2, :cond_93

    .line 3752
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_93

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x7a2ef3da

    if-eq v5, v6, :cond_91

    const v6, -0x72e14e4c

    if-eq v5, v6, :cond_8b

    const v6, -0x16f37aed

    if-eq v5, v6, :cond_66

    const v6, 0x247392d0

    if-eq v5, v6, :cond_64

    goto/16 :goto_56

    :cond_64
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    goto/16 :goto_56

    .line 3769
    :cond_65
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_56

    .line 3770
    :cond_66
    const-string v5, "MediaFiles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto/16 :goto_56

    .line 3771
    :cond_67
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move v4, v14

    .line 3772
    :goto_3e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6b

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-static {v2}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v6

    if-nez v6, :cond_68

    goto :goto_41

    :cond_68
    if-nez v4, :cond_69

    const/16 v2, 0x191

    .line 3822
    invoke-virtual {v0, v2}, Lcom/inmobi/media/ed;->c(I)V

    :goto_3f
    move v2, v14

    goto :goto_40

    .line 3825
    :cond_69
    iget-object v2, v0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    .line 3826
    iget-object v2, v2, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    .line 3827
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    const/16 v2, 0x193

    .line 3828
    invoke-virtual {v0, v2}, Lcom/inmobi/media/ed;->c(I)V

    goto :goto_3f

    :cond_6a
    const/4 v2, 0x1

    :goto_40
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move v7, v2

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x4

    const/16 v8, 0x20

    goto/16 :goto_58

    .line 3829
    :cond_6b
    :goto_41
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8a

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MediaFile"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-static {v2}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3834
    iget-object v2, v0, Lcom/inmobi/media/ed;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getBitRate()Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;

    move-result-object v2

    .line 3835
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    move-object v6, v12

    move-object v7, v6

    move v8, v14

    move v15, v8

    :goto_42
    if-ge v8, v4, :cond_74

    move-object/from16 v12, p1

    .line 3837
    invoke-interface {v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v1

    if-eqz v14, :cond_72

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v1

    move/from16 v19, v3

    const v3, -0x6188493

    if-eq v1, v3, :cond_70

    const v3, 0x368f3a

    if-eq v1, v3, :cond_6e

    const v3, 0x31151bf4

    if-eq v1, v3, :cond_6c

    goto :goto_43

    :cond_6c
    const-string v1, "delivery"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_43

    .line 3839
    :cond_6d
    invoke-interface {v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_43

    .line 3840
    :cond_6e
    const-string v1, "type"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    goto :goto_43

    .line 3845
    :cond_6f
    invoke-interface {v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_43

    .line 3846
    :cond_70
    const-string v1, "bitrate"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    goto :goto_43

    .line 3854
    :cond_71
    :try_start_3
    invoke-interface {v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "valueOf(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v15, v1

    goto :goto_43

    .line 3856
    :catch_3
    iget-object v1, v0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_73

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "Invalid value found for BitRate."

    invoke-virtual {v1, v10, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_72
    move/from16 v19, v3

    :cond_73
    :goto_43
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v18

    move/from16 v3, v19

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_42

    :cond_74
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move/from16 v19, v3

    .line 3862
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_88

    .line 3864
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 3865
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_75

    goto :goto_49

    .line 4287
    :cond_75
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_44
    move/from16 v22, v1

    if-gt v8, v4, :cond_7b

    if-nez v14, :cond_76

    move v1, v8

    goto :goto_45

    :cond_76
    move v1, v4

    .line 4292
    :goto_45
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v23, v5

    const/16 v5, 0x20

    .line 4293
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gtz v1, :cond_77

    const/4 v1, 0x1

    goto :goto_46

    :cond_77
    const/4 v1, 0x0

    :goto_46
    if-nez v14, :cond_79

    if-nez v1, :cond_78

    move/from16 v1, v22

    move-object/from16 v5, v23

    const/4 v14, 0x1

    goto :goto_44

    :cond_78
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    :cond_79
    if-nez v1, :cond_7a

    goto :goto_48

    :cond_7a
    add-int/lit8 v4, v4, -0x1

    :goto_47
    move/from16 v1, v22

    move-object/from16 v5, v23

    goto :goto_44

    :cond_7b
    move-object/from16 v23, v5

    :goto_48
    const/4 v1, 0x1

    .line 4294
    invoke-static {v4, v1, v3, v8}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    :cond_7c
    :goto_49
    move/from16 v22, v1

    move-object/from16 v23, v5

    const/4 v3, 0x0

    .line 4295
    :goto_4a
    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7e

    :cond_7d
    const/16 v8, 0x20

    goto/16 :goto_50

    .line 4299
    :cond_7e
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->isBitRateMandatory()Z

    move-result v1

    if-eqz v1, :cond_7f

    if-lez v15, :cond_7d

    :cond_7f
    if-eqz v6, :cond_7d

    .line 4739
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_4b
    if-gt v2, v1, :cond_85

    if-nez v4, :cond_80

    move v5, v2

    goto :goto_4c

    :cond_80
    move v5, v1

    .line 4744
    :goto_4c
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x20

    .line 4745
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_81

    const/4 v5, 0x1

    goto :goto_4d

    :cond_81
    const/4 v5, 0x0

    :goto_4d
    if-nez v4, :cond_83

    if-nez v5, :cond_82

    const/4 v4, 0x1

    goto :goto_4b

    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_83
    if-nez v5, :cond_84

    goto :goto_4e

    :cond_84
    add-int/lit8 v1, v1, -0x1

    goto :goto_4b

    :cond_85
    const/16 v8, 0x20

    :goto_4e
    const/4 v4, 0x1

    .line 4746
    invoke-static {v1, v4, v6, v2}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4747
    const-string v2, "Progressive"

    invoke-static {v1, v2, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_86

    goto :goto_50

    .line 4750
    :cond_86
    iget-object v1, v0, Lcom/inmobi/media/ed;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getAllowedContentType()Ljava/util/List;

    move-result-object v1

    if-eqz v7, :cond_89

    .line 4752
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_4f
    if-ge v5, v2, :cond_89

    .line 4753
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 4754
    iget-object v4, v0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    new-instance v6, Lcom/inmobi/media/bd;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v6, v3, v15}, Lcom/inmobi/media/bd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4755
    const-string v14, "vastMediaFile"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4999
    iget-object v4, v4, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto :goto_4f

    :goto_50
    move-object/from16 v1, v18

    move/from16 v3, v19

    move/from16 v2, v22

    move-object/from16 v5, v23

    const/4 v4, 0x1

    goto :goto_52

    :cond_88
    move-object/from16 v23, v5

    const/16 v8, 0x20

    :cond_89
    const/4 v4, 0x1

    goto :goto_51

    :cond_8a
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move/from16 v19, v3

    move-object/from16 v23, v5

    const/16 v8, 0x20

    .line 5000
    :goto_51
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move-object/from16 v1, v18

    move/from16 v3, v19

    move-object/from16 v5, v23

    :goto_52
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_3e

    :cond_8b
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move/from16 v19, v3

    const/16 v8, 0x20

    .line 5001
    const-string v1, "Duration"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v6, 0x4

    goto/16 :goto_57

    .line 5003
    :cond_8c
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_90

    .line 5005
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 5006
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 5007
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d(?:\\.\\d{1,3})?$"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8d

    goto :goto_53

    .line 5012
    :cond_8d
    iget-object v2, v0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    .line 5013
    iput-object v1, v2, Lcom/inmobi/media/jd;->g:Ljava/lang/String;

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_58

    .line 5014
    :cond_8e
    :goto_53
    iget-object v2, v0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_8f

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VAST Schema Validation Error. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Media Duration invalid."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v10, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    const/16 v1, 0x65

    .line 5015
    invoke-virtual {v0, v1}, Lcom/inmobi/media/ed;->c(I)V

    const/4 v15, 0x0

    :goto_54
    move/from16 v5, v20

    const/4 v2, 0x1

    const/4 v14, 0x1

    goto :goto_5a

    :cond_90
    const/16 v1, 0x65

    goto :goto_55

    :cond_91
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move/from16 v19, v3

    const/16 v1, 0x65

    const/4 v6, 0x4

    const/16 v8, 0x20

    .line 5016
    const-string v3, "VideoClicks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    :goto_55
    const/4 v2, 0x1

    goto :goto_57

    :cond_92
    const/4 v2, 0x1

    .line 5036
    invoke-virtual {v0, v12, v2}, Lcom/inmobi/media/ed;->a(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_57

    :cond_93
    :goto_56
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move/from16 v19, v3

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v6, 0x4

    const/16 v8, 0x20

    :goto_57
    move/from16 v3, v19

    .line 5046
    :goto_58
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v5

    move v2, v5

    move-object/from16 v1, v18

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_3c

    :cond_94
    move-object/from16 v21, v2

    move/from16 v20, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move v6, v12

    move/from16 v27, v14

    move/from16 v28, v15

    const/4 v2, 0x1

    move-object v12, v1

    move v1, v8

    :goto_59
    move/from16 v5, v20

    move/from16 v14, v27

    move/from16 v15, v28

    .line 5047
    :goto_5a
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move v8, v1

    move-object v1, v12

    move-object/from16 v2, v21

    move-object/from16 v7, v25

    move v12, v6

    move/from16 v6, v24

    goto/16 :goto_2

    :sswitch_a
    move-object v12, v1

    move-object/from16 v21, v2

    move/from16 v24, v6

    .line 5048
    const-string v1, "AdVerifications"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    goto :goto_5c

    .line 5070
    :cond_95
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5c

    :cond_96
    :goto_5b
    move-object v12, v1

    move-object/from16 v21, v2

    move/from16 v24, v6

    :goto_5c
    move/from16 v6, v24

    .line 5079
    :goto_5d
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object v1, v12

    move-object/from16 v2, v21

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7bd325cb -> :sswitch_a
        -0x64e1597c -> :sswitch_3
        0x401e1e8 -> :sswitch_2
        0xaf84834 -> :sswitch_1
        0x7e026e29 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x165f3d2e -> :sswitch_9
        -0x14c116d7 -> :sswitch_8
        0x247392d0 -> :sswitch_7
        0x285474bc -> :sswitch_6
        0x6fec8cd3 -> :sswitch_5
        0x72ef4cd9 -> :sswitch_4
    .end sparse-switch
.end method

.method public final d(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const-string v0, "TAG"

    const-string v1, "ed"

    .line 1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 5
    :catch_0
    iget-object p1, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "VAST Schema validation error: VAST node at appropriate hierarchy not found."

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :catch_1
    iget-object p1, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Parsing failed."

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrackingEvents"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 3
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tracking"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 6
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "event"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9
    sget-object v1, Lcom/inmobi/media/ed;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getText(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/ed;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_3
    :goto_3
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    goto :goto_0
.end method

.method public final f(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/inmobi/media/ed;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/inmobi/media/ed;->e:I

    .line 2
    iget-object v2, p0, Lcom/inmobi/media/ed;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getMaxWrapperLimit()I

    move-result v2

    const-string v3, "TAG"

    const-string v4, "ed"

    if-le v0, v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Schema Validation Error:Max VAST wrapper limit exceeded"

    invoke-virtual {p1, v4, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x12e

    .line 5
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->c(I)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v2, 0x0

    move v5, v2

    move v6, v5

    .line 11
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x65

    const-string v9, "VAST Wrapper Error: VastAdTagUri at appropriate hierarchy not found or invalid"

    if-eqz v7, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Wrapper"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    if-nez v6, :cond_5

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v4, v9}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_4
    invoke-virtual {p0, v8}, Lcom/inmobi/media/ed;->c(I)V

    :cond_5
    return-void

    .line 78
    :cond_6
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    invoke-static {v0}, Lcom/inmobi/media/ed;->b(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v10, "getText(...)"

    const/4 v11, 0x4

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v7, "Impression"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_9

    .line 81
    :cond_7
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-ne v0, v11, :cond_8

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7, v0}, Lcom/inmobi/media/ed;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v1

    goto/16 :goto_9

    .line 86
    :cond_8
    iget-object v7, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz v7, :cond_1e

    .line 87
    const-string v8, "VAST Wrapper Error: VastAdTagUri at appropriate hierarchy not found or invalid - "

    invoke-static {v4, v3, v8, v0}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 297
    check-cast v7, Lcom/inmobi/media/g5;

    invoke-virtual {v7, v4, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 298
    :sswitch_1
    const-string v7, "TrackingEvents"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_9

    .line 342
    :cond_9
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 343
    :sswitch_2
    const-string v7, "Extensions"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_9

    .line 396
    :cond_a
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 397
    :sswitch_3
    const-string v7, "Error"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_9

    .line 409
    :cond_b
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-ne v0, v11, :cond_1e

    .line 411
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "error"

    invoke-virtual {p0, v7, v0}, Lcom/inmobi/media/ed;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 412
    :sswitch_4
    const-string v7, "VASTAdTagURI"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_9

    .line 431
    :cond_c
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-ne v0, v11, :cond_1a

    .line 433
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 435
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_d

    goto :goto_6

    .line 436
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1083
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    move v7, v2

    move v8, v7

    :goto_2
    if-gt v7, v5, :cond_13

    if-nez v8, :cond_e

    move v10, v7

    goto :goto_3

    :cond_e
    move v10, v5

    .line 1088
    :goto_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    .line 1089
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v10

    if-gtz v10, :cond_f

    move v10, v1

    goto :goto_4

    :cond_f
    move v10, v2

    :goto_4
    if-nez v8, :cond_11

    if-nez v10, :cond_10

    move v8, v1

    goto :goto_2

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_11
    if-nez v10, :cond_12

    goto :goto_5

    :cond_12
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1090
    :cond_13
    :goto_5
    invoke-static {v5, v1, v0, v7}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_14
    :goto_6
    const/4 v0, 0x0

    :goto_7
    const/16 v5, 0x12c

    if-nez v0, :cond_16

    .line 1319
    iget-object p1, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_15

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v4, v9}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_15
    invoke-virtual {p0, v5}, Lcom/inmobi/media/ed;->c(I)V

    return-void

    .line 1322
    :cond_16
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1323
    new-instance v5, Lcom/inmobi/media/l9;

    iget-object v7, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    invoke-direct {v5, v0, v7}, Lcom/inmobi/media/l9;-><init>(Ljava/lang/String;Lcom/inmobi/media/f5;)V

    .line 1324
    iput-boolean v2, v5, Lcom/inmobi/media/l9;->t:Z

    .line 1325
    iput-boolean v2, v5, Lcom/inmobi/media/l9;->u:Z

    .line 1326
    iput-boolean v2, v5, Lcom/inmobi/media/l9;->x:Z

    .line 1327
    iput-boolean v1, v5, Lcom/inmobi/media/l9;->r:Z

    .line 1328
    const-string v0, "mRequest"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v5}, Lcom/inmobi/media/l9;->b()Lcom/inmobi/media/m9;

    move-result-object v0

    .line 1330
    invoke-virtual {v0}, Lcom/inmobi/media/m9;->b()Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 v0, 0x12d

    .line 1331
    invoke-virtual {p0, v0}, Lcom/inmobi/media/ed;->c(I)V

    goto :goto_8

    .line 1333
    :cond_17
    invoke-virtual {v0}, Lcom/inmobi/media/m9;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/ed;->a(Ljava/lang/String;)Lcom/inmobi/media/jd;

    goto :goto_8

    .line 1336
    :cond_18
    invoke-virtual {p0, v5}, Lcom/inmobi/media/ed;->c(I)V

    .line 1337
    :goto_8
    iget-object v0, p0, Lcom/inmobi/media/ed;->c:Lcom/inmobi/media/jd;

    .line 1338
    iget v0, v0, Lcom/inmobi/media/jd;->l:I

    if-eqz v0, :cond_19

    return-void

    :cond_19
    move v5, v1

    goto :goto_9

    .line 1339
    :cond_1a
    iget-object p1, p0, Lcom/inmobi/media/ed;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1b

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v4, v9}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    :cond_1b
    invoke-virtual {p0, v8}, Lcom/inmobi/media/ed;->c(I)V

    return-void

    .line 1342
    :sswitch_5
    const-string v7, "VideoClicks"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_9

    .line 1389
    :cond_1c
    invoke-virtual {p0, p1, v2}, Lcom/inmobi/media/ed;->a(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_9

    .line 1390
    :sswitch_6
    const-string v7, "AdVerifications"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_9

    .line 1440
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1449
    :cond_1e
    :goto_9
    invoke-virtual {p0, p1}, Lcom/inmobi/media/ed;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bd325cb -> :sswitch_6
        -0x7a2ef3da -> :sswitch_5
        -0x2303541f -> :sswitch_4
        0x401e1e8 -> :sswitch_3
        0xaf84834 -> :sswitch_2
        0x247392d0 -> :sswitch_1
        0x7e026e29 -> :sswitch_0
    .end sparse-switch
.end method

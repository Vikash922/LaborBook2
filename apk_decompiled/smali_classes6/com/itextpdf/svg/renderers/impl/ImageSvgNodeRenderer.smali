.class public Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "ImageSvgNodeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 63
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;-><init>()V

    .line 64
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 10

    .line 75
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 77
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-nez v1, :cond_0

    goto/16 :goto_d

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "xlink:href"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveImage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 89
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v0, "x"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v1

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v4, "y"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 100
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v5, "width"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 101
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v1

    .line 106
    :goto_2
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v6, "height"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    goto :goto_3

    :cond_5
    move v5, v1

    .line 112
    :goto_3
    iget-object v6, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v7, "preserveAspectRatio"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 113
    iget-object v6, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    .line 114
    :cond_6
    iget-object v6, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 116
    iget-object v6, p0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    .line 114
    :cond_7
    const-string v6, ""

    .line 119
    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 120
    const-string v7, "none"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    cmpl-float v7, v4, v1

    if-eqz v7, :cond_a

    cmpl-float v1, v5, v1

    if-eqz v1, :cond_a

    .line 123
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v1

    div-float/2addr v1, v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v7

    div-float/2addr v7, v5

    cmpl-float v1, v1, v7

    if-lez v1, :cond_8

    .line 125
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v1

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v7

    div-float/2addr v1, v7

    mul-float/2addr v1, v4

    move v7, v1

    move v1, v4

    goto :goto_5

    .line 127
    :cond_8
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v1

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v7

    div-float/2addr v1, v7

    mul-float/2addr v1, v5

    move v7, v5

    .line 131
    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v8, "xminymin"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    goto :goto_7

    :sswitch_1
    const-string v8, "xminymid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :sswitch_2
    const-string v8, "xminymax"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x2

    goto :goto_7

    :sswitch_3
    const-string v8, "xmidymin"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x3

    goto :goto_7

    :sswitch_4
    const-string v8, "xmidymid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x8

    goto :goto_7

    :sswitch_5
    const-string v8, "xmidymax"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x4

    goto :goto_7

    :sswitch_6
    const-string v8, "xmaxymin"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x5

    goto :goto_7

    :sswitch_7
    const-string v8, "xmaxymid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x6

    goto :goto_7

    :sswitch_8
    const-string v8, "xmaxymax"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x7

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v6, -0x1

    :goto_7
    const/high16 v8, 0x40000000    # 2.0f

    packed-switch v6, :pswitch_data_0

    sub-float v4, v1, v4

    .line 160
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v8

    add-float/2addr p1, v4

    sub-float v4, v7, v5

    .line 161
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_9

    :pswitch_0
    sub-float v4, v1, v4

    .line 155
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr p1, v4

    sub-float v4, v7, v5

    .line 156
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_a

    :pswitch_1
    sub-float v4, v1, v4

    .line 151
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr p1, v4

    sub-float v4, v7, v5

    .line 152
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_9

    :pswitch_2
    sub-float v4, v1, v4

    .line 148
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_8

    :pswitch_3
    sub-float v4, v1, v4

    .line 144
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v8

    add-float/2addr p1, v4

    sub-float v4, v7, v5

    .line 145
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_a

    :pswitch_4
    sub-float v4, v1, v4

    .line 141
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v8

    :goto_8
    add-float/2addr p1, v4

    goto :goto_b

    :pswitch_5
    sub-float v4, v7, v5

    .line 138
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_a

    :pswitch_6
    sub-float v4, v7, v5

    .line 135
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    :goto_9
    div-float/2addr v4, v8

    :goto_a
    add-float/2addr v0, v4

    :goto_b
    :pswitch_7
    move v8, p1

    move v4, v1

    move v5, v7

    goto :goto_c

    :cond_a
    move v8, p1

    :goto_c
    add-float v9, v0, v5

    const/4 v6, 0x0

    neg-float v7, v5

    const/4 v5, 0x0

    .line 170
    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_b
    :goto_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1c11fdc9 -> :sswitch_8
        -0x1c11fce5 -> :sswitch_7
        -0x1c11fcdb -> :sswitch_6
        -0xf850ee5 -> :sswitch_5
        -0xf850e01 -> :sswitch_4
        -0xf850df7 -> :sswitch_3
        -0xef823db -> :sswitch_2
        -0xef822f7 -> :sswitch_1
        -0xef822ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

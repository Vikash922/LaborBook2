.class public Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;
.super Ljava/lang/Object;
.source "MediaExpression.java"


# static fields
.field private static final DEFAULT_FONT_SIZE:F = 12.0f


# instance fields
.field private feature:Ljava/lang/String;

.field private maxPrefix:Z

.field private minPrefix:Z

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->feature:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    .line 95
    :cond_0
    const-string p2, "min-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->feature:Ljava/lang/String;

    .line 99
    :cond_1
    const-string p2, "max-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->feature:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private static parseAbsoluteLength(Ljava/lang/String;)F
    .locals 1

    .line 205
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    .line 208
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result p0

    return p0

    .line 210
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result p0

    return p0
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->feature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "scan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "color-index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_7
    const-string v1, "aspect-ratio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_8
    const-string v1, "resolution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v4, v2

    goto :goto_0

    :sswitch_9
    const-string v1, "monochrome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v4, v3

    :goto_0
    const/4 v0, 0x0

    packed-switch v4, :pswitch_data_0

    return v3

    .line 174
    :pswitch_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 175
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v4, :cond_b

    .line 176
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result p1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_a

    goto :goto_1

    :cond_a
    move v2, v3

    :goto_1
    return v2

    .line 177
    :cond_b
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v4, :cond_d

    .line 178
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result p1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_c

    goto :goto_2

    :cond_c
    move v2, v3

    :goto_2
    return v2

    .line 180
    :cond_d
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_e

    goto :goto_3

    :cond_e
    move v2, v3

    :goto_3
    return v2

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v1, :cond_10

    if-eqz v0, :cond_f

    .line 116
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getBitsPerComponent()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_f

    goto :goto_4

    :cond_f
    move v2, v3

    :goto_4
    return v2

    .line 117
    :cond_10
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v1, :cond_12

    if-eqz v0, :cond_11

    .line 118
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getBitsPerComponent()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_11

    goto :goto_5

    :cond_11
    move v2, v3

    :goto_5
    return v2

    :cond_12
    if-nez v0, :cond_13

    .line 120
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getBitsPerComponent()I

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_6

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getBitsPerComponent()I

    move-result p1

    if-ne v0, p1, :cond_14

    goto :goto_6

    :cond_14
    move v2, v3

    :goto_6
    return v2

    .line 148
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getScan()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 144
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 145
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->isGrid()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->isGrid()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_7

    :cond_16
    move v2, v3

    :cond_17
    :goto_7
    return v2

    .line 124
    :pswitch_4
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v1, :cond_19

    if-eqz v0, :cond_18

    .line 126
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getColorIndex()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_18

    goto :goto_8

    :cond_18
    move v2, v3

    :goto_8
    return v2

    .line 127
    :cond_19
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1a

    .line 128
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getColorIndex()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_1a

    goto :goto_9

    :cond_1a
    move v2, v3

    :goto_9
    return v2

    :cond_1b
    if-nez v0, :cond_1c

    .line 130
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getColorIndex()I

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_a

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getColorIndex()I

    move-result p1

    if-ne v0, p1, :cond_1d

    goto :goto_a

    :cond_1d
    move v2, v3

    :goto_a
    return v2

    .line 164
    :pswitch_5
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 165
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v4, :cond_1f

    .line 166
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result p1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1e

    goto :goto_b

    :cond_1e
    move v2, v3

    :goto_b
    return v2

    .line 167
    :cond_1f
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v4, :cond_21

    .line 168
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result p1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_20

    goto :goto_c

    :cond_20
    move v2, v3

    :goto_c
    return v2

    .line 170
    :cond_21
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_22

    goto :goto_d

    :cond_22
    move v2, v3

    :goto_d
    return v2

    .line 151
    :pswitch_6
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getOrientation()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 134
    :pswitch_7
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAspectRatio(Ljava/lang/String;)[I

    move-result-object v0

    .line 135
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v1, :cond_24

    if-eqz v0, :cond_23

    .line 136
    aget v1, v0, v3

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result p1

    mul-float/2addr v0, p1

    cmpl-float p1, v1, v0

    if-ltz p1, :cond_23

    goto :goto_e

    :cond_23
    move v2, v3

    :goto_e
    return v2

    .line 137
    :cond_24
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v1, :cond_26

    if-eqz v0, :cond_25

    .line 138
    aget v1, v0, v3

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result p1

    mul-float/2addr v0, p1

    cmpg-float p1, v1, v0

    if-gtz p1, :cond_25

    goto :goto_f

    :cond_25
    move v2, v3

    :goto_f
    return v2

    :cond_26
    if-eqz v0, :cond_27

    .line 140
    aget v1, v0, v3

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_10

    :cond_27
    move v2, v3

    :goto_10
    return v2

    .line 184
    :pswitch_8
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseResolution(Ljava/lang/String;)F

    move-result v1

    .line 185
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v4, :cond_29

    .line 186
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getResolution()F

    move-result p1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_28

    goto :goto_11

    :cond_28
    move v2, v3

    :goto_11
    return v2

    .line 187
    :cond_29
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v4, :cond_2b

    .line 188
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getResolution()F

    move-result p1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2a

    goto :goto_12

    :cond_2a
    move v2, v3

    :goto_12
    return v2

    .line 190
    :cond_2b
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getResolution()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2c

    goto :goto_13

    :cond_2c
    move v2, v3

    :goto_13
    return v2

    .line 154
    :pswitch_9
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 155
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_2d

    .line 156
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getMonochrome()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_2d

    goto :goto_14

    :cond_2d
    move v2, v3

    :goto_14
    return v2

    .line 157
    :cond_2e
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v1, :cond_30

    if-eqz v0, :cond_2f

    .line 158
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getMonochrome()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_2f

    goto :goto_15

    :cond_2f
    move v2, v3

    :goto_15
    return v2

    :cond_30
    if-nez v0, :cond_31

    .line 160
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getMonochrome()I

    move-result p1

    if-lez p1, :cond_32

    goto :goto_16

    :cond_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getMonochrome()I

    move-result p1

    if-ne v0, p1, :cond_32

    goto :goto_16

    :cond_32
    move v2, v3

    :goto_16
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x719ae8e3 -> :sswitch_9
        -0x5f5e8754 -> :sswitch_8
        -0x5c2d29aa -> :sswitch_7
        -0x55cd0a30 -> :sswitch_6
        -0x48c76ed9 -> :sswitch_5
        -0x6e9ea18 -> :sswitch_4
        0x308b46 -> :sswitch_3
        0x35c67d -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x6be2dc6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

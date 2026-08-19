.class public Lcom/itextpdf/svg/utils/SvgCoordinateUtils;
.super Ljava/lang/Object;
.source "SvgCoordinateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyViewBox(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_e

    if-eqz v0, :cond_d

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    cmpg-float v4, v4, v5

    if-lez v4, :cond_d

    .line 177
    const-string v4, "meet"

    const-string v5, "xmidymid"

    if-eqz v2, :cond_c

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "slice"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_6

    .line 185
    :cond_0
    const-string v6, "none"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v7, v3

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v9, v3

    div-double/2addr v7, v9

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    float-to-double v9, v3

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    float-to-double v11, v3

    div-double/2addr v9, v11

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {v0, v1, v3}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getScaleWidthHeight(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;)D

    move-result-wide v7

    move-wide v9, v7

    .line 195
    :goto_0
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v12

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v13

    float-to-double v13, v13

    mul-double/2addr v13, v7

    double-to-float v7, v13

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    float-to-double v13, v8

    mul-double/2addr v13, v9

    double-to-float v8, v13

    invoke-direct {v3, v11, v12, v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v9

    float-to-double v9, v9

    sub-double/2addr v7, v9

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v11

    float-to-double v11, v11

    sub-double/2addr v9, v11

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v11

    float-to-double v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    add-double/2addr v11, v13

    .line 203
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v13

    float-to-double v13, v13

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    move-wide/from16 v17, v7

    float-to-double v7, v2

    div-double/2addr v7, v15

    add-double/2addr v13, v7

    sub-double/2addr v11, v13

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    float-to-double v7, v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    float-to-double v13, v2

    div-double/2addr v13, v15

    add-double/2addr v7, v13

    .line 205
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    float-to-double v13, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    move-wide/from16 v19, v9

    float-to-double v9, v2

    div-double/2addr v9, v15

    add-double/2addr v13, v9

    sub-double/2addr v7, v13

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    float-to-double v9, v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    float-to-double v13, v2

    add-double/2addr v9, v13

    .line 208
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    float-to-double v13, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    move-wide v15, v7

    float-to-double v7, v2

    add-double/2addr v13, v7

    sub-double/2addr v9, v13

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    float-to-double v7, v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    float-to-double v13, v2

    add-double/2addr v7, v13

    .line 210
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    float-to-double v13, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    move-wide/from16 v21, v9

    float-to-double v9, v2

    add-double/2addr v13, v9

    sub-double/2addr v7, v13

    .line 215
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, -0x1

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v10, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "xminymin"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v10, 0x8

    goto :goto_1

    :sswitch_2
    const-string v6, "xminymid"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x7

    goto :goto_1

    :sswitch_3
    const-string v6, "xminymax"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x6

    goto :goto_1

    :sswitch_4
    const-string v6, "xmidymin"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v10, 0x5

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v10, 0x4

    goto :goto_1

    :sswitch_6
    const-string v6, "xmidymax"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v10, 0x3

    goto :goto_1

    :sswitch_7
    const-string v6, "xmaxymin"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_8
    const-string v6, "xmaxymid"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v10, 0x1

    goto :goto_1

    :sswitch_9
    const-string v6, "xmaxymax"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v10, 0x0

    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 254
    invoke-static {v0, v1, v5, v4}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->applyViewBox(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-wide/from16 v7, v17

    :goto_2
    move-wide/from16 v9, v19

    goto :goto_5

    :pswitch_1
    move-wide v9, v15

    :goto_3
    move-wide/from16 v7, v17

    goto :goto_5

    :pswitch_2
    move-wide v9, v7

    goto :goto_3

    :pswitch_3
    move-wide v7, v11

    goto :goto_2

    :pswitch_4
    move-wide v7, v11

    move-wide v9, v15

    goto :goto_5

    :pswitch_5
    move-wide v9, v7

    move-wide v7, v11

    goto :goto_5

    :pswitch_6
    move-wide/from16 v9, v19

    :goto_4
    move-wide/from16 v7, v21

    goto :goto_5

    :pswitch_7
    move-wide v9, v15

    goto :goto_4

    :pswitch_8
    move-wide v9, v7

    goto :goto_4

    :goto_5
    double-to-float v0, v7

    .line 258
    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v0, v9

    .line 259
    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v3

    .line 180
    :cond_c
    :goto_6
    invoke-static {v0, v1, v5, v4}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->applyViewBox(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0

    .line 174
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The viewBox is incorrect. The viewBox applying could not be processed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The current viewport is null. The viewBox applying could not be processed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x1c11fdc9 -> :sswitch_9
        -0x1c11fce5 -> :sswitch_8
        -0x1c11fcdb -> :sswitch_7
        -0xf850ee5 -> :sswitch_6
        -0xf850e01 -> :sswitch_5
        -0xf850df7 -> :sswitch_4
        -0xef823db -> :sswitch_3
        -0xef822f7 -> :sswitch_2
        -0xef822ed -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static calculateAngleBetweenTwoVectors(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)D
    .locals 4

    .line 92
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/Vector;->dot(Lcom/itextpdf/kernel/geom/Vector;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Vector;->length()F

    move-result p0

    float-to-double v2, p0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Vector;->length()F

    move-result p0

    float-to-double p0, p0

    mul-double/2addr v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D
    .locals 1

    .line 130
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isPercentageValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 131
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_2
    return-wide p1
.end method

.method public static getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D
    .locals 0

    .line 109
    invoke-static {p0, p7, p8}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getUnitType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    float-to-double p0, p0

    mul-double/2addr p5, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    div-double/2addr p5, p0

    add-double p1, p3, p5

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    float-to-double p1, p0

    :goto_0
    return-wide p1
.end method

.method private static getScaleWidthHeight(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;)D
    .locals 4

    .line 266
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    .line 267
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    float-to-double v2, p1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p0

    float-to-double p0, p0

    div-double/2addr v2, p0

    .line 268
    const-string p0, "slice"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 269
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0

    .line 270
    :cond_0
    const-string p0, "meet"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The meetOrSlice argument is incorrect. It must be `meet`, `slice` or null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_2
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static makeRelativeOperatorCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;
    .locals 8

    .line 67
    array-length v0, p0

    array-length v1, p1

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 71
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 73
    :cond_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 74
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 75
    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 76
    aget-wide v6, p1, v3

    add-double/2addr v4, v6

    .line 77
    invoke-static {v4, v5}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 68
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array of current coordinates must have length that is divisible by the length of the array with current coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

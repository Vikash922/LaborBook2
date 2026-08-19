.class public Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;
.super Ljava/lang/Object;
.source "AccessibleAttributesApplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyBlockLevelLayoutAttributes(Ljava/lang/String;Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x4

    .line 186
    new-array v3, v3, [Lcom/itextpdf/layout/properties/UnitValue;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/16 v5, 0x2b

    .line 187
    invoke-virtual {v1, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v3, v8

    const/16 v7, 0x2c

    .line 188
    invoke-virtual {v1, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v3, v10

    const/16 v9, 0x2d

    .line 189
    invoke-virtual {v1, v9}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v3, v12

    .line 192
    filled-new-array {v6, v8, v10, v12}, [I

    move-result-object v11

    .line 194
    aget v6, v11, v6

    aget-object v6, v3, v6

    .line 195
    const-string v13, "Property {0} in percents is not supported"

    const-class v14, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;

    const/4 v15, 0x0

    if-eqz v6, :cond_1

    .line 196
    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v16

    if-nez v16, :cond_0

    .line 197
    invoke-static {v14}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v9

    .line 199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 198
    invoke-static {v13, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    cmpl-float v4, v15, v4

    if-eqz v4, :cond_1

    .line 202
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->SpaceBefore:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v6

    move-object/from16 v17, v13

    float-to-double v12, v6

    invoke-direct {v9, v12, v13}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v4, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    :cond_1
    move-object/from16 v17, v13

    .line 206
    :goto_0
    aget v4, v11, v8

    aget-object v4, v3, v4

    if-eqz v4, :cond_3

    .line 208
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 209
    invoke-static {v14}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v8, v17

    .line 210
    invoke-static {v8, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v8, v17

    .line 213
    :goto_1
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v5

    cmpl-float v5, v15, v5

    if-eqz v5, :cond_4

    .line 214
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->SpaceAfter:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    float-to-double v12, v4

    invoke-direct {v6, v12, v13}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_2

    :cond_3
    move-object/from16 v8, v17

    .line 219
    :cond_4
    :goto_2
    aget v4, v11, v10

    aget-object v4, v3, v4

    if-eqz v4, :cond_6

    .line 221
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v5

    if-nez v5, :cond_5

    .line 222
    invoke-static {v14}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 224
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 223
    invoke-static {v8, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 226
    :cond_5
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v5

    cmpl-float v5, v15, v5

    if-eqz v5, :cond_6

    .line 227
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->StartIndent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    float-to-double v9, v4

    invoke-direct {v6, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_6
    const/4 v4, 0x3

    .line 231
    aget v4, v11, v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_8

    .line 233
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_7

    .line 234
    invoke-static {v14}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    const/16 v5, 0x2d

    .line 236
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 235
    invoke-static {v8, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 238
    :cond_7
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    cmpl-float v4, v15, v4

    if-eqz v4, :cond_8

    .line 239
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->EndIndent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    float-to-double v6, v3

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_8
    const/16 v3, 0x12

    .line 243
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 244
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v15

    if-eqz v4, :cond_9

    .line 245
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->TextIndent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v6, v3

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_9
    const/16 v3, 0x46

    .line 248
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/properties/TextAlignment;

    .line 249
    const-string v4, "TD"

    const-string v5, "TH"

    if-eqz v3, :cond_a

    .line 251
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 252
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->TextAlign:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v3}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformTextAlignmentValueToName(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 256
    :cond_a
    iget-boolean v6, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    if-eqz v6, :cond_b

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    .line 258
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v8, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 261
    :cond_b
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "Table"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 266
    :cond_c
    instance-of v6, v1, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v6, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v6}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    const/16 v6, 0x4d

    .line 267
    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz v6, :cond_e

    .line 268
    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 269
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v6

    float-to-double v9, v6

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_e
    const/16 v6, 0x1b

    .line 272
    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz v6, :cond_f

    .line 273
    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 274
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v6

    float-to-double v9, v6

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 278
    :cond_f
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/16 v0, 0x1c

    .line 279
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/HorizontalAlignment;

    if-eqz v0, :cond_11

    .line 281
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BlockAlign:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v0}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformBlockAlignToName(Lcom/itextpdf/layout/properties/HorizontalAlignment;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_11
    if-eqz v3, :cond_12

    .line 284
    sget-object v0, Lcom/itextpdf/layout/properties/TextAlignment;->JUSTIFIED:Lcom/itextpdf/layout/properties/TextAlignment;

    if-eq v3, v0, :cond_12

    sget-object v0, Lcom/itextpdf/layout/properties/TextAlignment;->JUSTIFIED_ALL:Lcom/itextpdf/layout/properties/TextAlignment;

    if-eq v3, v0, :cond_12

    .line 287
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->InlineAlign:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v3}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformTextAlignmentValueToName(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_12
    return-void
.end method

.method private static applyBorderAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xd

    .line 398
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/16 v2, 0xc

    .line 399
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0xa

    .line 400
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0xb

    .line 401
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    const/16 v5, 0x9

    .line 403
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 406
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/borders/Border;

    .line 407
    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v6

    .line 408
    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v7

    .line 409
    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    .line 411
    instance-of v8, v6, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v8, :cond_2

    .line 412
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->BorderColor:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v6

    invoke-direct {v9, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 413
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->BorderStyle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v7}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformBorderTypeToName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 414
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->BorderThickness:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v8, v5

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_2
    if-eqz v2, :cond_11

    .line 419
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 420
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 421
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 423
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    move v7, v3

    move v8, v7

    move v9, v8

    move v10, v9

    .line 429
    :goto_2
    array-length v11, v0

    if-ge v7, v11, :cond_9

    .line 430
    aget-object v11, v0, v7

    if-eqz v11, :cond_8

    .line 432
    aget-object v12, v0, v4

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v12

    aget-object v13, v0, v4

    invoke-virtual {v13}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/colors/Color;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    move v8, v4

    .line 436
    :cond_4
    aget-object v12, v0, v4

    if-eqz v12, :cond_5

    invoke-virtual {v11}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v12

    aget-object v13, v0, v4

    invoke-virtual {v13}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v13

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_6

    :cond_5
    move v10, v4

    .line 440
    :cond_6
    aget-object v12, v0, v4

    if-eqz v12, :cond_7

    invoke-virtual {v11}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v11

    aget-object v12, v0, v4

    invoke-virtual {v12}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v12

    if-eq v11, v12, :cond_8

    :cond_7
    move v9, v4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    const/4 v7, 0x2

    const/4 v11, 0x3

    .line 447
    filled-new-array {v4, v3, v7, v11}, [I

    move-result-object v7

    move v11, v4

    move v12, v11

    :goto_3
    const/4 v13, 0x4

    if-ge v11, v13, :cond_c

    .line 448
    aget v13, v7, v11

    .line 449
    aget-object v14, v0, v13

    if-eqz v14, :cond_b

    .line 450
    invoke-virtual {v14}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v14

    instance-of v14, v14, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v14, :cond_a

    .line 451
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfArray;

    aget-object v14, v0, v13

    invoke-virtual {v14}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    move v12, v3

    goto :goto_4

    .line 454
    :cond_a
    sget-object v14, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-virtual {v2, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 456
    :goto_4
    aget-object v14, v0, v13

    invoke-virtual {v14}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v14

    invoke-static {v14}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformBorderTypeToName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 457
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget-object v13, v0, v13

    invoke-virtual {v13}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v13

    float-to-double v3, v13

    invoke-direct {v14, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v6, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_5

    .line 459
    :cond_b
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 460
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 461
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-virtual {v6, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_c
    if-eqz v12, :cond_e

    if-eqz v8, :cond_d

    .line 467
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderColor:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    .line 469
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderColor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_6
    if-eqz v9, :cond_f

    .line 474
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderStyle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_7

    .line 476
    :cond_f
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderStyle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_7
    if-eqz v10, :cond_10

    .line 480
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderThickness:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_8

    .line 482
    :cond_10
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderThickness:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_11
    :goto_8
    return-void
.end method

.method private static applyCommonLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3

    const/4 v0, 0x6

    .line 166
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/Background;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/Background;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BackgroundColor:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/Background;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/layout/element/Cell;

    if-nez v0, :cond_1

    .line 175
    invoke-static {p0, p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyBorderAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 177
    :cond_1
    invoke-static {p0, p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyPaddingAttribute(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/16 v0, 0x15

    .line 179
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsTransparentColor(I)Lcom/itextpdf/layout/properties/TransparentColor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v0, :cond_2

    .line 181
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Color:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_2
    return-void
.end method

.method private static applyIllustrationLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6

    .line 328
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 329
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/16 v1, 0x4d

    .line 331
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    float-to-double v4, v1

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 335
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_0
    const/16 v1, 0x1b

    .line 338
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz p0, :cond_1

    .line 340
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    float-to-double v2, p0

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 342
    :cond_1
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    float-to-double v2, v0

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_1
    return-void
.end method

.method private static applyInlineLevelLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6

    const/16 v0, 0x48

    .line 294
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 296
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->BaselineShift:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v4, v0

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    const/16 v0, 0x4a

    .line 299
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v2, 0x18

    .line 301
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p0

    .line 302
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    const-class v3, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 304
    const-string v4, "Property {0} in percents is not supported"

    invoke-static {v4, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 308
    :cond_1
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 309
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    .line 310
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/itextpdf/layout/properties/Underline;

    if-eqz v4, :cond_2

    .line 312
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/Underline;

    goto :goto_0

    .line 313
    :cond_2
    instance-of v2, v0, Lcom/itextpdf/layout/properties/Underline;

    if-eqz v2, :cond_3

    .line 314
    check-cast v0, Lcom/itextpdf/layout/properties/Underline;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 317
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TextDecorationType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/properties/Underline;->getYPosition(F)F

    move-result v3

    cmpl-float v1, v3, v1

    if-lez v1, :cond_4

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LineThrough:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Underline:Lcom/itextpdf/kernel/pdf/PdfName;

    :goto_1
    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 318
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/Underline;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v1, :cond_5

    .line 319
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TextDecorationColor:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/Underline;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 322
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TextDecorationThickness:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/layout/properties/Underline;->getThickness(F)F

    move-result p0

    float-to-double v3, p0

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_6
    return-void
.end method

.method private static applyPaddingAttribute(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 12

    const/4 v0, 0x4

    .line 347
    new-array v1, v0, [Lcom/itextpdf/layout/properties/UnitValue;

    const/16 v2, 0x32

    .line 348
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0x31

    .line 349
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const/16 v5, 0x2f

    .line 350
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    const/16 v7, 0x30

    .line 351
    invoke-virtual {p0, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p0

    const/4 v9, 0x3

    aput-object p0, v1, v9

    .line 354
    aget-object p0, v1, v4

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result p0

    const-string v10, "Property {0} in percents is not supported"

    const-class v11, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;

    if-nez p0, :cond_0

    .line 355
    invoke-static {v11}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 357
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 356
    invoke-static {v10, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 359
    :cond_0
    aget-object p0, v1, v6

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result p0

    if-nez p0, :cond_1

    .line 360
    invoke-static {v11}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 361
    invoke-static {v10, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 364
    :cond_1
    aget-object p0, v1, v8

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result p0

    if-nez p0, :cond_2

    .line 365
    invoke-static {v11}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 367
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 366
    invoke-static {v10, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 369
    :cond_2
    aget-object p0, v1, v9

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result p0

    if-nez p0, :cond_3

    .line 370
    invoke-static {v11}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 372
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 371
    invoke-static {v10, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 375
    :cond_3
    aget-object p0, v1, v4

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    aget-object v2, v1, v6

    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    aget-object v3, v1, v8

    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    new-array v5, v0, [F

    aput p0, v5, v4

    aput v2, v5, v6

    aput v3, v5, v8

    aput v1, v5, v9

    .line 377
    aget p0, v5, v4

    aget v1, v5, v6

    cmpl-float v1, p0, v1

    if-nez v1, :cond_5

    aget v1, v5, v8

    cmpl-float v1, p0, v1

    if-nez v1, :cond_5

    aget v1, v5, v9

    cmpl-float v1, p0, v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_4

    .line 379
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget v0, v5, v4

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    .line 382
    :cond_5
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 385
    filled-new-array {v4, v6, v8, v9}, [I

    move-result-object v1

    :goto_0
    if-ge v4, v0, :cond_6

    .line 386
    aget v2, v1, v4

    .line 387
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget v2, v5, v2

    float-to-double v6, v2

    invoke-direct {v3, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz p0, :cond_7

    .line 393
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Padding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_7
    return-void
.end method

.method public static getLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;
    .locals 5

    .line 88
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->resolveMappingToStandard(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 93
    :cond_0
    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AccessibleTypes;->identifyType(Ljava/lang/String;)I

    move-result v1

    .line 95
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 96
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Layout:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 100
    invoke-static {p0, v2}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyCommonLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 101
    sget v3, Lcom/itextpdf/layout/renderer/AccessibleTypes;->BlockLevel:I

    if-ne v1, v3, :cond_1

    .line 102
    invoke-static {p1, p0, v2}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyBlockLevelLayoutAttributes(Ljava/lang/String;Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 104
    :cond_1
    sget p1, Lcom/itextpdf/layout/renderer/AccessibleTypes;->InlineLevel:I

    if-ne v1, p1, :cond_2

    .line 105
    invoke-static {p0, v2}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyInlineLevelLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 108
    :cond_2
    sget p1, Lcom/itextpdf/layout/renderer/AccessibleTypes;->Illustration:I

    if-ne v1, p1, :cond_3

    .line 109
    invoke-static {p0, v2}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyIllustrationLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 112
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_4

    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_4
    return-object v0
.end method

.method public static getListAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;
    .locals 4

    .line 117
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->resolveMappingToStandard(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 118
    const-string v1, "L"

    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 123
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->List:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/16 v2, 0x25

    .line 125
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    .line 127
    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->isTagStructurePdf2(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Z

    move-result p1

    .line 128
    instance-of v2, p0, Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eqz v2, :cond_1

    .line 129
    check-cast p0, Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 130
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ListNumbering:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p0, p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformNumberingTypeToName(Lcom/itextpdf/layout/properties/ListNumberingType;Z)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 132
    instance-of p0, p0, Lcom/itextpdf/layout/properties/IListSymbolFactory;

    if-eqz p0, :cond_2

    .line 133
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->ListNumbering:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Ordered:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 135
    :cond_2
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->ListNumbering:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Unordered:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 139
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_4

    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static getTableAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;
    .locals 5

    .line 143
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->resolveMappingToStandard(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 144
    const-string v1, "TD"

    .line 145
    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TH"

    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 150
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Table:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 152
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/layout/element/Cell;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/element/Cell;

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 155
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->RowSpan:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 158
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColSpan:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result p0

    invoke-direct {v3, p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 162
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result p0

    if-le p0, v2, :cond_3

    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static isTagStructurePdf2(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 494
    const-string v0, "http://iso.org/pdf2/ssn"

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static resolveMappingToStandard(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v1

    .line 490
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getRole()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->resolveMappingToStandardOrDomainSpecificRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object p0

    return-object p0
.end method

.method private static transformBlockAlignToName(Lcom/itextpdf/layout/properties/HorizontalAlignment;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 526
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier$1;->$SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment:[I

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/HorizontalAlignment;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 542
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Before:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 537
    :cond_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->After:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 534
    :cond_1
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Middle:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 529
    :cond_2
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Before:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0
.end method

.method private static transformBorderTypeToName(I)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 567
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Solid:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 565
    :pswitch_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Ridge:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 563
    :pswitch_1
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Outset:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 561
    :pswitch_2
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Inset:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 559
    :pswitch_3
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Groove:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 555
    :pswitch_4
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Dotted:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 557
    :pswitch_5
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Double:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 553
    :pswitch_6
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Dotted:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 551
    :pswitch_7
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 549
    :pswitch_8
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Solid:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    nop

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
    .end packed-switch
.end method

.method private static transformNumberingTypeToName(Lcom/itextpdf/layout/properties/ListNumberingType;Z)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 573
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier$1;->$SwitchMap$com$itextpdf$layout$properties$ListNumberingType:[I

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/ListNumberingType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    if-eqz p1, :cond_0

    .line 589
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Ordered:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 586
    :pswitch_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->LowerAlpha:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 583
    :pswitch_1
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->UpperAlpha:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 580
    :pswitch_2
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->LowerRoman:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 578
    :pswitch_3
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->UpperRoman:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 576
    :pswitch_4
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Decimal:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 591
    :cond_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static transformTextAlignmentValueToName(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 500
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier$1;->$SwitchMap$com$itextpdf$layout$properties$TextAlignment:[I

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/TextAlignment;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 519
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Start:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 517
    :cond_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Justify:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 511
    :cond_1
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->End:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 508
    :cond_2
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Center:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 503
    :cond_3
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Start:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0
.end method

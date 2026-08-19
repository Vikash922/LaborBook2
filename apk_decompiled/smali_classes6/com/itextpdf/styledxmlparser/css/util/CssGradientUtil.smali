.class public final Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;
.super Ljava/lang/Object;
.source "CssGradientUtil.java"


# static fields
.field private static final LINEAR_GRADIENT_FUNCTION_SUFFIX:Ljava/lang/String; = "linear-gradient("

.field private static final REPEATING_LINEAR_GRADIENT_FUNCTION_SUFFIX:Ljava/lang/String; = "repeating-linear-gradient("


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addStopColors(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Ljava/util/List;IFF)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IFF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 161
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v6, p2

    const/4 v7, 0x0

    :goto_0
    if-gt v6, v3, :cond_c

    move-object/from16 v8, p1

    .line 163
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 164
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v11, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-direct {v11, v9}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 167
    :goto_1
    invoke-virtual {v11}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 168
    invoke-virtual {v12}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const-string v12, "Invalid color stop value: {0}"

    if-nez v11, :cond_b

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x3

    if-gt v11, v13, :cond_b

    const/4 v11, 0x0

    .line 175
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isColorProperty(Ljava/lang/String;)Z

    move-result v13

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x2

    if-eqz v13, :cond_6

    .line 176
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRgbaColor(Ljava/lang/String;)[F

    move-result-object v11

    .line 177
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v4, :cond_3

    move/from16 v13, p2

    if-ne v6, v13, :cond_1

    .line 178
    new-instance v7, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v9, 0x0

    invoke-direct {v7, v15, v9}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    goto :goto_2

    :cond_1
    if-ne v6, v3, :cond_2

    new-instance v7, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-direct {v7, v15, v14}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 183
    :goto_2
    invoke-static {v11, v7}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->createStopColor([FLcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    move-result-object v7

    .line 184
    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->addColorStop(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    goto/16 :goto_4

    :cond_3
    move/from16 v13, p2

    move v14, v4

    .line 186
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_8

    .line 187
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumber(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 194
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 199
    invoke-static {v11, v7}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->createStopColor([FLcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    move-result-object v7

    .line 200
    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->addColorStop(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 196
    :cond_4
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 197
    invoke-static {v12, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_5
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 191
    invoke-static {v12, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move/from16 v13, p2

    .line 205
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_a

    if-eqz v7, :cond_a

    .line 207
    invoke-virtual {v7}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v5

    sget-object v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v5, v4, :cond_a

    if-eq v6, v3, :cond_a

    .line 214
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 219
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getUnitType()I

    move-result v5

    if-ne v5, v15, :cond_7

    .line 220
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    div-float/2addr v4, v14

    float-to-double v4, v4

    sget-object v9, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {v7, v4, v5, v9}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    goto :goto_4

    .line 222
    :cond_7
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    float-to-double v4, v4

    sget-object v9, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->ABSOLUTE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {v7, v4, v5, v9}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 216
    :cond_9
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 217
    invoke-static {v12, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_a
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 212
    invoke-static {v12, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_b
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 173
    invoke-static {v12, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private static createStopColor([FLcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .locals 3

    if-nez p1, :cond_0

    .line 284
    sget-object p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->AUTO:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    const-wide/16 v0, 0x0

    goto :goto_1

    .line 286
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getUnitType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 287
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->ABSOLUTE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    .line 288
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p1

    goto :goto_0

    .line 290
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    .line 291
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    :goto_0
    float-to-double v1, p1

    move-object p1, v0

    move-wide v0, v1

    .line 295
    :goto_1
    new-instance v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>([FDLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    return-object v2
.end method

.method public static isCssLinearGradientValue(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 68
    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "linear-gradient("

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "repeating-linear-gradient("

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static parseCssLinearGradient(Ljava/lang/String;FF)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;
    .locals 7

    .line 87
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->isCssLinearGradientValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 91
    const-string v0, "linear-gradient("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    .line 92
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "repeating-linear-gradient("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    .line 96
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v3, v4

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_7

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    new-instance v4, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-direct {v4, v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 106
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getType()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->COMMA:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    if-ne v5, v6, :cond_3

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 113
    :cond_3
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 123
    invoke-static {v1, v3, p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->parseCssLinearGradient(Ljava/util/List;ZFF)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;

    move-result-object p0

    return-object p0

    .line 120
    :cond_6
    new-instance p1, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    const-string p2, "Invalid gradient function arguments list: {0}"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-object v1
.end method

.method private static parseCssLinearGradient(Ljava/util/List;ZFF)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZFF)",
            "Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;

    invoke-direct {v0}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 133
    sget-object p1, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REPEAT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->PAD:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    .line 134
    :goto_0
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->setSpreadMethod(Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    const/4 p1, 0x0

    .line 137
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isAngleValue(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 139
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAngle(Ljava/lang/String;)F

    move-result p1

    float-to-double v1, p1

    neg-double v1, v1

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->setGradientDirectionAsCentralRotationAngle(D)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;

    :goto_1
    move p1, v3

    goto :goto_2

    .line 143
    :cond_1
    const-string v2, "to "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->parseDirection(Ljava/lang/String;)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    move-result-object p1

    .line 145
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->setGradientDirectionAsStrategy(Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;

    goto :goto_1

    .line 149
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_BOTTOM:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->setGradientDirectionAsStrategy(Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;

    .line 153
    :goto_2
    invoke-static {v0, p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->addStopColors(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Ljava/util/List;IFF)V

    return-object v0
.end method

.method private static parseDirection(Ljava/lang/String;)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;
    .locals 10

    .line 229
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    array-length v1, v0

    const/4 v2, 0x2

    const-string v3, "Invalid direction string: {0}"

    if-lt v1, v2, :cond_d

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v2

    .line 238
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_4

    .line 239
    const-string v8, "top"

    aget-object v9, v0, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :cond_0
    const-string v8, "bottom"

    aget-object v9, v0, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 243
    :cond_1
    const-string v8, "left"

    aget-object v9, v0, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 245
    :cond_2
    const-string v8, "right"

    aget-object v9, v0, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 248
    :cond_3
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 249
    invoke-static {v3, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ne v1, v2, :cond_7

    if-nez v4, :cond_7

    if-ne v5, v2, :cond_5

    if-nez v6, :cond_5

    .line 255
    sget-object p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_TOP_LEFT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object p0

    :cond_5
    if-nez v5, :cond_6

    if-ne v6, v2, :cond_6

    .line 257
    sget-object p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_TOP_RIGHT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object p0

    :cond_6
    if-nez v5, :cond_c

    if-nez v6, :cond_c

    .line 259
    sget-object p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_TOP:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object p0

    :cond_7
    if-nez v1, :cond_a

    if-ne v4, v2, :cond_a

    if-ne v5, v2, :cond_8

    if-nez v6, :cond_8

    .line 263
    sget-object p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_BOTTOM_LEFT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object p0

    :cond_8
    if-nez v5, :cond_9

    if-ne v6, v2, :cond_9

    .line 265
    sget-object p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_BOTTOM_RIGHT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object p0

    :cond_9
    if-nez v5, :cond_c

    if-nez v6, :cond_c

    .line 267
    sget-object p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_BOTTOM:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object p0

    :cond_a
    if-nez v1, :cond_c

    if-nez v4, :cond_c

    if-ne v5, v2, :cond_b

    if-nez v6, :cond_b

    .line 271
    sget-object p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_LEFT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object p0

    :cond_b
    if-nez v5, :cond_c

    if-ne v6, v2, :cond_c

    .line 273
    sget-object p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_RIGHT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object p0

    .line 276
    :cond_c
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 277
    invoke-static {v3, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_d
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 232
    invoke-static {v3, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

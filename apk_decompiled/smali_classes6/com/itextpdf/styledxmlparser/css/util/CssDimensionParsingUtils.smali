.class public final Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;
.super Ljava/lang/Object;
.source "CssDimensionParsingUtils.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determinePositionBetweenValueAndUnit(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 460
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 461
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    .line 462
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    .line 463
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    .line 464
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 465
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->isExponentNotation(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isExponentNotation(Ljava/lang/String;I)Z
    .locals 3

    .line 479
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 481
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 483
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseAbsoluteFontSize(Ljava/lang/String;)F
    .locals 1

    .line 335
    const-string v0, "px"

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static parseAbsoluteFontSize(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1

    if-eqz p0, :cond_0

    .line 313
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->FONT_ABSOLUTE_SIZE_KEYWORDS_VALUES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->FONT_ABSOLUTE_SIZE_KEYWORDS_VALUES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 320
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parseAbsoluteLength(Ljava/lang/String;)F
    .locals 1

    .line 246
    const-string v0, "px"

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static parseAbsoluteLength(Ljava/lang/String;Ljava/lang/String;)F
    .locals 9

    .line 186
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    .line 190
    const-string p0, "null"

    .line 192
    :cond_0
    new-instance p1, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    const-string v0, "The passed value (@{0}) is not a number"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 200
    const-string v0, "pt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_9

    .line 204
    :cond_2
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-wide/high16 v5, 0x4052000000000000L    # 72.0

    if-nez v4, :cond_d

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    .line 209
    :cond_3
    const-string v0, "cm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-wide v7, 0x400451eb851eb852L    # 2.54

    if-nez v4, :cond_f

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_8

    .line 214
    :cond_4
    const-string v0, "q"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_7

    .line 219
    :cond_5
    const-string v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    .line 224
    :cond_6
    const-string v0, "pc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 229
    :cond_7
    const-string v0, "px"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 234
    :cond_8
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->logger:Lorg/slf4j/Logger;

    .line 235
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_0

    :cond_9
    move-object p1, p0

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 234
    const-string p1, "Unknown absolute metric length parsed \"{0}\"."

    invoke-static {p1, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_1
    double-to-float p0, v1

    return p0

    :cond_a
    :goto_2
    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    :goto_3
    mul-double/2addr v1, p0

    goto :goto_1

    :cond_b
    :goto_4
    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    goto :goto_3

    :cond_c
    :goto_5
    const-wide p0, 0x4039666666666666L    # 25.4

    div-double/2addr v1, p0

    :cond_d
    :goto_6
    mul-double/2addr v1, v5

    goto :goto_1

    :cond_e
    :goto_7
    div-double/2addr v1, v7

    mul-double/2addr v1, v5

    const-wide/high16 p0, 0x4044000000000000L    # 40.0

    div-double/2addr v1, p0

    goto :goto_1

    :cond_f
    :goto_8
    div-double/2addr v1, v7

    goto :goto_6

    :cond_10
    :goto_9
    double-to-float p0, v1

    return p0
.end method

.method public static parseAngle(Ljava/lang/String;)F
    .locals 1

    .line 154
    const-string v0, "deg"

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAngle(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static parseAngle(Ljava/lang/String;Ljava/lang/String;)F
    .locals 5

    .line 113
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    .line 117
    const-string p0, "null"

    .line 119
    :cond_0
    new-instance p1, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    const-string v0, "The passed value (@{0}) is not a number"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 126
    const-string v0, "deg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x40490fdb    # (float)Math.PI

    if-nez v2, :cond_8

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 131
    :cond_2
    const-string v0, "grad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 136
    :cond_3
    const-string v0, "rad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 141
    :cond_4
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->logger:Lorg/slf4j/Logger;

    .line 142
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move-object p1, p0

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 141
    const-string p1, "Unknown metric angle parsed: \"{0}\"."

    invoke-static {p1, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return v1

    :cond_7
    :goto_2
    mul-float/2addr v1, v3

    const/high16 p0, 0x43480000    # 200.0f

    div-float/2addr v1, p0

    return v1

    :cond_8
    :goto_3
    mul-float/2addr v1, v3

    const/high16 p0, 0x43340000    # 180.0f

    div-float/2addr v1, p0

    return v1
.end method

.method public static parseAspectRatio(Ljava/lang/String;)[I
    .locals 2

    const/16 v0, 0x2f

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 166
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 168
    filled-new-array {v1, p0}, [I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseColor(Ljava/lang/String;)Lcom/itextpdf/layout/properties/TransparentColor;
    .locals 10

    .line 407
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 409
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->getCMYKArray(Ljava/lang/String;)[F

    move-result-object v0

    const/4 p0, 0x0

    goto :goto_0

    .line 411
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    aget v7, v0, v5

    aget v8, v0, v4

    aget v9, v0, v3

    invoke-direct {p0, v7, v8, v9}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    .line 412
    array-length v7, v0

    if-ne v7, v2, :cond_1

    .line 413
    aget v6, v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 418
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {p0, v5, v5, v5}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    .line 420
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    aget v5, v0, v5

    aget v4, v0, v4

    aget v3, v0, v3

    aget v1, v0, v1

    invoke-direct {p0, v5, v4, v3, v1}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    .line 421
    array-length v1, v0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 422
    aget v6, v0, v2

    .line 425
    :cond_3
    :goto_1
    new-instance v0, Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-direct {v0, p0, v6}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-object v0
.end method

.method public static parseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 98
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static parseFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 81
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static parseInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 64
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/properties/UnitValue;
    .locals 2

    .line 289
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 291
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance p1, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    return-object p1

    .line 293
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRemValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    new-instance p1, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-static {p0, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result p0

    invoke-direct {p1, v1, p0}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    return-object p1

    .line 295
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 296
    new-instance p2, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result p0

    invoke-direct {p2, v1, p0}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    return-object p2

    :cond_3
    const/4 p0, 0x0

    return-object p0

    .line 290
    :cond_4
    :goto_0
    new-instance p1, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result p0

    invoke-direct {p1, v1, p0}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    return-object p1
.end method

.method public static parseRelativeFontSize(Ljava/lang/String;F)F
    .locals 3

    .line 346
    const-string v0, "smaller"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v1, 0x3ff3333333333333L    # 1.2

    if-eqz v0, :cond_0

    float-to-double p0, p1

    div-double/2addr p0, v1

    :goto_0
    double-to-float p0, p0

    return p0

    .line 348
    :cond_0
    const-string v0, "larger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    float-to-double p0, p1

    mul-double/2addr p0, v1

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static parseRelativeValue(Ljava/lang/String;F)F
    .locals 3

    .line 258
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 265
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    float-to-double p0, p1

    mul-double/2addr p0, v1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    div-double v1, p0, v0

    goto :goto_2

    .line 267
    :cond_1
    const-string v0, "em"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 269
    :cond_2
    const-string v0, "ex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    float-to-double p0, p1

    mul-double/2addr p0, v1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_3
    :goto_1
    float-to-double p0, p1

    mul-double/2addr v1, p0

    :cond_4
    :goto_2
    double-to-float p0, v1

    return p0
.end method

.method public static parseResolution(Ljava/lang/String;)F
    .locals 5

    .line 381
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 385
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 386
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 387
    const-string v0, "dpcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v3, 0x400451eb851eb852L    # 2.54

    :goto_0
    mul-double/2addr v1, v3

    goto :goto_1

    .line 389
    :cond_1
    const-string v0, "dppx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v3, 0x4058000000000000L    # 96.0

    goto :goto_0

    .line 391
    :cond_2
    const-string v0, "dpi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_1
    double-to-float p0, v1

    return p0

    .line 392
    :cond_3
    new-instance p0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    const-string v0, "Resolution value unit should be either dpi, dppx or dpcm!"

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseRgbaColor(Ljava/lang/String;)[F
    .locals 2

    .line 436
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object v0

    if-nez v0, :cond_0

    .line 438
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->logger:Lorg/slf4j/Logger;

    const-string v1, "Color \"{0}\" was not parsed. It has invalid value. Defaulting to black color."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 439
    new-array v0, p0, [F

    const/4 p0, 0x0

    const/4 v1, 0x0

    aput v1, v0, p0

    const/4 p0, 0x1

    aput v1, v0, p0

    const/4 p0, 0x2

    aput v1, v0, p0

    const/4 p0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p0

    :cond_0
    return-object v0
.end method

.method public static parseSpecificCornerBorderRadius(Ljava/lang/String;FF)[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 366
    new-array v1, v0, [Lcom/itextpdf/layout/properties/UnitValue;

    .line 367
    const-string v2, "\\s+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 368
    aget-object v3, p0, v2

    invoke-static {v3, p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v3

    aput-object v3, v1, v2

    .line 369
    array-length v2, p0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    aget-object p0, p0, v4

    invoke-static {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v3

    :cond_1
    aput-object v3, v1, v4

    return-object v1
.end method

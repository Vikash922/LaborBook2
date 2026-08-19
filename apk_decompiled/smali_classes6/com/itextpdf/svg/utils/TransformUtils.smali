.class public final Lcom/itextpdf/svg/utils/TransformUtils;
.super Ljava/lang/Object;
.source "TransformUtils.java"


# static fields
.field private static final MATRIX:Ljava/lang/String; = "MATRIX"

.field private static final ROTATE:Ljava/lang/String; = "ROTATE"

.field private static final SCALE:Ljava/lang/String; = "SCALE"

.field private static final SKEWX:Ljava/lang/String; = "SKEWX"

.field private static final SKEWY:Ljava/lang/String; = "SKEWY"

.field private static final TRANSLATE:Ljava/lang/String; = "TRANSLATE"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createMatrixTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 306
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    .line 311
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    .line 312
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x3

    .line 313
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x4

    .line 314
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x5

    .line 315
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 317
    new-instance v19, Lcom/itextpdf/kernel/geom/AffineTransform;

    float-to-double v7, v1

    float-to-double v9, v2

    float-to-double v11, v3

    float-to-double v13, v4

    float-to-double v1, v5

    float-to-double v3, v0

    move-object/from16 v6, v19

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-direct/range {v6 .. v18}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v19

    .line 307
    :cond_0
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Transformation doesn\'t contain the right number of values."

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createRotationTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 250
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "Transformation doesn\'t contain the right number of values."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 254
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 256
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 257
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x2

    .line 258
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result p0

    float-to-double v7, v0

    float-to-double v9, p0

    .line 259
    invoke-static/range {v5 .. v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(DDD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    return-object p0

    .line 262
    :cond_2
    invoke-static {v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    return-object p0
.end method

.method private static createScaleTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 272
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 276
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v0

    .line 277
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    float-to-double v0, v0

    float-to-double v2, p0

    .line 279
    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    return-object p0

    .line 273
    :cond_1
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "Transformation doesn\'t contain the right number of values."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createSkewXTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 233
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 237
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    .line 240
    new-instance p0, Lcom/itextpdf/kernel/geom/AffineTransform;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-object v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object p0

    .line 234
    :cond_0
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "Transformation doesn\'t contain the right number of values."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createSkewYTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 216
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 220
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    .line 223
    new-instance p0, Lcom/itextpdf/kernel/geom/AffineTransform;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-object v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object p0

    .line 217
    :cond_0
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "Transformation doesn\'t contain the right number of values."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createTranslateTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 289
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 293
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 294
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    float-to-double v0, v0

    float-to-double v2, p0

    .line 296
    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    return-object p0

    .line 290
    :cond_1
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "Transformation doesn\'t contain the right number of values."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getNameFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 327
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 333
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 330
    :cond_0
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "Transformation declaration is not formed correctly."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x28

    .line 343
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 345
    invoke-static {p0}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseTransform(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 2

    if-eqz p0, :cond_3

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 144
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->splitString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    invoke-static {v1}, Lcom/itextpdf/svg/utils/TransformUtils;->transformationStringToMatrix(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    goto :goto_0

    :cond_1
    return-object v0

    .line 139
    :cond_2
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "The transformation value is empty."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_3
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "The transformation value is null."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static splitString(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    new-instance v1, Ljava/util/StringTokenizer;

    const/4 v2, 0x0

    const-string v3, ")"

    invoke-direct {v1, p0, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 169
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static transformationStringToMatrix(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 3

    .line 186
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getNameFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "SKEWY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "SKEWX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "SCALE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "TRANSLATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "ROTATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "MATRIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 205
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "Unsupported type of transformation."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :pswitch_0
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->createSkewYTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    return-object p0

    .line 201
    :pswitch_1
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->createSkewXTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    return-object p0

    .line 197
    :pswitch_2
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->createScaleTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    return-object p0

    .line 195
    :pswitch_3
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->createTranslateTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    return-object p0

    .line 199
    :pswitch_4
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->createRotationTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    return-object p0

    .line 193
    :pswitch_5
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->createMatrixTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    return-object p0

    .line 189
    :cond_6
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "Transformation declaration is not formed correctly."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x78df743f -> :sswitch_5
        -0x6f922ea5 -> :sswitch_4
        -0x1b26fed2 -> :sswitch_3
        0x4b1112a -> :sswitch_2
        0x4b4c48e -> :sswitch_1
        0x4b4c48f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

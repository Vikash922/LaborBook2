.class public Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;
.super Ljava/lang/Object;
.source "SvgPathShapeFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPathShape(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/path/IPathShape;
    .locals 1

    .line 64
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;->getMapping()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/svg/renderers/path/IPathShape;

    return-object p0
.end method

.method public static getArgumentCount(Ljava/lang/String;)I
    .locals 2

    .line 74
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;->getArgumentCount()Ljava/util/Map;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

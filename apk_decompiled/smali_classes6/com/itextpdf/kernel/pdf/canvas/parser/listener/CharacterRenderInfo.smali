.class public Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;
.super Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;
.source "CharacterRenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;
    }
.end annotation


# instance fields
.field private boundingBox:Lcom/itextpdf/kernel/geom/Rectangle;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;)V
    .locals 9

    if-nez p1, :cond_0

    .line 108
    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->getLocation(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;)V

    if-eqz p1, :cond_2

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getDescentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getDescentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    float-to-double v7, v2

    invoke-direct {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getDescentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getDescentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    float-to-double v7, v2

    invoke-direct {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getAscentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getAscentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    float-to-double v7, v2

    invoke-direct {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getAscentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getAscentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p1

    float-to-double v4, p1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->boundingBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-void

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TextRenderInfo argument is not nullable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getLocation(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getBaseline()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationDefaultImp;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v2

    .line 129
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getSingleSpaceWidth()F

    move-result p0

    invoke-direct {v1, v2, v0, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationDefaultImp;-><init>(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;F)V

    return-object v1
.end method

.method static mapString(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 74
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 75
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;

    if-nez v2, :cond_0

    .line 77
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->putCharsWithIndex(Ljava/lang/CharSequence;ILjava/util/Map;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->sameLine(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->isAtWordBoundary(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x20

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->putCharsWithIndex(Ljava/lang/CharSequence;ILjava/util/Map;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    const/16 v2, 0xa

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->putCharsWithIndex(Ljava/lang/CharSequence;ILjava/util/Map;Ljava/lang/StringBuilder;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    .line 93
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;->indexMap:Ljava/util/Map;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;->text:Ljava/lang/String;

    return-object p0
.end method

.method private static putCharsWithIndex(Ljava/lang/CharSequence;ILjava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 102
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBoundingBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->boundingBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

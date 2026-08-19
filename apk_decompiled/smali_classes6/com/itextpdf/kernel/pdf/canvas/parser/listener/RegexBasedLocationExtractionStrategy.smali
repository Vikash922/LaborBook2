.class public Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;
.super Ljava/lang/Object;
.source "RegexBasedLocationExtractionStrategy.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ILocationExtractionStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$PdfTextLocationComparator;
    }
.end annotation


# static fields
.field private static final EPS:F = 1.0E-4f


# instance fields
.field private parseResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->parseResult:Ljava/util/List;

    .line 70
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->parseResult:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static getEndIndex(Ljava/util/Map;I)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 201
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static getStartIndex(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 194
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private removeDuplicates(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 115
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;

    .line 116
    invoke-interface {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->equalsWithEpsilon(Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V
    .locals 0

    .line 126
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    if-eqz p2, :cond_0

    .line 127
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->parseResult:Ljava/util/List;

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->toCRI(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public getResultantLocations()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->parseResult:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationBasedComparator;

    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultTextChunkLocationComparator;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultTextChunkLocationComparator;-><init>()V

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationBasedComparator;-><init>(Ljava/util/Comparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->parseResult:Ljava/util/List;

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->mapString(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->pattern:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 88
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;->indexMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;->text:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->getStartIndex(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 90
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo$StringConversionInfo;->indexMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->getEndIndex(Ljava/util/Map;I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 92
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->parseResult:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v5, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->toRectangles(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 93
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$PdfTextLocationComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$PdfTextLocationComparator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->removeDuplicates(Ljava/util/List;)V

    return-object v0
.end method

.method public getSupportedEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected toCRI(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getCharacterRenderInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    .line 150
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected toRectangles(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    move v3, v2

    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 176
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->sameLine(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    :cond_1
    invoke-interface {p1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;

    const/4 v6, 0x2

    .line 182
    new-array v6, v6, [Lcom/itextpdf/kernel/geom/Rectangle;

    aput-object v4, v6, v1

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/CharacterRenderInfo;->getBoundingBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-static {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    goto :goto_2

    .line 184
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

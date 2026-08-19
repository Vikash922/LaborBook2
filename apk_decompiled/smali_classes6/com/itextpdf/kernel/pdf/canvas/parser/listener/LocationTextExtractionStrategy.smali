.class public Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;
.super Ljava/lang/Object;
.source "LocationTextExtractionStrategy.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategyImpl;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;
    }
.end annotation


# static fields
.field private static DUMP_STATE:Z = false


# instance fields
.field private lastTextRenderInfo:Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

.field private final locationalResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;",
            ">;"
        }
    .end annotation
.end field

.field private rightToLeftRunDirection:Z

.field private final tclStrat:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;

.field private useActualText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 85
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategyImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategyImpl;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$1;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->useActualText:Z

    .line 77
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->rightToLeftRunDirection:Z

    .line 96
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->tclStrat:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;

    return-void
.end method

.method private dumpState()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    .line 253
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->printDiagnostics()V

    .line 254
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private endsWithSpace(Ljava/lang/String;)Z
    .locals 2

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private findLastTagWithActualText(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;"
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 261
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getActualText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private sortWithMarks(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;",
            ">;)V"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 273
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 274
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v4

    .line 275
    invoke-interface {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->getStartLocation()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v5

    invoke-interface {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->getEndLocation()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/geom/Vector;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v2

    .line 277
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    if-eq v3, v5, :cond_2

    .line 279
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v6

    .line 280
    invoke-interface {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->getStartLocation()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v7

    invoke-interface {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->getEndLocation()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Vector;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationDefaultImp;->containsMark(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 281
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;

    if-nez v4, :cond_0

    .line 283
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$1;)V

    .line 284
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-ge v3, v5, :cond_1

    .line 288
    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;->preceding:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 290
    :cond_1
    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;->succeeding:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 300
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 303
    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 307
    :cond_5
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationBasedComparator;

    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultTextChunkLocationComparator;

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->rightToLeftRunDirection:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultTextChunkLocationComparator;-><init>(Z)V

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationBasedComparator;-><init>(Ljava/util/Comparator;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 309
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 311
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    .line 312
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;

    if-eqz v4, :cond_8

    .line 314
    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->rightToLeftRunDirection:Z

    if-nez v5, :cond_7

    move v5, v2

    .line 315
    :goto_3
    iget-object v6, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;->preceding:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 316
    iget-object v6, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;->preceding:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 319
    :cond_7
    iget-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;->succeeding:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_4
    if-ltz v5, :cond_8

    .line 320
    iget-object v6, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;->succeeding:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 324
    :cond_8
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_6

    .line 326
    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->rightToLeftRunDirection:Z

    if-nez v3, :cond_9

    move v3, v2

    .line 327
    :goto_5
    iget-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;->succeeding:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 328
    iget-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;->succeeding:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 331
    :cond_9
    iget-object v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;->preceding:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_6
    if-ltz v3, :cond_6

    .line 332
    iget-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$TextChunkMarks;->preceding:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_a
    return-void
.end method

.method private startsWithSpace(Ljava/lang/String;)Z
    .locals 2

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V
    .locals 9

    .line 137
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 138
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    .line 139
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getBaseline()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object p2

    .line 140
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getRise()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getRise()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FF)V

    .line 143
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/LineSegment;->transformBy(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object p2

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->useActualText:Z

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->lastTextRenderInfo:Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getCanvasTagHierarchy()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->findLastTagWithActualText(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getCanvasTagHierarchy()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->findLastTagWithActualText(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    .line 153
    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v3

    invoke-interface {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->getStartLocation()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 154
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v5

    invoke-interface {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->getStartLocation()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v5

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 155
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v6

    invoke-interface {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->getStartLocation()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v6

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-direct {v1, v3, v5, v6}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 156
    new-instance v3, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v5

    invoke-interface {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->getEndLocation()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v5

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 157
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v5

    invoke-interface {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->getEndLocation()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v5

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 158
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v6

    invoke-interface {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->getEndLocation()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v6

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-direct {v3, v4, v5, p2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 159
    new-instance p2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->tclStrat:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;

    new-instance v5, Lcom/itextpdf/kernel/geom/LineSegment;

    invoke-direct {v5, v1, v3}, Lcom/itextpdf/kernel/geom/LineSegment;-><init>(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)V

    invoke-interface {v4, p1, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;->createLocation(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;Lcom/itextpdf/kernel/geom/LineSegment;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;)V

    .line 161
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 163
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getActualText()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->tclStrat:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;

    .line 165
    invoke-interface {v2, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;->createLocation(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;Lcom/itextpdf/kernel/geom/LineSegment;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;)V

    .line 166
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->tclStrat:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;

    invoke-interface {v2, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy$ITextChunkLocationStrategy;->createLocation(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;Lcom/itextpdf/kernel/geom/LineSegment;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;)V

    .line 170
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_2
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->lastTextRenderInfo:Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    :cond_5
    return-void
.end method

.method public getResultantText()Ljava/lang/String;
    .locals 5

    .line 184
    sget-boolean v0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->DUMP_STATE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->dumpState()V

    .line 186
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->sortWithMarks(Ljava/util/List;)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    if-nez v2, :cond_1

    .line 193
    iget-object v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->sameLine(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 197
    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->isChunkAtWordBoundary(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->text:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->startsWithSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->text:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->endsWithSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x20

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    :cond_2
    iget-object v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v2, 0xa

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    iget-object v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move-object v2, v3

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

.method protected isChunkAtWordBoundary(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;)Z
    .locals 0

    .line 225
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->getLocation()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;->isAtWordBoundary(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;)Z

    move-result p1

    return p1
.end method

.method public isUseActualText()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->useActualText:Z

    return v0
.end method

.method public setRightToLeftRunDirection(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->rightToLeftRunDirection:Z

    return-object p0
.end method

.method public setUseActualText(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;->useActualText:Z

    return-object p0
.end method

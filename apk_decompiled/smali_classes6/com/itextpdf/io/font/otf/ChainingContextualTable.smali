.class public abstract Lcom/itextpdf/io/font/otf/ChainingContextualTable;
.super Lcom/itextpdf/io/font/otf/ContextualTable;
.source "ChainingContextualTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/itextpdf/io/font/otf/ContextualRule;",
        ">",
        "Lcom/itextpdf/io/font/otf/ContextualTable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/font/otf/ContextualTable;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    return-void
.end method


# virtual methods
.method protected checkIfBacktrackContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualRule;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/otf/GlyphLine;",
            "TT;)Z"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v0}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 88
    iput-object p1, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 89
    iget p1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput p1, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    const/4 p1, 0x0

    move v1, p1

    .line 90
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/ContextualRule;->getBacktrackContextLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/ChainingContextualTable;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, p0, Lcom/itextpdf/io/font/otf/ChainingContextualTable;->lookupFlag:I

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->previousGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 92
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Lcom/itextpdf/io/font/otf/ContextualRule;->isGlyphMatchesBacktrack(II)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected checkIfLookaheadContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualRule;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/otf/GlyphLine;",
            "TT;I)Z"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v0}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 68
    iput-object p1, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 69
    iput p3, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    const/4 p1, 0x0

    move p3, p1

    .line 70
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/ContextualRule;->getLookaheadContextLength()I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/ChainingContextualTable;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v2, p0, Lcom/itextpdf/io/font/otf/ChainingContextualTable;->lookupFlag:I

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->nextGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 72
    iget-object v1, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    invoke-virtual {p2, v1, p3}, Lcom/itextpdf/io/font/otf/ContextualRule;->isGlyphMatchesLookahead(II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualRule;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/otf/GlyphLine;",
            ")TT;"
        }
    .end annotation

    .line 35
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    .line 39
    :cond_0
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/otf/ChainingContextualTable;->getSetOfRulesForStartGlyph(I)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/otf/ContextualRule;

    .line 42
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/io/font/otf/ChainingContextualTable;->checkIfContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualRule;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 45
    invoke-virtual {p0, p1, v1, v3}, Lcom/itextpdf/io/font/otf/ChainingContextualTable;->checkIfLookaheadContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualRule;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/io/font/otf/ChainingContextualTable;->checkIfBacktrackContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualRule;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    add-int/lit8 v3, v3, 0x1

    .line 49
    iput v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    return-object v1

    :cond_2
    return-object v2
.end method

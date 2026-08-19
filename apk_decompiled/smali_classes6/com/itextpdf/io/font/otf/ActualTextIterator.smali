.class public Lcom/itextpdf/io/font/otf/ActualTextIterator;
.super Ljava/lang/Object;
.source "ActualTextIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;",
        ">;"
    }
.end annotation


# instance fields
.field private glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

.field private pos:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 56
    iget p1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iput p1, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->pos:I

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/font/otf/GlyphLine;II)V
    .locals 2

    .line 60
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget-object p1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;Ljava/util/List;II)V

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    return-void
.end method

.method private glyphLinePartNeedsActualText(Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;)Z
    .locals 5

    .line 118
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->start:I

    :goto_0
    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    if-ge v2, v3, :cond_2

    .line 124
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/font/otf/Glyph;

    .line 125
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_1
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private nextGlyphLinePart(I)Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return-object v1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    move v2, p1

    .line 111
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-instance v3, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    :cond_2
    invoke-direct {v3, p1, v2, v1}, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;-><init>(IILjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 67
    iget v0, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->pos:I

    iget-object v1, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;

    iget v2, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->pos:I

    iget-object v3, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-direct {v0, v2, v3, v1}, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;-><init>(IILjava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v1, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->pos:I

    return-object v0

    .line 77
    :cond_0
    iget v0, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->pos:I

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->nextGlyphLinePart(I)Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 81
    :cond_1
    iget v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    iput v2, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->pos:I

    .line 83
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLinePartNeedsActualText(Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    iput-object v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    .line 86
    :goto_0
    iget v1, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->pos:I

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLine:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_2

    .line 87
    iget v1, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->pos:I

    invoke-direct {p0, v1}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->nextGlyphLinePart(I)Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 88
    invoke-direct {p0, v1}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->glyphLinePartNeedsActualText(Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    iput v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    .line 90
    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    iput v1, p0, Lcom/itextpdf/io/font/otf/ActualTextIterator;->pos:I

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->next()Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lcom/itextpdf/io/font/otf/GposLookupType4;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GposLookupType4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;
    }
.end annotation


# instance fields
.field private final marksbases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/OpenTableLookup;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->marksbases:Ljava/util/List;

    .line 62
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GposLookupType4;->readSubTables()V

    return-void
.end method


# virtual methods
.method protected readSubTable(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 131
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    .line 132
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, p1

    .line 133
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    add-int/2addr v1, p1

    .line 134
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 135
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    add-int/2addr v3, p1

    .line 136
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    add-int/2addr v4, p1

    .line 137
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-static {v1, v3}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readMarkArray(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)Ljava/util/List;

    move-result-object v1

    .line 140
    new-instance v3, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;

    invoke-direct {v3}, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 142
    iget-object v7, v3, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;->marks:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-static {p1, v2, v4}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readBaseArray(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;II)Ljava/util/List;

    move-result-object p1

    .line 145
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_1

    .line 146
    iget-object v1, v3, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;->bases:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->marksbases:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 11

    .line 67
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    iget v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->lookupFlag:I

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->isSkip(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 71
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    return v2

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->marksbases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;

    .line 78
    iget-object v5, v4, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;->marks:Ljava/util/Map;

    iget v6, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v6}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/font/otf/OtfMarkRecord;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_6

    .line 82
    new-instance v6, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v6}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 83
    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v3, v6, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 84
    iput-object p1, v6, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 86
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v7, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->lookupFlag:I

    invoke-virtual {v6, v3, v7}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->previousGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 87
    iget-object v3, v6, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v3, :cond_4

    goto :goto_1

    .line 91
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v7, v6, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyphClass(I)I

    move-result v3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_3

    .line 95
    :goto_1
    iget-object v3, v6, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v6

    .line 99
    :cond_6
    iget-object v4, v4, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;->bases:Ljava/util/Map;

    iget-object v6, v3, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/io/font/otf/GposAnchor;

    if-nez v4, :cond_7

    goto :goto_0

    .line 103
    :cond_7
    iget v0, v5, Lcom/itextpdf/io/font/otf/OtfMarkRecord;->markClass:I

    .line 106
    aget-object v0, v4, v0

    if-eqz v0, :cond_8

    .line 108
    iget v2, v0, Lcom/itextpdf/io/font/otf/GposAnchor;->XCoordinate:I

    .line 109
    iget v0, v0, Lcom/itextpdf/io/font/otf/GposAnchor;->YCoordinate:I

    goto :goto_2

    :cond_8
    move v0, v2

    .line 111
    :goto_2
    iget-object v4, v5, Lcom/itextpdf/io/font/otf/OtfMarkRecord;->anchor:Lcom/itextpdf/io/font/otf/GposAnchor;

    if-eqz v4, :cond_9

    .line 113
    iget v5, v4, Lcom/itextpdf/io/font/otf/GposAnchor;->XCoordinate:I

    sub-int/2addr v2, v5

    .line 114
    iget v4, v4, Lcom/itextpdf/io/font/otf/GposAnchor;->YCoordinate:I

    sub-int/2addr v0, v4

    :cond_9
    move v7, v0

    move v6, v2

    .line 116
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    new-instance v2, Lcom/itextpdf/io/font/otf/Glyph;

    iget v4, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    iget v3, v3, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    iget v4, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    sub-int v10, v3, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;IIIII)V

    invoke-virtual {p1, v0, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;

    move v2, v1

    .line 122
    :cond_a
    :goto_3
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    return v2
.end method

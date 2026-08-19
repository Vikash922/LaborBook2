.class public Lcom/itextpdf/io/font/otf/GposLookupType6;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GposLookupType6.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;
    }
.end annotation


# instance fields
.field private final marksbases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;",
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

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/OpenTableLookup;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->marksbases:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GposLookupType6;->readSubTables()V

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

    .line 127
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 130
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    .line 131
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, p1

    .line 132
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    add-int/2addr v1, p1

    .line 133
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 134
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    add-int/2addr v3, p1

    .line 135
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    add-int/2addr v4, p1

    .line 136
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-static {v1, v3}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readMarkArray(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)Ljava/util/List;

    move-result-object v1

    .line 139
    new-instance v3, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;-><init>(Lcom/itextpdf/io/font/otf/GposLookupType6$1;)V

    const/4 v5, 0x0

    move v6, v5

    .line 140
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 141
    iget-object v7, v3, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;->marks:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-static {p1, v2, v4}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readBaseArray(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;II)Ljava/util/List;

    move-result-object p1

    .line 144
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_1

    .line 145
    iget-object v1, v3, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;->baseMarks:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->marksbases:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 13

    .line 66
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    iget v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->lookupFlag:I

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->isSkip(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 69
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    return v2

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->marksbases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;

    .line 76
    iget-object v6, v5, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;->marks:Ljava/util/Map;

    iget v7, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v7}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/io/font/otf/OtfMarkRecord;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    if-nez v4, :cond_8

    .line 80
    new-instance v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v7}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 81
    iget v4, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v4, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 82
    iput-object p1, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 84
    :cond_3
    iget v4, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 87
    iget-object v8, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v9, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->lookupFlag:I

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->previousGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 88
    iget v8, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 89
    iget v8, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    :goto_1
    if-ge v8, v4, :cond_5

    .line 90
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {p1, v8}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyphClass(I)I

    move-result v9

    if-ne v9, v1, :cond_4

    .line 97
    iput-object v3, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 100
    :cond_5
    iget-object v4, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v4, :cond_6

    goto :goto_2

    .line 102
    :cond_6
    iget-object v4, v5, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;->baseMarks:Ljava/util/Map;

    iget-object v8, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v8}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    :goto_2
    iget-object v4, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move-object v4, v7

    .line 108
    :cond_8
    iget-object v5, v5, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;->baseMarks:Ljava/util/Map;

    iget-object v7, v4, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/itextpdf/io/font/otf/GposAnchor;

    if-nez v5, :cond_9

    goto/16 :goto_0

    .line 111
    :cond_9
    iget v0, v6, Lcom/itextpdf/io/font/otf/OtfMarkRecord;->markClass:I

    .line 112
    aget-object v0, v5, v0

    .line 113
    iget-object v2, v6, Lcom/itextpdf/io/font/otf/OtfMarkRecord;->anchor:Lcom/itextpdf/io/font/otf/GposAnchor;

    .line 114
    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    new-instance v12, Lcom/itextpdf/io/font/otf/Glyph;

    iget v5, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v5}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    iget v5, v2, Lcom/itextpdf/io/font/otf/GposAnchor;->XCoordinate:I

    neg-int v5, v5

    iget v7, v0, Lcom/itextpdf/io/font/otf/GposAnchor;->XCoordinate:I

    add-int/2addr v7, v5

    iget v2, v2, Lcom/itextpdf/io/font/otf/GposAnchor;->YCoordinate:I

    neg-int v2, v2

    iget v0, v0, Lcom/itextpdf/io/font/otf/GposAnchor;->YCoordinate:I

    add-int v8, v2, v0

    iget v0, v4, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    sub-int v11, v0, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;IIIII)V

    invoke-virtual {p1, v3, v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;

    move v2, v1

    .line 121
    :cond_a
    :goto_3
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    return v2
.end method

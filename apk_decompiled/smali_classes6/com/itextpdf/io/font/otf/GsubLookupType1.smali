.class public Lcom/itextpdf/io/font/otf/GsubLookupType1;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GsubLookupType1.java"


# instance fields
.field private substMap:Lcom/itextpdf/io/util/IntHashtable;


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
    new-instance p1, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {p1}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->substMap:Lcom/itextpdf/io/util/IntHashtable;

    .line 61
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GsubLookupType1;->readSubTables()V

    return-void
.end method


# virtual methods
.method public hasSubstitution(I)Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->substMap:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result p1

    return p1
.end method

.method protected readSubTable(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 87
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    .line 91
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr p1, v0

    invoke-virtual {v2, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object p1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v2, v0, v1

    .line 94
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->substMap:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v3, v0, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 97
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 99
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    .line 101
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr p1, v0

    invoke-virtual {v4, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object p1

    :goto_2
    if-ge v3, v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->substMap:Lcom/itextpdf/io/util/IntHashtable;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v5, v2, v3

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 108
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad substFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 5

    .line 66
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 69
    :cond_0
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v3

    iget v4, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->lookupFlag:I

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->isSkip(II)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->substMap:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType1;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->substituteOneToOne(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    move v2, v3

    .line 80
    :cond_1
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    return v2
.end method

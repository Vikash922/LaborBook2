.class Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GposLookupType2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/otf/GposLookupType2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairPosAdjustmentFormat2"
.end annotation


# instance fields
.field private classDef1:Lcom/itextpdf/io/font/otf/OtfClass;

.field private classDef2:Lcom/itextpdf/io/font/otf/OtfClass;

.field private coverageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private posSubs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/io/font/otf/OpenTableLookup;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 168
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->posSubs:Ljava/util/Map;

    .line 172
    invoke-virtual {p0, p3}, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->readFormat(I)V

    return-void
.end method


# virtual methods
.method protected readFormat(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, p1

    .line 204
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 205
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 206
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    add-int/2addr v3, p1

    .line 207
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    add-int/2addr v4, p1

    .line 208
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object p1, p1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result p1

    .line 209
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, p1, :cond_1

    .line 212
    new-array v8, v5, [Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;

    .line 213
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->posSubs:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v9, v6

    :goto_1
    if-ge v9, v5, :cond_0

    .line 215
    new-instance v10, Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;-><init>(Lcom/itextpdf/io/font/otf/GposLookupType2$1;)V

    .line 216
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-static {v11, v1}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readGposValueRecord(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)Lcom/itextpdf/io/font/otf/GposValueRecord;

    move-result-object v11

    iput-object v11, v10, Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;->first:Lcom/itextpdf/io/font/otf/GposValueRecord;

    .line 217
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-static {v11, v2}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readGposValueRecord(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)Lcom/itextpdf/io/font/otf/GposValueRecord;

    move-result-object v11

    iput-object v11, v10, Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;->second:Lcom/itextpdf/io/font/otf/GposValueRecord;

    .line 218
    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 222
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->coverageSet:Ljava/util/HashSet;

    .line 223
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {p1, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->classDef1:Lcom/itextpdf/io/font/otf/OtfClass;

    .line 224
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {p1, v4}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->classDef2:Lcom/itextpdf/io/font/otf/OtfClass;

    return-void
.end method

.method protected readSubTable(I)V
    .locals 0

    return-void
.end method

.method public transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 12

    .line 176
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_5

    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 178
    :cond_0
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    .line 179
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->coverageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->classDef1:Lcom/itextpdf/io/font/otf/OtfClass;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->posSubs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;

    if-nez v0, :cond_2

    return v2

    .line 185
    :cond_2
    new-instance v1, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v1}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 186
    iput-object p1, v1, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 187
    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v3, v1, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 188
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->lookupFlag:I

    invoke-virtual {v1, v3, v5}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->nextGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 189
    iget-object v3, v1, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v3, :cond_3

    return v2

    .line 191
    :cond_3
    iget-object v10, v1, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    .line 192
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;->classDef2:Lcom/itextpdf/io/font/otf/OtfClass;

    invoke-virtual {v10}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result v3

    .line 193
    array-length v5, v0

    if-lt v3, v5, :cond_4

    return v2

    .line 195
    :cond_4
    aget-object v0, v0, v3

    .line 196
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    new-instance v11, Lcom/itextpdf/io/font/otf/Glyph;

    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;->first:Lcom/itextpdf/io/font/otf/GposValueRecord;

    iget v7, v3, Lcom/itextpdf/io/font/otf/GposValueRecord;->XAdvance:I

    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;->first:Lcom/itextpdf/io/font/otf/GposValueRecord;

    iget v8, v3, Lcom/itextpdf/io/font/otf/GposValueRecord;->YAdvance:I

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v9}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;IIIII)V

    invoke-virtual {p1, v2, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;

    .line 197
    iget v2, v1, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    new-instance v3, Lcom/itextpdf/io/font/otf/Glyph;

    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;->second:Lcom/itextpdf/io/font/otf/GposValueRecord;

    iget v9, v4, Lcom/itextpdf/io/font/otf/GposValueRecord;->XAdvance:I

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;->second:Lcom/itextpdf/io/font/otf/GposValueRecord;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GposValueRecord;->YAdvance:I

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    move-object v6, v10

    move v10, v0

    invoke-direct/range {v5 .. v11}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;IIIII)V

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;

    .line 198
    iget v0, v1, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v2
.end method

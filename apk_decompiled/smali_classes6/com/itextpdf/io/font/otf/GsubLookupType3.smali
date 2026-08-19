.class public Lcom/itextpdf/io/font/otf/GsubLookupType3;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GsubLookupType3.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private substMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->substMap:Ljava/util/Map;

    .line 61
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GsubLookupType3;->readSubTables()V

    return-void
.end method


# virtual methods
.method public hasSubstitution(I)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->substMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected readSubTable(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 87
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    .line 89
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 91
    new-array v2, v1, [[I

    .line 92
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v1, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    .line 94
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v6, v6, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v7, v3, v5

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 95
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v6, v6, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    .line 96
    iget-object v7, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v7, v6}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr p1, v0

    invoke-virtual {v3, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object p1

    :goto_1
    if-ge v4, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->substMap:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aget-object v5, v2, v4

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
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
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v3

    iget v4, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->lookupFlag:I

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->isSkip(II)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->substMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_1

    .line 75
    aget v4, v1, v2

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v0

    if-eq v4, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->substituteOneToOne(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    move v2, v3

    .line 80
    :cond_1
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    return v2
.end method

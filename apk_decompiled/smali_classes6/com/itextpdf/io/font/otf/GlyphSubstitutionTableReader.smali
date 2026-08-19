.class public Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;
.super Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
.source "GlyphSubstitutionTableReader.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;ILcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/source/RandomAccessFileOrArray;",
            "I",
            "Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct/range {p0 .. p5}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;ILcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;Ljava/util/Map;I)V

    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;->startReadingTable()V

    return-void
.end method


# virtual methods
.method protected readLookupTable(II[I)Lcom/itextpdf/io/font/otf/OpenTableLookup;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 70
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 71
    aget p1, p3, v0

    .line 72
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 73
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    .line 74
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v2

    add-int/2addr p1, v2

    .line 76
    aput p1, p3, v0

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :pswitch_0
    new-instance p1, Lcom/itextpdf/io/font/otf/GsubLookupType6;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GsubLookupType6;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 89
    :pswitch_1
    new-instance p1, Lcom/itextpdf/io/font/otf/GsubLookupType5;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GsubLookupType5;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 87
    :pswitch_2
    new-instance p1, Lcom/itextpdf/io/font/otf/GsubLookupType4;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GsubLookupType4;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 85
    :pswitch_3
    new-instance p1, Lcom/itextpdf/io/font/otf/GsubLookupType3;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GsubLookupType3;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 83
    :pswitch_4
    new-instance p1, Lcom/itextpdf/io/font/otf/GsubLookupType2;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GsubLookupType2;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 81
    :pswitch_5
    new-instance p1, Lcom/itextpdf/io/font/otf/GsubLookupType1;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GsubLookupType1;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

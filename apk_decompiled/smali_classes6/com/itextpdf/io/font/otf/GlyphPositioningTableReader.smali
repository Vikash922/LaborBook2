.class public Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;
.super Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
.source "GlyphPositioningTableReader.java"


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

    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;ILcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;Ljava/util/Map;I)V

    .line 63
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;->startReadingTable()V

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

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 70
    aget p1, p3, v0

    .line 71
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 72
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    .line 73
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 74
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v2

    add-int/2addr p1, v2

    .line 75
    aput p1, p3, v0

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 92
    :pswitch_1
    new-instance p1, Lcom/itextpdf/io/font/otf/GposLookupType8;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GposLookupType8;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 90
    :pswitch_2
    new-instance p1, Lcom/itextpdf/io/font/otf/GposLookupType7;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GposLookupType7;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 88
    :pswitch_3
    new-instance p1, Lcom/itextpdf/io/font/otf/GposLookupType6;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GposLookupType6;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 86
    :pswitch_4
    new-instance p1, Lcom/itextpdf/io/font/otf/GposLookupType5;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GposLookupType5;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 84
    :pswitch_5
    new-instance p1, Lcom/itextpdf/io/font/otf/GposLookupType4;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GposLookupType4;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 82
    :pswitch_6
    new-instance p1, Lcom/itextpdf/io/font/otf/GposLookupType2;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GposLookupType2;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    .line 80
    :pswitch_7
    new-instance p1, Lcom/itextpdf/io/font/otf/GposLookupType1;

    invoke-direct {p1, p0, p2, p3}, Lcom/itextpdf/io/font/otf/GposLookupType1;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

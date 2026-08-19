.class public Lcom/itextpdf/io/font/otf/GposLookupType2;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GposLookupType2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;,
        Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;,
        Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat1;
    }
.end annotation


# instance fields
.field private listRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/OpenTableLookup;",
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

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/OpenTableLookup;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->listRules:Ljava/util/List;

    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GposLookupType2;->readSubTables()V

    return-void
.end method


# virtual methods
.method protected readSubTable(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 86
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;

    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->lookupFlag:I

    invoke-direct {v0, v1, v2, p1}, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat2;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;II)V

    .line 95
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->listRules:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat1;

    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->lookupFlag:I

    invoke-direct {v0, v1, v2, p1}, Lcom/itextpdf/io/font/otf/GposLookupType2$PairPosAdjustmentFormat1;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;II)V

    .line 90
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->listRules:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 4

    .line 69
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    iget v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->lookupFlag:I

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->isSkip(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 72
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    return v2

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType2;->listRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/font/otf/OpenTableLookup;

    .line 76
    invoke-virtual {v3, p1}, Lcom/itextpdf/io/font/otf/OpenTableLookup;->transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 79
    :cond_3
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    return v2
.end method

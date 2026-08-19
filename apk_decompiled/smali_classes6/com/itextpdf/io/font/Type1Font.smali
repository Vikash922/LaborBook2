.class public Lcom/itextpdf/io/font/Type1Font;
.super Lcom/itextpdf/io/font/FontProgram;
.source "Type1Font.java"


# static fields
.field private static final PFB_TYPES:[I


# instance fields
.field private characterSet:Ljava/lang/String;

.field private fontParser:Lcom/itextpdf/io/font/Type1Parser;

.field private fontStreamBytes:[B

.field private fontStreamLengths:[I

.field private kernPairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 76
    filled-new-array {v0, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/Type1Font;->PFB_TYPES:[I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    .line 90
    new-instance v0, Lcom/itextpdf/io/font/FontNames;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontNames;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/itextpdf/io/font/Type1Font;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/itextpdf/io/font/Type1Font;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/itextpdf/io/font/Type1Font;-><init>()V

    .line 96
    new-instance v0, Lcom/itextpdf/io/font/Type1Parser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itextpdf/io/font/Type1Parser;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    iput-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    .line 97
    invoke-virtual {p0}, Lcom/itextpdf/io/font/Type1Font;->process()V

    return-void
.end method

.method protected static createStandardFont(Ljava/lang/String;)Lcom/itextpdf/io/font/Type1Font;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lcom/itextpdf/io/font/constants/StandardFonts;->isStandardFont(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/itextpdf/io/font/Type1Font;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} is not a standard type1 font."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getCharacterSet()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->characterSet:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStreamBytes()[B
    .locals 8

    .line 184
    const-class v0, Lcom/itextpdf/io/font/Type1Font;

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/Type1Parser;->isBuiltInFont()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamBytes:[B

    if-eqz v1, :cond_1

    return-object v1

    .line 190
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/Type1Parser;->getPostscriptBinary()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v3

    long-to-int v3, v3

    add-int/lit8 v3, v3, -0x12

    .line 192
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamBytes:[B

    const/4 v3, 0x3

    .line 193
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamLengths:[I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_9

    .line 196
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    const/16 v7, 0x80

    if-eq v6, v7, :cond_3

    .line 197
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 198
    const-string v4, "Start marker is missing in the pfb file"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 230
    :try_start_2
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    return-object v2

    .line 201
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    sget-object v7, Lcom/itextpdf/io/font/Type1Font;->PFB_TYPES:[I

    aget v7, v7, v4

    if-eq v6, v7, :cond_5

    .line 202
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 203
    const-string v4, "incorrect.segment.type.in.pfb.file"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 230
    :try_start_4
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_4
    return-object v2

    .line 206
    :cond_5
    :try_start_5
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    .line 207
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    .line 208
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    .line 209
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    add-int/2addr v6, v7

    .line 210
    iget-object v7, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamLengths:[I

    aput v6, v7, v4

    :goto_1
    if-eqz v6, :cond_8

    .line 212
    iget-object v7, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamBytes:[B

    invoke-virtual {v1, v7, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v7

    if-gez v7, :cond_7

    .line 214
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 215
    const-string v4, "premature.end.in.pfb.file"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_6

    .line 230
    :try_start_6
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_6
    return-object v2

    :cond_7
    add-int/2addr v5, v7

    sub-int/2addr v6, v7

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamBytes:[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_a

    .line 230
    :try_start_8
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :cond_a
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-object v1, v2

    .line 224
    :catch_5
    :try_start_9
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 225
    const-string v3, "type1.font.file.exception"

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v1, :cond_b

    .line 230
    :try_start_a
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    :cond_b
    return-object v2

    :goto_2
    if-eqz v2, :cond_c

    :try_start_b
    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 234
    :catch_7
    :cond_c
    throw v0
.end method

.method public getFontStreamLengths()[I
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamLengths:[I

    return-object v0
.end method

.method public getGlyph(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 1

    .line 175
    invoke-static {p1}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/Type1Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I
    .locals 4

    .line 144
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p1

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v2, p1

    .line 146
    iget-object p1, p0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public getPdfFontFlags()I
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch()Z

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/itextpdf/io/font/Type1Font;->isFontSpecific()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    :goto_0
    or-int/2addr v0, v1

    .line 116
    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getItalicAngle()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Caps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->isBold()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_5

    :cond_4
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public hasKernPairs()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltInFont()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Parser;->isBuiltInFont()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Parser;->getAfmPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected process()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 246
    iget-object v1, v0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/Type1Parser;->getMetricsFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    .line 249
    const-string v8, ""

    const/4 v9, 0x1

    if-nez v3, :cond_13

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 250
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, " ,\n\r\t\u000c"

    invoke-direct {v11, v10, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 254
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :goto_1
    const/4 v7, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v12, "UnderlineThickness"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/16 v7, 0x11

    goto/16 :goto_2

    :sswitch_1
    const-string v12, "StartCharMetrics"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const/16 v7, 0x10

    goto/16 :goto_2

    :sswitch_2
    const-string v12, "FullName"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/16 v7, 0xf

    goto/16 :goto_2

    :sswitch_3
    const-string v12, "FontName"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/16 v7, 0xe

    goto/16 :goto_2

    :sswitch_4
    const-string v12, "FontBBox"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/16 v7, 0xd

    goto/16 :goto_2

    :sswitch_5
    const-string v12, "UnderlinePosition"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    const/16 v7, 0xc

    goto/16 :goto_2

    :sswitch_6
    const-string v12, "StdVW"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    const/16 v7, 0xb

    goto/16 :goto_2

    :sswitch_7
    const-string v12, "StdHW"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_1

    :cond_8
    const/16 v7, 0xa

    goto/16 :goto_2

    :sswitch_8
    const-string v12, "IsFixedPitch"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_1

    :cond_9
    const/16 v7, 0x9

    goto/16 :goto_2

    :sswitch_9
    const-string v12, "Ascender"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v7, 0x8

    goto/16 :goto_2

    :sswitch_a
    const-string v12, "Descender"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x7

    goto :goto_2

    :sswitch_b
    const-string v12, "CapHeight"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x6

    goto :goto_2

    :sswitch_c
    const-string v12, "CharacterSet"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    goto/16 :goto_1

    :cond_d
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_d
    const-string v12, "XHeight"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_1

    :cond_e
    move v7, v4

    goto :goto_2

    :sswitch_e
    const-string v12, "FamilyName"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto/16 :goto_1

    :cond_f
    move v7, v5

    goto :goto_2

    :sswitch_f
    const-string v12, "EncodingScheme"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto/16 :goto_1

    :cond_10
    move v7, v6

    goto :goto_2

    :sswitch_10
    const-string v12, "Weight"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto/16 :goto_1

    :cond_11
    move v7, v9

    goto :goto_2

    :sswitch_11
    const-string v12, "ItalicAngle"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto/16 :goto_1

    :cond_12
    move v7, v2

    :goto_2
    const-string v10, "\u00ff"

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    .line 289
    :pswitch_0
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setUnderlineThickness(I)V

    goto/16 :goto_0

    :pswitch_1
    move v3, v9

    goto/16 :goto_0

    .line 259
    :pswitch_2
    invoke-virtual {v11, v10}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 260
    iget-object v10, v0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    new-array v11, v9, [[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v2

    aput-object v8, v4, v9

    aput-object v8, v4, v6

    aput-object v7, v4, v5

    aput-object v4, v11, v2

    invoke-virtual {v10, v11}, Lcom/itextpdf/io/font/FontNames;->setFullName([[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :pswitch_3
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v11, v10}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :pswitch_4
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    .line 280
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 281
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    .line 282
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    .line 283
    iget-object v8, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v8, v4, v5, v6, v7}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    goto/16 :goto_0

    .line 286
    :pswitch_5
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setUnderlinePosition(I)V

    goto/16 :goto_0

    .line 310
    :pswitch_6
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setStemV(I)V

    goto/16 :goto_0

    .line 307
    :pswitch_7
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setStemH(I)V

    goto/16 :goto_0

    .line 273
    :pswitch_8
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setIsFixedPitch(Z)V

    goto/16 :goto_0

    .line 301
    :pswitch_9
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setTypoAscender(I)V

    goto/16 :goto_0

    .line 304
    :pswitch_a
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setTypoDescender(I)V

    goto/16 :goto_0

    .line 295
    :pswitch_b
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setCapHeight(I)V

    goto/16 :goto_0

    .line 276
    :pswitch_c
    invoke-virtual {v11, v10}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->characterSet:Ljava/lang/String;

    goto/16 :goto_0

    .line 298
    :pswitch_d
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setXHeight(I)V

    goto/16 :goto_0

    .line 263
    :pswitch_e
    invoke-virtual {v11, v10}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 264
    iget-object v10, v0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    new-array v11, v9, [[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v2

    aput-object v8, v4, v9

    aput-object v8, v4, v6

    aput-object v7, v4, v5

    aput-object v4, v11, v2

    invoke-virtual {v10, v11}, Lcom/itextpdf/io/font/FontNames;->setFamilyName([[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :pswitch_f
    invoke-virtual {v11, v10}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->encodingScheme:Ljava/lang/String;

    goto/16 :goto_0

    .line 267
    :pswitch_10
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v11, v10}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/io/font/constants/FontWeights;->fromType1FontWeight(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontNames;->setFontWeight(I)V

    goto/16 :goto_0

    .line 270
    :pswitch_11
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setItalicAngle(F)V

    goto/16 :goto_0

    :cond_13
    if-nez v3, :cond_15

    .line 318
    iget-object v1, v0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/Type1Parser;->getAfmPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 320
    new-instance v2, Lcom/itextpdf/io/exceptions/IOException;

    const-string v3, "startcharmetrics is missing in {0}."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v1

    throw v1

    .line 322
    :cond_14
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "startcharmetrics is missing in the metrics file."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_15
    iput v2, v0, Lcom/itextpdf/io/font/Type1Font;->avgWidth:I

    move v10, v2

    .line 327
    :goto_3
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_20

    .line 328
    new-instance v12, Ljava/util/StringTokenizer;

    invoke-direct {v12, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-nez v13, :cond_16

    goto :goto_3

    .line 332
    :cond_16
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 333
    const-string v13, "EndCharMetrics"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    move v3, v2

    goto/16 :goto_9

    .line 341
    :cond_17
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, ";"

    invoke-direct {v12, v11, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xfa

    const/4 v13, 0x0

    move-object v14, v8

    const/4 v15, -0x1

    .line 342
    :goto_4
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_1d

    .line 343
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_18

    const/4 v5, 0x3

    goto :goto_4

    .line 347
    :cond_18
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_1

    :goto_5
    const/4 v5, -0x1

    goto :goto_6

    :sswitch_12
    const-string v6, "WX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    goto :goto_5

    :cond_19
    const/4 v5, 0x3

    goto :goto_6

    :sswitch_13
    const-string v6, "N"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_5

    :cond_1a
    const/4 v5, 0x2

    goto :goto_6

    :sswitch_14
    const-string v6, "C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_5

    :cond_1b
    move v5, v9

    goto :goto_6

    :sswitch_15
    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_5

    :cond_1c
    move v5, v2

    :goto_6
    packed-switch v5, :pswitch_data_1

    :goto_7
    const/4 v7, 0x3

    const/16 v17, 0x2

    goto :goto_8

    .line 353
    :pswitch_12
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    move v11, v5

    goto :goto_7

    .line 356
    :pswitch_13
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object v14, v5

    goto :goto_7

    .line 350
    :pswitch_14
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v15, v5

    goto :goto_7

    .line 359
    :pswitch_15
    new-array v5, v4, [I

    .line 360
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v2

    .line 361
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v9

    .line 362
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v17, 0x2

    aput v6, v5, v17

    .line 363
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    aput v6, v5, v7

    move-object v13, v5

    :goto_8
    move v5, v7

    move/from16 v6, v17

    goto/16 :goto_4

    :cond_1d
    move v7, v5

    move/from16 v17, v6

    .line 368
    invoke-static {v14}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v5

    .line 369
    new-instance v6, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-direct {v6, v15, v11, v5, v13}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[I)V

    if-ltz v15, :cond_1e

    .line 371
    iget-object v12, v0, Lcom/itextpdf/io/font/Type1Font;->codeToGlyph:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    const/4 v12, -0x1

    if-eq v5, v12, :cond_1f

    .line 374
    iget-object v12, v0, Lcom/itextpdf/io/font/Type1Font;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_1f
    iget v5, v0, Lcom/itextpdf/io/font/Type1Font;->avgWidth:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/itextpdf/io/font/Type1Font;->avgWidth:I

    add-int/lit8 v10, v10, 0x1

    move v5, v7

    move/from16 v6, v17

    goto/16 :goto_3

    :cond_20
    :goto_9
    if-eqz v10, :cond_21

    .line 380
    iget v4, v0, Lcom/itextpdf/io/font/Type1Font;->avgWidth:I

    div-int/2addr v4, v10

    iput v4, v0, Lcom/itextpdf/io/font/Type1Font;->avgWidth:I

    :cond_21
    if-eqz v3, :cond_23

    .line 383
    iget-object v1, v0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/Type1Parser;->getAfmPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 385
    new-instance v2, Lcom/itextpdf/io/exceptions/IOException;

    const-string v3, "endcharmetrics is missing in {0}."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v1

    throw v1

    .line 387
    :cond_22
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "endcharmetrics is missing in the metrics file."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_23
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->unicodeToGlyph:Ljava/util/Map;

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x20

    if-nez v4, :cond_24

    .line 395
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/otf/Glyph;

    if-eqz v4, :cond_24

    .line 397
    iget-object v7, v0, Lcom/itextpdf/io/font/Type1Font;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v10, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v11

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v12

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object v4

    invoke-direct {v10, v11, v12, v5, v4}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[I)V

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_24
    :goto_a
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 402
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_a

    .line 406
    :cond_25
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 407
    const-string v5, "EndFontMetrics"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    move v4, v9

    goto :goto_b

    .line 410
    :cond_26
    const-string v5, "StartKernPairs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    move v4, v2

    move v3, v9

    goto :goto_b

    :cond_27
    move v4, v2

    :goto_b
    if-eqz v3, :cond_2b

    .line 416
    :cond_28
    :goto_c
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 417
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_c

    .line 421
    :cond_29
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 422
    const-string v7, "KPX"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 423
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 425
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 427
    invoke-static {v4}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v4

    .line 428
    invoke-static {v7}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v4, v8, :cond_28

    if-eq v7, v8, :cond_28

    int-to-long v10, v4

    shl-long/2addr v10, v6

    int-to-long v12, v7

    add-long/2addr v10, v12

    .line 432
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_2a
    const/4 v8, -0x1

    .line 434
    const-string v5, "EndKernPairs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    move v3, v2

    goto :goto_d

    :cond_2b
    if-nez v4, :cond_2d

    .line 440
    iget-object v1, v0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/Type1Parser;->getAfmPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 442
    new-instance v2, Lcom/itextpdf/io/exceptions/IOException;

    const-string v3, "endfontmetrics is missing in {0}."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v1

    throw v1

    .line 444
    :cond_2c
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "endfontmetrics is missing in the metrics file."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    :goto_d
    if-eqz v3, :cond_2f

    .line 449
    iget-object v1, v0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/Type1Parser;->getAfmPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 451
    new-instance v2, Lcom/itextpdf/io/exceptions/IOException;

    const-string v3, "endkernpairs is missing in {0}."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v1

    throw v1

    .line 453
    :cond_2e
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "endkernpairs is missing in the metrics file."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_2f
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 458
    iget-object v1, v0, Lcom/itextpdf/io/font/Type1Font;->encodingScheme:Ljava/lang/String;

    const-string v3, "AdobeStandardEncoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, v0, Lcom/itextpdf/io/font/Type1Font;->encodingScheme:Ljava/lang/String;

    const-string v3, "StandardEncoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    move v2, v9

    :cond_30
    iput-boolean v2, v0, Lcom/itextpdf/io/font/Type1Font;->isFontSpecific:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x796f2b9d -> :sswitch_11
        -0x65c9d168 -> :sswitch_10
        -0x5ea46f08 -> :sswitch_f
        -0x59952bd1 -> :sswitch_e
        -0x503e2461 -> :sswitch_d
        -0x4c3a5f67 -> :sswitch_c
        -0x306d8887 -> :sswitch_b
        -0x2fdca149 -> :sswitch_a
        -0x2db46ce9 -> :sswitch_9
        -0xfd53aea -> :sswitch_8
        0x4c7da52 -> :sswitch_7
        0x4c7dc04 -> :sswitch_6
        0x195d77f5 -> :sswitch_5
        0x199cb718 -> :sswitch_4
        0x19a29f9a -> :sswitch_3
        0x532d95da -> :sswitch_2
        0x63ae6eeb -> :sswitch_1
        0x7082f228 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_15
        0x43 -> :sswitch_14
        0x4e -> :sswitch_13
        0xae1 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public setKerning(III)Z
    .locals 2

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    .line 165
    iget-object p1, p0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

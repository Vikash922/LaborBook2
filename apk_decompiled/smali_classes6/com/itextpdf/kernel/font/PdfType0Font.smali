.class public Lcom/itextpdf/kernel/font/PdfType0Font;
.super Lcom/itextpdf/kernel/font/PdfFont;
.source "PdfType0Font.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final CID_FONT_TYPE_0:I = 0x0

.field protected static final CID_FONT_TYPE_2:I = 0x2

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = ""

.field private static final MAX_CID_CODE_LENGTH:I = 0x4

.field private static final rotbits:[B


# instance fields
.field protected cidFontType:I

.field protected cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

.field protected specificUnicodeDifferences:[C

.field protected usedGlyphs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 98
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/kernel/font/PdfType0Font;->rotbits:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method constructor <init>(Lcom/itextpdf/io/font/CidFont;Ljava/lang/String;)V
    .locals 2

    .line 148
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfFont;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/itextpdf/io/font/CidFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/itextpdf/io/font/CidFontProperties;->isCidFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 154
    const-string p1, "V"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->vertical:Z

    .line 155
    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontProgram;->getRegistry()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCompatibleUniMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance v0, Lcom/itextpdf/io/font/CMapEncoding;

    invoke-direct {v0, p2, p1}, Lcom/itextpdf/io/font/CMapEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 157
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    const/4 p1, 0x0

    .line 158
    iput p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Font {0} with {1} encoding is not a cjk font."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/itextpdf/io/font/CidFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method

.method constructor <init>(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;)V
    .locals 4

    .line 116
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfFont;-><init>()V

    .line 117
    const-string v0, "Identity-H"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Identity-V"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Only Identity CMaps supports with truetype"

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->allowEmbedding()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->embedded:Z

    .line 127
    const-string v1, "V"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->vertical:Z

    .line 128
    new-instance v1, Lcom/itextpdf/io/font/CMapEncoding;

    invoke-direct {v1, p2}, Lcom/itextpdf/io/font/CMapEncoding;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 129
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    iput-object p2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    const/4 p2, 0x2

    .line 130
    iput p2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    .line 131
    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->isFontSpecific()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x100

    .line 132
    new-array p2, p1, [C

    iput-object p2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->specificUnicodeDifferences:[C

    const/4 p2, 0x0

    move v1, p2

    :goto_1
    if-ge v1, p1, :cond_3

    int-to-byte v2, v1

    .line 135
    new-array v3, v0, [B

    aput-byte v2, v3, p2

    const/4 v2, 0x0

    .line 136
    invoke-static {v3, v2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_2

    :cond_2
    const/16 v2, 0x3f

    .line 138
    :goto_2
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->specificUnicodeDifferences:[C

    aput-char v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 122
    :cond_4
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "{0} cannot be embedded due to licensing restrictions."

    invoke-direct {p2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 10

    .line 162
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->newFont:Z

    .line 164
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DescendantFonts:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 165
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 166
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ToUnicode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 167
    invoke-static {v3}, Lcom/itextpdf/kernel/font/FontUtil;->processToUnicode(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v3

    .line 168
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    move-object v4, v2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Identity-H"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Identity-V"

    .line 169
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    if-nez v3, :cond_2

    .line 171
    invoke-static {v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->getOrdering(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 171
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/font/PdfType0Font;->getUniMapFromOrdering(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v3}, Lcom/itextpdf/kernel/font/FontUtil;->getToUnicodeFromUniMap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v4

    if-nez v4, :cond_1

    .line 175
    invoke-static {v8}, Lcom/itextpdf/kernel/font/FontUtil;->getToUnicodeFromUniMap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v4

    .line 176
    const-class v7, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-static {v7}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 177
    const-string v8, "Unknown CMap {0}"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    move-object v3, v4

    .line 180
    :cond_2
    invoke-static {v1, v3}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/TrueTypeFont;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 181
    invoke-static {v2, v6}, Lcom/itextpdf/kernel/font/PdfType0Font;->createCMap(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/lang/String;)Lcom/itextpdf/io/font/CMapEncoding;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 183
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v1, Lcom/itextpdf/kernel/font/IDocFontProgram;

    invoke-interface {v1}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v0

    :goto_0
    iput-boolean v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->embedded:Z

    goto :goto_2

    .line 185
    :cond_4
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-static {v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->getOrdering(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/itextpdf/kernel/font/PdfType0Font;->getUniMapFromOrdering(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 187
    const-string v7, "Uni"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v4, v5}, Lcom/itextpdf/io/font/CidFontProperties;->isCidFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 189
    :try_start_0
    invoke-static {v4}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 190
    invoke-static {v2, v5}, Lcom/itextpdf/kernel/font/PdfType0Font;->createCMap(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/lang/String;)Lcom/itextpdf/io/font/CMapEncoding;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 191
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->embedded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    :catch_0
    iput-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 194
    iput-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    .line 198
    invoke-static {v5}, Lcom/itextpdf/kernel/font/FontUtil;->getToUnicodeFromUniMap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_7

    .line 201
    invoke-static {v1, v3}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/TrueTypeFont;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 202
    invoke-static {v2, v5}, Lcom/itextpdf/kernel/font/PdfType0Font;->createCMap(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/lang/String;)Lcom/itextpdf/io/font/CMapEncoding;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 205
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    if-eqz v1, :cond_a

    .line 213
    :goto_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DescendantFonts:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 215
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    .line 216
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CIDFontType0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 217
    iput v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    goto :goto_3

    .line 218
    :cond_8
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CIDFontType2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    .line 219
    iput p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    goto :goto_3

    .line 221
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string v1, "Failed to determine CIDFont subtype. The type of CIDFont shall be CIDFontType0 or CIDFontType2."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 223
    :goto_3
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    .line 224
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    return-void

    .line 206
    :cond_a
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot recognise document font {0} with {1} encoding"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private appendUniGlyphs(Ljava/lang/String;IILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-gt p2, p3, :cond_1

    .line 500
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 506
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, 0x1

    .line 509
    :goto_1
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    .line 510
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 511
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/source/ByteBuffer;)V
    .locals 2

    .line 702
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result p1

    .line 703
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/font/CMapEncoding;->fillCmapBytes(ILcom/itextpdf/io/source/ByteBuffer;)V

    return-void
.end method

.method private static createCMap(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/lang/String;)Lcom/itextpdf/io/font/CMapEncoding;
    .locals 2

    .line 970
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 972
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    .line 973
    new-instance v0, Lcom/itextpdf/io/font/CMapEncoding;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CMapName:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/font/CMapEncoding;-><init>(Ljava/lang/String;[B)V

    return-object v0

    .line 975
    :cond_0
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 976
    const-string v0, "Identity-H"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Identity-V"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 979
    :cond_1
    new-instance v0, Lcom/itextpdf/io/font/CMapEncoding;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/font/CMapEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 977
    :cond_2
    :goto_0
    new-instance p1, Lcom/itextpdf/io/font/CMapEncoding;

    invoke-direct {p1, p0}, Lcom/itextpdf/io/font/CMapEncoding;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private flushFontData()V
    .locals 10

    .line 715
    iget v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    const-string v1, "{0}-{1}"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 716
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 717
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Type0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 718
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 719
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontNames;->getStyle()Ljava/lang/String;

    move-result-object v3

    .line 720
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 724
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 725
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 726
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCidFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 727
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DescendantFonts:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 729
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 730
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    goto/16 :goto_5

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 732
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/TrueTypeFont;

    .line 733
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    iget-boolean v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->embedded:Z

    invoke-static {v3, v4, v5}, Lcom/itextpdf/kernel/font/PdfType0Font;->updateSubsetPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 734
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 737
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    check-cast v5, Ljava/util/SortedSet;

    iget-boolean v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    iget-object v7, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subsetRanges:Ljava/util/List;

    invoke-virtual {v0, v5, v6, v7}, Lcom/itextpdf/io/font/TrueTypeFont;->updateUsedGlyphs(Ljava/util/SortedSet;ZLjava/util/List;)V

    .line 738
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->isCff()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 740
    iget-boolean v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    if-eqz v5, :cond_2

    .line 741
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontStreamBytes()[B

    move-result-object v5

    .line 742
    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    invoke-virtual {v0, v6}, Lcom/itextpdf/io/font/TrueTypeFont;->mapGlyphsCidsToGids(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 743
    new-instance v7, Lcom/itextpdf/io/font/CFFFontSubset;

    invoke-direct {v7, v5, v6}, Lcom/itextpdf/io/font/CFFFontSubset;-><init>([BLjava/util/Set;)V

    invoke-virtual {v7}, Lcom/itextpdf/io/font/CFFFontSubset;->Process()[B

    move-result-object v5

    goto :goto_0

    .line 745
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontStreamBytes()[B

    move-result-object v5

    .line 747
    :goto_0
    array-length v6, v5

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfFontStream([B[I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v5

    .line 748
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v8, "CIDFontType0C"

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 750
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v9, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 751
    invoke-virtual {v9}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapName()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v3, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 752
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_2

    .line 756
    :cond_3
    iget-boolean v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    const/4 v5, 0x0

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getDirectoryOffset()I

    move-result v1

    if-lez v1, :cond_5

    .line 758
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    iget-boolean v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/io/font/TrueTypeFont;->getSubset(Ljava/util/Set;Z)[B

    move-result-object v5
    :try_end_0
    .catch Lcom/itextpdf/io/exceptions/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 760
    :catch_0
    const-class v1, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 761
    const-string v6, "Font subset issue. Full font will be embedded."

    invoke-interface {v1, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-nez v5, :cond_6

    .line 766
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontStreamBytes()[B

    move-result-object v5

    .line 768
    :cond_6
    array-length v1, v5

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfFontStream([B[I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v5

    .line 769
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v7, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 770
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 775
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getNumberOfGlyphs()I

    move-result v1

    .line 776
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontMetrics;->getNumberOfGlyphs()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [B

    move v8, v2

    .line 777
    :goto_3
    div-int/lit8 v9, v1, 0x8

    if-ge v8, v9, :cond_7

    .line 778
    aget-byte v9, v7, v8

    or-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 780
    :cond_7
    :goto_4
    rem-int/lit8 v8, v1, 0x8

    if-ge v2, v8, :cond_8

    .line 781
    aget-byte v8, v7, v6

    sget-object v9, Lcom/itextpdf/kernel/font/PdfType0Font;->rotbits:[B

    aget-byte v9, v9, v2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 783
    :cond_8
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CIDSet:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v2, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    invoke-virtual {v4, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 784
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->isCff()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v4, v3, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCidFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 786
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 787
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Type0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 788
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 789
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DescendantFonts:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 791
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getToUnicode()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 793
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ToUnicode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 794
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 795
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 801
    :cond_9
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v1

    if-ltz v1, :cond_a

    .line 803
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CIDSet:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 805
    :cond_a
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 806
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 807
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    :goto_5
    return-void

    .line 809
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported CID Font"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateWidthsArray()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 9

    .line 855
    new-instance v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 856
    new-instance v1, Lcom/itextpdf/io/source/OutputStream;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/source/OutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x5b

    .line 857
    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 860
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v4, -0xa

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 861
    iget-object v7, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v7, v6}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    .line 862
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_0

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v7

    add-int/lit8 v4, v4, 0x1

    if-ne v7, v4, :cond_1

    const/16 v4, 0x20

    .line 866
    invoke-virtual {v1, v4}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    const/16 v4, 0x5d

    .line 869
    invoke-virtual {v1, v4}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 872
    :cond_2
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/io/source/OutputStream;->writeInteger(I)Ljava/io/OutputStream;

    .line 873
    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    const/4 v4, 0x0

    move v5, v4

    .line 875
    :goto_1
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/io/source/OutputStream;->writeInteger(I)Ljava/io/OutputStream;

    .line 876
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v4

    goto :goto_0

    .line 878
    :cond_3
    invoke-virtual {v1}, Lcom/itextpdf/io/source/OutputStream;->getCurrentPos()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 879
    const-string v2, "]]"

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 880
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    return-object v1

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCompatibleUniMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 958
    invoke-static {}, Lcom/itextpdf/io/font/CidFontProperties;->getRegistryNames()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_Uni"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 960
    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->vertical:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 962
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->vertical:Z

    if-nez v1, :cond_0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getOrdering(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/lang/String;
    .locals 2

    .line 708
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CIDSystemInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 711
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ordering:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Ordering:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getUniMapFromOrdering(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "CNS1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "GB1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "Identity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "Korea1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "Japan1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 274
    :pswitch_0
    const-string p0, "UniCNS-UTF16-H"

    return-object p0

    .line 280
    :pswitch_1
    const-string p0, "UniGB-UTF16-H"

    return-object p0

    .line 282
    :pswitch_2
    const-string p0, "Identity-H"

    return-object p0

    .line 278
    :pswitch_3
    const-string p0, "UniKS-UTF16-H"

    return-object p0

    .line 276
    :pswitch_4
    const-string p0, "UniJIS-UTF16-H"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7c2e16f5 -> :sswitch_4
        -0x79b2ff19 -> :sswitch_3
        -0x43d2b22 -> :sswitch_2
        0x112b6 -> :sswitch_1
        0x1fa3e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUniMapFromOrdering(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "CNS1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "GB1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "Identity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "Korea1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "Japan1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 239
    :pswitch_0
    const-string p0, "UniCNS-UTF16-"

    goto :goto_1

    .line 248
    :pswitch_1
    const-string p0, "UniGB-UTF16-"

    goto :goto_1

    .line 251
    :pswitch_2
    const-string p0, "Identity-"

    goto :goto_1

    .line 245
    :pswitch_3
    const-string p0, "UniKS-UTF16-"

    goto :goto_1

    .line 242
    :pswitch_4
    const-string p0, "UniJIS-UTF16-"

    :goto_1
    if-eqz p1, :cond_5

    .line 256
    const-string p1, "H"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 258
    :cond_5
    const-string p1, "V"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c2e16f5 -> :sswitch_4
        -0x79b2ff19 -> :sswitch_3
        -0x43d2b22 -> :sswitch_2
        0x112b6 -> :sswitch_1
        0x1fa3e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1

    .line 570
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p1

    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->isWhitespaceOrNonPrintable(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 985
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "Identity-H"

    :cond_1
    return-object p0
.end method

.method private static toHex4(C)Ljava/lang/String;
    .locals 2

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 953
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeBfrange(Lcom/itextpdf/io/source/OutputStream;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/source/OutputStream<",
            "Lcom/itextpdf/io/source/ByteArrayOutputStream;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation

    .line 932
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 933
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/source/OutputStream;->writeInteger(I)Ljava/io/OutputStream;

    .line 934
    const-string v0, " beginbfrange\n"

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 935
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/otf/Glyph;

    .line 936
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->toHex(I)Ljava/lang/String;

    move-result-object v3

    .line 937
    invoke-virtual {p1, v3}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 938
    invoke-virtual {p1, v3}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    const/16 v3, 0x3c

    .line 939
    invoke-virtual {p1, v3}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 940
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-char v5, v2, v4

    .line 941
    invoke-static {v5}, Lcom/itextpdf/kernel/font/PdfType0Font;->toHex4(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x3e

    .line 943
    invoke-virtual {p1, v2}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    const/16 v2, 0xa

    .line 944
    invoke-virtual {p1, v2}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    goto :goto_0

    .line 946
    :cond_2
    const-string v0, "endbfrange\n"

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 947
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public appendAnyGlyph(Ljava/lang/String;ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation

    .line 524
    iget v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 528
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 532
    :cond_0
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v1, v2

    .line 538
    :goto_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v2, v1

    goto :goto_3

    :cond_2
    if-ne v0, v1, :cond_6

    .line 541
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/io/font/TrueTypeFont;

    .line 542
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    const-string p2, "symboltt"

    invoke-static {p1, p2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 544
    array-length p2, p1

    if-lez p2, :cond_5

    .line 545
    iget-object p2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 547
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 552
    :cond_3
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 553
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 556
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v1, v2

    .line 558
    :goto_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_3
    return v2

    .line 561
    :cond_6
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Font has no suitable cmap."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendDecodedCodesToGlyphsList(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfString;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfString;",
            ")Z"
        }
    .end annotation

    .line 595
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 601
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    const/4 v4, 0x0

    move v5, v0

    move v7, v5

    move v6, v1

    :goto_1
    const/4 v8, 0x4

    if-gt v5, v8, :cond_2

    add-int v9, v2, v5

    .line 605
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v9, v10, :cond_2

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v9, v9, -0x1

    .line 607
    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    .line 608
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCmap()Lcom/itextpdf/io/font/CMapEncoding;

    move-result-object v9

    invoke-virtual {v9, v6, v5}, Lcom/itextpdf/io/font/CMapEncoding;->containsCodeInCodeSpaceRange(II)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCmap()Lcom/itextpdf/io/font/CMapEncoding;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/itextpdf/io/font/CMapEncoding;->getCidCode(I)I

    move-result v4

    .line 614
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v6, v5, -0x1

    add-int/2addr v2, v6

    goto :goto_3

    :cond_1
    move v7, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_3
    if-nez v4, :cond_5

    .line 621
    const-class v6, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    .line 622
    invoke-interface {v6}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 623
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v9, v0

    :goto_4
    if-gt v9, v8, :cond_3

    add-int v10, v2, v9

    .line 625
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v10, v11, :cond_3

    add-int/lit8 v10, v10, -0x1

    .line 627
    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 630
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Could not find glyph with the following code: {0}"

    invoke-static {v8, v7}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 629
    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_4
    sub-int/2addr v5, v0

    add-int/2addr v2, v5

    :cond_5
    if-eqz v4, :cond_6

    .line 634
    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v5

    if-eqz v5, :cond_6

    .line 635
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 637
    :cond_6
    new-instance v3, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v1, v4, v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    :goto_5
    add-int/2addr v2, v0

    goto/16 :goto_0

    :cond_7
    return v3
.end method

.method public appendGlyphs(Ljava/lang/String;IILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation

    .line 458
    iget v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-gt p2, p3, :cond_0

    .line 462
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 472
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/font/PdfType0Font;->appendUniGlyphs(Ljava/lang/String;IILjava/util/List;)I

    move-result p1

    return p1

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 475
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    if-gt p2, p3, :cond_3

    .line 478
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 479
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 480
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return v1

    .line 488
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/font/PdfType0Font;->appendUniGlyphs(Ljava/lang/String;IILjava/util/List;)I

    move-result p1

    return p1

    .line 491
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Font has no suitable cmap."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containsGlyph(I)Z
    .locals 4

    .line 308
    iget v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 315
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_5

    int-to-char p1, p1

    .line 316
    const-string v0, "symboltt"

    invoke-static {p1, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(CLjava/lang/String;)[B

    move-result-object p1

    .line 317
    array-length v0, p1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    .line 319
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1

    .line 322
    :cond_7
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid CID font type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;)[B
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public convertToBytes(Lcom/itextpdf/io/font/otf/GlyphLine;)[B
    .locals 5

    if-eqz p1, :cond_2

    .line 366
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapBytesLength(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    new-array v0, v2, [B

    .line 372
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :goto_1
    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v2, v3, :cond_1

    .line 373
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    invoke-virtual {p1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {p1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/itextpdf/io/font/CMapEncoding;->fillCmapBytes(I[BI)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public convertToBytes(Ljava/lang/String;)[B
    .locals 6

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 329
    new-instance v1, Lcom/itextpdf/io/source/ByteBuffer;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>()V

    .line 331
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 332
    const-string v0, "symboltt"

    invoke-static {p1, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 333
    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 335
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 337
    invoke-direct {p0, v2, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/source/ByteBuffer;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_4

    .line 343
    invoke-static {p1, v2}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 344
    invoke-static {p1, v2}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 347
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 349
    :goto_2
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    .line 350
    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v5

    if-lez v5, :cond_3

    .line 351
    invoke-direct {p0, v4, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/source/ByteBuffer;)V

    goto :goto_3

    .line 354
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapBytes(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 358
    :cond_4
    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public createGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 5

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    iget v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 407
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    if-ge v2, v1, :cond_7

    .line 409
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 411
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v1, :cond_7

    .line 417
    invoke-static {p1, v2}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    invoke-static {p1, v2}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 421
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 423
    :goto_2
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 427
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 428
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 429
    const-string v1, "symboltt"

    invoke-static {p1, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 430
    array-length v1, p1

    :goto_3
    if-ge v2, v1, :cond_7

    .line 432
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 434
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v2, v1, :cond_7

    .line 440
    invoke-static {p1, v2}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 441
    invoke-static {p1, v2}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 444
    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 446
    :goto_5
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 453
    :cond_7
    new-instance p1, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    return-object p1

    .line 450
    :cond_8
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Font has no suitable cmap."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decode(Lcom/itextpdf/kernel/pdf/PdfString;)Ljava/lang/String;
    .locals 0

    .line 575
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 1

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->appendDecodedCodesToGlyphsList(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfString;)Z

    .line 585
    new-instance p1, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public flush()V
    .locals 1

    .line 662
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->ensureUnderlyingObjectHasIndirectReference()V

    .line 664
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->newFont:Z

    if-eqz v0, :cond_1

    .line 665
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->flushFontData()V

    .line 667
    :cond_1
    invoke-super {p0}, Lcom/itextpdf/kernel/font/PdfFont;->flush()V

    return-void
.end method

.method protected getCidFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 3

    .line 823
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 824
    invoke-static {v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->markObjectAsIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 825
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 827
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz p3, :cond_0

    .line 829
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->CIDFontType2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 830
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->CIDToGIDMap:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 832
    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->CIDFontType0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 834
    :goto_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p3, p2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 835
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 836
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Registry:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/CMapEncoding;->getRegistry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 837
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Ordering:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/CMapEncoding;->getOrdering()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 838
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Supplement:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/CMapEncoding;->getSupplement()I

    move-result v1

    invoke-direct {p3, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 839
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->CIDSystemInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 840
    iget-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->vertical:Z

    if-nez p1, :cond_1

    .line 841
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->DW:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/16 p3, 0x3e8

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 842
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->generateWidthsArray()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 844
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 848
    :cond_1
    const-class p1, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 849
    const-string p2, "Vertical writing has not been implemented yet."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getCmap()Lcom/itextpdf/io/font/CMapEncoding;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    return-object v0
.end method

.method public getContentWidth(Lcom/itextpdf/kernel/pdf/PdfString;)F
    .locals 3

    .line 647
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object p1

    .line 648
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v2, :cond_0

    .line 649
    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 4

    .line 682
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 683
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    .line 684
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 685
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontName:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 686
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 687
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Ascent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 688
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Descent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 689
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontMetrics;->getCapHeight()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 690
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontMetrics;->getItalicAngle()F

    move-result v2

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 691
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->StemV:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontMetrics;->getStemV()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 692
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getPdfFontFlags()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 693
    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontProgram;->getFontIdentification()Lcom/itextpdf/io/font/FontIdentification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontIdentification;->getPanose()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 694
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 695
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Panose:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontIdentification()Lcom/itextpdf/io/font/FontIdentification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontIdentification;->getPanose()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 696
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-object v0
.end method

.method public getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 3

    .line 291
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v1, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-direct {v1, v0, p1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;I)V

    move-object v0, v1

    goto :goto_0

    .line 299
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/otf/Glyph;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, p1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getToUnicode()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 7

    .line 891
    new-instance v0, Lcom/itextpdf/io/source/OutputStream;

    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 892
    const-string v1, "/CIDInit /ProcSet findresource begin\n12 dict begin\nbegincmap\n/CIDSystemInfo\n<< /Registry (Adobe)\n/Ordering (UCS)\n/Supplement 0\n>> def\n/CMapName /Adobe-Identity-UCS def\n/CMapType 2 def\n1 begincodespacerange\n<0000><FFFF>\nendcodespacerange\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 907
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 910
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->usedGlyphs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 911
    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 912
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v6

    if-eqz v6, :cond_0

    .line 913
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 915
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->writeBfrange(Lcom/itextpdf/io/source/OutputStream;Ljava/util/List;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 920
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->writeBfrange(Lcom/itextpdf/io/source/OutputStream;Ljava/util/List;)I

    move-result v1

    add-int/2addr v4, v1

    if-nez v4, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 925
    :cond_2
    const-string v1, "endcmap\nCMapName currentdict /CMap defineresource pop\nend end\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 928
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/OutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    return-object v1
.end method

.method public isBuiltWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->isBuiltWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 657
    invoke-static {p2}, Lcom/itextpdf/kernel/font/PdfType0Font;->normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/CMapEncoding;->isBuiltWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V
    .locals 1

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 392
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 p3, p3, 0x1

    invoke-direct {v0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;II)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->convertToBytes(Lcom/itextpdf/io/font/otf/GlyphLine;)[B

    move-result-object p1

    .line 393
    invoke-static {p4, p1}, Lcom/itextpdf/io/util/StreamUtil;->writeHexedString(Ljava/io/OutputStream;[B)V

    :cond_0
    return-void
.end method

.method public writeText(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfOutputStream;)V
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->convertToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2, p1}, Lcom/itextpdf/io/util/StreamUtil;->writeHexedString(Ljava/io/OutputStream;[B)V

    return-void
.end method

.class public final Lcom/itextpdf/kernel/font/PdfFontFactory;
.super Ljava/lang/Object;
.source "PdfFontFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHED:Z = true

.field private static final DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    sput-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const-string v0, "Helvetica"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Lcom/itextpdf/io/font/FontProgram;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 302
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 292
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 265
    :cond_0
    instance-of v1, p0, Lcom/itextpdf/io/font/Type1Font;

    if-eqz v1, :cond_1

    .line 266
    check-cast p0, Lcom/itextpdf/io/font/Type1Font;

    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFontFromType1FontProgram(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType1Font;

    move-result-object p0

    return-object p0

    .line 267
    :cond_1
    instance-of v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;

    if-eqz v1, :cond_6

    .line 268
    const-string v0, "Identity-H"

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object p1, v0

    .line 271
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Identity-V"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 274
    :cond_4
    check-cast p0, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createTrueTypeFontFromTrueTypeFontProgram(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    move-result-object p0

    return-object p0

    .line 272
    :cond_5
    :goto_0
    check-cast p0, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createType0FontFromTrueTypeFontProgram(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType0Font;

    move-result-object p0

    return-object p0

    .line 277
    :cond_6
    instance-of v1, p0, Lcom/itextpdf/io/font/CidFont;

    if-eqz v1, :cond_7

    .line 278
    check-cast p0, Lcom/itextpdf/io/font/CidFont;

    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createType0FontFromCidFontProgram(Lcom/itextpdf/io/font/CidFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType0Font;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static createFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2

    if-eqz p0, :cond_5

    .line 116
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v0, Lcom/itextpdf/kernel/font/PdfType1Font;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/font/PdfType1Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    .line 119
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    new-instance v0, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/font/PdfType0Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    .line 121
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TrueType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    new-instance v0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    .line 123
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    new-instance v0, Lcom/itextpdf/kernel/font/PdfType3Font;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/font/PdfType3Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    .line 125
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MMType1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    new-instance v0, Lcom/itextpdf/kernel/font/PdfType1Font;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/font/PdfType1Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    .line 129
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Dictionary doesn\'t have supported font data."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_5
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot create font from null pdf dictionary."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFont(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 232
    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 168
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0

    .line 171
    :cond_0
    invoke-virtual {p3, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->findFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    if-nez v0, :cond_1

    .line 173
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/font/PdfFont;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    :cond_1
    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-static {p0, p3}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    .line 250
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont([BLcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont([BLjava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 344
    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    invoke-static {p0, p3}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont([BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    .line 362
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method private static createFontFromType1FontProgram(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType1Font;
    .locals 2

    .line 661
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$1;->$SwitchMap$com$itextpdf$kernel$font$PdfFontFactory$EmbeddingStrategy:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Unsupported font embedding strategy."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 670
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/io/font/Type1Font;->isBuiltInFont()Z

    move-result p2

    xor-int/2addr v0, p2

    goto :goto_1

    .line 663
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/io/font/Type1Font;->isBuiltInFont()Z

    move-result p2

    if-nez p2, :cond_4

    .line 679
    :goto_1
    new-instance p2, Lcom/itextpdf/kernel/font/PdfType1Font;

    invoke-direct {p2, p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfType1Font;-><init>(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;Z)V

    return-object p2

    .line 664
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Standard fonts cannot be embedded."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createRegisteredFont(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 509
    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;I)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;I)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 536
    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;IZ)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;IZ)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-static {p0, p3, p4}, Lcom/itextpdf/io/font/FontProgramFactory;->createRegisteredFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    .line 456
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 483
    invoke-static {p0, p1, p2, v0, p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;IZ)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method private static createTrueTypeFontFromTrueTypeFontProgram(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfTrueTypeFont;
    .locals 1

    .line 704
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$1;->$SwitchMap$com$itextpdf$kernel$font$PdfFontFactory$EmbeddingStrategy:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Unsupported font embedding strategy."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 713
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/io/font/FontNames;->allowEmbedding()Z

    move-result v0

    goto :goto_1

    .line 706
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/io/font/FontNames;->allowEmbedding()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 722
    :goto_1
    new-instance p2, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    invoke-direct {p2, p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;-><init>(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Z)V

    return-object p2

    .line 707
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "{0} cannot be embedded due to licensing restrictions."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontNames;->getStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 707
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p0

    throw p0
.end method

.method public static createTtcFont(Ljava/lang/String;ILjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-static {p0, p1, p4}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    .line 403
    invoke-static {p0, p2, p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method public static createTtcFont([BILjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    invoke-static {p0, p1, p4}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont([BIZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    .line 383
    invoke-static {p0, p2, p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p0

    return-object p0
.end method

.method private static createType0FontFromCidFontProgram(Lcom/itextpdf/io/font/CidFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType0Font;
    .locals 1

    .line 727
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CidFont;->compatibleWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 730
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$1;->$SwitchMap$com$itextpdf$kernel$font$PdfFontFactory$EmbeddingStrategy:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 739
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Unsupported font embedding strategy."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 737
    :cond_2
    :goto_0
    new-instance p2, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;-><init>(Lcom/itextpdf/io/font/CidFont;Ljava/lang/String;)V

    return-object p2

    .line 732
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Cannot embed Type0 font with CID font program based on non-generic predefined CMap."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createType0FontFromTrueTypeFontProgram(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType0Font;
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->allowEmbedding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 688
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$1;->$SwitchMap$com$itextpdf$kernel$font$PdfFontFactory$EmbeddingStrategy:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-eq p2, p0, :cond_0

    .line 697
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Unsupported font embedding strategy."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 695
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Cannot create Type0 font with true type font program without embedding it."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 693
    :cond_1
    new-instance p2, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;-><init>(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;)V

    return-object p2

    .line 685
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "{0} cannot be embedded due to licensing restrictions."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontNames;->getStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 685
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p0

    throw p0
.end method

.method public static createType3Font(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/font/PdfType3Font;
    .locals 1

    .line 427
    new-instance v0, Lcom/itextpdf/kernel/font/PdfType3Font;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/kernel/font/PdfType3Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createType3Font(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/font/PdfType3Font;
    .locals 1

    .line 414
    new-instance v0, Lcom/itextpdf/kernel/font/PdfType3Font;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/font/PdfType3Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V

    return-object v0
.end method

.method public static getRegisteredFamilies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    invoke-static {}, Lcom/itextpdf/io/font/FontProgramFactory;->getRegisteredFontFamilies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisteredFonts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 636
    invoke-static {}, Lcom/itextpdf/io/font/FontProgramFactory;->getRegisteredFonts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isRegistered(Ljava/lang/String;)Z
    .locals 0

    .line 655
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramFactory;->isRegisteredFont(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static register(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 597
    invoke-static {p0, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->register(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 607
    invoke-static {p0, p1}, Lcom/itextpdf/io/font/FontProgramFactory;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerDirectory(Ljava/lang/String;)I
    .locals 0

    .line 617
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramFactory;->registerFontDirectory(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static registerFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 586
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/FontProgramFactory;->registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerSystemDirectories()I
    .locals 1

    .line 627
    invoke-static {}, Lcom/itextpdf/io/font/FontProgramFactory;->registerSystemFontDirectories()I

    move-result v0

    return v0
.end method

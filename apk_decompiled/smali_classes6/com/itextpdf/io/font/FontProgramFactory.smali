.class public final Lcom/itextpdf/io/font/FontProgramFactory;
.super Ljava/lang/Object;
.source "FontProgramFactory.java"


# static fields
.field private static DEFAULT_CACHED:Z = true

.field private static fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;-><init>()V

    sput-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRegisteredFontFamilies()V
    .locals 1

    .line 508
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->clearRegisteredFontFamilies()V

    return-void
.end method

.method public static clearRegisteredFonts()V
    .locals 1

    .line 503
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->clearRegisteredFonts()V

    return-void
.end method

.method public static createFont()Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-string v0, "Helvetica"

    invoke-static {v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    sget-boolean v1, Lcom/itextpdf/io/font/FontProgramFactory;->DEFAULT_CACHED:Z

    invoke-static {p0, v0, v1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-static {p0, p1}, Lcom/itextpdf/io/font/FontCacheKey;->create(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 323
    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->getFont(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 328
    :cond_0
    new-instance v1, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v1, p0, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    .line 329
    invoke-static {v1, v0}, Lcom/itextpdf/io/font/FontCache;->saveFont(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-static {p0, v0, p1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method private static createFont(Ljava/lang/String;[BZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgram;->trimFontStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {p0}, Lcom/itextpdf/io/font/constants/StandardFonts;->isStandardFont(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 165
    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->isPredefinedCidFont(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz p2, :cond_1

    .line 170
    invoke-static {p0, p1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFontCacheKey(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v5

    .line 171
    invoke-static {v5}, Lcom/itextpdf/io/font/FontCache;->getFont(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v6

    if-eqz v6, :cond_2

    return-object v6

    :cond_1
    move-object v5, v4

    :cond_2
    if-nez p0, :cond_6

    if-eqz p1, :cond_12

    .line 181
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/io/font/WoffConverter;->isWoffFont([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-static {p1}, Lcom/itextpdf/io/font/WoffConverter;->convert([B)[B

    move-result-object p1

    goto :goto_1

    .line 183
    :cond_3
    invoke-static {p1}, Lcom/itextpdf/io/font/woff2/Woff2Converter;->isWoff2Font([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    invoke-static {p1}, Lcom/itextpdf/io/font/woff2/Woff2Converter;->convert([B)[B

    move-result-object p1

    .line 186
    :cond_4
    :goto_1
    new-instance v0, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v0, v4

    :goto_2
    if-nez v0, :cond_5

    .line 191
    :try_start_1
    new-instance v1, Lcom/itextpdf/io/font/Type1Font;

    invoke-direct {v1, v4, v4, p1, v4}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v1

    goto/16 :goto_8

    :catch_1
    :cond_5
    move-object v4, v0

    goto/16 :goto_8

    :cond_6
    const/16 v6, 0x2e

    .line 198
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-lez v6, :cond_7

    .line 200
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    move-object v6, v4

    :goto_3
    if-nez v1, :cond_11

    .line 202
    const-string v1, ".afm"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, ".pfm"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_7

    :cond_8
    if-eqz v3, :cond_9

    .line 205
    new-instance v4, Lcom/itextpdf/io/font/CidFont;

    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->getCompatibleCmaps(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v4, p0, p1}, Lcom/itextpdf/io/font/CidFont;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_8

    .line 206
    :cond_9
    const-string v1, ".ttf"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, ".otf"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    .line 212
    :cond_a
    const-string v1, ".woff"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ".woff2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    .line 233
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".ttc,"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_12

    add-int/lit8 v1, p1, 0x4

    .line 238
    :try_start_2
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x5

    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 242
    new-instance v4, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v4, v1, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception p0

    .line 244
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_c
    :goto_4
    if-nez p1, :cond_d

    .line 214
    invoke-static {v0}, Lcom/itextpdf/io/font/FontProgramFactory;->readFontBytesFromPath(Ljava/lang/String;)[B

    move-result-object p1

    .line 216
    :cond_d
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 218
    :try_start_3
    invoke-static {p1}, Lcom/itextpdf/io/font/WoffConverter;->convert([B)[B

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    .line 220
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string p2, "Invalid WOFF font file."

    invoke-direct {p1, p2, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 226
    :cond_e
    :try_start_4
    invoke-static {p1}, Lcom/itextpdf/io/font/woff2/Woff2Converter;->convert([B)[B

    move-result-object p1
    :try_end_4
    .catch Lcom/itextpdf/io/exceptions/FontCompressionException; {:try_start_4 .. :try_end_4} :catch_4

    .line 231
    :goto_5
    new-instance v4, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v4, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>([B)V

    goto :goto_8

    :catch_4
    move-exception p0

    .line 228
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string p2, "Invalid WOFF2 font file."

    invoke-direct {p1, p2, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_f
    :goto_6
    if-eqz p1, :cond_10

    .line 208
    new-instance v4, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v4, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>([B)V

    goto :goto_8

    .line 210
    :cond_10
    new-instance v4, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v4, p0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 203
    :cond_11
    :goto_7
    new-instance p1, Lcom/itextpdf/io/font/Type1Font;

    invoke-direct {p1, p0, v4, v4, v4}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    move-object v4, p1

    :cond_12
    :goto_8
    if-nez v4, :cond_14

    if-eqz p0, :cond_13

    .line 251
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string p2, "Type of font {0} is not recognized."

    invoke-direct {p1, p2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p0

    throw p0

    .line 253
    :cond_13
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Type of font is not recognized."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    if-eqz p2, :cond_15

    .line 256
    invoke-static {v4, v5}, Lcom/itextpdf/io/font/FontCache;->saveFont(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    :cond_15
    return-object v4
.end method

.method public static createFont([B)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    sget-boolean v1, Lcom/itextpdf/io/font/FontProgramFactory;->DEFAULT_CACHED:Z

    invoke-static {v0, p0, v1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method public static createFont([BIZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-static {p0, p1}, Lcom/itextpdf/io/font/FontCacheKey;->create([BI)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 346
    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->getFont(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 351
    :cond_0
    new-instance v1, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v1, p0, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>([BI)V

    if-eqz p2, :cond_1

    .line 352
    invoke-static {v1, v0}, Lcom/itextpdf/io/font/FontCache;->saveFont(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static createFont([BZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    invoke-static {v0, p0, p1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method private static createFontCacheKey(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontCacheKey;
    .locals 0

    if-eqz p0, :cond_0

    .line 496
    invoke-static {p0}, Lcom/itextpdf/io/font/FontCacheKey;->create(Ljava/lang/String;)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object p0

    goto :goto_0

    .line 498
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/io/font/FontCacheKey;->create([B)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static createRegisteredFont(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/io/font/FontRegisterProvider;->getFont(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method public static createRegisteredFont(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/io/font/FontRegisterProvider;->getFont(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method public static createRegisteredFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0, p1, p2}, Lcom/itextpdf/io/font/FontRegisterProvider;->getFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method public static createType1Font(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    sget-boolean v0, Lcom/itextpdf/io/font/FontProgramFactory;->DEFAULT_CACHED:Z

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createType1Font(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method public static createType1Font(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 306
    invoke-static {p0, p1, v0, v0, p2}, Lcom/itextpdf/io/font/FontProgramFactory;->createType1Font(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method private static createType1Font(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 482
    invoke-static {p0, p2}, Lcom/itextpdf/io/font/FontProgramFactory;->createFontCacheKey(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    .line 483
    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->getFont(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 489
    :cond_1
    new-instance v1, Lcom/itextpdf/io/font/Type1Font;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    if-eqz p4, :cond_2

    .line 490
    invoke-static {v1, v0}, Lcom/itextpdf/io/font/FontCache;->saveFont(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static createType1Font([B[B)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    sget-boolean v0, Lcom/itextpdf/io/font/FontProgramFactory;->DEFAULT_CACHED:Z

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createType1Font([B[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method public static createType1Font([B[BZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 281
    invoke-static {v0, v0, p0, p1, p2}, Lcom/itextpdf/io/font/FontProgramFactory;->createType1Font(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    return-object p0
.end method

.method public static getRegisteredFontFamilies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 465
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->getRegisteredFontFamilies()Ljava/util/Set;

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

    .line 456
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->getRegisteredFonts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isRegisteredFont(Ljava/lang/String;)Z
    .locals 1

    .line 475
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->isRegisteredFont(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static readFontBytesFromPath(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v1, p0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 512
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-long v2, v1

    .line 513
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 516
    new-array p0, v1, [B

    .line 517
    invoke-virtual {v0, p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    return-object p0

    .line 514
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Source data from \"{0}\" is bigger than byte array can hold."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerFont(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 417
    invoke-static {p0, v0}, Lcom/itextpdf/io/font/FontProgramFactory;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 427
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerFontDirectory(Ljava/lang/String;)I
    .locals 1

    .line 437
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontDirectory(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 406
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0, p1, p2}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerSystemFontDirectories()I
    .locals 1

    .line 447
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerSystemFontDirectories()I

    move-result v0

    return v0
.end method

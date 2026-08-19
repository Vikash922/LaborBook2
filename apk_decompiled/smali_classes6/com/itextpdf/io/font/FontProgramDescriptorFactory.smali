.class public final Lcom/itextpdf/io/font/FontProgramDescriptorFactory;
.super Ljava/lang/Object;
.source "FontProgramDescriptorFactory.java"


# static fields
.field private static FETCH_CACHED_FIRST:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fetchCachedDescriptor(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 0

    if-eqz p0, :cond_0

    .line 130
    invoke-static {p0}, Lcom/itextpdf/io/font/FontCacheKey;->create(Ljava/lang/String;)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object p0

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/io/font/FontCacheKey;->create([B)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object p0

    .line 134
    :goto_0
    invoke-static {p0}, Lcom/itextpdf/io/font/FontCache;->getFont(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 135
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptorFromFontProgram(Lcom/itextpdf/io/font/FontProgram;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static fetchCidFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 2

    .line 185
    new-instance v0, Lcom/itextpdf/io/font/CidFont;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/io/font/CidFont;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 186
    new-instance p0, Lcom/itextpdf/io/font/FontProgramDescriptor;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/CidFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/io/font/CidFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;-><init>(Lcom/itextpdf/io/font/FontNames;Lcom/itextpdf/io/font/FontMetrics;)V

    return-object p0
.end method

.method public static fetchDescriptor(Lcom/itextpdf/io/font/FontProgram;)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptorFromFontProgram(Lcom/itextpdf/io/font/FontProgram;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static fetchDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 6

    .line 53
    const-string v0, ".woff"

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgram;->trimFontStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {p0}, Lcom/itextpdf/io/font/constants/StandardFonts;->isStandardFont(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    invoke-static {v2}, Lcom/itextpdf/io/font/FontCache;->isPredefinedCidFont(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 63
    :goto_0
    sget-boolean v5, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->FETCH_CACHED_FIRST:Z

    if-eqz v5, :cond_2

    .line 64
    invoke-static {p0, v1}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchCachedDescriptor(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v5

    if-eqz v5, :cond_2

    return-object v5

    .line 71
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_a

    .line 72
    const-string v3, ".afm"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ".pfm"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_4

    .line 75
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchCidFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p0

    goto :goto_5

    .line 76
    :cond_4
    const-string v3, ".ttf"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, ".otf"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    .line 78
    :cond_5
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, ".woff2"

    invoke-virtual {v5, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    .line 87
    :cond_6
    invoke-static {v2}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchTTCDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p0

    goto :goto_5

    .line 80
    :cond_7
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 81
    invoke-static {v2}, Lcom/itextpdf/io/font/FontProgramFactory;->readFontBytesFromPath(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/io/font/WoffConverter;->convert([B)[B

    move-result-object p0

    goto :goto_2

    .line 83
    :cond_8
    invoke-static {v2}, Lcom/itextpdf/io/font/FontProgramFactory;->readFontBytesFromPath(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/io/font/woff2/Woff2Converter;->convert([B)[B

    move-result-object p0

    .line 85
    :goto_2
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchTrueTypeFontDescriptor([B)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p0

    goto :goto_5

    .line 77
    :cond_9
    :goto_3
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchTrueTypeFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p0

    goto :goto_5

    .line 73
    :cond_a
    :goto_4
    invoke-static {p0, v1}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchType1FontDescriptor(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object v1, p0

    :catch_0
    :cond_b
    :goto_6
    return-object v1
.end method

.method public static fetchDescriptor([B)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 97
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    sget-boolean v1, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->FETCH_CACHED_FIRST:Z

    if-eqz v1, :cond_1

    .line 103
    invoke-static {v0, p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchCachedDescriptor(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_1
    move-object v1, v0

    .line 110
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchTrueTypeFontDescriptor([B)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v1, :cond_3

    .line 115
    :try_start_1
    invoke-static {v0, p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchType1FontDescriptor(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return-object v1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private static fetchDescriptorFromFontProgram(Lcom/itextpdf/io/font/FontProgram;)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 2

    .line 190
    new-instance v0, Lcom/itextpdf/io/font/FontProgramDescriptor;

    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/font/FontProgramDescriptor;-><init>(Lcom/itextpdf/io/font/FontNames;Lcom/itextpdf/io/font/FontMetrics;)V

    return-object v0
.end method

.method private static fetchOpenTypeFontDescriptor(Lcom/itextpdf/io/font/OpenTypeParser;)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/OpenTypeParser;->loadTables(Z)V

    .line 174
    new-instance v0, Lcom/itextpdf/io/font/FontProgramDescriptor;

    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->getPostTable()Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    move-result-object v2

    iget v2, v2, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->italicAngle:F

    .line 175
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->getPostTable()Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    move-result-object p0

    iget-boolean p0, p0, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->isFixedPitch:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/itextpdf/io/font/FontProgramDescriptor;-><init>(Lcom/itextpdf/io/font/FontNames;FZ)V

    return-object v0
.end method

.method private static fetchTTCDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ttc,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x5

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>(Ljava/lang/String;I)V

    .line 152
    invoke-static {v0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchOpenTypeFontDescriptor(Lcom/itextpdf/io/font/OpenTypeParser;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p0

    .line 153
    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->close()V

    return-object p0

    :catch_0
    move-exception p0

    .line 149
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static fetchTrueTypeFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>(Ljava/lang/String;)V

    .line 162
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchOpenTypeFontDescriptor(Lcom/itextpdf/io/font/OpenTypeParser;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 161
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 163
    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static fetchTrueTypeFontDescriptor([B)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>([B)V

    .line 168
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchOpenTypeFontDescriptor(Lcom/itextpdf/io/font/OpenTypeParser;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 167
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 169
    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static fetchType1FontDescriptor(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/itextpdf/io/font/Type1Font;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 181
    new-instance p0, Lcom/itextpdf/io/font/FontProgramDescriptor;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Font;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object p1

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Font;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;-><init>(Lcom/itextpdf/io/font/FontNames;Lcom/itextpdf/io/font/FontMetrics;)V

    return-object p0
.end method

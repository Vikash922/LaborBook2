.class public Lcom/itextpdf/kernel/font/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# static fields
.field private static final uniMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/io/font/cmap/CMapToUnicode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/font/FontUtil;->uniMaps:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRandomSubsetPrefixForFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    mul-double/2addr v2, v4

    const-wide v4, 0x4050400000000000L    # 65.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x2b

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static convertCompositeWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/io/util/IntHashtable;
    .locals 8

    .line 146
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 152
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    .line 153
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 154
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 155
    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    move v2, v1

    .line 156
    :goto_1
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 157
    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    .line 158
    invoke-virtual {v0, v3, v6}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 v2, v2, 0x1

    move v3, v7

    goto :goto_1

    .line 161
    :cond_1
    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v4

    add-int/lit8 v2, v2, 0x2

    .line 162
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v5

    :goto_2
    if-gt v3, v4, :cond_2

    .line 164
    invoke-virtual {v0, v3, v5}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    :cond_3
    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method static convertSimpleWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;II)[I
    .locals 5

    const/16 v0, 0x100

    .line 130
    new-array v1, v0, [I

    .line 131
    invoke-static {v1, p2}, Ljava/util/Arrays;->fill([II)V

    if-nez p0, :cond_0

    .line 133
    const-class p0, Lcom/itextpdf/kernel/font/FontUtil;

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 134
    const-string p1, "Font dictionary does not contain required /Widths entry."

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int v3, p1, v2

    if-ge v3, v0, :cond_2

    .line 139
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 140
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static createRandomFontName()Ljava/lang/String;
    .locals 6

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 124
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    mul-double/2addr v2, v4

    const-wide v4, 0x4050400000000000L    # 65.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getToUnicodeFromUniMap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 102
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/font/FontUtil;->uniMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    monitor-exit v1

    return-object p0

    .line 107
    :cond_1
    const-string v2, "Identity-H"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-static {}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->getIdentity()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/io/font/FontCache;->getUni2CidCmap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapUniCid;

    move-result-object v2

    if-nez v2, :cond_3

    .line 112
    monitor-exit v1

    return-object v0

    .line 114
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/io/font/cmap/CMapUniCid;->exportToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v0

    .line 116
    :goto_0
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static processToUnicode(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .locals 2

    .line 82
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p0

    .line 85
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;-><init>([B)V

    .line 86
    new-instance p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;-><init>()V

    .line 87
    const-string v1, ""

    invoke-static {v1, p0, v0}, Lcom/itextpdf/io/font/cmap/CMapParser;->parseCid(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/AbstractCMap;Lcom/itextpdf/io/font/cmap/ICMapLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    const-class p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 90
    const-string v0, "Unknown error while processing CMap."

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 91
    sget-object p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->EmptyCMapToUnicodeMap:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    goto :goto_0

    .line 93
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->IdentityH:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 94
    invoke-static {}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->getIdentity()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

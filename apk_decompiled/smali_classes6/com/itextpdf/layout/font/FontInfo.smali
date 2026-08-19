.class public final Lcom/itextpdf/layout/font/FontInfo;
.super Ljava/lang/Object;
.source "FontInfo.java"


# static fields
.field private static final fontNamesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/io/font/FontCacheKey;",
            "Lcom/itextpdf/io/font/FontProgramDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final alias:Ljava/lang/String;

.field private final descriptor:Lcom/itextpdf/io/font/FontProgramDescriptor;

.field private final encoding:Ljava/lang/String;

.field private final fontData:[B

.field private final fontName:Ljava/lang/String;

.field private final hash:I

.field private final range:Lcom/itextpdf/layout/font/Range;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/layout/font/FontInfo;->fontNamesCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/io/font/FontProgramDescriptor;Lcom/itextpdf/layout/font/Range;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/itextpdf/layout/font/FontInfo;->fontData:[B

    .line 84
    iput-object p3, p0, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/itextpdf/layout/font/FontInfo;->descriptor:Lcom/itextpdf/io/font/FontProgramDescriptor;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lcom/itextpdf/layout/font/RangeBuilder;->getFullRange()Lcom/itextpdf/layout/font/Range;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lcom/itextpdf/layout/font/FontInfo;->range:Lcom/itextpdf/layout/font/Range;

    if-eqz p6, :cond_1

    .line 87
    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    iput-object p4, p0, Lcom/itextpdf/layout/font/FontInfo;->alias:Ljava/lang/String;

    .line 88
    invoke-static {p1, p2, p3, p5}, Lcom/itextpdf/layout/font/FontInfo;->calculateHashCode(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/layout/font/Range;)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/font/FontInfo;->hash:I

    return-void
.end method

.method private static calculateHashCode(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/layout/font/Range;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    mul-int/lit8 p0, p0, 0x1f

    .line 202
    invoke-static {p1}, Lcom/itextpdf/io/util/ArrayUtil;->hashCode([B)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    if-eqz p2, :cond_1

    .line 203
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 204
    invoke-virtual {p3}, Lcom/itextpdf/layout/font/Range;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static create(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontInfo;->create(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 7

    .line 101
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptor(Lcom/itextpdf/io/font/FontProgram;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v4

    .line 102
    new-instance p0, Lcom/itextpdf/layout/font/FontInfo;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/font/FontInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/io/font/FontProgramDescriptor;Lcom/itextpdf/layout/font/Range;Ljava/lang/String;)V

    return-object p0
.end method

.method public static create(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p1, v0}, Lcom/itextpdf/layout/font/FontInfo;->create(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 8

    .line 92
    new-instance v7, Lcom/itextpdf/layout/font/FontInfo;

    iget-object v1, p0, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/layout/font/FontInfo;->fontData:[B

    iget-object v3, p0, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    iget-object v4, p0, Lcom/itextpdf/layout/font/FontInfo;->descriptor:Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-object v0, v7

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/font/FontInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/io/font/FontProgramDescriptor;Lcom/itextpdf/layout/font/Range;Ljava/lang/String;)V

    return-object v7
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 9

    .line 110
    invoke-static {p0}, Lcom/itextpdf/io/font/FontCacheKey;->create(Ljava/lang/String;)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/itextpdf/layout/font/FontInfo;->getFontNamesFromCache(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 113
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/itextpdf/layout/font/FontInfo;->putFontNamesToCache(Lcom/itextpdf/io/font/FontCacheKey;Lcom/itextpdf/io/font/FontProgramDescriptor;)V

    :cond_0
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 116
    new-instance v0, Lcom/itextpdf/layout/font/FontInfo;

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/itextpdf/layout/font/FontInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/io/font/FontProgramDescriptor;Lcom/itextpdf/layout/font/Range;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static create([BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 9

    .line 120
    invoke-static {p0}, Lcom/itextpdf/io/font/FontCacheKey;->create([B)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/itextpdf/layout/font/FontInfo;->getFontNamesFromCache(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 123
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptor([B)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/itextpdf/layout/font/FontInfo;->putFontNamesToCache(Lcom/itextpdf/io/font/FontCacheKey;Lcom/itextpdf/io/font/FontProgramDescriptor;)V

    :cond_0
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 126
    new-instance v0, Lcom/itextpdf/layout/font/FontInfo;

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/itextpdf/layout/font/FontInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/io/font/FontProgramDescriptor;Lcom/itextpdf/layout/font/Range;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getFontNamesFromCache(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 1

    .line 209
    sget-object v0, Lcom/itextpdf/layout/font/FontInfo;->fontNamesCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/io/font/FontProgramDescriptor;

    return-object p0
.end method

.method private static putFontNamesToCache(Lcom/itextpdf/io/font/FontCacheKey;Lcom/itextpdf/io/font/FontProgramDescriptor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 214
    sget-object v0, Lcom/itextpdf/layout/font/FontInfo;->fontNamesCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 172
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/layout/font/FontInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 174
    :cond_1
    check-cast p1, Lcom/itextpdf/layout/font/FontInfo;

    .line 175
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    if-nez v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontInfo;->range:Lcom/itextpdf/layout/font/Range;

    iget-object v3, p1, Lcom/itextpdf/layout/font/FontInfo;->range:Lcom/itextpdf/layout/font/Range;

    .line 176
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/font/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itextpdf/layout/font/FontInfo;->fontData:[B

    iget-object v3, p1, Lcom/itextpdf/layout/font/FontInfo;->fontData:[B

    .line 177
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->descriptor:Lcom/itextpdf/io/font/FontProgramDescriptor;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFontData()[B
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->fontData:[B

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontUnicodeRange()Lcom/itextpdf/layout/font/Range;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->range:Lcom/itextpdf/layout/font/Range;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/itextpdf/layout/font/FontInfo;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->descriptor:Lcom/itextpdf/io/font/FontProgramDescriptor;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 191
    const-string v2, "{0}+{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 196
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/itextpdf/io/font/cmap/CMapToUnicode;
.super Lcom/itextpdf/io/font/cmap/AbstractCMap;
.source "CMapToUnicode.java"


# static fields
.field public static EmptyCMapToUnicodeMap:Lcom/itextpdf/io/font/cmap/CMapToUnicode;


# instance fields
.field private byteMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;-><init>(Z)V

    sput-object v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->EmptyCMapToUnicodeMap:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;-><init>()V

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    return-void
.end method

.method private convertToInt([C)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 154
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 155
    aget-char v2, p1, v0

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-char p1, p1, v0

    add-int/2addr v1, p1

    return v1
.end method

.method private createCharsFromDoubleBytes([B)[C
    .locals 5

    .line 193
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 194
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 195
    div-int/lit8 v2, v1, 0x2

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createCharsFromSingleBytes([B)[C
    .locals 3

    .line 181
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 182
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    new-array v0, v2, [C

    aput-char p1, v0, v1

    return-object v0

    .line 184
    :cond_0
    array-length v0, p1

    new-array v0, v0, [C

    .line 185
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 186
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getIdentity()Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .locals 3

    .line 80
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const v2, 0x10001

    if-ge v1, v2, :cond_0

    .line 82
    invoke-static {v1}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->addChar(I[C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method addChar(I[C)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
    .locals 4

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 169
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    check-cast p2, [B

    invoke-direct {p0, p2}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->createCharsFromDoubleBytes([B)[C

    move-result-object p2

    .line 170
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 172
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    check-cast p2, [B

    invoke-direct {p0, p2}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->createCharsFromDoubleBytes([B)[C

    move-result-object p2

    .line 173
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :cond_1
    const-class p1, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 176
    const-string p2, "ToUnicode CMap more than 2 bytes not supported."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createDirectMapping()Lcom/itextpdf/io/util/IntHashtable;
    .locals 5

    .line 133
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 136
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->convertToInt([C)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public createReverseMapping()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 146
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    invoke-direct {p0, v3}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->convertToInt([C)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasByteMappings()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lookup(I)[C
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    return-object p1
.end method

.method public lookup([B)[C
    .locals 2

    const/4 v0, 0x0

    .line 121
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup([BII)[C

    move-result-object p1

    return-object p1
.end method

.method public lookup([BII)[C
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 108
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 109
    iget-object p2, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 111
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    add-int/2addr p2, v0

    .line 113
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p3, p1

    .line 115
    iget-object p1, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

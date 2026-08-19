.class public Lcom/itextpdf/io/font/CMapEncoding;
.super Ljava/lang/Object;
.source "CMapEncoding.java"


# static fields
.field private static final IDENTITY_H_V_CODESPACE_RANGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

.field private cid2Uni:Lcom/itextpdf/io/font/cmap/CMapCidUni;

.field private cmap:Ljava/lang/String;

.field private code2Cid:Lcom/itextpdf/io/util/IntHashtable;

.field private codeSpaceRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private isDirect:Z

.field private uniMap:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 62
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    filled-new-array {v1, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/CMapEncoding;->IDENTITY_H_V_CODESPACE_RANGES:Ljava/util/List;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cmap:Ljava/lang/String;

    .line 83
    const-string v0, "Identity-H"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Identity-V"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    .line 88
    :cond_1
    sget-object p1, Lcom/itextpdf/io/font/CMapEncoding;->IDENTITY_H_V_CODESPACE_RANGES:Ljava/util/List;

    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cmap:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/itextpdf/io/font/CMapEncoding;->uniMap:Ljava/lang/String;

    .line 99
    const-string v0, "Identity-H"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Identity-V"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/io/font/FontCache;->getCid2Byte(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapCidByte;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    .line 105
    invoke-virtual {p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getReversMap()Lcom/itextpdf/io/util/IntHashtable;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->code2Cid:Lcom/itextpdf/io/util/IntHashtable;

    .line 106
    iget-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getCodeSpaceRanges()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/itextpdf/io/font/FontCache;->getCid2UniCmap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapCidUni;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Uni:Lcom/itextpdf/io/font/cmap/CMapCidUni;

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    .line 102
    sget-object p1, Lcom/itextpdf/io/font/CMapEncoding;->IDENTITY_H_V_CODESPACE_RANGES:Ljava/util/List;

    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cmap:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    .line 114
    :try_start_0
    new-instance v1, Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;

    invoke-direct {v1, p2}, Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;-><init>([B)V

    invoke-static {p1, v0, v1}, Lcom/itextpdf/io/font/cmap/CMapParser;->parseCid(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/AbstractCMap;Lcom/itextpdf/io/font/cmap/ICMapLocation;)V

    .line 115
    iget-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getReversMap()Lcom/itextpdf/io/util/IntHashtable;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->code2Cid:Lcom/itextpdf/io/util/IntHashtable;

    .line 116
    iget-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getCodeSpaceRanges()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Failed to parse encoding stream."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public containsCodeInCodeSpaceRange(II)Z
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 219
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 220
    iget-object v2, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    if-ne p2, v2, :cond_3

    .line 223
    iget-object v2, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 224
    iget-object v3, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    add-int/lit8 v4, p2, -0x1

    const/16 v5, 0xff

    const/4 v6, 0x1

    move v9, v0

    move v8, v5

    move v7, v6

    :goto_1
    if-ltz v4, :cond_2

    and-int v10, p1, v8

    shr-int/2addr v10, v9

    .line 228
    aget-byte v11, v2, v4

    and-int/2addr v11, v5

    if-lt v10, v11, :cond_0

    aget-byte v11, v3, v4

    and-int/2addr v11, v5

    if-le v10, v11, :cond_1

    :cond_0
    move v7, v0

    :cond_1
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v9, v9, 0x8

    shl-int/lit8 v8, v8, 0x8

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    return v6

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    return v0
.end method

.method public fillCmapBytes(I[BI)I
    .locals 3

    .line 180
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 181
    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 182
    aput-byte p1, p2, v0

    goto :goto_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->lookup(I)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 185
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, p3, 0x1

    .line 186
    aget-byte v2, p1, v0

    aput-byte v2, p2, p3

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public fillCmapBytes(ILcom/itextpdf/io/source/ByteBuffer;)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    if-eqz v0, :cond_0

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 194
    invoke-virtual {p2, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 195
    invoke-virtual {p2, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->lookup(I)[B

    move-result-object p1

    .line 198
    invoke-virtual {p2, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    :goto_0
    return-void
.end method

.method public getCidCode(I)I
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    if-eqz v0, :cond_0

    return p1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->code2Cid:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result p1

    return p1
.end method

.method public getCmapBytes(I)[B
    .locals 2

    .line 173
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapBytesLength(I)I

    move-result v0

    .line 174
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/io/font/CMapEncoding;->fillCmapBytes(I[BI)I

    return-object v0
.end method

.method public getCmapBytesLength(I)I
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->lookup(I)[B

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method public getCmapName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cmap:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdering()Ljava/lang/String;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "Identity"

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getOrdering()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "Adobe"

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getRegistry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupplement()I
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getSupplement()I

    move-result v0

    return v0
.end method

.method public getUniMapName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->uniMap:Ljava/lang/String;

    return-object v0
.end method

.method public hasUniMap()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->uniMap:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cmap:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isDirect()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    return v0
.end method

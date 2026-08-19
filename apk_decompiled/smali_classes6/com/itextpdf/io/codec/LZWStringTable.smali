.class public Lcom/itextpdf/io/codec/LZWStringTable;
.super Ljava/lang/Object;
.source "LZWStringTable.java"


# static fields
.field private static final HASHSIZE:S = 0x26f5s

.field private static final HASHSTEP:S = 0x7f7s

.field private static final HASH_FREE:S = -0x1s

.field private static final MAXBITS:I = 0xc

.field private static final MAXSTR:I = 0x1000

.field private static final NEXT_FIRST:S = -0x1s

.field private static final RES_CODES:I = 0x2


# instance fields
.field numStrings_:S

.field strChr_:[B

.field strHsh_:[S

.field strLen_:[I

.field strNxt_:[S


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 96
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strChr_:[B

    .line 97
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strNxt_:[S

    .line 98
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strLen_:[I

    const/16 v0, 0x26f5

    .line 99
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strHsh_:[S

    return-void
.end method

.method public static Hash(SB)I
    .locals 0

    shl-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    xor-int/2addr p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    .line 183
    rem-int/lit16 p0, p0, 0x26f5

    return p0
.end method


# virtual methods
.method public AddCharString(SB)I
    .locals 4

    .line 113
    iget-short v0, p0, Lcom/itextpdf/io/codec/LZWStringTable;->numStrings_:S

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    const p1, 0xffff

    return p1

    .line 118
    :cond_0
    invoke-static {p1, p2}, Lcom/itextpdf/io/codec/LZWStringTable;->Hash(SB)I

    move-result v0

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strHsh_:[S

    aget-short v2, v1, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit16 v0, v0, 0x7f7

    .line 120
    rem-int/lit16 v0, v0, 0x26f5

    goto :goto_0

    .line 122
    :cond_1
    iget-short v2, p0, Lcom/itextpdf/io/codec/LZWStringTable;->numStrings_:S

    aput-short v2, v1, v0

    .line 123
    iget-object v0, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strChr_:[B

    aput-byte p2, v0, v2

    const/4 p2, 0x1

    if-ne p1, v3, :cond_2

    .line 125
    iget-object p1, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strNxt_:[S

    aput-short v3, p1, v2

    .line 126
    iget-object p1, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strLen_:[I

    aput p2, p1, v2

    goto :goto_1

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strNxt_:[S

    aput-short p1, v0, v2

    .line 129
    iget-object v0, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strLen_:[I

    aget p1, v0, p1

    add-int/2addr p1, p2

    aput p1, v0, v2

    :goto_1
    add-int/lit8 p1, v2, 0x1

    int-to-short p1, p1

    .line 133
    iput-short p1, p0, Lcom/itextpdf/io/codec/LZWStringTable;->numStrings_:S

    return v2
.end method

.method public ClearTable(I)V
    .locals 4

    const/4 v0, 0x0

    .line 169
    iput-short v0, p0, Lcom/itextpdf/io/codec/LZWStringTable;->numStrings_:S

    move v1, v0

    :goto_0
    const/16 v2, 0x26f5

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strHsh_:[S

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    shl-int p1, v1, p1

    add-int/lit8 p1, p1, 0x2

    :goto_1
    if-ge v0, p1, :cond_1

    int-to-byte v1, v0

    .line 178
    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/io/codec/LZWStringTable;->AddCharString(SB)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public FindCharString(SB)S
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    and-int/lit16 p1, p2, 0xff

    int-to-short p1, p1

    return p1

    .line 150
    :cond_0
    invoke-static {p1, p2}, Lcom/itextpdf/io/codec/LZWStringTable;->Hash(SB)I

    move-result v1

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strHsh_:[S

    aget-short v2, v2, v1

    if-eq v2, v0, :cond_2

    .line 155
    iget-object v3, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strNxt_:[S

    aget-short v3, v3, v2

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strChr_:[B

    aget-byte v3, v3, v2

    if-ne v3, p2, :cond_1

    int-to-short p1, v2

    return p1

    :cond_1
    add-int/lit16 v1, v1, 0x7f7

    .line 157
    rem-int/lit16 v1, v1, 0x26f5

    goto :goto_0

    :cond_2
    return v0
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 3

    const/16 v0, 0x102

    .line 268
    :goto_0
    iget-short v1, p0, Lcom/itextpdf/io/codec/LZWStringTable;->numStrings_:S

    if-ge v0, v1, :cond_0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " strNxt_["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strNxt_:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " strChr_ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strChr_:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 270
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " strLen_ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strLen_:[I

    aget v2, v2, v0

    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public expandCode([BISI)I
    .locals 5

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v1

    :cond_0
    const/4 v0, -0x1

    if-eq p3, v0, :cond_6

    .line 213
    iget-object v2, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strLen_:[I

    aget v2, v2, p3

    if-ne p4, v2, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v2, p4

    .line 226
    array-length p4, p1

    sub-int/2addr p4, p2

    if-le p4, v2, :cond_2

    move p4, v2

    :cond_2
    sub-int v1, v2, p4

    add-int v3, p2, p4

    :goto_0
    if-le v3, p2, :cond_4

    if-eq p3, v0, :cond_4

    add-int/2addr v1, v0

    if-gez v1, :cond_3

    add-int/lit8 v3, v3, -0x1

    .line 248
    iget-object v4, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strChr_:[B

    aget-byte v4, v4, p3

    aput-byte v4, p1, v3

    .line 252
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/io/codec/LZWStringTable;->strNxt_:[S

    aget-short p3, v4, p3

    goto :goto_0

    :cond_4
    if-le v2, p4, :cond_5

    neg-int p1, p4

    return p1

    :cond_5
    return p4

    :cond_6
    :goto_1
    return v1
.end method

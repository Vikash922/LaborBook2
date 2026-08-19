.class public Lcom/itextpdf/layout/hyphenation/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x800


# instance fields
.field private array:[B

.field private blockSize:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    .line 50
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/ByteVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 59
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x800

    .line 61
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    .line 63
    :goto_0
    iget p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 74
    iput v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    .line 75
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    .line 88
    iput p2, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    goto :goto_0

    :cond_0
    const/16 p2, 0x800

    .line 90
    iput p2, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    .line 92
    :goto_0
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    return-void
.end method


# virtual methods
.method public alloc(I)I
    .locals 5

    .line 144
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    .line 145
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    array-length v2, v1

    add-int v3, v0, p1

    if-lt v3, v2, :cond_0

    .line 147
    iget v3, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    add-int/2addr v3, v2

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 148
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iput-object v3, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    .line 151
    :cond_0
    iget v1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    array-length v0, v0

    return v0
.end method

.method public get(I)B
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public getArray()[B
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    return v0
.end method

.method public put(IB)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method public trimToSize()V
    .locals 4

    .line 159
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 160
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 161
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v2, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    :cond_0
    return-void
.end method

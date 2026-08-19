.class public Lcom/itextpdf/layout/hyphenation/CharVector;
.super Ljava/lang/Object;
.source "CharVector.java"


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x800


# instance fields
.field private array:[C

.field private blockSize:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    .line 50
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/CharVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 59
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x800

    .line 61
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    .line 63
    :goto_0
    iget p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/hyphenation/CharVector;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object v0, p1, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    .line 98
    iget v0, p1, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    .line 99
    iget p1, p1, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    iput p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 72
    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    .line 73
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    .line 74
    array-length p1, p1

    iput p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    .line 84
    iput p2, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    goto :goto_0

    :cond_0
    const/16 p2, 0x800

    .line 86
    iput p2, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    .line 88
    :goto_0
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    .line 89
    array-length p1, p1

    iput p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    return-void
.end method


# virtual methods
.method public alloc(I)I
    .locals 5

    .line 157
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    .line 158
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    array-length v2, v1

    add-int v3, v0, p1

    if-lt v3, v2, :cond_0

    .line 160
    iget v3, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    add-int/2addr v3, v2

    new-array v3, v3, [C

    const/4 v4, 0x0

    .line 161
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v3, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    .line 164
    :cond_0
    iget v1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    return-void
.end method

.method public get(I)C
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public getArray()[C
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    return v0
.end method

.method public put(IC)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    aput-char p2, v0, p1

    return-void
.end method

.method public trimToSize()V
    .locals 4

    .line 172
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 173
    new-array v2, v0, [C

    const/4 v3, 0x0

    .line 174
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iput-object v2, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    :cond_0
    return-void
.end method

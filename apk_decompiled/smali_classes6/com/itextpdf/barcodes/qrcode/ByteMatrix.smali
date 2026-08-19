.class public final Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-array v0, p2, [[B

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 70
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    new-array v2, p1, [B

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->width:I

    .line 73
    iput p2, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->height:I

    return-void
.end method


# virtual methods
.method public clear(B)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 132
    :goto_0
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->height:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 133
    :goto_1
    iget v3, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->width:I

    if-ge v2, v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    aget-object v3, v3, v1

    aput-byte p1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get(II)B
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    aget-object p2, v0, p2

    aget-byte p1, p2, p1

    return p1
.end method

.method public getArray()[[B
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->width:I

    return v0
.end method

.method public set(IIB)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    aget-object p2, v0, p2

    aput-byte p3, p2, p1

    return-void
.end method

.method public set(III)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->width:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->height:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 144
    :goto_0
    iget v3, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->height:I

    if-ge v2, v3, :cond_3

    move v3, v1

    .line 145
    :goto_1
    iget v4, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->width:I

    if-ge v3, v4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v3

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 154
    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 151
    :cond_0
    const-string v4, " 1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 148
    :cond_1
    const-string v4, " 0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

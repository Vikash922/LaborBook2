.class public Lcom/itextpdf/io/codec/TiffWriter$FieldRational;
.super Lcom/itextpdf/io/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldRational"
.end annotation


# direct methods
.method public constructor <init>(I[I)V
    .locals 0

    .line 192
    filled-new-array {p2}, [[I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;-><init>(I[[I)V

    return-void
.end method

.method public constructor <init>(I[[I)V
    .locals 9

    const/4 v0, 0x5

    .line 196
    array-length v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/io/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 197
    array-length p1, p2

    mul-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    .line 199
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v3, p2, v1

    .line 200
    iget-object v4, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v5, v2, 0x1

    aget v6, v3, v0

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 201
    iget-object v4, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v6, v2, 0x2

    aget v7, v3, v0

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 202
    iget-object v4, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v5, v2, 0x3

    aget v7, v3, v0

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 203
    iget-object v4, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v6, v2, 0x4

    aget v7, v3, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 204
    iget-object v4, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v5, v2, 0x5

    const/4 v7, 0x1

    aget v8, v3, v7

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    .line 205
    iget-object v4, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v6, v2, 0x6

    aget v8, v3, v7

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    .line 206
    iget-object v4, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v5, v2, 0x7

    aget v8, v3, v7

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    .line 207
    iget-object v4, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v2, v2, 0x8

    aget v3, v3, v7

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

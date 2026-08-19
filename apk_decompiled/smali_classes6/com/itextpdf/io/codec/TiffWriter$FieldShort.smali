.class public Lcom/itextpdf/io/codec/TiffWriter$FieldShort;
.super Lcom/itextpdf/io/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldShort"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 144
    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/io/codec/TiffWriter$FieldBase;-><init>(III)V

    const/4 p1, 0x2

    .line 145
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    .line 146
    iget-object p1, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x0

    aput-byte v0, p1, v2

    .line 147
    iget-object p1, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 6

    const/4 v0, 0x3

    .line 151
    array-length v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/io/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 152
    array-length p1, p2

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    .line 154
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v2, p2, v0

    .line 155
    iget-object v3, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 156
    iget-object v3, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    add-int/lit8 v1, v1, 0x2

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

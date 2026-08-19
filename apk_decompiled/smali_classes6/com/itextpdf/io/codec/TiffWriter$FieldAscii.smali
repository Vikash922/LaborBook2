.class public Lcom/itextpdf/io/codec/TiffWriter$FieldAscii;
.super Lcom/itextpdf/io/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldAscii"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 247
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lcom/itextpdf/io/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 248
    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 249
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldAscii;->data:[B

    .line 250
    iget-object p2, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldAscii;->data:[B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

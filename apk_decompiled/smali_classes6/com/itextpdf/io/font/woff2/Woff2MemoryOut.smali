.class Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;
.super Ljava/lang/Object;
.source "Woff2MemoryOut.java"

# interfaces
.implements Lcom/itextpdf/io/font/woff2/Woff2Out;


# instance fields
.field private buf_:[B

.field private buf_size_:I

.field private offset_:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->buf_:[B

    .line 30
    iput p2, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->buf_size_:I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->offset_:I

    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->offset_:I

    return v0
.end method

.method public write([BII)V
    .locals 1

    .line 36
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->offset_:I

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->write([BIII)V

    return-void
.end method

.method public write([BIII)V
    .locals 1

    .line 41
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->buf_size_:I

    if-gt p3, v0, :cond_0

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->buf_:[B

    invoke-static {p1, p2, v0, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget p1, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->offset_:I

    add-int/2addr p3, p4

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->offset_:I

    return-void

    .line 42
    :cond_0
    new-instance p1, Lcom/itextpdf/io/exceptions/FontCompressionException;

    const-string p2, "Writing woff2 exception"

    invoke-direct {p1, p2}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

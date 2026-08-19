.class public Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;
.super Ljava/lang/Object;
.source "PdfReader.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/PdfReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReusableRandomAccessSource"
.end annotation


# instance fields
.field private buffer:Lcom/itextpdf/io/source/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/ByteBuffer;)V
    .locals 1

    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 1594
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;->buffer:Lcom/itextpdf/io/source/ByteBuffer;

    return-void

    .line 1593
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passed byte buffer can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1625
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;->buffer:Lcom/itextpdf/io/source/ByteBuffer;

    return-void
.end method

.method public get(J)I
    .locals 2

    .line 1599
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;->buffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;->buffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v0

    long-to-int p1, p1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public get(J[BII)I
    .locals 4

    .line 1605
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;->buffer:Lcom/itextpdf/io/source/ByteBuffer;

    if-eqz v0, :cond_2

    .line 1607
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v0, p5

    add-long/2addr v0, p1

    .line 1610
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;->buffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1611
    iget-object p5, p0, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;->buffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {p5}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result p5

    int-to-long v0, p5

    sub-long/2addr v0, p1

    long-to-int p5, v0

    .line 1613
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;->buffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v0

    long-to-int p1, p1

    invoke-static {v0, p1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p5

    .line 1605
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public length()J
    .locals 2

    .line 1620
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;->buffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

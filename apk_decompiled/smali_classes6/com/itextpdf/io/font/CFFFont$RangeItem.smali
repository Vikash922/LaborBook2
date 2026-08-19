.class public final Lcom/itextpdf/io/font/CFFFont$RangeItem;
.super Lcom/itextpdf/io/font/CFFFont$Item;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RangeItem"
.end annotation


# instance fields
.field private buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field public length:I

.field public offset:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/itextpdf/io/font/CFFFont$Item;-><init>()V

    .line 390
    iput p2, p0, Lcom/itextpdf/io/font/CFFFont$RangeItem;->offset:I

    .line 391
    iput p3, p0, Lcom/itextpdf/io/font/CFFFont$RangeItem;->length:I

    .line 392
    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFont$RangeItem;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 3

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont$RangeItem;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$RangeItem;->offset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 404
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$RangeItem;->myOffset:I

    :goto_0
    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$RangeItem;->myOffset:I

    iget v2, p0, Lcom/itextpdf/io/font/CFFFont$RangeItem;->length:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont$RangeItem;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readByte()B

    move-result v1

    aput-byte v1, p1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 407
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "I/O exception."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public increment([I)V
    .locals 3

    .line 396
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/CFFFont$Item;->increment([I)V

    const/4 v0, 0x0

    .line 397
    aget v1, p1, v0

    iget v2, p0, Lcom/itextpdf/io/font/CFFFont$RangeItem;->length:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

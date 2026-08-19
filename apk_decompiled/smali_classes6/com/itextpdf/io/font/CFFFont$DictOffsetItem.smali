.class public final Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;
.super Lcom/itextpdf/io/font/CFFFont$OffsetItem;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "DictOffsetItem"
.end annotation


# instance fields
.field public final size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 477
    invoke-direct {p0}, Lcom/itextpdf/io/font/CFFFont$OffsetItem;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->size:I

    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 2

    .line 487
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->size:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 488
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->myOffset:I

    const/16 v1, 0x1d

    aput-byte v1, p1, v0

    .line 489
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->myOffset:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->value:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 490
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->myOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->value:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 491
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->myOffset:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->value:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 492
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->myOffset:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->value:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_0
    return-void
.end method

.method public increment([I)V
    .locals 3

    .line 481
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/CFFFont$OffsetItem;->increment([I)V

    const/4 v0, 0x0

    .line 482
    aget v1, p1, v0

    iget v2, p0, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;->size:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

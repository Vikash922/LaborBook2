.class public final Lcom/itextpdf/io/font/CFFFont$UInt16Item;
.super Lcom/itextpdf/io/font/CFFFont$Item;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "UInt16Item"
.end annotation


# instance fields
.field public value:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 545
    invoke-direct {p0}, Lcom/itextpdf/io/font/CFFFont$Item;-><init>()V

    iput-char p1, p0, Lcom/itextpdf/io/font/CFFFont$UInt16Item;->value:C

    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 2

    .line 558
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$UInt16Item;->myOffset:I

    iget-char v1, p0, Lcom/itextpdf/io/font/CFFFont$UInt16Item;->value:C

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 559
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$UInt16Item;->myOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-char v1, p0, Lcom/itextpdf/io/font/CFFFont$UInt16Item;->value:C

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public increment([I)V
    .locals 2

    .line 549
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/CFFFont$Item;->increment([I)V

    const/4 v0, 0x0

    .line 550
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x2

    aput v1, p1, v0

    return-void
.end method

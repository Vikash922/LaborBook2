.class public final Lcom/itextpdf/io/font/CFFFont$UInt24Item;
.super Lcom/itextpdf/io/font/CFFFont$Item;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "UInt24Item"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/itextpdf/io/font/CFFFont$Item;-><init>()V

    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$UInt24Item;->value:I

    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 2

    .line 512
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$UInt24Item;->myOffset:I

    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$UInt24Item;->value:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 513
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$UInt24Item;->myOffset:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$UInt24Item;->value:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 514
    iget v0, p0, Lcom/itextpdf/io/font/CFFFont$UInt24Item;->myOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$UInt24Item;->value:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public increment([I)V
    .locals 2

    .line 506
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/CFFFont$Item;->increment([I)V

    const/4 v0, 0x0

    .line 507
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x3

    aput v1, p1, v0

    return-void
.end method

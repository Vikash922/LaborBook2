.class Lcom/itextpdf/io/font/PdfEncodings$SymbolTTConversion;
.super Ljava/lang/Object;
.source "PdfEncodings.java"

# interfaces
.implements Lcom/itextpdf/io/font/IExtraEncoding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/PdfEncodings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SymbolTTConversion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/io/font/PdfEncodings$1;)V
    .locals 0

    .line 588
    invoke-direct {p0}, Lcom/itextpdf/io/font/PdfEncodings$SymbolTTConversion;-><init>()V

    return-void
.end method


# virtual methods
.method public byteToChar([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public charToByte(CLjava/lang/String;)[B
    .locals 2

    const p2, 0xff00

    and-int/2addr p2, p1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const v1, 0xf000

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    new-array p1, v0, [B

    return-object p1

    :cond_1
    :goto_0
    int-to-byte p1, p1

    const/4 p2, 0x1

    .line 592
    new-array p2, p2, [B

    aput-byte p1, p2, v0

    return-object p2
.end method

.method public charToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    .line 598
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 599
    array-length p2, p1

    new-array p2, p2, [B

    .line 601
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 603
    aget-char v4, p1, v2

    const v5, 0xff00

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    const v6, 0xf000

    if-ne v5, v6, :cond_1

    :cond_0
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 605
    aput-byte v4, p2, v3

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-ne v3, v0, :cond_3

    return-object p2

    .line 609
    :cond_3
    new-array p1, v3, [B

    .line 610
    invoke-static {p2, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

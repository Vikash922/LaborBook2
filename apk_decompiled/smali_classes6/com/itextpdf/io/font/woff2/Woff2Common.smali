.class Lcom/itextpdf/io/font/woff2/Woff2Common;
.super Ljava/lang/Object;
.source "Woff2Common.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/woff2/Woff2Common$Table;,
        Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    }
.end annotation


# static fields
.field public static final kSfntEntrySize:I = 0x10

.field public static final kSfntHeaderSize:I = 0xc

.field public static final kTtcFontFlavor:I = 0x74746366

.field public static final kWoff2FlagsTransform:I = 0x100

.field public static final kWoff2Signature:I = 0x774f4632


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectionHeaderSize(II)I
    .locals 4

    const/16 v0, 0xc

    const/high16 v1, 0x20000

    if-ne p0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x10000

    if-eq p0, v3, :cond_1

    if-ne p0, v1, :cond_2

    :cond_1
    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    add-int/2addr v2, p1

    :cond_2
    return v2
.end method

.method public static computeULongSum([BII)I
    .locals 7

    and-int/lit8 v0, p2, -0x4

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    add-int v4, p1, v2

    .line 84
    aget-byte v5, p0, v4

    invoke-static {v5}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p0, v6

    .line 85
    invoke-static {v6}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v4

    or-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    if-eq p2, v0, :cond_2

    :goto_1
    if-ge v0, p2, :cond_1

    add-int v2, p1, v0

    .line 92
    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v2

    and-int/lit8 v4, v0, 0x3

    mul-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0x18

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v1

    :cond_2
    return v3
.end method

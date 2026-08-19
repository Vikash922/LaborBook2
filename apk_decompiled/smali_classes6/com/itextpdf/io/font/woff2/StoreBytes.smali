.class Lcom/itextpdf/io/font/woff2/StoreBytes;
.super Ljava/lang/Object;
.source "StoreBytes.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static storeU16([BII)I
    .locals 1

    shr-int/lit8 v0, p2, 0x8

    .line 33
    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->toU8(I)B

    move-result v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    .line 34
    invoke-static {p2}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->toU8(I)B

    move-result p2

    aput-byte p2, p0, v0

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public static storeU32([BII)I
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    .line 25
    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->toU8(I)B

    move-result v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    .line 26
    invoke-static {v1}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->toU8(I)B

    move-result v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    .line 27
    invoke-static {v1}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->toU8(I)B

    move-result v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    .line 28
    invoke-static {p2}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->toU8(I)B

    move-result p2

    aput-byte p2, p0, v0

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

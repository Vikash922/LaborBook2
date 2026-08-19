.class Lcom/itextpdf/io/font/woff2/VariableLength;
.super Ljava/lang/Object;
.source "VariableLength.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I
    .locals 4

    .line 33
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->readByte()B

    move-result v0

    .line 34
    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v1

    const/16 v2, 0xfd

    if-ne v1, v2, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result p0

    .line 36
    invoke-static {p0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result p0

    return p0

    .line 37
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v1

    const/16 v3, 0xff

    if-ne v1, v3, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->readByte()B

    move-result p0

    .line 39
    invoke-static {p0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result p0

    add-int/2addr p0, v2

    return p0

    .line 40
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v1

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->readByte()B

    move-result p0

    .line 42
    invoke-static {p0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result p0

    add-int/lit16 p0, p0, 0x1fa

    return p0

    .line 44
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result p0

    return p0
.end method

.method public static readBase128(Lcom/itextpdf/io/font/woff2/Buffer;)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    .line 50
    const-string v3, "Reading woff2 base 128 number exception"

    if-ge v0, v2, :cond_4

    .line 52
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->readByte()B

    move-result v2

    if-nez v0, :cond_1

    .line 54
    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v4

    const/16 v5, 0x80

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v3}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    const/high16 v4, -0x2000000

    and-int/2addr v4, v1

    if-nez v4, :cond_3

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v3, v2, 0x7f

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_3
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v3}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_4
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v3}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

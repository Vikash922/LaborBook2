.class public Lcom/itextpdf/io/font/woff2/Woff2Converter;
.super Ljava/lang/Object;
.source "Woff2Converter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([B)[B
    .locals 3

    .line 60
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->computeWoff2FinalSize([BI)I

    move-result v0

    new-array v1, v0, [B

    .line 61
    new-instance v2, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;

    invoke-direct {v2, v1, v0}, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;-><init>([BI)V

    .line 62
    array-length v0, p0

    invoke-static {p0, v0, v2}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->convertWoff2ToTtf([BILcom/itextpdf/io/font/woff2/Woff2Out;)V

    return-object v1
.end method

.method public static isWoff2Font([B)Z
    .locals 3

    .line 48
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 51
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    invoke-direct {v0, p0, v1, v2}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 53
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x774f4632

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

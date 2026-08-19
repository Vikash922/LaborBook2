.class Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;
.super Lcom/itextpdf/io/font/FontCacheKey;
.source "FontCacheKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/FontCacheKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontCacheBytesKey"
.end annotation


# instance fields
.field private firstFontBytes:[B

.field private fontLength:I

.field private hashcode:I


# direct methods
.method constructor <init>([B)V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontCacheKey;-><init>()V

    if-eqz p1, :cond_1

    .line 97
    array-length v0, p1

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->firstFontBytes:[B

    .line 98
    array-length p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->fontLength:I

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->calcHashCode()I

    move-result p1

    iput p1, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->hashcode:I

    return-void
.end method

.method private calcHashCode()I
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->firstFontBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget v1, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->fontLength:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    check-cast p1, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;

    .line 110
    iget v1, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->fontLength:I

    iget v2, p1, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->fontLength:I

    if-eq v1, v2, :cond_2

    return v0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->firstFontBytes:[B

    iget-object p1, p1, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->firstFontBytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;->hashcode:I

    return v0
.end method

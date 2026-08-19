.class Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;
.super Lcom/itextpdf/io/font/FontCacheKey;
.source "FontCacheKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/FontCacheKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontCacheTtcKey"
.end annotation


# instance fields
.field private ttcIndex:I

.field private ttcKey:Lcom/itextpdf/io/font/FontCacheKey;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontCacheKey;-><init>()V

    .line 131
    new-instance v0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheStringKey;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/FontCacheKey$FontCacheStringKey;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;->ttcKey:Lcom/itextpdf/io/font/FontCacheKey;

    .line 132
    iput p2, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;->ttcIndex:I

    return-void
.end method

.method constructor <init>([BI)V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontCacheKey;-><init>()V

    .line 136
    new-instance v0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/FontCacheKey$FontCacheBytesKey;-><init>([B)V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;->ttcKey:Lcom/itextpdf/io/font/FontCacheKey;

    .line 137
    iput p2, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;->ttcIndex:I

    return-void
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

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    check-cast p1, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;

    .line 147
    iget v1, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;->ttcIndex:I

    iget v2, p1, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;->ttcIndex:I

    if-eq v1, v2, :cond_2

    return v0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;->ttcKey:Lcom/itextpdf/io/font/FontCacheKey;

    iget-object p1, p1, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;->ttcKey:Lcom/itextpdf/io/font/FontCacheKey;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;->ttcKey:Lcom/itextpdf/io/font/FontCacheKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 154
    iget v1, p0, Lcom/itextpdf/io/font/FontCacheKey$FontCacheTtcKey;->ttcIndex:I

    add-int/2addr v0, v1

    return v0
.end method

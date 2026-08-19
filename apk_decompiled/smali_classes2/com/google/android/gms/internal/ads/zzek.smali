.class public final Lcom/google/android/gms/internal/ads/zzek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zza:[C

.field private static final zzb:[C

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfxb;


# instance fields
.field private zzd:[B

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzek;->zza:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzek;->zzb:[C

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfxb;->zzr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzek;->zzc:Lcom/google/android/gms/internal/ads/zzfxb;

    return-void

    nop

    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zzc:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    return-void
.end method

.method private final zzO(Ljava/nio/ByteOrder;I)C
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/2addr v0, p2

    aget-byte p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte p1, p1, v0

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfzw;->zza(BB)C

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/2addr v0, p2

    add-int/lit8 p2, v0, 0x1

    .line 2
    aget-byte p2, p1, p2

    aget-byte p1, p1, v0

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfzw;->zza(BB)C

    move-result p1

    :goto_0
    return p1
.end method

.method private final zzP(Ljava/nio/charset/Charset;[C)C
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzR(Ljava/nio/charset/Charset;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzS(Ljava/nio/charset/Charset;)I

    move-result p1

    if-eqz p1, :cond_3

    ushr-int/lit8 v0, p1, 0x8

    int-to-long v0, v0

    long-to-int v0, v0

    .line 3
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-nez v1, :cond_3

    int-to-long v0, v0

    long-to-int v3, v0

    int-to-char v3, v3

    int-to-long v4, v3

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const-string v5, "Out of range: %s"

    .line 4
    invoke-static {v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzftw;->zzh(ZLjava/lang/String;J)V

    array-length v0, p2

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 5
    aget-char v4, p2, v1

    if-ne v4, v3, :cond_2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzz;->zzb(J)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v2
.end method

.method private static zzQ(IIII)I
    .locals 4

    and-int/lit8 v0, p2, 0x3

    and-int/lit8 v1, p1, 0xf

    and-int/lit8 p2, p2, 0x3c

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p3, v0

    int-to-long v2, p3

    shl-int/lit8 p3, v1, 0x4

    shr-int/lit8 p2, p2, 0x2

    or-int/2addr p2, p3

    int-to-long p2, p2

    and-int/lit8 p1, p1, 0x30

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x2

    shr-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    int-to-long p0, p0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgac;->zza(J)B

    move-result p0

    .line 2
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzgac;->zza(J)B

    move-result p1

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgac;->zza(J)B

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfzz;->zze(BBBB)I

    move-result p0

    return p0
.end method

.method private static zzR(Ljava/nio/charset/Charset;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzek;->zzc:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfxb;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported charset: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdc;->zze(ZLjava/lang/Object;)V

    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzS(Ljava/nio/charset/Charset;)I
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzek;->zzc:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfxb;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported charset: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdc;->zze(ZLjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzR(Ljava/nio/charset/Charset;)I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 6
    aget-byte p1, p1, v0

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    and-int/lit16 p1, p1, 0xff

    goto/16 :goto_4

    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 8
    aget-byte p1, p1, v0

    and-int/lit16 v0, p1, 0x80

    const/4 v5, 0x3

    if-nez v0, :cond_2

    move p1, v1

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xe0

    and-int/2addr p1, v0

    const/16 v6, 0xc0

    if-ne p1, v6, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result p1

    if-lt p1, v4, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/2addr v6, v1

    aget-byte p1, p1, v6

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzT(B)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 10
    aget-byte p1, p1, v6

    const/16 v6, 0xf0

    and-int/2addr p1, v6

    if-ne p1, v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result p1

    if-lt p1, v5, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p1, v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzT(B)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/2addr v0, v4

    .line 12
    aget-byte p1, p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzT(B)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v5

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 13
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xf8

    if-ne p1, v6, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result p1

    if-lt p1, v3, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzT(B)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v6, v0, 0x2

    .line 15
    aget-byte v6, p1, v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzT(B)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/2addr v0, v5

    .line 16
    aget-byte p1, p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzT(B)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_0

    :cond_5
    move p1, v2

    :goto_0
    if-eq p1, v1, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_6

    :goto_1
    return v2

    .line 8
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 17
    aget-byte v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    add-int/2addr v1, v5

    aget-byte v0, v0, v1

    .line 18
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzQ(IIII)I

    move-result v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 19
    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v5, v1, 0x1

    .line 20
    aget-byte v5, v0, v5

    add-int/2addr v1, v4

    aget-byte v0, v0, v1

    .line 21
    invoke-static {v2, v3, v5, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzQ(IIII)I

    move-result v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 22
    aget-byte v4, v0, v3

    add-int/2addr v3, v1

    aget-byte v0, v0, v3

    invoke-static {v2, v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzQ(IIII)I

    move-result v0

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 23
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_2
    move v1, p1

    move p1, v0

    goto :goto_4

    .line 16
    :cond_a
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 24
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_3

    .line 28
    :cond_b
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    :goto_3
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzO(Ljava/nio/ByteOrder;I)C

    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v1

    if-lt v1, v3, :cond_c

    .line 27
    invoke-direct {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzO(Ljava/nio/ByteOrder;I)C

    move-result p1

    .line 28
    invoke-static {v0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    move v1, v3

    goto :goto_4

    :cond_c
    move p1, v0

    move v1, v4

    :goto_4
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    return p1

    .line 3
    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "position="

    .line 4
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", limit="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzT(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zzA(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    const-string p1, ""

    return-object p1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    .line 2
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzC([BII)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    return-object v0
.end method

.method public final zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    return-object v0
.end method

.method public final zzC()Ljava/nio/charset/Charset;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v2

    const/16 v4, -0x11

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    const/16 v4, -0x45

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x2

    aget-byte v0, v0, v3

    const/16 v3, -0x41

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    .line 5
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 7
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 3
    aget-byte v3, v0, v2

    const/4 v4, -0x1

    const/4 v5, -0x2

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v3

    if-ne v0, v4, :cond_3

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    return-object v0

    :cond_2
    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 4
    aget-byte v0, v0, v3

    if-ne v0, v5, :cond_3

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    .line 5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzD()S
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    int-to-short v0, v0

    return v0
.end method

.method public final zzE()S
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final zzF(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    :cond_0
    return-void
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzej;I)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    return-void
.end method

.method public final zzH([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    return-void
.end method

.method public final zzI(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    new-array v0, p1, [B

    .line 2
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    return-void
.end method

.method public final zzJ([BI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    return-void
.end method

.method public final zzK(I)V
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    array-length v1, v1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    return-void
.end method

.method public final zzL(I)V
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    return-void
.end method

.method public final zzM(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    return-void
.end method

.method public final zzN()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    return-object v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    array-length v0, v0

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    return v0
.end method

.method public final zze(Ljava/nio/charset/Charset;)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzS(Ljava/nio/charset/Charset;)I

    move-result p1

    if-eqz p1, :cond_0

    ushr-int/lit8 p1, p1, 0x8

    int-to-long v0, p1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzz;->zzb(J)I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x110000

    return p1
.end method

.method public final zzf()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final zzg()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v5, v1, 0x3

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v4, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzh()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v3, 0x18

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzi()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v5, v1, 0x3

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v1, v3

    shl-int/lit8 v2, v4, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzj()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Top bit not zero: "

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zzk()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    return v0
.end method

.method public final zzl()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzm()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final zzn()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzo()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v3, 0x10

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzp()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Top bit not zero: "

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zzq()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzr()J
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v4, v1, v2

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v1, v3

    int-to-long v7, v3

    add-int/lit8 v3, v2, 0x3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v6, v1, v6

    int-to-long v9, v6

    add-int/lit8 v6, v2, 0x4

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v1, v3

    int-to-long v11, v3

    add-int/lit8 v3, v2, 0x5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v6, v1, v6

    int-to-long v13, v6

    add-int/lit8 v6, v2, 0x6

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v1, v3

    move-wide v15, v4

    int-to-long v3, v3

    add-int/lit8 v5, v2, 0x7

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v6, v1, v6

    move-wide/from16 v17, v3

    int-to-long v3, v6

    const/16 v6, 0x8

    add-int/2addr v2, v6

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v1, v1, v5

    int-to-long v1, v1

    const-wide/16 v19, 0xff

    and-long v7, v7, v19

    and-long v9, v9, v19

    and-long v11, v11, v19

    and-long v13, v13, v19

    and-long v17, v17, v19

    and-long v3, v3, v19

    and-long v1, v1, v19

    and-long v15, v15, v19

    shl-long v5, v7, v6

    or-long/2addr v5, v15

    const/16 v7, 0x10

    shl-long v7, v9, v7

    or-long/2addr v5, v7

    const/16 v7, 0x18

    shl-long v7, v11, v7

    or-long/2addr v5, v7

    const/16 v7, 0x20

    shl-long v7, v13, v7

    or-long/2addr v5, v7

    const/16 v7, 0x28

    shl-long v7, v17, v7

    or-long/2addr v5, v7

    const/16 v7, 0x30

    shl-long/2addr v3, v7

    or-long/2addr v3, v5

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public final zzs()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    add-int/lit8 v5, v1, 0x2

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v2, v0, v2

    int-to-long v6, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v5, v0, v5

    int-to-long v8, v5

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    const-wide/16 v10, 0xff

    and-long v5, v6, v10

    and-long v7, v8, v10

    and-long/2addr v0, v10

    and-long v2, v3, v10

    const/16 v4, 0x8

    shl-long v4, v5, v4

    or-long/2addr v2, v4

    const/16 v4, 0x10

    shl-long v4, v7, v4

    or-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzt()J
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v4, v1, v2

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v1, v3

    int-to-long v7, v3

    add-int/lit8 v3, v2, 0x3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v6, v1, v6

    int-to-long v9, v6

    add-int/lit8 v6, v2, 0x4

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v1, v3

    int-to-long v11, v3

    add-int/lit8 v3, v2, 0x5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v6, v1, v6

    int-to-long v13, v6

    add-int/lit8 v6, v2, 0x6

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v1, v3

    move-wide v15, v13

    int-to-long v13, v3

    add-int/lit8 v3, v2, 0x7

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v6, v1, v6

    move-wide/from16 v17, v13

    int-to-long v13, v6

    const/16 v6, 0x8

    add-int/2addr v2, v6

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v1, v1, v3

    int-to-long v1, v1

    const-wide/16 v19, 0xff

    and-long v3, v4, v19

    and-long v7, v7, v19

    and-long v9, v9, v19

    and-long v11, v11, v19

    and-long v15, v15, v19

    and-long v17, v17, v19

    and-long v13, v13, v19

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    const/16 v5, 0x30

    shl-long/2addr v7, v5

    or-long/2addr v3, v7

    const/16 v5, 0x28

    shl-long v7, v9, v5

    or-long/2addr v3, v7

    const/16 v5, 0x20

    shl-long v7, v11, v5

    or-long/2addr v3, v7

    const/16 v5, 0x18

    shl-long v7, v15, v5

    or-long/2addr v3, v7

    const/16 v5, 0x10

    shl-long v7, v17, v5

    or-long/2addr v3, v7

    shl-long v5, v13, v6

    or-long/2addr v3, v5

    and-long v1, v1, v19

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public final zzu()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    add-int/lit8 v5, v1, 0x2

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v2, v0, v2

    int-to-long v6, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v5, v0, v5

    int-to-long v8, v5

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    const-wide/16 v10, 0xff

    and-long v2, v3, v10

    and-long v4, v6, v10

    and-long v6, v8, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    const/16 v8, 0x10

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    const/16 v4, 0x8

    shl-long v4, v6, v4

    or-long/2addr v2, v4

    and-long/2addr v0, v10

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzv()J
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    const/16 v5, 0x9

    if-ge v0, v5, :cond_2

    .line 2
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    if-eq v5, v6, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v7, v5

    mul-int/lit8 v9, v0, 0x7

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x80

    and-long/2addr v5, v7

    cmp-long v5, v5, v1

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to read a byte over the limit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-wide v3
.end method

.method public final zzw()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Top bit not zero: "

    .line 2
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final zzx()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/4 v2, 0x7

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v3, :cond_2

    shl-int v7, v6, v3

    int-to-long v8, v7

    and-long/2addr v8, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    if-ge v3, v4, :cond_0

    add-int/lit8 v7, v7, -0x1

    int-to-long v7, v7

    and-long/2addr v0, v7

    rsub-int/lit8 v5, v3, 0x7

    goto :goto_1

    :cond_0
    if-ne v3, v2, :cond_2

    move v5, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v5, :cond_5

    :goto_2
    if-ge v6, v5, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/2addr v3, v6

    .line 2
    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0xc0

    const/16 v7, 0x80

    if-ne v3, v7, :cond_3

    shl-long/2addr v0, v4

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid UTF-8 sequence continuation byte: "

    .line 3
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    return-wide v0

    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid UTF-8 sequence first byte: "

    .line 4
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final zzy(C)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    .line 2
    aget-byte v0, v0, p1

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    sub-int v2, p1, v1

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzC([BII)Ljava/lang/String;

    move-result-object v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    if-ge p1, v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    :cond_2
    return-object v0
.end method

.method public final zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzek;->zzc:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfxb;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported charset: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdc;->zze(ZLjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzC()Ljava/nio/charset/Charset;

    .line 6
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_4
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    :goto_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    add-int/lit8 v3, v1, -0x1

    sub-int v3, v2, v3

    if-ge v0, v3, :cond_a

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    aget-byte v2, v2, v0

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzM(I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_6
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 12
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 13
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    aget-byte v3, v2, v0

    if-nez v3, :cond_8

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzM(I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_8
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 15
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzek;->zzd:[B

    aget-byte v2, v3, v2

    if-nez v2, :cond_9

    aget-byte v2, v3, v0

    .line 16
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzM(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    add-int/2addr v0, v1

    goto :goto_1

    :cond_a
    move v0, v2

    :cond_b
    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    sub-int/2addr v0, v1

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzek;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzek;->zzf:I

    if-eq v1, v2, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/ads/zzek;->zza:[C

    .line 18
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzP(Ljava/nio/charset/Charset;[C)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/ads/zzek;->zzb:[C

    .line 19
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzP(Ljava/nio/charset/Charset;[C)C

    :cond_c
    return-object v0
.end method

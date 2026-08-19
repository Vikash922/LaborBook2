.class final Lcom/google/android/gms/internal/ads/zzgwy;
.super Lcom/google/android/gms/internal/ads/zzgwv;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# instance fields
.field private final zzg:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgwv;-><init>(I)V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzg:Ljava/io/OutputStream;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzI()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzg:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zza:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    return-void
.end method

.method private final zzJ(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzI()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzK()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzI()V

    :cond_0
    return-void
.end method

.method public final zzL(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzb:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzI()V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzc(B)V

    return-void
.end method

.method public final zzM(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzJ(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgwv;->zzc(B)V

    return-void
.end method

.method public final zzN(ILcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    .line 3
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzo(Lcom/google/android/gms/internal/ads/zzgwe;)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgwy;->zzr([BII)V

    return-void
.end method

.method public final zzh(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzJ(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgwv;->zzd(I)V

    return-void
.end method

.method public final zzi(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzJ(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzd(I)V

    return-void
.end method

.method public final zzj(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzJ(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgwv;->zze(J)V

    return-void
.end method

.method public final zzk(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzJ(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwv;->zze(J)V

    return-void
.end method

.method public final zzl(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzJ(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    if-ltz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwv;->zzg(J)V

    return-void
.end method

.method public final zzm(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzw(J)V

    return-void
.end method

.method final zzn(ILcom/google/android/gms/internal/ads/zzgzg;Lcom/google/android/gms/internal/ads/zzgzz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    .line 2
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgvw;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaM(Lcom/google/android/gms/internal/ads/zzgzz;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zze:Lcom/google/android/gms/internal/ads/zzgxb;

    .line 3
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzgzz;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhba;)V

    return-void
.end method

.method public final zzo(ILcom/google/android/gms/internal/ads/zzgzg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzt(II)V

    const/16 p1, 0x1a

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzaY()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    .line 5
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzcY(Lcom/google/android/gms/internal/ads/zzgxa;)V

    const/16 p1, 0xc

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    return-void
.end method

.method public final zzp(ILcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzt(II)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwy;->zzN(ILcom/google/android/gms/internal/ads/zzgwn;)V

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    return-void
.end method

.method public final zzq(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgwy;->zzx(Ljava/lang/String;)V

    return-void
.end method

.method public final zzr([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zza:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zza:[B

    .line 2
    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzI()V

    sub-int/2addr p3, v2

    if-gt p3, v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzg:Ljava/io/OutputStream;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:I

    return-void
.end method

.method public final zzs(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    return-void
.end method

.method public final zzt(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzJ(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    return-void
.end method

.method public final zzu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzJ(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    return-void
.end method

.method public final zzv(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzJ(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgwv;->zzg(J)V

    return-void
.end method

.method public final zzw(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzJ(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwv;->zzg(J)V

    return-void
.end method

.method public final zzx(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzD(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzb:I

    if-le v2, v3, :cond_0

    .line 12
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhax;->zzd(Ljava/lang/String;[BII)I

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzu(I)V

    .line 15
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzr([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    sub-int v0, v3, v0

    if-le v2, v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzI()V

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzD(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhaw; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zza:[B

    sub-int/2addr v3, v1

    .line 5
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzhax;->zzd(Ljava/lang/String;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhax;->zze(Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    .line 9
    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzhax;->zzd(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    .line 6
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzhaw; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwx;

    .line 10
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzc:I

    .line 11
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzhaw; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgxa;->zzG(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhaw;)V

    return-void
.end method

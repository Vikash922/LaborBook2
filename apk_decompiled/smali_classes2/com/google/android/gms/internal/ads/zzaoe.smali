.class final Lcom/google/android/gms/internal/ads/zzaoe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzadd;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    const v2, 0x64617461

    .line 3
    invoke-static {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzaoe;->zzd(ILcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaod;

    move-result-object v0

    .line 4
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaod;->zzb:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzadd;)Lcom/google/android/gms/internal/ads/zzaoc;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    const v2, 0x666d7420

    .line 2
    invoke-static {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzaoe;->zzd(ILcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaod;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzaod;->zzb:J

    const-wide/16 v4, 0x10

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 3
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v4

    .line 4
    invoke-interface {p0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzk()I

    move-result v7

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzk()I

    move-result v8

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzj()I

    move-result v9

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzj()I

    move-result v10

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzk()I

    move-result v11

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzk()I

    move-result v12

    long-to-int v0, v2

    add-int/lit8 v0, v0, -0x10

    if-lez v0, :cond_1

    new-array v1, v0, [B

    .line 12
    invoke-interface {p0, v1, v5, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    move-object v13, v1

    goto :goto_1

    .line 13
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zzc:[B

    move-object v13, v0

    .line 12
    :goto_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadd;->zze()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 14
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzaoc;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/zzaoc;-><init>(IIIIII[B)V

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzadd;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaod;->zza(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaod;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaod;->zza:I

    const v2, 0x52494646

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const v2, 0x52463634

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v1

    const/4 v2, 0x4

    .line 3
    invoke-interface {p0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result p0

    const v0, 0x57415645

    if-eq p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported form type: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WavHeaderReader"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static zzd(ILcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaod;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaod;->zza(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaod;

    move-result-object v0

    :goto_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaod;->zza:I

    if-eq v1, p0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring unknown WAV chunk: "

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WavHeaderReader"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaod;->zzb:J

    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x9

    add-long/2addr v4, v2

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1

    long-to-int v0, v4

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaod;->zza(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaod;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Chunk is too large (~2GB+) to skip; id: "

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_2
    return-object v0
.end method

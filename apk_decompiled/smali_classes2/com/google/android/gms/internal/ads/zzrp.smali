.class final Lcom/google/android/gms/internal/ads/zzrp;
.super Lcom/google/android/gms/internal/ads/zzco;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Z

.field private zzg:I

.field private zzh:[B

.field private zzi:I

.field private zzj:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzco;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zzc:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzh:[B

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzco;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzco;->zzj(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzh:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzco;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzg:I

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 4
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzg:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzg:I

    add-int/2addr v0, v3

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzg:I

    if-gtz v0, :cond_1

    sub-int/2addr v2, v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzh:[B

    .line 6
    array-length v3, v3

    sub-int/2addr v0, v3

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzco;->zzj(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    .line 8
    sget v5, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 9
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzh:[B

    .line 10
    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    .line 11
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzh:[B

    .line 15
    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzh:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    .line 16
    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    .line 17
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzh()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzco;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcm;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v1, "Unhandled input format:"

    .line 2
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcl;)V

    .line 3
    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Z

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzd:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zze:I

    if-eqz v0, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    :cond_3
    :goto_1
    return-object p1
.end method

.method protected final zzk()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Z

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zze:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzh:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzd:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzg:I

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    return-void
.end method

.method protected final zzl()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:J

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    :cond_1
    return-void
.end method

.method protected final zzm()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zzc:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzh:[B

    return-void
.end method

.method public final zzo()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:J

    return-wide v0
.end method

.method public final zzp()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:J

    return-void
.end method

.method public final zzq(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzrp;->zze:I

    return-void
.end method

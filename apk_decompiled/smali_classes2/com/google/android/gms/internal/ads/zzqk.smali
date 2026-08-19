.class final Lcom/google/android/gms/internal/ads/zzqk;
.super Lcom/google/android/gms/internal/ads/zzco;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zzd:[I

.field private zze:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzco;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->zze:[I

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast v0, [I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqk;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 4
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqk;->zzc:Lcom/google/android/gms/internal/ads/zzcl;

    .line 5
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    mul-int/2addr v3, v4

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzco;->zzj(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_3

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    .line 7
    aget v6, v0, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzqk;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 8
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzeu;->zzk(I)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzqk;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 9
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    const/4 v8, 0x4

    if-ne v6, v8, :cond_0

    .line 10
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected encoding: "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqk;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 12
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    add-int/2addr v1, v4

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcm;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->zzd:[I

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    return-object p1

    .line 2
    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v1, "Unhandled input format:"

    .line 7
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcl;)V

    .line 8
    throw v0

    .line 3
    :cond_2
    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzc:I

    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    move v6, v5

    :goto_2
    array-length v7, v0

    if-ge v6, v7, :cond_6

    .line 4
    aget v7, v0, v6

    if-ge v7, v2, :cond_5

    if-eq v7, v6, :cond_4

    move v7, v4

    goto :goto_3

    :cond_4
    move v7, v5

    :goto_3
    or-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcm;

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Channel map ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") trying to access non-existent input channel."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcl;)V

    throw v1

    :cond_6
    if-eqz v3, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcl;

    .line 6
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzb:I

    invoke-direct {v0, p1, v7, v1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(III)V

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    :goto_4
    return-object v0
.end method

.method protected final zzk()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->zzd:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->zze:[I

    return-void
.end method

.method protected final zzm()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->zze:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->zzd:[I

    return-void
.end method

.method public final zzo([I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqk;->zzd:[I

    return-void
.end method

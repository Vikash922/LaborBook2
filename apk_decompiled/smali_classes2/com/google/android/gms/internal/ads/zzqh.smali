.class final Lcom/google/android/gms/internal/ads/zzqh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzqg;

.field private zzb:I

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqg;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zza:Lcom/google/android/gms/internal/ads/zzqg;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(I)V

    return-void
.end method

.method private final zzh(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:J

    return-void

    :cond_0
    const-wide/32 v0, 0x989680

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:J

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zze:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzf:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:J

    goto :goto_0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zza:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zza:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(I)V

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(I)V

    return-void
.end method

.method public final zze()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(I)V

    return-void
.end method

.method public final zzf()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg(J)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zze:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zze:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zza:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zzc()Z

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    const/4 p1, 0x2

    if-eq v3, v5, :cond_5

    if-eq v3, p1, :cond_3

    if-eq v3, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(I)V

    return v5

    :cond_3
    if-eqz v2, :cond_4

    :goto_0
    move v1, v5

    goto :goto_1

    .line 3
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(I)V

    return v1

    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zza()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzf:J

    cmp-long p2, v0, v2

    if-gtz p2, :cond_6

    goto :goto_0

    .line 4
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(I)V

    return v5

    .line 5
    :cond_7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(I)V

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_a

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zzb()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:J

    cmp-long p1, p1, v2

    if-gez p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zza()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzf:J

    .line 7
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(I)V

    return v5

    :cond_a
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:J

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x7a120

    cmp-long p1, p1, v2

    if-gtz p1, :cond_b

    :goto_1
    return v1

    .line 8
    :cond_b
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(I)V

    return v1
.end method

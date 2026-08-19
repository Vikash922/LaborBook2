.class final Lcom/google/android/gms/internal/ads/zzajb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeb;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzajd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzajd;Lcom/google/android/gms/internal/ads/zzajc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zza:Lcom/google/android/gms/internal/ads/zzajd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zza:Lcom/google/android/gms/internal/ads/zzajd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zzf(Lcom/google/android/gms/internal/ads/zzajd;)Lcom/google/android/gms/internal/ads/zzajo;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zzc(Lcom/google/android/gms/internal/ads/zzajd;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzajo;->zzf(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzadz;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zza:Lcom/google/android/gms/internal/ads/zzajd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zzf(Lcom/google/android/gms/internal/ads/zzajd;)Lcom/google/android/gms/internal/ads/zzajo;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzajo;->zzg(J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zzb(Lcom/google/android/gms/internal/ads/zzajd;)J

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zza(Lcom/google/android/gms/internal/ads/zzajd;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zzb(Lcom/google/android/gms/internal/ads/zzajd;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 2
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zzc(Lcom/google/android/gms/internal/ads/zzajd;)J

    move-result-wide v5

    .line 3
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    add-long/2addr v3, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zzb(Lcom/google/android/gms/internal/ads/zzajd;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zza(Lcom/google/android/gms/internal/ads/zzajd;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    add-long/2addr v5, v7

    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const-wide/16 v7, -0x7530

    add-long/2addr v3, v7

    .line 6
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzadz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaec;

    .line 7
    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(JJ)V

    .line 8
    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzadz;-><init>(Lcom/google/android/gms/internal/ads/zzaec;Lcom/google/android/gms/internal/ads/zzaec;)V

    return-object v2
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

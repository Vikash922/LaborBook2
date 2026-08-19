.class final Lcom/google/android/gms/internal/ads/zzafu;
.super Lcom/google/android/gms/internal/ads/zzadp;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaeb;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzafv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzaeb;Lcom/google/android/gms/internal/ads/zzaeb;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Lcom/google/android/gms/internal/ads/zzaeb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(Lcom/google/android/gms/internal/ads/zzaeb;)V

    return-void
.end method


# virtual methods
.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzadz;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaeb;->zzg(J)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzadz;->zza:Lcom/google/android/gms/internal/ads/zzaec;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzaec;->zzc:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadz;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaec;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafv;->zza(Lcom/google/android/gms/internal/ads/zzafv;)J

    move-result-wide v5

    add-long/2addr v0, v5

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzaec;->zzb:J

    .line 2
    invoke-direct {v4, v5, v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(JJ)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzadz;->zzb:Lcom/google/android/gms/internal/ads/zzaec;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaec;->zzc:J

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaec;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafv;->zza(Lcom/google/android/gms/internal/ads/zzafv;)J

    move-result-wide v5

    add-long/2addr v0, v5

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzaec;->zzb:J

    invoke-direct {p2, v5, v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(JJ)V

    invoke-direct {v3, v4, p2}, Lcom/google/android/gms/internal/ads/zzadz;-><init>(Lcom/google/android/gms/internal/ads/zzaec;Lcom/google/android/gms/internal/ads/zzaec;)V

    return-object v3
.end method

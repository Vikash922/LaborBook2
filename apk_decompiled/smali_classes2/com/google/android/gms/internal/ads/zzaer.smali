.class final Lcom/google/android/gms/internal/ads/zzaer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeb;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaeu;

.field private final zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaeu;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaer;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaer;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaer;->zzb:J

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzadz;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaer;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzaeu;)[Lcom/google/android/gms/internal/ads/zzaex;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzaex;->zza(J)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzaeu;)[Lcom/google/android/gms/internal/ads/zzaex;

    move-result-object v3

    .line 2
    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzaeu;)[Lcom/google/android/gms/internal/ads/zzaex;

    move-result-object v3

    .line 3
    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaex;->zza(J)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzadz;->zza:Lcom/google/android/gms/internal/ads/zzaec;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzadz;->zza:Lcom/google/android/gms/internal/ads/zzaec;

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzaec;->zzc:J

    iget-wide v4, v5, Lcom/google/android/gms/internal/ads/zzaec;->zzc:J

    cmp-long v4, v6, v4

    if-gez v4, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

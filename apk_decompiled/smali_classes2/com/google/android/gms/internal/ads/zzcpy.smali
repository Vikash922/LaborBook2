.class public final Lcom/google/android/gms/internal/ads/zzcpy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpy;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpy;->zzb:Lcom/google/android/gms/internal/ads/zzdab;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcxv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpy;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/ads/zzdab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpy;->zzb:Lcom/google/android/gms/internal/ads/zzdab;

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzdcu;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpy;->zzb:Lcom/google/android/gms/internal/ads/zzdab;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcu;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdcu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcpx;-><init>(Lcom/google/android/gms/internal/ads/zzcpy;)V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

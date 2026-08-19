.class final Lcom/google/android/gms/internal/ads/zzfis;
.super Lcom/google/android/gms/internal/ads/zzbac;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgcm;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzfp;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfit;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfit;Lcom/google/android/gms/internal/ads/zzgcm;Lcom/google/android/gms/ads/internal/client/zzfp;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfis;->zza:Lcom/google/android/gms/internal/ads/zzgcm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfis;->zzb:Lcom/google/android/gms/ads/internal/client/zzfp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfis;->zzc:Lcom/google/android/gms/internal/ads/zzfit;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbac;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(I)V
    .locals 0

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->zzb()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfis;->zzb:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zza:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load app open ad with error parcel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for ad unit: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfis;->zzc:Lcom/google/android/gms/internal/ads/zzfit;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzp(Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfis;->zza:Lcom/google/android/gms/internal/ads/zzgcm;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfir;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgcm;)V

    return-void
.end method

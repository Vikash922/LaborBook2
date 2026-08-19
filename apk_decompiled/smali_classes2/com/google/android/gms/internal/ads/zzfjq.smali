.class final Lcom/google/android/gms/internal/ads/zzfjq;
.super Lcom/google/android/gms/internal/ads/zzbwj;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgcm;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbwd;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzgcm;Lcom/google/android/gms/internal/ads/zzbwd;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/zzgcm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzb:Lcom/google/android/gms/internal/ads/zzbwd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzc:Lcom/google/android/gms/internal/ads/zzfjr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbwj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(I)V
    .locals 0

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->zzb()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzc:Lcom/google/android/gms/internal/ads/zzfjr;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfjr;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzfp;->zza:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load rewarded ad with error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adUnitId: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzp(Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzb:Lcom/google/android/gms/internal/ads/zzbwd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/zzgcm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfir;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgcm;)V

    return-void
.end method

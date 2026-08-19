.class final Lcom/google/android/gms/internal/ads/zzdsq;
.super Lcom/google/android/gms/ads/internal/client/zzbj;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdsk;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdsr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsr;Lcom/google/android/gms/internal/ads/zzdsk;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zza:Lcom/google/android/gms/internal/ads/zzdsk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdsr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zza:Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzd(Lcom/google/android/gms/internal/ads/zzdsr;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzb(J)V

    return-void
.end method

.method public final zzd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdsr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zza:Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzd(Lcom/google/android/gms/internal/ads/zzdsr;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(J)V

    return-void
.end method

.method public final zze(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdsr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zza:Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzd(Lcom/google/android/gms/internal/ads/zzdsr;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzd(JI)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdsr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zza:Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzd(Lcom/google/android/gms/internal/ads/zzdsr;)J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzd(JI)V

    return-void
.end method

.method public final zzg()V
    .locals 0

    return-void
.end method

.method public final zzh()V
    .locals 0

    return-void
.end method

.method public final zzi()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdsr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zza:Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzd(Lcom/google/android/gms/internal/ads/zzdsr;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(J)V

    return-void
.end method

.method public final zzj()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdsr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zza:Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzd(Lcom/google/android/gms/internal/ads/zzdsr;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzg(J)V

    return-void
.end method

.method public final zzk()V
    .locals 0

    return-void
.end method

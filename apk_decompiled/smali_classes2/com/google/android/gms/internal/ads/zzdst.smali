.class final Lcom/google/android/gms/internal/ads/zzdst;
.super Lcom/google/android/gms/internal/ads/zzbwj;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdsv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdst;->zza:Lcom/google/android/gms/internal/ads/zzdsv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbwj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->zza:Lcom/google/android/gms/internal/ads/zzdsv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zze(Lcom/google/android/gms/internal/ads/zzdsv;)Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzd(Lcom/google/android/gms/internal/ads/zzdsv;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzm(JI)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->zza:Lcom/google/android/gms/internal/ads/zzdsv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zze(Lcom/google/android/gms/internal/ads/zzdsv;)Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzd(Lcom/google/android/gms/internal/ads/zzdsv;)J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzm(JI)V

    return-void
.end method

.method public final zzg()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->zza:Lcom/google/android/gms/internal/ads/zzdsv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zze(Lcom/google/android/gms/internal/ads/zzdsv;)Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzd(Lcom/google/android/gms/internal/ads/zzdsv;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzp(J)V

    return-void
.end method

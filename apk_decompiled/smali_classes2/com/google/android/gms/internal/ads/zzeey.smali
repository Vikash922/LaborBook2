.class final Lcom/google/android/gms/internal/ads/zzeey;
.super Lcom/google/android/gms/internal/ads/zzbqq;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzefa;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeci;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzefa;Lcom/google/android/gms/internal/ads/zzeci;Lcom/google/android/gms/internal/ads/zzeez;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Lcom/google/android/gms/internal/ads/zzefa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqq;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:Lcom/google/android/gms/internal/ads/zzeci;

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:Lcom/google/android/gms/internal/ads/zzeci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzedw;->zzi(ILjava/lang/String;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:Lcom/google/android/gms/internal/ads/zzeci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzedw;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbpn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Lcom/google/android/gms/internal/ads/zzefa;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefa;->zzc(Lcom/google/android/gms/internal/ads/zzefa;Lcom/google/android/gms/internal/ads/zzbpn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:Lcom/google/android/gms/internal/ads/zzeci;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedw;->zzo()V

    return-void
.end method

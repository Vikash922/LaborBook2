.class final Lcom/google/android/gms/internal/ads/zzedo;
.super Lcom/google/android/gms/internal/ads/zzbqk;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzedq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeci;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzedq;Lcom/google/android/gms/internal/ads/zzeci;Lcom/google/android/gms/internal/ads/zzedp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedo;->zza:Lcom/google/android/gms/internal/ads/zzedq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqk;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lcom/google/android/gms/internal/ads/zzeci;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lcom/google/android/gms/internal/ads/zzeci;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lcom/google/android/gms/internal/ads/zzeci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzedw;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zza:Lcom/google/android/gms/internal/ads/zzedq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzedq;->zze(Lcom/google/android/gms/internal/ads/zzedq;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lcom/google/android/gms/internal/ads/zzeci;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedw;->zzo()V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzbph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zza:Lcom/google/android/gms/internal/ads/zzedq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzedq;->zzd(Lcom/google/android/gms/internal/ads/zzedq;Lcom/google/android/gms/internal/ads/zzbph;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lcom/google/android/gms/internal/ads/zzeci;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedw;->zzo()V

    return-void
.end method

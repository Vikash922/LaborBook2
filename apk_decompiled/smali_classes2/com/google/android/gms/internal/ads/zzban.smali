.class final Lcom/google/android/gms/internal/ads/zzban;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->zza:Lcom/google/android/gms/internal/ads/zzbao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->zza:Lcom/google/android/gms/internal/ads/zzbao;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zze(Lcom/google/android/gms/internal/ads/zzbao;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbao;->zzk(Lcom/google/android/gms/internal/ads/zzbao;Lcom/google/android/gms/internal/ads/zzbau;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzc(Lcom/google/android/gms/internal/ads/zzbao;)Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbao;->zzf(Lcom/google/android/gms/internal/ads/zzbao;Lcom/google/android/gms/internal/ads/zzbar;)V

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zze(Lcom/google/android/gms/internal/ads/zzbao;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
